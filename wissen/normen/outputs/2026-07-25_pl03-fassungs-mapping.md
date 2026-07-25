---
titel: "PL-03-Fassungs-Mapping: Identifikation der BSPUB-Dateien (Brandschutzrichtlinien 2015-17-22)"
datum: 2026-07-25
station: "MacBook Pro"
---

# PL-03-Fassungs-Mapping: Identifikation der BSPUB-Dateien

## Auftrag

Identifikation von vier nichtsprechend benannten Dateien im Ordner `PL - 03 Brandschutz/02
Brandschutzrichtlinien 2015-17-22` (Muster `BSPUB-<Nummer>.pdf`), Abgleich gegen den
Bestandsordner `PL - 02_Recht_Norm/02_Normen/VKF_Norm/02_Brandschutzrichtlinien 2015` und
gegen die bestehenden Destillate in `wissen/normen/destillate/`. Ziel: aufdecken, ob ein
Destillat auf einer überholten Fassung beruht. Reine Identifikation, keine inhaltliche
Destillation. Die Datei `BSPUB-1394520214-85.pdf` war ausgeschlossen (anderer Agent).

Ordner:
- PL-03 = `/Users/raphaeljans/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/PL - 03 Brandschutz/02 Brandschutzrichtlinien 2015-17-22`
- PL-02 = `/Users/raphaeljans/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/PL - 02_Recht_Norm/02_Normen/VKF_Norm/02_Brandschutzrichtlinien 2015`

## Zuordnungstabelle

| Datei (PL-03) | VKF-Publikation | Typ | Ausgabejahr (Titelblatt) | Fassung/Revision laut Dokument | PL-02-Pendant | Bestehendes Destillat | Destillat beruht auf überholter Fassung |
|---|---|---|---|---|---|---|---|
| `BSPUB-1394520214-57.pdf` | Brandschutznorm 1-15de | Brandschutznorm | 01.01.2015 (S. 1) | keine spätere Fassung im Dokument/im Ordner vorhanden; nur eine Ausgabe existiert | `BSPUB-1394520214-57.pdf` im PL-02-Ordner — **byte-identisch** (MD5 `9774b4dbb93629c00aeca8975c95d3ae` in beiden Ordnern) | `vkf-brandschutznorm-1-15de-bspub57.md` (Quelle im Frontmatter: exakt diese Datei, Ausgabe „01.01.2015" angegeben) | **Nein.** Datei ist identisch, keine neuere Fassung feststellbar. |
| `BSPUB-1394520214-71.pdf` | VKF-Brandschutzrichtlinie 13-15de „Baustoffe und Bauteile — Klassifikation" | Brandschutzrichtlinie | 01.01.2017 (Titelblatt S. 1: „01.01.2017 / 13-15de") | Fassung 01.01.2017; laut S. 2 „Vom IOTH am 22. September 2016 genehmigte Änderungen: Ziffer 2.4.1 Tabelle (Seite 8); Anhang zu Ziffer 3.4 Tabelle (Seite 24)" | Kein Pendant mit dieser Fassung im PL-02-Ordner. Dort liegt nur `Baustoff & Bauteile.pdf` — laut Titelblatt (S. 1) Fassung „01.01.2015 / 13-15de" (ältere, unrevidierte Ausgabe, keine BSPUB-Kennung im Dateinamen) | `vkf-brl-13-15-baustoffe-bauteile.md` — Frontmatter `quelle` zeigt explizit auf `.../02_Brandschutzrichtlinien 2015/Baustoff & Bauteile.pdf`, `ausgabe: "VKF-Brandschutzrichtlinie 13-15de: 01.01.2015"`, `datenstand: "2015"` | **Ja.** Destillat beruht nachweislich auf der Fassung 01.01.2015 und enthält die IOTH-Änderungen vom 22.09.2016 (Ziff. 2.4.1 Tabelle S. 8; Anhang zu Ziff. 3.4 Tabelle S. 24) nicht. |
| `BSPUB-1394520214-77.pdf` | VKF-Brandschutzrichtlinie 14-15de „Verwendung von Baustoffen" | Brandschutzrichtlinie | 01.01.2017 (Titelblatt S. 1: „01.01.2017 / 14-15de") | Fassung 01.01.2017; laut S. 2 „Vom IOTH am 22. September 2016 genehmigte Änderungen" — umfangreiche Liste: Ziffer 2 Abs. 2/3/4/7/8/12 (S. 4-5), Ziffer 3.2.1 Abs. 2, 3.2.3 Abs. 1-3, 3.2.6, 3.2.7 Abs. 1, 3.2.8-Tabelle, 3.3, 3.3.1 Abs. 5+6, 3.3.2-Tabelle (S. 6-9), Ziffer 4.1 Abs. 2, 4.2-Tabelle (S. 10-12), Ziffer 5.1, 5.1.1 Abs. 2, 5.1.2-Tabelle, 5.2.2, 5.3 (S. 12-14); zusätzlich Anhangsänderungen zu Ziff. 3.1.1, 3.2, 3.2.2, 3.2.3, 3.3, 3.3.1, 3.3.2, 4.2 (S. 17-28) | Kein Pendant mit dieser Fassung im PL-02-Ordner. Dort liegt nur `Verwendung von Baustoffen.pdf` — laut Titelblatt (S. 1) Fassung „01.01.2015 / 14-15de" (ältere, unrevidierte Ausgabe, keine BSPUB-Kennung) | `vkf-brl-verwendung-baustoffe.md` — Frontmatter `quelle` zeigt explizit auf `.../02_Brandschutzrichtlinien 2015/Verwendung von Baustoffen.pdf`, `ausgabe: "VKF-Brandschutzrichtlinie 14-15de: 01.01.2015"`, `datenstand: "2015"` | **Ja.** Destillat beruht nachweislich auf der Fassung 01.01.2015. Die Änderungsliste 22.09.2016 ist von den vier geprüften Dateien mit Abstand die umfangreichste (rund 20 Ziffern/Tabellen in Haupttext und Anhang betroffen). |
| `Brandschutzabstaende Tragwerke 17 BSPUB-1394520214-81.pdf` | VKF-Brandschutzrichtlinie 15-15de „Brandschutzabstände Tragwerke Brandabschnitte" | Brandschutzrichtlinie | 01.01.2017 (Titelblatt S. 1: „01.01.2017 / 15-15de") | Fassung 01.01.2017; laut S. 2 „Vom IOTH am 22. September 2016 genehmigte Änderungen": Ziffer 2.2 Abs. 2+3 (S. 5), Ziffer 2.4 (S. 6), Ziffer 3.1.2 Abs. 3 (S. 7), Ziffer 3.7.1 Tabelle 1 (S. 11); Anhang zu Ziff. 2.4 (S. 22-23), 3.3.3 (S. 27), 3.7.11 (S. 33), 3.7.13 (S. 34) | Datei liegt bereits **byte-identisch** auch im PL-02-Ordner (MD5 `6dcc54f34a2d6b9a1145a446f97688ed` in beiden Ordnern), zusätzlich zur älteren `Brandschutzabstaende Tragwerke 15.pdf` (Titelblatt 01.01.2015 / 15-15de) | `vkf-brl-15-15-brandschutzabstaende-tragwerke.md` — Frontmatter `quelle` nennt bereits **beide** Dateien/Fassungen explizit („Titelblatt-Druckdatum 01.01.2015, unrevidierter Stand" UND „01.01.2017, revidierter Stand gemäss Beschluss IOTH vom 22.09.2016"), Status „established (verifiziert)", Vermerk `verifiziert: "260714, Retro-Verifikation Run 7"` | **Nein.** Destillat ist bereits nachweislich auf die 2017er-Fassung abgestützt und wurde am 14.07.2026 gegen beide Fassungen verifiziert. |

## Fachliche Priorisierung

1. **`BSPUB-1394520214-77.pdf` → Destillat `vkf-brl-verwendung-baustoffe.md` (BRL 14-15de, Verwendung von Baustoffen).**
   Höchste Priorität für den Nachzug: Die IOTH-Revision vom 22.09.2016 betrifft hier den mit
   Abstand grössten Teil des Dokuments (rund 20 Ziffern über Haupttext Ziff. 2-5 und Anhang).
   Die Richtlinie regelt unmittelbar praxisrelevante Anforderungen (welches Brandverhalten
   RF1-RF4 ein Baustoff je nach Einbauort/Gebäudegeometrie/Nutzung erfüllen muss) — ein
   veraltetes Destillat kann hier zu falschen Materialanforderungen in Ertüchtigungs-Factsheets
   oder Ausschreibungstexten führen.

2. **`BSPUB-1394520214-71.pdf` → Destillat `vkf-brl-13-15-baustoffe-bauteile.md` (BRL 13-15de, Baustoffe und Bauteile Klassifikation).**
   Zweite Priorität: Die Revision betrifft eine Tabelle (Ziff. 2.4.1, S. 8) und eine
   Anhangstabelle (zu Ziff. 3.4, S. 24). Kleinerer Umfang als bei 14-15de, aber die Richtlinie
   ist die Klassifikations-Grundlage (RF-Klassen, EN/VKF-Zuordnung), auf die andere Richtlinien
   — darunter die betroffene 14-15de selbst — verweisen; ein veraltetes Fundament wirkt sich
   potenziell auf mehrere andere Destillate aus.

3. **`BSPUB-1394520214-57.pdf` (Brandschutznorm 1-15de) und die Tragwerke-Richtlinie 15-15de**
   erfordern keinen Nachzug: Bei der Norm existiert nur eine Ausgabe, beim Tragwerke-Destillat
   ist die 2017er-Fassung bereits eingearbeitet und verifiziert.

## Methodischer Hinweis (nicht Teil des Kernbefunds)

Das Destillat `vkf-brl-15-15-brandschutzabstaende-tragwerke.md` zeigt das Zielmuster für die
beiden zu korrigierenden Destillate: Frontmatter mit expliziter Nennung beider Fassungen
(Ausgabejahr Titelblatt getrennt von Revisionsdatum/-organ), Änderungsliste mit Fundstellen,
`status: established (verifiziert)` erst nach Abgleich. Dieses Mapping liefert nur die
Identifikation; die inhaltliche Nachführung der beiden betroffenen Destillate (Einarbeitung
der IOTH-Änderungen vom 22.09.2016 nach demselben Muster) ist nicht Teil dieses Auftrags.
