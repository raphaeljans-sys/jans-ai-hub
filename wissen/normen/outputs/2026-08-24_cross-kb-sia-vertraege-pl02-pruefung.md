# Cross-KB-Prüfung: 7 SIA-Vertragsrecht-docx in PL-02 (Übergabe von wissen/energie)

**Datum:** 24.08.2026
**Auftrag:** Cross-KB-Bringschuld aus `wissen/energie` (Run 161, 23.08.2026) abarbeiten —
7 bislang nie einzeln geöffnete SIA-Vertragsrecht-docx/doc unter
`/sites/PL`, Drive `02_Recht_Norm`, `02_Normen/SIA_Norm/SIA_Vertraege/` prüfen, ob
Destillationsbedarf besteht.

## Vorgehen

Alle 7 Dateien über `connectors/m365-graph.mjs` (App-only, Zertifikat) lokalisiert,
Ordnerinhalte gegen bestehende PDF-Pendants geprüft, zwei kurze docx (`230529_
Vertragsunterschiede.docx`, `Link_Vertag.docx`) heruntergeladen und mit `textutil -convert
txt` gelesen. Die drei grösseren Word-Vorlagen (`1001-1_2020_d.docx`, `1001-11_2018_d.docx`,
`1001-2_2020_d.docx`) sind reine Ausfüllvorlagen mit PDF-Pendant im selben Ordner — deren
Norminhalt wurde nicht erneut gelesen, sondern gegen den bestehenden KB-Bestand (Register/
INDEX) abgeglichen.

## Ergebnis je Datei

| Datei | Ordner | Befund |
|---|---|---|
| `1001-1_2020_d.docx` | SIA1001.1_2020_Planer_Bauleitervertrag/ | Word-Vorlage, PDF-Pendant vorhanden; Inhalt bereits `established` (`destillate/sia-1001-1-2020.md`, Run 15/260717) |
| `1001-11_2018_d.docx` | SIA1001.11_BIM_Zusatzvereinbarung_BIM/ | Word-Vorlage, PDF-Pendant `1001-11-K_2018_d.pdf`; bereits `established` (`destillate/sia-1001-11-2018.md`) |
| `1001-2_2020_d.docx` | SIA1001.2_2020_Gesellschaftsvertrag_fuer_Planergemeinschaften/ | Word-Vorlage, PDF-Pendant vorhanden; bereits `established` (`destillate/sia-1001-2-2020.md`) |
| `230529_Vertragsunterschiede.docx` | 00_Vertag_Knowhow/ | **Kein Normtext** — eingefügter ChatGPT-Dialog zu SIA-1001/1002/1012-Vertragsfamilie. PDF-Pendant existiert entgegen Ursprungsnotiz. Nicht zitierfähig, nicht destillierbar (Rule `normen-referenz`) |
| `Link_Vertag.docx` | 00_Vertag_Knowhow/ | Enthält nur eine URL zu sia.ch, kein Fliesstext |
| `contrat d'architecte sine nomine.doc` | .../_Archiv/_SIA1002_2003_.../f/ | Archivierte, französischsprachige Vertragsvorlage der 2020 abgelösten Vorgängernorm SIA 1002:2003 |

Zusätzlich verifiziert (nicht Teil der 7er-Liste, aber derselbe Ordnerbaum): SIA 1001/3 ist
ebenfalls bereits `established` (`destillate/sia-1001-3-2020.md`).

## Einordnung

Sechs der sieben Dateien lösen sich auf: vier sind bereits inhaltlich in der KB abgedeckt
(established, adversarial verifiziert), zwei tragen keinen destillierbaren Fachinhalt. Die
siebte Datei (`230529_Vertragsunterschiede.docx`) ist ein aktiver Negativ-Fund: ein
KI-generiertes Dokument liegt in der offiziellen SIA-Vertragsablage von PL-02 und könnte bei
einem künftigen, weniger sorgfältigen Sweep versehentlich als Quelle missbraucht werden. In
`wiki/QUESTIONS.md` als Warnung festgehalten, kein Handlungsbedarf für Raphael.

## Verifikation

`git diff --numstat` nach dem Schreibvorgang auf `wiki/QUESTIONS.md`, `CHANGELOG.md` und
diese Datei geprüft — nur Anfügungen, keine fremde Zeile berührt. Kein `git commit`/`push`
über den SMB-Mount ausgeführt.
