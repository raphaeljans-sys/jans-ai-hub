# A-BLIND-Fall 3: ChemRRV Anhang 2.10 (Kältemittel) im Volltext gelesen

Datum: 2026-08-24 · Lauf: interaktive Session, Fortsetzung des A-BLIND-Fadens vom selben Tag

## Auftrag

Weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, belegt mit Quelle und Datenstand, Anschluss
an den letzten Lauf (`outputs/2026-08-24_a-blind-schwelle-18-29-backlinks-krnr-6062-6063.md`). Dessen
Schluss («A-BLIND-Vorrat für dieses Quartal ausgeschöpft») beruhte auf einer Stichprobe von nur 8 der
37-38 gemeldeten 18-29-Backlink-Kandidaten.

## Vorgehen

1. Backlink-Zählung mit eigenem Python-Skript reproduziert (37 Destillate mit 18-29 Backlinks,
   `[[...]]`-Referenzen in `wiki/*.md` + `destillate/*.md`, gegen tatsächlich existierende
   Destillate gefiltert).
2. Von den 29 im Vorlauf nicht geprüften Kandidaten (26 bis 18 Backlinks) 14 Stichproben gegen
   Frontmatter `status` und «Offene Punkte» geprüft.
3. Einen echten, öffentlich recherchierbaren A-BLIND-Kandidaten gefunden: `[[kaeltemittel-r290-
   waermepumpen-ch]]` — `status: emerging`, mit dem expliziten offenen Punkt «Bestandsschutz-Wortlaut
   nicht direkt aus dem ChemRRV-Verordnungstext … geprüft (nur über Sekundärquellen bestätigt)» und
   einer nie aufgelösten «Spaltenzuordnung der BAFU-Tabelle».
4. ChemRRV Anhang 2.10 (SR 814.81) über die in `docs/referenz/fedlex-volltexte.md` dokumentierte
   Ausweichroute (`fedlex.data.admin.ch`, `de/pdf-a`) im Volltext beschafft. Die `www`-Route lieferte
   für das benötigte Konsolidierungsdatum keinen Treffer; mehrere Kandidatendaten gegen
   `fedlex.data.admin.ch` durchprobiert und per `curl -w "%{content_type} %{size_download}"`
   verifiziert. Stand **1.1.2027** (enthält bereits die per Bundesratsbeschluss 29.10.2025
   beschlossene Revision) lieferte ein echtes PDF (2,13 MB, 216 Seiten, gegenüber 1,96 MB für
   1.1.2026 und 1,87 MB für 1.1.2025 — die Grössendifferenz allein bestätigte noch nichts, das
   Datum im Fusszeilentext jeder Seite («814.81») und der Seitenkopf «Anhang 2.10» taten es).
5. Anhang 2.10 (Ziff. 1-7, PDF-S. 161-172, 12 Seiten) vollständig mit PyPDF2 gelesen.

## Befund

**1. Bestandsschutz bestätigt und jetzt primärquellen-verifiziert.** Die Verbote in Ziff. 2.1
ChemRRV richten sich ausschliesslich gegen «Herstellung, Inverkehrbringen, Einfuhr … und Ausfuhr»
sowie gegen das Nachfüllen bestimmter Kältemittel (Ziff. 3.2/3.3) — nicht gegen den Betrieb
bestehender Anlagen. Für das Nachfüllen mit synthetischem Kältemittel gilt: das generelle
Nachfüll-Verbot ab GWP ≥ 2500 (Ziff. 3.3.1 Abs. 1) betrifft R410A (GWP 2088) nicht; das Nachfüll-
Verbot ab GWP ≥ 750 (Ziff. 3.3.1 Abs. 2) gilt nur für eine abschliessende Liste von Gewerbe-/
Industrie-Kälteanlagen und Kunsteisanlagen, in der Wärmepumpen nicht vorkommen. Bestehende
Wärmepumpen dürfen also unverändert mit R410A/R32 nachgefüllt werden — keine Austauschpflicht.

**2. Übergangsfrist Ziff. 7 Abs. 7 wortlautgeprüft, bestätigt.** Wortlaut: «… dürfen diese Anlagen
und Geräte noch während 6 Monate hergestellt, zu beruflichen oder gewerblichen Zwecken eingeführt
sowie während weiterer 6 Monate an Dritte abgegeben werden.» Die bisherige Kurzformel «6 Monate
(Einfuhr) / 12 Monate (Abgabe an Dritte)» trifft die Wirkung richtig.

**3. Echter Zitierfehler gefunden und behoben.** Die im Destillat genannten Füllmengenbegrenzungen
(0,18-0,48 kg/kW) standen unter der falschen Fundstelle «Ziff. 2.6» (tatsächlich «Pflichten für die
Ausfuhr von Anlagen», ein anderes Thema) und mit falscher Reichweite («für Wärmepumpen mit
GWP < 150»). Richtig: **Ziff. 2.1 Abs. 5** — eine reine Grössen-/Füllmengenregel für **Anlagen mit
luftgekühltem Verflüssiger und einer Kälteleistung von mehr als 50 kW**, unabhängig vom
GWP-Schwellenwert 150. Für haustypische EFH/MFH-Wärmepumpen (deutlich unter 50 kW) greift diese
konkrete Regel damit in aller Regel nicht — massgebend bleiben dort die bauseitigen
SN-EN-378-Brandschutzanforderungen (0,15/1,5 kg).

**Nebenbefund beim Gegenlesen:** die vereinfachte Darstellung «Wärmepumpen gestaffelt nach
GWP-Bandbreite (< 150 / 150-750 / 750-2100 / > 2100)» gab die tatsächliche Struktur von Ziff. 2.1
Abs. 3 Bst. d unvollständig wieder. Die Verordnung verbietet Wärmepumpen, die (1) über 250 kW
Heizleistung haben — unabhängig vom Kältemittel —, oder (2) höchstens 12 kW UND GWP ≥ 150 haben,
oder (3) GWP ≥ 750 haben — unabhängig von der Grösse —, oder (4) «in sich geschlossen» sind UND
GWP ≥ 150 haben; dazu kommen grössen-/bauartabhängige Übergangsausnahmen (Ziff. 7 Abs. 3/4) bis
2028/2029. Eine Split-Wärmepumpe zwischen 12 kW und 250 kW mit GWP unter 750 fällt unter keines
der vier Verbote — die einfache GWP-Bandbreite hätte das falsch als «150-750 grundsätzlich nicht
zulässig» dargestellt. Präzisiert, ohne die praktische Kernaussage (kleine/mittlere Hoch-GWP-
Wärmepumpen werden zunehmend eingeschränkt, R290/natürliche Kältemittel bleiben immer zulässig) zu
ändern.

## Eingearbeitet

- `destillate/kaeltemittel-r290-waermepumpen-ch.md`: Frontmatter (`status` emerging → established,
  `quelle`/`gelesen`/`datenstand`/`last_updated`), drei Sachabschnitte korrigiert/ergänzt
  (Bestandsschutz, Übergangsfrist, Füllmengenbegrenzungen/GWP-Staffelung), zwei «Offene
  Punkte»-Einträge als geschlossen markiert (Durchstreichung, nicht gelöscht), Quellenliste ergänzt.
- `destillate/INDEX.md`: Zeile aktualisiert (status established, Kurzbegründung, Datenstand).
- `wiki/BAUHERREN-FAQ.md` F72: Bestandsschutz-Satz präzisiert, Quellenzeile + Status aktualisiert.
- `wiki/heizleistung-und-waermeerzeuger.md`, `wiki/gebaeudetechnik-pflichtenheft.md`: geprüft, keine
  Änderung nötig (zitieren das Destillat nur als Verweis, nicht die betroffenen Detailaussagen).
- `wiki/QUESTIONS.md`: neuer datierter Abschnitt mit vollständiger Belegkette.
- `CHANGELOG.md`: Eintrag mit Anschlusslogik zum Vorlauf.

## Für den nächsten Lauf

Von den 37 Kandidaten im 18-29-Backlink-Bereich sind jetzt 9 einzeln gegen Frontmatter/Primärquellen-
Lücke geprüft (8 aus dem Vorlauf + `kaeltemittel-r290-waermepumpen-ch` aus diesem Lauf); rund 28
verbleiben ungeprüft — echter Rest für einen künftigen A-BLIND-Lauf, kein «Vorrat ausgeschöpft».
Übrige, weiterhin blockierte Punkte im `- [ ]`-Bestand unverändert: E103, E94, E-R148-1/2 (Normkauf
SIA 380/1:2016), E-R161-1 (SN EN ISO 6946), E-R129-5/E-R134-3 (P3/P4, kein weiterer
Rechercheansatz).

`git diff --numstat` geprüft: `destillate/kaeltemittel-r290-waermepumpen-ch.md` +77/-26,
`destillate/INDEX.md` +1/-1, `wiki/BAUHERREN-FAQ.md` additiv (zwei Satzergänzungen an F72) —
durchgehend additiv/präzisierend/korrigierend, keine Löschung von Bestand.
