# Durchlauf-Bilanz — Stand 11.09.2026

Leitgrösse des Hubs: Durchlaufzeit und Wartezeit (Entscheid 31.07.2026).
Quelle: logbuch/fristen.md · Register: logbuch/vorgaenge/vorgaenge.tsv

## 1. Bestand

| Grösse | Wert |
|---|---|
| Vorgänge insgesamt | 222 |
| davon aktiv | 143 |
| davon erledigt | 79 |
| mit Eröffnungsdatum (messbar) | 19 von 143 |
| mittleres Alter der messbaren | 52 Tage |
| ältester offener Vorgang | 162 Tage |

Ältester: Freigabe-Entscheid Raphael: Jurybericht 2507 Halden herunterladen?

## 2. Abgeschlossene Durchlaufzeit — die Zielgrösse

Wie lange ein Vorgang tatsächlich gedauert hat, von der Eröffnung bis zum
Abschluss. Gerechnet wird nur, wo beide Daten belegt sind; geschätzt wird nichts.

| Grösse | Wert |
|---|---|
| messbar abgeschlossen | 1 von 79 |
| Median | 13 Tage |
| Mittel | 13 Tage |
| längster | 13 Tage |

Längster abgeschlossener Vorgang: SBB-Vordach-Vereinbarung Thalwil 2414 (JANS-Aktion) raus — RJ sendet 14.07

Der Median steht vor dem Mittel, weil einzelne Langläufer wie die 32-tägige
UBS-Blockade das Mittel verzerren, während der Median den Normalfall zeigt.

Bezugsbasis ist der Archiv-Block des Fristen-Registers, der die letzten 30 Tage
führt. Ältere Abschlüsse sind dort nicht mehr enthalten und fehlen hier.

## 3. Bei wem liegt der Ball

| Ball bei | Vorgänge |
|---|---|
| unbekannt | 87 |
| JANS | 30 |
| Raphael | 20 |
| extern: TeKoSi | 1 |
| extern: KISPI-Bauleitung | 1 |
| extern: KISPI | 1 |
| extern: Gruner | 1 |
| extern: Duran/Gruner | 1 |
| extern: Duran | 1 |

Bei 87 von 143 aktiven Vorgängen liess sich der Ball nicht aus dem
Text belegen. Diese Zahl ist die wichtigste Qualitätsangabe dieser Bilanz: sie
sagt, wie gross der blinde Fleck ist. Sie sinkt, sobald der Radar beim Eintragen
konsequent «AKTION JANS», «AKTION Raphael» oder «Ball bei \<Stelle\>» schreibt.

## 4. Nachfass-Schwelle (7 Tage)

Vorgänge, die extern liegen und seit über 7 Tagen keine Bewegung zeigen: **6**
- KISPI Therapiestation — Installationsplan Lüftung vom QS Brandschutz zurückgewiesen (44 Tage ohne Bewegung, extern: Duran/Gruner)
- NACHTRAG RADAR 01.08.2026: der Termin vom 31.07. 11:00 ist verstrichen, ein Ergebnisbeleg  (41 Tage ohne Bewegung, extern: Gruner)
- KISPI — prüfbarer Lüftungsplan: Gruner-intern strittig, Terminvorgabe wird von RJ erwa (39 Tage ohne Bewegung, extern: Duran)
- KISPI OG1 — Brandabschottung der Halfenschienen: vier Punkte gesetzt, drei davon mit Bal (23 Tage ohne Bewegung, extern: KISPI-Bauleitung)
- TeKoSi-Türfachplanung: die finale Freigabe durch die KISPI-Fachstellen ist ausstehend (18 Tage ohne Bewegung, extern: KISPI)
- Tuermatrix: L. Merci meldet sieben Korrekturen, und ohne sie geht das Tuerbuch nicht zur U (10 Tage ohne Bewegung, extern: TeKoSi)

Nicht gewertet, weil das «seit»-Datum über 180 Tage zurückliegt und damit
fast sicher ein Sachdatum im Text ist, kein Eröffnungsdatum (2):

- NEU 10.09. — OneDrive-Bereinigung MacBook Pro: Quarantäne ~/OneDrive-Quarantaene-260910 (212 Tage)
- Thalwil Bohlweg 3 — Begleitbeschrieb Projektänderung liegt fertig (Fassung 260731), Fre (2293 Tage)

Das ist der Regelkreis: jeder Eintrag hier ist ein Kandidat für einen
Nachfass-Entwurf. Erstellt wird er vom Skill `logbuch` bzw. auf Zuruf; versendet
wird nichts ohne Freigabe.

## 5. Nachtragsliste — aktive Vorgänge ohne Eröffnungsdatum

Für diese Vorgänge lässt sich keine Durchlaufzeit rechnen, weil im Text kein
«seit ⟨Datum⟩» steht. Rückwirkend ist das nicht zu heilen: die Angabe wurde nie
erfasst, und Schätzen wäre schlimmer als eine Lücke. Wer eine dieser Zeilen das
nächste Mal anfasst, trägt die Wendung nach — dann wird der Vorgang messbar.

Die zuletzt bewegten zuerst, weil sie am ehesten wieder angefasst werden:

- HUB12-Event, Region Zürich — Save the date (zuletzt bewegt 2026-09-10)
- bexio-Abo: Entscheid VOR der automatischen Migration Starter → Advanced am 08.10.2026 (zuletzt bewegt 2026-09-08)
- Steinbrüchelstrasse 26/28, Zürich-Witikon: das Wegrecht über die Wegparzelle WI3366 ver (zuletzt bewegt 2026-09-08)
- RE-00087 (KISPI, CHF 15'000, 109 Tage) — das KISPI führt die Rechnung als Duplikat, Zah (zuletzt bewegt 2026-09-08)
- Planfreigabe Werkplan Therapieküche — Fassung 1 liegt vor, die fachliche Rückmeldung v (zuletzt bewegt 2026-09-07)
- NACHTRAG RADAR 04.09.: der Entwurf an R. Steinmann ist nicht mehr rechtzeitig — er ist s (zuletzt bewegt 2026-09-04)
- Zwei Zusagen aus der Koordinationssitzung vom 27.08.2026, beide einen Tag vor der Meldung  (zuletzt bewegt 2026-09-01)
- Tuermatrix: L. Merci meldet sieben Korrekturen, und ohne sie geht das Tuerbuch nicht zur U (zuletzt bewegt 2026-09-01)
- Meldung Baustart an die Feuerpolizei der Stadt Zürich (zuletzt bewegt 2026-09-01)
- KISPI Türbuch + Sicherheitskonzept — gebündelte Stellungnahme aller internen KISPI-Ste (zuletzt bewegt 2026-09-01)
- KISPI Tuerbuch + Sicherheitskonzept — Rueckmeldung der KISPI-Fachstellen (zuletzt bewegt 2026-09-01)
- KISPI Los 231.10 TeKoSi — Ball bei L. Hiltmann (zuletzt bewegt 2026-09-01)
- Arbeitseinstellung KISPI PPTS angekuendigt — Raphael hat den Hebel selbst angesetzt, und (zuletzt bewegt 2026-09-01)
- Terminplan wird der Bauherrschaft kommuniziert (zuletzt bewegt 2026-08-31)
- Gut zur Ausführung Innere Verglasungen mit Unterschrift Architektur und Bauherrschaft (zuletzt bewegt 2026-08-31)
- Baustellentermin fixiert: Estermann bringt am Freitag 31.08. ab 06:30 die RHS ein, und das (zuletzt bewegt 2026-08-31)
- Selbst gesetztes Ziel: bis Freitag sind alle Termine der behördlichen Abnahmen fixiert (zuletzt bewegt 2026-08-28)
- Der Tailscale-Waechter aus Rule auto-verbesserungen 260824 ist auf KEINER Station installi (zuletzt bewegt 2026-08-28)
- Rückmeldung J. Ziegel zum Termin der feuerpolizeilichen Abnahme erwartet (zuletzt bewegt 2026-08-27)
- QS-Kurzprotokoll der Begehung vom 26.08. liegt vor und ist noch nicht ausgewertet (zuletzt bewegt 2026-08-27)
- Neue Frist, gesetzt von RJ selbst: TeKoSi liefert das korrigierte Türkonzept bis Montag 2 (zuletzt bewegt 2026-08-26)
- Fertigstellungsanzeige / Meldekarte an das AfB (zuletzt bewegt 2026-08-26)
- Kreditor Berufsbildungsfonds Raum- und Bauplanung 2026 — CHF 220.00, 30 Tage netto (zuletzt bewegt 2026-08-25)
- TeKoSi-Türfachplanung: die finale Freigabe durch die KISPI-Fachstellen ist ausstehend (zuletzt bewegt 2026-08-24)
- Zwei Entscheide der KB normen aus Run 60 liegen bei Raphael, einer davon sicherheitsreleva (zuletzt bewegt 2026-08-23)

## 6. Was diese Bilanz noch nicht kann

- **Durchlaufzeit misst nur, wo ein Eröffnungsdatum steht.** Aktuell 19 von
  143 aktiven Vorgängen. Das Feld wird nur gesetzt, wenn im Text ausdrücklich
  «seit \<Datum\>» steht; es wird nie geraten. Jeder neue Vorgang sollte es
  mitbekommen, dann wächst die Messbasis von selbst.
- **Erledigte Vorgänge tragen kein Abschlussdatum.** Damit lässt sich die
  abgeschlossene Durchlaufzeit (die eigentliche Zielgrösse) noch nicht rechnen,
  nur das Alter der offenen. Das Feld kommt, sobald der Radar es beim Schliessen
  setzt.
- **Wartezeit ist nicht in eigene und fremde Anteile getrennt.** Dafür müsste je
  Vorgang die Ball-Historie mitlaufen, nicht nur der aktuelle Stand.

Erzeugt von scripts/vorgaenge-bilanz.sh · 227 Tabellenzeilen gelesen
