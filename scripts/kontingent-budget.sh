#!/bin/bash
# ============================================================================
# JANS AI Hub — Kontingent-Budget (Wochenverbrauch messen und bewerten)
# ============================================================================
# Auftrag Raphael 03.08.2026 nach dem Wochenlimit-Vorfall 01.-03.08.2026
# (47 Stunden erschoepftes Kontingent, elf blockierte Laeufe, ein Sonntag mit
# null substanziellen Commits — Beleg: logbuch/vollgas/RADAR.md 03.08. 22:07).
#
# DAS PROBLEM, das dieses Script loest:
# Das CLI hat KEINEN Usage-Kanal (`claude --help` kennt weder `usage` noch
# `limit`). Das Wochenkontingent wird erst bemerkt, wenn ein Lauf mit
# "You've hit your weekly limit" abbricht — also zu spaet. Bis dahin sieht
# niemand, wie schnell es schrumpft.
#
# DIE MESSUNG BRAUCHT KEIN MODELL. Die Token stehen in den Transcript-JSONL
# unter message.usage. Dieses Script summiert sie und kostet damit nichts von
# dem Kontingent, das es schuetzen soll — im Gegensatz zur vollgas-fruehwarnung,
# die dieselbe Messung mit einem Modell im Lauf macht und deshalb genau dann
# ausfaellt, wenn das Kontingent leer ist.
#
# ---------------------------------------------------------------------------
# WARUM DIE SCHWELLE KALIBRIERT UND NICHT GERATEN IST
# ---------------------------------------------------------------------------
# Die Wochen-Obergrenze wird von Anthropic nicht ausgewiesen. Sie ist hier am
# BEOBACHTETEN Limit-Ereignis kalibriert: die Woche 27.07. 12:00 bis zum ersten
# Treffer "weekly limit" am 01.08. 14:21 ergab (Messung 03.08.2026)
#     MacBook Pro 142.58 Mio  +  Mac Mini 24.48 Mio  =  167.07 Mio "teuer"
# Das ist der einzige belastbare Anhaltspunkt, den der Hub besitzt.
#
# ACHTUNG, bewusste Ungenauigkeit: "teuer" (input + cache_creation + output)
# ist ein PROXY. Womit Anthropic tatsaechlich verrechnet, ist unbekannt; der
# cache_read-Anteil (hier rund das Zwanzigfache) geht bewusst NICHT ein. Weil
# die Schwelle am selben Proxy kalibriert ist, mit dem sie gemessen wird, ist
# das konsistent — aber der Absolutwert bedeutet nichts ausserhalb dieses
# Scripts. Nach jedem echten Limit-Treffer gehoert WOCHE_MIO nachgezogen.
#
# WICHTIG — die Fruehwarnungs-Zahlen sind NICHT vergleichbar: sie lagen fuer
# dieselbe Woche bei rund 73 Mio, also weniger als der Haelfte. Ursache
# gemessen am 03.08.: die Subagenten-Transcripts (isSidechain) machen den
# groesseren Teil aus — am 31.07. 12.23 von 19.47 Mio. Subagenten verbrauchen
# echtes Kontingent und werden hier deshalb MITGEZAEHLT. Wer die Werte dieses
# Scripts gegen aeltere FRUEHWARNUNG.md-Eintraege haelt, vergleicht zwei
# verschiedene Groessen.
#
# ---------------------------------------------------------------------------
# STATIONSUEBERGREIFEND OHNE SSH
# ---------------------------------------------------------------------------
# Jede Station misst nur ihre EIGENEN Transcripts und legt das Ergebnis unter
#     logbuch/kontingent/verbrauch-<station>.json
# auf dem NAS ab. Die Summe bildet dieses Script aus allen vorhandenen
# Stationsdateien. Kein SSH, keine Abhaengigkeit von einer laufenden
# Gegenstation — der Mac Mini ist nachts erreichbar, das MacBook nicht immer,
# und ein Gate darf nie an einer Netzverbindung haengen.
# Veraltete Stationsdateien (> STALE_STD Stunden) werden ausgewiesen, aber
# weiter mitgezaehlt: ein alter Wert unterschaetzt, ein fehlender verschweigt.
#
# ---------------------------------------------------------------------------
# VERWENDUNG
# ---------------------------------------------------------------------------
#   bash kontingent-budget.sh              Messen, Stationsdatei schreiben,
#                                          Exit 0 = frei / 1 = Drosselschwelle
#   bash kontingent-budget.sh --messung    NUR Kennzahlen, schreibt nichts,
#                                          entscheidet nichts (read-only)
#   bash kontingent-budget.sh --json       maschinenlesbar (fuer den Radar)
#
# Exit 0 = Budget frei (Lern-Laeufe duerfen starten)
# Exit 1 = Drosselschwelle erreicht (Lern-Laeufe stehen zurueck)
# Exit 2 = Messung nicht moeglich (NAS fehlt, python3 fehlt) — der AUFRUFER
#          entscheidet dann konservativ selbst; dieses Script sperrt nie
#          aufgrund einer fehlenden Kennzahl.
# ============================================================================

set -uo pipefail

# --- Konfiguration (hier aendern, nicht im Code) -----------------------------
WOCHE_MIO="${WOCHE_MIO:-167}"        # kalibrierte Wochen-Obergrenze, Mio "teuer"
WARN_PROZENT="${WARN_PROZENT:-70}"   # ab hier: warnen, noch nicht drosseln
DROSSEL_PROZENT="${DROSSEL_PROZENT:-85}"  # ab hier: Lern-Laeufe zurueckstellen
STALE_STD="${STALE_STD:-8}"          # Stationsdatei aelter als X Std = veraltet

NASDIR="/Volumes/daten/jans-ai-hub"
STATEDIR="$NASDIR/logbuch/kontingent"
STATION="$(hostname -s)"
MODUS="${1:-}"

# --- Wochenstart bestimmen: letzter Montag 12:00 LOKAL ------------------------
# Belegt am 03.08.2026: die Limit-Meldung nennt "resets 12pm (Europe/Zurich)",
# und der erste erfolgreiche Lauf nach dem Reset war Montag 13:30.
# LOKALE Zeit verwenden, nie UTC — Rule dateinamen-konvention.md (die
# toISOString-Falle hat am 30.07. bereits acht Scripts falsch datiert).
DOW=$(date +%u)   # 1 = Montag
HOUR=$(date +%H)
if [ "$DOW" -eq 1 ] && [ "$HOUR" -lt 12 ]; then
    ZURUECK=7                      # Montagvormittag gehoert noch zur Vorwoche
else
    ZURUECK=$((DOW - 1))
fi
RESET_LOKAL="$(date -v-${ZURUECK}d '+%Y-%m-%d') 12:00:00"
RESET_EPOCH=$(date -j -f "%Y-%m-%d %H:%M:%S" "$RESET_LOKAL" "+%s" 2>/dev/null)
if [ -z "${RESET_EPOCH:-}" ]; then
    echo "kontingent-budget: Wochenstart nicht bestimmbar." >&2
    exit 2
fi
# Transcripts tragen UTC ("...Z") — Vergleichsgrenze in UTC umrechnen.
# ueber das Epoch, damit Sommer-/Winterzeit von selbst stimmt.
RESET_UTC=$(date -u -r "$RESET_EPOCH" "+%Y-%m-%dT%H:%M")

command -v python3 >/dev/null 2>&1 || { echo "kontingent-budget: python3 fehlt." >&2; exit 2; }

# --- Eigene Station messen ----------------------------------------------------
# Deduplikation ueber (message.id, requestId): dieselbe Antwort taucht in
# mehreren Transcript-Zeilen auf (Streaming-Zwischenstaende, Resume-Kopien).
# Ohne Dedup zaehlt derselbe Verbrauch mehrfach.
EIGEN=$(python3 - "$RESET_UTC" <<'PY'
import json, glob, os, sys
grenze = sys.argv[1]
root = os.path.expanduser("~/.claude/projects")
seen = set(); teuer = 0; total = 0; n = 0
for f in glob.glob(root + "/**/*.jsonl", recursive=True):
    try:
        with open(f, errors="ignore") as fh:
            for line in fh:
                if '"usage"' not in line:
                    continue
                try:
                    d = json.loads(line)
                except Exception:
                    continue
                ts = d.get("timestamp", "")
                if not ts or ts < grenze:
                    continue
                m = d.get("message") or {}
                u = m.get("usage") or d.get("usage") or {}
                if not u:
                    continue
                key = (m.get("id"), d.get("requestId"))
                if key in seen:
                    continue
                seen.add(key)
                i = u.get("input_tokens", 0) or 0
                o = u.get("output_tokens", 0) or 0
                cc = u.get("cache_creation_input_tokens", 0) or 0
                cr = u.get("cache_read_input_tokens", 0) or 0
                teuer += i + cc + o
                total += i + cc + cr + o
                n += 1
    except Exception:
        pass
print(json.dumps({"teuer": teuer, "total": total, "n": n}))
PY
)
[ -z "$EIGEN" ] && { echo "kontingent-budget: Messung fehlgeschlagen." >&2; exit 2; }

# --- Stationsdatei schreiben (nicht im --messung-Modus) -----------------------
if [ "$MODUS" != "--messung" ] && [ -d "$NASDIR" ]; then
    mkdir -p "$STATEDIR" 2>/dev/null
    printf '{"station":"%s","reset_lokal":"%s","gemessen_am":"%s","gemessen_epoch":%s,%s}\n' \
        "$STATION" "$RESET_LOKAL" "$(date '+%Y-%m-%d %H:%M:%S')" "$(date +%s)" \
        "$(echo "$EIGEN" | sed 's/^{//; s/}$//')" \
        > "$STATEDIR/verbrauch-${STATION}.json" 2>/dev/null
fi

# --- Alle Stationen summieren -------------------------------------------------
SUMME=$(python3 - "$STATEDIR" "$STATION" "$EIGEN" "$STALE_STD" "$RESET_EPOCH" <<'PY'
import json, glob, os, sys, time
statedir, station, eigen_raw, stale_std, reset_epoch = sys.argv[1:6]
stale = float(stale_std) * 3600
jetzt = time.time()
eigen = json.loads(eigen_raw)
stationen = {station: {"teuer": eigen["teuer"], "alt_std": 0.0, "frisch": True}}
for f in glob.glob(os.path.join(statedir, "verbrauch-*.json")):
    try:
        d = json.load(open(f))
    except Exception:
        continue
    s = d.get("station")
    if not s or s == station:
        continue          # eigene Station immer live, nie aus der Datei
    ge = d.get("gemessen_epoch", 0) or 0
    # Stand aus einer frueheren Woche ist wertlos, nicht nur veraltet.
    if ge < float(reset_epoch):
        continue
    alt = (jetzt - ge) / 3600.0
    stationen[s] = {"teuer": d.get("teuer", 0), "alt_std": alt, "frisch": alt <= stale/3600.0}
gesamt = sum(v["teuer"] for v in stationen.values())
print(json.dumps({"gesamt": gesamt, "stationen": stationen}))
PY
)
[ -z "$SUMME" ] && { echo "kontingent-budget: Summenbildung fehlgeschlagen." >&2; exit 2; }

# --- Bewerten -----------------------------------------------------------------
BEWERTUNG=$(python3 - "$SUMME" "$WOCHE_MIO" "$WARN_PROZENT" "$DROSSEL_PROZENT" "$RESET_EPOCH" <<'PY'
import json, sys, time
summe = json.loads(sys.argv[1])
woche_mio = float(sys.argv[2]); warn = float(sys.argv[3]); drossel = float(sys.argv[4])
reset_epoch = float(sys.argv[5])
gesamt_mio = summe["gesamt"] / 1e6
anteil = gesamt_mio / woche_mio * 100 if woche_mio else 0
# Wie weit ist die Woche zeitlich fortgeschritten? Nur zur Einordnung:
# 60 % Verbrauch an Tag 2 ist etwas anderes als 60 % an Tag 6.
verstrichen = (time.time() - reset_epoch) / (7 * 86400) * 100
if anteil >= drossel:   ampel = "DROSSEL"
elif anteil >= warn:    ampel = "WARNUNG"
else:                   ampel = "FREI"
print(json.dumps({
    "ampel": ampel, "gesamt_mio": round(gesamt_mio, 2), "budget_mio": woche_mio,
    "anteil_prozent": round(anteil, 1), "woche_verstrichen_prozent": round(verstrichen, 1),
    "vorsprung_punkte": round(anteil - verstrichen, 1),
    "stationen": {k: {"teuer_mio": round(v["teuer"]/1e6, 2), "frisch": v["frisch"],
                      "alt_std": round(v["alt_std"], 1)} for k, v in summe["stationen"].items()},
}, ensure_ascii=True))
PY
)

AMPEL=$(echo "$BEWERTUNG" | python3 -c "import json,sys; print(json.load(sys.stdin)['ampel'])" 2>/dev/null)

# --- Ausgabe ------------------------------------------------------------------
if [ "$MODUS" = "--json" ]; then
    echo "$BEWERTUNG"
else
    python3 - "$BEWERTUNG" "$RESET_LOKAL" <<'PY'
import json, sys
b = json.loads(sys.argv[1]); reset = sys.argv[2]
print(f"Kontingent-Budget  [{b['ampel']}]")
print(f"  Woche seit        {reset} (Reset Mo 12:00)")
print(f"  Verbraucht        {b['gesamt_mio']} von {b['budget_mio']} Mio 'teuer'  "
      f"= {b['anteil_prozent']} %")
print(f"  Woche verstrichen {b['woche_verstrichen_prozent']} %  "
      f"(Vorsprung {b['vorsprung_punkte']:+} Punkte)")
for s, v in sorted(b["stationen"].items()):
    stand = "frisch" if v["frisch"] else f"VERALTET, {v['alt_std']} h alt"
    print(f"  - {s:12} {v['teuer_mio']:8} Mio  ({stand})")
PY
fi

# --- Entscheidung -------------------------------------------------------------
# Im --messung-Modus wird NICHTS entschieden (Muster von lauf-gate.sh): der
# Modus existiert, damit eine Nachkontrolle die Kennzahlen lesen kann, ohne
# den Betrieb zu beeinflussen.
[ "$MODUS" = "--messung" ] && exit 0
[ "$AMPEL" = "DROSSEL" ] && exit 1
exit 0
