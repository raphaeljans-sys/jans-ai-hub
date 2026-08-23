#!/usr/bin/env bash
# link-zielabgleich.sh — prueft, ob ein zitierter Link dort LANDET, wo er hinzeigen soll.
#
# Vierte Schwester von wiki-konsistenz.sh (Form), link-frischecheck.sh (Zugang) und
# kennwert-recompute.sh (Inhalt der Zahlen). Hier: das ZIEL eines Links.
#
# WARUM ES DIESES SCRIPT GIBT (23.08.2026, Vertiefungslauf 8 planungsgrundlagen).
# link-frischecheck.sh misst mit `curl -L -o /dev/null` nur den HTTP-Code der ENDADRESSE.
# Ein Server, der jeden unbekannten Pfad per 301 auf seine Startseite schickt, liefert damit
# fuer JEDE erfundene Adresse ein sauberes "200" — der Link gilt als gruen, obwohl die
# zitierte Ressource nicht mehr existiert.
#
# Belegt am selben Tag: der gesamte Host `geoportal.zh.ch` ist abgeschaltet und leitet
# ALLES (auch `/gibtesnichtxyz123`) per 301 auf `www.zh.ch/de.html`. Die KB
# planungsgrundlagen fuehrte darunter einen ganzen Abschnitt mit Bestellweg und vier
# Datensatznummern. Sechs vorangegangene Endpunktlaeufe haben das nicht gesehen, weil alle
# den HTTP-Code der Endadresse gemessen haben und der 200 ist.
#
# DIE LEHRE, die das Script mechanisiert: ein HTTP-200 belegt, dass IRGENDEINE Seite
# ausgeliefert wurde — nicht, dass es die bestellte ist. Massgeblich ist der Vergleich
# zwischen ANGEFRAGTEM und TATSAECHLICHEM Pfad.
#
# WAS GEPRUEFT WIRD — nur Adressen MIT Pfad (Deep-Links). Ein blanker Host kann per
# Definition nicht "am falschen Ort landen"; dafuer ist link-frischecheck zustaendig.
#   1. Roher Status OHNE Redirect-Verfolgung + Endstatus MIT Verfolgung, Endadresse, Groesse.
#   2. Weicht der Pfad der Endadresse vom angefragten ab, wird klassifiziert.
#   3. Landet ein Link auf einer Startseite, bekommt der HOST eine Gegenprobe mit einem
#      frei erfundenen Pfad. Landet die dort ebenfalls, ist der Host ein KATCHALL —
#      dann ist unter diesem Host KEIN Link mehr per HTTP-Code pruefbar.
#
# BEFUNDKLASSEN
#   KATCHALL   Host schluckt jeden Pfad und liefert die Startseite. Schwerster Befund.
#   STARTSEITE Deep-Link landet auf einer Startseite, Host-Gegenprobe unauffaellig.
#   SOFT404    Endstatus 404, aber grosser Antwortkoerper (dekorierte Fehlerseite).
#   UMGELEITET Anderer, aber weiterhin tiefer Pfad — meist harmlos (Relaunch, Shortlink).
#   ARTEFAKT   Der "Pfad" sieht aus wie ein Hostname (`vkg.ch/presseportal.ch`) — eine
#              Prosa-Aufzaehlung, kein Link. Wird nur gezaehlt, nicht als Befund gemeldet.
#
# BEWUSSTE GRENZEN — das Script ist ein Sieb, kein Richter:
#   - UMGELEITET ist der Normalfall bei jedem CMS-Relaunch. Ein Treffer ist ein
#     PRUEFAUFTRAG, kein Fehler.
#   - 403 (Bot-Sperre) und 401 werden nicht als Zielbefund gewertet; dafuer link-frischecheck.
#   - Es liest die Zielseite NICHT inhaltlich. Ob die Seite das richtige Dokument zeigt,
#     bleibt Handarbeit (Regel aus Vertiefungslauf 6: Inhalt messen, nicht nur den Code).
#
# HUB-PFAD — wie kennwert-recompute.sh, bewusst anders als die beiden aelteren Werkzeuge:
# es nimmt den Hub, in dem es selbst liegt, laesst ihn per --hub ueberschreiben und schreibt
# ihn in den Kopf der Ausgabe. Sonst misst man die NAS-Kopie und haelt eine soeben lokal
# gemachte Korrektur fuer gescheitert (belegt 23.08.2026, s. wissen/tools/README.md).
#
# Aufruf:  bash wissen/tools/link-zielabgleich.sh <kb> [--hub <pfad>] [--out <datei.psv>]
# Ausgabe: Befunde auf stdout; mit --out zusaetzlich die Vollmessung als PSV.
# Exit:    0 = keine Befunde · 1 = Befunde vorhanden · 2 = Bedienfehler

set -uo pipefail

SELF="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
HUB_DEFAULT="$(cd "$SELF/../.." && pwd)"
UA="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0 Safari/537.36"
PAR=8

KB=""; HUB="$HUB_DEFAULT"; OUT=""
while [ $# -gt 0 ]; do
  case "$1" in
    ""|--hilfe|--help|-h) sed -n '2,58p' "$0" | sed 's/^# \{0,1\}//'; exit 0 ;;
    --hub) HUB="${2:-}"; shift 2 ;;
    --out) OUT="${2:-}"; shift 2 ;;
    -*) echo "Unbekanntes Flag: $1" >&2; exit 2 ;;
    *) KB="$1"; shift ;;
  esac
done
[ -z "$KB" ] && { sed -n '2,58p' "$0" | sed 's/^# \{0,1\}//'; exit 2; }

WIKI="$HUB/wissen/$KB/wiki"
[ -d "$WIKI" ] || { echo "Kein wiki/ fuer KB '$KB' unter $HUB/wissen/" >&2; exit 2; }

echo "Hub:  $HUB"
echo "KB:   $KB"

TMPD="$(mktemp -d)"
trap 'rm -rf "$TMPD"' EXIT

# --- 1) Deep-Links extrahieren -----------------------------------------------------------
# Extraktion bewusst identisch zu link-frischecheck.sh (die drei Fallen dort sind teuer
# erkauft: Adressen ohne Protokoll, Umlaute im Hostnamen, Schraegstrich als Prosa-Trenner).
# Einziger Unterschied: nur Adressen MIT Pfad.
cd "$WIKI" || exit 2
perl -CSD -ne '
  while ($_ =~ m{(?:https?://)?(?<![\w.\-/äöüÄÖÜ])((?:[a-z0-9äöü](?:[a-z0-9äöü\-]*[a-z0-9äöü])?\.)+(?:ch|com|org|net|eu|io))((?:/[^\s)"`|,;*\]\[]*)?)}g) {
    my ($h,$p)=($1,$2);
    $p =~ s/[.,;:*]+$//;
    next if $h =~ /^(z|d|u|ca|bzw|inkl|exkl|vgl|ggf|evtl|max|min|nr|abs|lit|art|ziff)\./;
    next unless length($p) > 1;
    print "$h$p\n";
  }' *.md 2>/dev/null \
 | grep -vE '\.\.\.|XXXX|…|<|>|\{|\}' | sort -u > "$TMPD/deep.txt"

TOTAL=$(wc -l < "$TMPD/deep.txt" | tr -d ' ')
NART=$(ls *.md 2>/dev/null | wc -l | tr -d ' ')
echo "Deep-Links: $TOTAL aus $NART Artikeln"

# --- 2) messen ---------------------------------------------------------------------------
cat > "$TMPD/m.sh" <<EOF
#!/bin/bash
u="\$1"
raw=\$(curl -s -o /dev/null -w '%{http_code}' -A "$UA" --max-time 25 --connect-timeout 10 "https://\$u" 2>/dev/null)
res=\$(curl -s -o /dev/null -w '%{http_code}|%{size_download}|%{url_effective}' -A "$UA" -L --max-time 30 --connect-timeout 10 "https://\$u" 2>/dev/null)
printf '%s|%s|%s\n' "\$u" "\$raw" "\$res"
EOF
chmod +x "$TMPD/m.sh"
xargs -P "$PAR" -n1 "$TMPD/m.sh" < "$TMPD/deep.txt" > "$TMPD/mess.psv" 2>/dev/null

# --- 3) Hosts mit Startseiten-Landung: Gegenprobe mit erfundenem Pfad --------------------
# Ein Host gilt erst dann als KATCHALL, wenn er auch fuer einen frei erfundenen Pfad
# dieselbe Startseite liefert. Ohne diese Gegenprobe waere jede einzelne tote Unterseite
# eines gesunden Servers faelschlich ein Katchall.
awk -F'|' '{split($1,a,"/"); print a[1]}' "$TMPD/mess.psv" | sort -u > "$TMPD/hosts.txt"
cat > "$TMPD/probe.sh" <<EOF
#!/bin/bash
h="\$1"
res=\$(curl -s -o /dev/null -w '%{http_code}|%{url_effective}' -A "$UA" -L --max-time 25 --connect-timeout 10 "https://\$h/zielabgleich-gibtesnicht-4711" 2>/dev/null)
printf '%s|%s\n' "\$h" "\$res"
EOF
chmod +x "$TMPD/probe.sh"
xargs -P "$PAR" -n1 "$TMPD/probe.sh" < "$TMPD/hosts.txt" > "$TMPD/probe.psv" 2>/dev/null

[ -n "$OUT" ] && cp "$TMPD/mess.psv" "$OUT" && echo "Vollmessung: $OUT"

# --- 4) klassifizieren und berichten -----------------------------------------------------
python3 "$SELF/link-zielabgleich.py" "$TMPD/mess.psv" "$TMPD/probe.psv"
exit $?
