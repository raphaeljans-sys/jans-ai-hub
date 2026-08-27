---
quelle: "Nationaler Nachweisformular-Satz der Kantone (EN-101a bis EN-141) auf der amtlichen EnDK-Plattform energiehub-gebaeude.ch — Ausgabenstand-Erhebung"
herausgeber: "EnDK — Konferenz Kantonaler Energiedirektoren / EnFK — Konferenz Kantonaler Energiefachstellen"
ausgabe: "Formularsatz mit Stand 28.11.2025 neu gestempelt auf «gültig bis 31.12.2026»; die Sachversionen der einzelnen Formulare blieben unverändert (September 2016 bis Juni 2023)"
gelesen: 2026-08-27 (12 Formular-PDFs einzeln geladen, Fusszeile und PDF-Metadaten je Datei ausgewertet)
datenstand: "2026-08-27 — erhoben an der amtlichen EnDK-Plattform (energiehub-gebaeude.ch, Ziel des HTTP-301 von endk.ch/de/fachleute-1/vollzugshilfen)"
status: established
sources:
  - "energiehub-gebaeude.ch, WordPress-REST-API /wp-json/wp/v2/media — vollständige Dateiliste der EN-Dokumente (66 Treffer) am 2026-08-27 abgefragt; umgeht die JS-gerenderte Seitenansicht"
  - "12 Formular-PDFs (EN-101a, EN-102a/b/c, EN-103, EN-104, EN-105, EN-110, EN-111, EN-112, EN-120, EN-141), Upload 2026-01-13, je Fusszeile und pdfinfo-ModDate direkt ausgewertet"
  - "Vollzugshilfe EN-102 (Upload 2025-08-12, Datei EN-102-d_Waermeschutz_3801_2016_2020Jan-2.pdf): PDF-Title «Vollzugshilfe EN-102», CreationDate 2020-02-20, Fusszeile durchgehend «Ausgabe Januar 2020 (Basis: Norm SIA 380/1, Ausgabe 2016)»"
last_updated: 2026-08-27
quelle_pfad: "Web (amtliche EnDK-Plattform)"
---

# Ausgabenstand der nationalen EN-Nachweisformulare (Stand 27.08.2026)

## Das Wichtigste in 1 Satz
Die EnDK hat den gesamten nationalen Formularsatz am **28.11.2025** neu gestempelt und die Gültigkeit
auf **31.12.2026** verlängert, **ohne die Formulare inhaltlich zu revidieren** — die
MuKEn-2025-Generation der Formulare und Vollzugshilfen ist per 27.08.2026 **noch nicht publiziert**.

## Zwei Dokumentfamilien unter derselben EN-Nummer (nie verwechseln)
| Familie | Was es ist | Beispiel | Ausgabelogik |
|---|---|---|---|
| **Vollzugshilfe** | erklärendes Fachdokument mit Grenzwerten und Tabellen | «EN-102 Wärmeschutz von Gebäuden», 18 S. | **Ausgabe Januar 2020** |
| **Nachweisformular** | auszufüllendes Eingabeformular der Baueingabe | «EN-102a Einzelbauteilnachweis», 2 S. | **Version August 2020**, gültig bis 31.12.2026 |

Beide tragen die Nummer «EN-102». Eine Fundstelle ist erst eindeutig, wenn die **Familie** mitgenannt
ist. Diese Verwechslungsgefahr ist die Hauptursache widersprüchlicher Datumsangaben zu EN-Nummern.

## Erhobener Ausgabenstand der Formulare (je Fusszeile des Originals)
| Formular | Sachversion | gültig bis | ModDate der Datei |
|---|---|---|---|
| EN-101a Deckung Energiebedarf | September 2022 | 31.12.2026 | 28.11.2025 |
| EN-102a Wärmedämmung Einzelbauteil | August 2020 | 31.12.2026 | 28.11.2025 |
| EN-102b Wärmedämmung Systemnachweis | Oktober 2018 | 31.12.2026 | 28.11.2025 |
| EN-102c Checkliste Wärmebrücken (V 10.0) | Juni 2023 | 31.12.2026 | 28.11.2025 |
| EN-103 Heizungs-/Warmwasseranlagen | März 2019 | 31.12.2026 | 28.11.2025 |
| EN-104 Eigenstromerzeugung Neubauten | Juni 2019 | 31.12.2026 | 28.11.2025 |
| EN-105 Lüftungstechnische Anlagen | August 2017 | 31.12.2026 | 28.11.2025 |
| EN-110 Kühlung/Befeuchtung | August 2017 | 31.12.2026 | 28.11.2025 |
| EN-111 Beleuchtung | März 2019 | 31.12.2026 | 28.11.2025 |
| EN-112 Kühlräume | August 2017 | 31.12.2026 | 28.11.2025 |
| EN-120 Erneuerbare Wärme b. Wärmeerzeugerersatz | Juni 2019 | 31.12.2026 | 28.11.2025 |
| EN-141 Gebäudeautomation | September 2016 | 31.12.2026 | 28.11.2025 |

**Lesart:** identischer ModDate-Tag über alle zwölf Dateien plus identische neue Gültigkeitsangabe bei
unveränderten Sachversionen = **Sammel-Neustempelung der Gültigkeit**, keine inhaltliche Revision.

## Bestätigte Ausgabenstände (Gegenprobe, keine Korrektur nötig)
- **Vollzugshilfe EN-102 = Ausgabe Januar 2020** (Basis SIA 380/1:2016). Die auf der amtlichen
  Plattform liegende Fassung ist die vom Destillat `[[enfk-en-102-waermeschutz-2018]]` geführte.
  **Keine neuere Ausgabe vorhanden.**
- **Merkblatt Fenster = Ausgabe 2021.** Auf der Plattform liegt genau eine Datei
  (`Merkblatt_Fenster_D_2021.pdf`); ihr SHA-256 ist **byte-identisch** mit dem in Run 164
  protokollierten Hash `95c204f6…5aed0ddd`. Eine Zwischen- oder Folgeausgabe existiert nicht →
  `[[enfk-fensterblatt]]`.
- **HFM 2015, revidierte Fassung September 2016**, bleibt die geltende Förder-Grundlage (endk.ch,
  Datei-Upload Juli 2025, PDF-CreationDate 08.12.2016) → `[[gebaeudeprogramm-bund-hfm-2015]]`.

## Bauherren-Transfer
- **Bis Ende 2026 gilt der bekannte Formularsatz.** Wer 2026 eine Baueingabe macht, arbeitet mit den
  heutigen Formularen und Grenzwerten; ein MuKEn-2025-bedingter Wechsel steht in diesem Jahr nicht an.
- **Auf den Jahreswechsel 2026/27 achten:** Die Gültigkeit endet am 31.12.2026. Ob die Kantone dann
  erneut verlängern oder die MuKEn-2025-Generation einführen, ist offen — bei Projekten mit Eingabe
  Anfang 2027 ist das ein Terminrisiko, das früh anzusprechen ist.
- **Kanton Zürich fährt seit 1.1.2026 elektronisch** über EVEN; die nationalen Formulare bilden dort
  die inhaltliche Struktur, nicht mehr das Einreichemedium → `[[en-zh-nachweis-uebersicht]]`.

## Methodischer Nebenbefund (Werkzeug)
Die Vollzugshilfen-Übersicht auf `energiehub-gebaeude.ch` ist **JS-gerendert** und liefert per curl
keine Dateiliste — der in Run 164 als **E-R164-1** vermerkte Blocker. Die Plattform läuft auf
WordPress; die **REST-API** `/wp-json/wp/v2/media?search=<begriff>&per_page=100` gibt die vollständige
Dateiliste mit Upload- und Änderungsdatum heraus. Damit ist der Blocker gegenstandslos und der
Ausgabenstand dieser Plattform jederzeit maschinell prüfbar.

## Offene Punkte
- Die Erhebung deckt die **zwölf meistzitierten** EN-Nummern ab, nicht den ganzen Satz
  (EN-106, EN-113, EN-121 bis EN-123, EN-130 bis EN-136, EN-140, EN-142 nicht einzeln geöffnet).
- **Kein Publikationstermin** für die MuKEn-2025-Vollzugshilfen auffindbar; die Plattform führt dazu
  nur MuKEn-2025-Grunddokumente (`MuKEn2025_d-2025-08-29.pdf`, `Vergleich_MuKEn_14_25_D.pdf`).
- Ob die Kantone die Gültigkeit über den 31.12.2026 hinaus erneut verlängern, ist offen.

## Verwandt
`[[enfk-en-102-waermeschutz-2018]]` · `[[enfk-fensterblatt]]` · `[[en-zh-nachweis-uebersicht]]` ·
`[[muken-2025-verabschiedet]]` · `[[gebaeudeprogramm-bund-hfm-2015]]` ·
`[[enfk-en-104-eigenstromerzeugung]]` · `[[en-lueftung-kuehlung-zh]]`
