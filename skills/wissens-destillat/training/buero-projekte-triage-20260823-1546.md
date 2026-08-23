# Triage-Phase-1-Lauf `buero-projekte` — 2026-08-23 15:46–16:10

Ziel-KB: `wissen/projekt-lessons` · Station: Macmini · Modus: interaktive Session (nicht
`destillat-lauf.sh`, siehe Begruendung unten)

## Ablauf

- **Phase 0 (Inventar):** Stand vor Lauf 813 inventarisiert, 706 offen (`[ ]`), zusammenhaengend
  Zeile 111–816.
- **Phase 1 (Triage):** Statt des headless-CLI-Aufrufs `destillat-lauf.sh` (der in den Laeufen
  vom 19.08. und 20.08. sowie einem fruehen Versuch heute jeweils direkt nach dem Start von
  Phase 1 folgenlos abbrach — Ursache nicht abschliessend geklaert, moeglicherweise genau das vom
  Auftraggeber vorab benannte Risiko einer Prozesslisten-Fehlinterpretation) wurden acht
  In-Prozess-Subagenten (Agent-Tool, `model: haiku`) parallel gestartet, jeder rein LESEND fuer
  einen Zeilenbereich (~90 Zeilen). Jeder Agent klassifizierte P1/P2/P3/`-` ausschliesslich aus
  Sektion und Dateiname, ohne Quelldateien zu oeffnen, und gab eine kompakte
  `Zeile|Status|Bemerkung`-Liste zurueck (kein Datei-Zugriff durch die Agenten selbst — vermeidet
  jedes Race bei parallelem Schreiben). Die Orchestrator-Session wendete die acht Ergebnislisten
  sequenziell per Skript an (Zeilennummer-Ersetzung, Spaltenzahl fix), damit nur ein Schreiber je
  Zeitpunkt aktiv war.

## Zwischenfall (Sync, kein Triage-Fehler)

Der erste Anwendungslauf schrieb faelschlich in den SSD-Klon (`~/Developer/jans-ai-hub`) statt
`/Volumes/daten/jans-ai-hub` (Rule `sync-kanonische-quelle.md`). Ein automatischer
Sync-Mechanismus derselben Station griff waehrenddessen in dieselbe Datei ein, stashte, pullte,
poppte in Konflikt und committete die Datei MIT unaufgeloesten Git-Konfliktmarkern
(1515 statt 822 Zeilen) — dieser kaputte Stand wanderte per naechstem `nas-selfcommit`-Lauf in
die kanonische NAS-Quelle. Vollstaendig repariert (beide Pfade identisch, 0 Konfliktmarker,
813 Tabellenzeilen, keine Duplikate) und dokumentiert in `rules/betrieb-chronik.md`, Eintrag
260823c. Die Triage-Klassifikationen selbst waren zu keinem Zeitpunkt fehlerhaft — der
Zwischenfall betraf ausschliesslich die Schreib-/Sync-Mechanik.

## Ergebnis

Inventar nach diesem Lauf: **813 Zeilen, 0 offen (`[ ]`)** — Triage Phase 1 des Korpus
`buero-projekte` ist damit **vollstaendig abgeschlossen**.

| Status | Anzahl |
|---|---|
| `[-]` uebersprungen | 632 |
| `[t]` triagiert, davon P1 | 62 |
| `[t]` triagiert, davon P2 | 91 |
| `[t]` triagiert, davon P3 | 26 |
| `[x]` bereits destilliert (Run 1, 17.08.) | 2 |

**Schwerpunkt der 62 P1-Zeilen (Kernwissen, vordringlich fuer Phase 2):**
- `1318_Lorraine_Kueche` (48 von 62): dichte Kostenaufstellungs-/LV-/Offertenpruefungs-Kette
  ueber mehrere Gewerke (Heizung BKP 240, Sanitaer BKP 250, Schreiner BKP 273) — ein einzelnes
  Kuechenprojekt mit ungewoehnlich vollstaendiger Kosten-Ist/Soll-Spur samt Elektroschaltplaenen
  dreier Teilprojekte (1321/1508/1543).
- `1603_Steinhof` (2): Stuetzenanalyse/Fundamentkonstruktion.
- `1011_Lorrainestr_4`, `1115_Kostenberechnung` (je 1): Dachstock-Kostenaufstellung 2003,
  Grobkosten-Aufstellung.
- Rest verteilt ueber Elektro (Gasrohr-Dimensionierung, OSRAM-Bestellungen) und
  Offertenpruefungs-Ketten in `1318_Lorraine_Kueche`.

**Haeufigste Ueberspringungs-Gruende (632 `[-]`):** Herstellerprospekte/-datenblaetter ohne
Projektbezug (v.a. Sektion `1524_Winterthur_Erweiterung_Bezirksgebaeude`, komplett generische
Elektro-/Möbelkataloge), Sicherungskopien/Dubletten, private Korrespondenz/Finanzbelege ohne
Lehre, reine Referenz-/Lehrmaterialien (`1604_Palladio_Proportionen_1`, Studienarbeit ohne
Bauleitungsbezug).

## Naechster Schritt

Phase 2 (Destillat, Sonnet) auf den 62 P1-Zeilen, Schwerpunkt `1318_Lorraine_Kueche` — dort liegt
mit Abstand die dichteste Kosten-Ist/Soll- und Offertenpruefungs-Kette des Korpus und damit der
groesste erwartbare Lesson-Ertrag. Kurator-Pruefung (Opus) je nach Umfang des Destillat-Laufs.
