# Quellen-Inventar: grobkosten (04_Buero/02_Projekte)

Stufe 1 des Trainings-Loops (Run 1, 25.07.2026). Systematische Durchsicht aller Projektordner
unter `/Volumes/daten/04_Buero/02_Projekte/` auf Kostendokumente. Gefunden via
`find -iname "*kosten*"` (Tiefe bis 5) + manuelle Sichtprüfung jedes Treffers (Dateiinhalte
gegen den Real-Test: enthält BAUKOSTEN einer Baute mit Gebäudevolumen und BKP-1-5-Bezug,
nicht Honorar/Möbel/Fremdwährung/Leerordner).

Legende Verwertbarkeit: `[ ]` offen (noch nicht extrahiert) · `[x]` ausgewertet (Eintrag in
`raw/` erstellt) · `[-]` untauglich (Grund angegeben).

## Ergebnis vorweg

Von 21 Projektordnern haben **10 keinerlei Kostendokumente** (reine Konzept-/Planungs-/
Fotoordner) und die übrigen **11 mit "Kosten" im Pfad enthalten bei genauer Prüfung
KEIN einziges auswertbares Gebäude-Kostendokument** mit Gebäudevolumen (GV) und BKP-1-5-
Kostensumme. Die Ordnerstruktur (00_Wettbewerb…08_Revision, 40 Kostenschätzung…44
Baubuchhaltung) suggeriert auf den ersten Blick eine reiche Datenlage (daher die
"verifizierten Beispiele" in `training/PROGRAMM.md`) — bei Dateiebene sind die meisten
dieser Ordner jedoch **leere Struktur-Schablonen** (nur `.DS_Store`), Möbel-/Preisvergleiche,
Honorarofferten oder fachfremdes Material. Das ist ein wichtiger, produktiver Befund für
Stufe 1: der reale Bestand unter `02_Projekte` trägt aktuell **keine** GV/BKP-Kennwerte bei.

Wahrscheinliche Ursache: JANS-Bauleitungsmandate mit echter Kostenkontrolle/Schlussabrechnung
laufen heute über die **SharePoint-Projektordner** (`AR - 03 Studien/`, aktive Mandate wie
KISPI/Albertstrasse/Thalwil, Rule `projekt-ablage-stand`), nicht über dieses NAS-Altarchiv
`04_Buero/02_Projekte` (chronologisch 2010–2015, Frühphase des Büros). Diese Vermutung ist
NICHT verifiziert (kein Zugriff/Suchauftrag auf SharePoint in diesem Lauf) und wird als offene
Frage in `wiki/QUESTIONS.md` festgehalten.

## Projekte ohne jedes Kostendokument (kein "Kosten"-Treffer)

| Projekt | Inhalt (gesichtet) | Verwertbarkeit |
|---|---|---|
| 00_Allgemein | nicht vertieft (kein Projekt) | `[-]` kein Projektordner |
| 1113_Arbeitsplatz_Eiche | .pln-Datei, Adressen, PDF | `[-]` keine Kostenordner |
| 1114_Dorfbachstrasse_5 | nur Beleuchtungskonzept | `[-]` keine Kostenordner |
| 1116_Steinhofstr | Fotos, Pläne | `[-]` keine Kostenordner |
| 1207_St_Karli13 | nur Pläne | `[-]` keine Kostenordner |
| 1316_Dubai | nur Collage | `[-]` keine Kostenordner |
| 1317_Lorraine_Portikus | nur Konzept | `[-]` keine Kostenordner |
| 1319_Kasernenareal | Ideen/Studie (Wettbewerb) | `[-]` keine Kostenordner |
| 1525_Arbeiten_Ferien_Kollhoff | ein Word-Dokument (Ferienarbeit) | `[-]` keine Kostenordner |
| 1526_Ateliersuche | leer | `[-]` keine Kostenordner |
| 1603_Steinhof | CAD, Skizzen, Cover-Bild | `[-]` keine Kostenordner |

## Projekte mit "Kosten"-Ordnern — Einzelprüfung

| Projekt | Pfad | Dokumenttyp (behauptet vs. real) | Verwertbarkeit / Grund |
|---|---|---|---|
| 1011_Lorrainestr_4 | `04_Kosten/00_Offerten/111118_Offerte_Jans_Back.docx` | Honorarofferte (Architektenhonorar SIA 102, kein Baukosten-GV) | `[-]` untauglich: Honorar, nicht Baukosten; gehört ggf. zu `honorarberechnung-sia102`, nicht `grobkosten` |
| 1011_Lorrainestr_4 | `04_Kosten/Referenzen_Baukostenplan/BKP/…` | BKP-Referenzmaterial (CRB 1989, ETHZ-Skript, Fachbegriffe) | `[-]` untauglich: Nachschlagewerke, keine Projektkosten (bereits durch `references/bkp-2017/` abgelöst) |
| 1012_Ardez | `04_Kosten/00_Vorlagen/…`, `03_Vorprojekt`, `04_Bauprojekt/01_Kostenvoranschlag`, `08_Revision` | Struktur suggeriert KV+Revision | `[-]` untauglich: alle Projektordner leer (nur `.DS_Store`); `00_Vorlagen` enthält nur generische Baupreisindex-Tabellen (BFS, bis 2002) und ein leeres Honorar-Template |
| 1115_Kostenberechnung | `Grobkostenberechnung.docx` | "Grobkostenberechnung" | `[-]` untauglich: leeres Formular-Template (nur Kopfzeile "Bauvolumen × Kubikpreis", keine Werte) |
| 1303_Steinhof | `04_Kosten/01_Wettbewerb … 08_Revision` (8 Phasenordner) | vollständige Phasenkette suggeriert | `[-]` untauglich: alle 8 Ordner komplett leer (nur `.DS_Store`) |
| 1318_Lorraine_Kueche | `03_Kueche_Maria/03_Kostenschaetzung/…` | Kostenschätzung/KV/DEVI/Kostenkontrolle, BKP 273/240/250 | `[-]` untauglich für GV-Kennwerte: Kücheneinbau/Innenausbau eines Zimmers, kein Gebäude mit GV; wertvoll als künftige BKP-Einzelposition-Referenz (Schreiner/Heizung/Sanitär), aber ausserhalb des Scopes "CHF/m³ GV Gesamtgebäude" dieses Loops |
| 1524_Winterthur_Erweiterung_Bezirksgebaeude | `2 Rahmenbedinungen/6_Kosten` | KV-Ordner suggeriert | `[-]` untauglich: Ordner komplett leer |
| 1525_Bauhaus Museum Dessau | `2 Rahmenbedinungen/6_Kosten` | KV-Ordner suggeriert | `[-]` untauglich: Ordner komplett leer |
| 1527_EH Europe GmbH | `4 Kosten/00_Preisvergleich/…` (~270 Dateien), `41 Kostenermittlung KV/410 Grundlagen`, `7 Ausführung/75 Baunebenkosten` | "40 Kostenschätzung"/"42 KV"/"44 Baubuchhaltung" suggerieren Baukosten | `[-]` untauglich: reiner Büroumzug/Möbel-Fitout (Preisvergleich Schreibtische/Stühle/Schränke diverser Hersteller), kein Bauvolumen/GV; die numerierten BKP-900-Stücklisten sind Mobiliar (BKP 9), nicht BKP 1-5; Unterordner 41/75 sind leer |
| 1602_St_Karli_11 | `04_Offerten/00_Archiv/01_Wettbewerb … 08_Revision` (8 Phasenordner, inkl. `08_Revision/01_Kostenfeststellung`) | vollständigste Phasenkette im ganzen Archiv (Wettbewerb → Kostenfeststellung) | `[-]` untauglich: alle 8 Ordner komplett leer (nur `.DS_Store`), obwohl die Struktur genau das Zielbild eines vollständigen Kostenverlaufs zeigt — grösste Enttäuschung des Laufs |
| 1604_Palladio_Proportionen_1 | `00_Kommunikation/CISA/in/140211_Kostenvoranschlag/preventivo 57.pdf` | "Kostenvoranschlag" | `[-]` untauglich: italienisches "preventivo" im Kontext CISA Vicenza (Palladio-Studienprojekt), keine Schweizer Baute/BKP-Bezug, Inhalt nicht als Gebäude-KV verifiziert |

## Fazit Stufe 1

- 0 von 21 Projektordnern liefern ein auswertbares GV/BKP-1-5-Kostendokument.
- Stufe 2 (Extraktion) kann in diesem Bestand **nicht** anlaufen — es gibt nichts zu extrahieren.
- Einzige nicht komplett wertlose Fundstelle: 1318 Lorraine_Kueche (BKP-Detailpositionen
  Schreiner/Heizung/Sanitär für einen Kleinausbau) — ausserhalb des GV-Scopes, für eine
  spätere BKP-Einzelposition-KB potenziell nutzbar, hier nicht verwertet.
- Empfehlung (siehe `wiki/QUESTIONS.md`): Zweitquelle gemäss `training/PROGRAMM.md`
  ("`kostenkontrolle`-Outputs und Schlussabrechnungen der aktuellen Mandate, SharePoint-
  Projektordner") in einem künftigen Lauf prüfen — dort laufen die aktiven Mandate mit
  echter Kostenkontrolle (KISPI, Albertstrasse, Thalwil u.a.), die dieses Alt-NAS-Archiv
  (2010–2015, Frühphase des Büros) nicht abdeckt.

## Geprüfte Suchtiefe

`find /Volumes/daten/04_Buero/02_Projekte -iname "*kosten*" -type d` bis Tiefe 5, danach
`find -type f` je Treffer-Ordner vollständig gelistet und stichprobenartig geöffnet
(docx/pdf-Kopfzeilen). Keine weiteren Namensvarianten offen (Suche deckte "Kosten",
"kosten" gross/klein sowie die im PROGRAMM genannten Alt-Bezeichnungen "4 Kosten",
"6_Kosten" ab).

## Run 2 (25.07.2026) — Zweitquelle SharePoint `AR - 01 Projekte` (aktive Mandate)

Bestätigt die in `wiki/QUESTIONS.md` (2026-07-25) offen gelassene Vermutung: die aktiven
JANS-Bauleitungsmandate führen ihre Kostendokumente NICHT im NAS-Altarchiv, sondern in den
SharePoint-Projektordnern `OneDrive-FreigegebeneBibliotheken–JANS/AR - 01 Projekte/<projektnr>/`.
Systematische Durchsicht aller 8 aktiven Mandatsordner (Tiefe 3, `find -iname "*kosten*"` +
Sichtprüfung der Dateiebene):

| Projekt | Kosten-Fund | Verwertbarkeit |
|---|---|---|
| 2414 THALWIL | `04 KT/1_Kosten/Kostenschätzung JANS/`, `.../Kostenvoranschlag pw/`, `04 KT/5 Näherbaurecht/Grobkostenberechnung III...docx` | `[x]` extrahiert Run 2 → `raw/2414-thalwil.md`: volles BKP-1-6-Bild (Total 526'300, kein GV) + zwei Teilvolumen-Kennwerte (Aufstockung 1'600, Anbau 800 CHF/m³, Einzelfall n=1) |
| 2515 WARTSTRASSE_7 | `04_KostenTermine/1_Kosten/260223 2515 WARTSTRASSE8 GKS.pdf` (+ Vorversionen `_Archiv`) | `[x]` extrahiert Run 2 → `raw/2515-wartstrasse.md`: kein GV, Fassaden-Teilprojekt CHF 25'200, nicht verwertbar für GV-Kennwerte |
| 2518_Grubenackerstrasse_7 | `04_KostenTermine/1_Kosten/2_Kostenschätzung/230405_GKS/230405_GKS.docx` | `[x]` extrahiert Run 2 → `raw/2518-grubenackerstrasse.md`: 950-1'050 CHF/m³ auf nicht SIA-416-verifiziertem Volumen 1'668 m³, Nutzung unbekannt — Einzelfall n=1, unverifiziert. Nebenbefund: Unterordner `230324 Kostenvergleich Liftposition` ist eine Fehlablage (Daten zweier fremder Projekte), nicht verwendet |
| 2619_KINDERSPITAL | `04_KostenTermine/1_Kosten/4_Baukosten/2619 KISPI BAUKOSTEN.xlsx` (Baukosten, nahe Ist), `.../2_Kostenschätzung/`, `.../3_Kostenvoranschlag/` — umfangreichstes Kostendossier im ganzen Bestand | `[-]` **bewusst ausgeschlossen**: Kinderspital Zürich = Healthcare-Institution, gehört gemäss `training/PROGRAMM.md` ("Healthcare gehört nicht hierher") in den Skill `kostenschaetzung` (Wüest-Partner m²-NF-Daten), nicht in `grobkosten`. Empfehlung an `kostenschaetzung`-Loop weitergeben (siehe `wiki/QUESTIONS.md`). |
| 2201 Laternengasse | `04_KTV/01_Kosten/` (KV Sanitär-Ausmass, Modul3 BakeryCafé-Kosten, alte Kostenschätzung) | `[-]` untauglich für GV-Scope: reine Fitout-/Mieterausbau-Einzelpositionen (Sanitär, Café-Modul), kein Gesamtgebäude-GV; analog zu `1318_Lorraine_Kueche` potenziell für eine künftige BKP-Einzelposition-KB, hier nicht verwertet |
| 2516 WINTERBERG | `04_KostenTermine/1_Kosten/` | `[-]` Ordner leer |
| 2517 MOW | kein Treffer | `[-]` keine Kostenordner |
| 2620_KELLER (Albertstrasse 7) | Run 2: kein Treffer unter `AR - 01 Projekte` (Tiefe 2). Run 4/Run 8: Fund unter anderem Pfad — `AR - 03 Studien/2620 ALBERTSTRASSE 7/04 KT/Kosten/` (GKS-Varianten + KV Direktvermietung light) | `[x]` extrahiert Run 4 (Hauptkontext), Register-Nachtrag Run 8 → `raw/2620-albertstrasse.md`: Dachausbau-Variante 2'500 CHF/m³ (350 m³, Einzelfall n=1) in `kennwerte.md` aufgenommen |

Ergebnis: **3 auswertbare Gesamtgebäude-Kostendokumente** gefunden und extrahiert (Thalwil,
Wartstrasse 8, Grubenackerstrasse 7) — die ersten realen JANS-Kostendaten in dieser KB.
Details siehe `raw/`, Verdichtung siehe `wiki/kennwerte.md`.

Nicht geprüft in Run 2: SharePoint-Ordner ausserhalb `AR - 01 Projekte` (z.B. `AR - 07 Archiv`
für abgeschlossene Mandate mit Schlussabrechnung) — Kandidat für Run 3.

## Run 8 (27.07.2026) — Registerpflege statt neuer Projektordner: orphaned Extraktion nachgetragen + Stufe-4-Baustein extern gelöst

Kein neuer Projektordner geprüft. Zwei Befunde:

1. **Registerlücke geschlossen:** `raw/2620-albertstrasse.md` existierte bereits (Run 4,
   25.07.2026, Hauptkontext-Extraktion), war aber weder in `kennwerte.md` noch in
   `quellen-inventar.md` noch im `CHANGELOG.md` nachgeführt — eine liegen gebliebene
   Registrierung (vermutlich ein Lauf, der vor dem letzten Schritt endete). Nachgetragen: die
   Dachausbau-Variante (350 m³, 2'500 CHF/m³) ist jetzt der erste reale Umbau-Einzelfall dieser
   KB (Abschnitt "Umbau/Sanierung" in `kennwerte.md`, vorher nur Faustregel-Verweis ohne
   Zahlenwert).
2. **Stufe-4-Baustein (Zürcher Baukostenindex, aus Run 6 als "noch nicht bewertet" offen
   gelassen) im Hauptkontext (WebSearch/WebFetch, kein OneDrive-Zugriff nötig) gelöst:** die bei
   2004 abbrechende JANS-eigene Fassung lässt sich mit einer bis 01.04.2025 fortgeführten
   Fassung derselben amtlichen Reihe verketten (identische Werte bis 2004, dann nahtlos
   weitergeführt) → `raw/zuercher-index-wohnbaukosten-1939-2025.md`, fertige
   Umrechnungsfaktoren in `kennwerte.md`.

Empfehlung für Run 9: die jetzt verfügbaren Teuerungsfaktoren auf die bestehenden Einzelfälle
anwenden (Preisstand-Normalisierung), sobald die MFH-Standard-Klassifikationsfrage
(`wiki/QUESTIONS.md`, Frage 2) geklärt ist — sonst neue SharePoint-Bereiche `AR - 02
Wettbewerbe`, `AR - 04 Honorarauftraege`, `AR - 05 Transfer` (bisher ungeprüft) sichten.

## Run 9 (27.07.2026) — Reine Verdichtung, kein neuer Projektordner: Teuerungs-Normalisierung angewendet

Kein neuer Projektordner geprüft (keine Inventar-Zeilen-Änderung). Die in Run 8 gefundenen
Baupreisindex-Faktoren wurden auf die vier Einzelfälle mit sauberem GV+BKP-1-5-Tripel
angewendet (2001 Haus Deuber, 2304 Reckholdern, 8155 Niederhasli, 2620 Albertstrasse) —
lineare Interpolation zwischen den nächsten belegten Index-Stützstellen, keine Extrapolation
über den letzten Anker (01.04.2025) hinaus. Details: `wiki/kennwerte.md` Abschnitt "Run 9",
`wiki/QUESTIONS.md`. Ergebnis: die Preisstand-Korrektur ändert die MFH-Streuung nur wenig —
Frage 1/Frage 2 bleiben der eigentliche Blocker für eine Median-Bildung, nicht der Preisstand.

Empfehlung für Run 10: gemäss Option (b) aus Run 8/9 neue SharePoint-Bereiche `AR - 02
Wettbewerbe`, `AR - 04 Honorarauftraege`, `AR - 05 Transfer` sichten (bisher ungeprüft) — mit
Fokus auf einen Fall, der die Standard-Klassifikation textlich eindeutig belegt.

## Run 7 (27.07.2026) — Vertiefung der drei Run-6-Kandidaten (kein neuer Projektordner)

Gemäss Run-6-Vorschlag die drei dort identifizierten, aber nicht extrahierten Kandidaten
geprüft (Excel-Einsicht via `openpyxl`, lokale venv `/tmp/venv-xlsx-grobkosten`).

| Kandidat | Ergebnis |
|---|---|
| Pre-Check-Tool 2305 Wädenswil (`IMMO - 03 KNOW-HOW/05 Residualwert/Exel Tabelle/jans/Immo-02-P23D-Pre-Check_Tool_Jans.xlsx`) | `[x]` extrahiert Run 7 → `raw/2305-waedenswil-precheck.md`: GV oi 11'724.48 m³, Baukosten-Feld trägt intern widersprüchliche Beschriftung («Faktor BKP 2 zu BKP 1-5» vs. Output-Label «Total BKP 1-9») — Frage 1 aus `QUESTIONS.md` damit NICHT gelöst, sondern mit konkretem Beleg der Tool-internen Inkonsistenz vertieft. Kennwert (1'380–1'546 CHF/m³) bewusst NICHT promoviert (wie Wald Haselstudstrasse). |
| 2304 Waedenswil Residualwert-Tool (`AR - 03 Studien/2304 Waedenswil/…`) | `[-]` geprüft, aber nicht verwertbar: Projektnummer-/-name-Felder im Dokument leer, Zahlen (GV oi 9'080 m³, BKP1-9 12.21–13.06 Mio) nicht eindeutig demselben Projektstand zuordenbar — keine Kennwert-Übernahme ohne verifizierte Provenienz |
| Langnau Giebelweg 12 (`IMMO - 01 Projekte/01 BEWERTUNG PROJEKTE/8135 Langnau 3338 Giebelweg 12 LB Liegenschaftsbewertung/260603_Bewertung_Giebelweg12_Langnau.md`) | `[-]` bestätigt nicht verwertbar: Erstellungskosten «≈ CHF 1.9 Mio inkl. Abbruch» ist explizit eine Residualwert-**Annahme** innerhalb einer Bewertungsrechnung (keine eigene Kostenschätzung, keine BKP-Gliederung), GV 1'152 m³ zulässig (nicht Bestandes-Ist) |

**Ergebnis Run 7:** 1 neuer, aber bewusst nicht promovierter Roh-Beleg (2305 Wädenswil,
vertieft die BKP-1-9-vs-1-5-Unklarheit statt sie zu lösen); 2 Kandidaten abschliessend als
nicht verwertbar geschlossen. Damit sind alle drei Run-6-Kandidaten `[x]`/`[-]` bearbeitet.
Kein neuer Kennwert in `wiki/kennwerte.md` in diesem Lauf. Offen bleibt der vierte Run-6-
Baustein (Zürcher Baukostenindex-Referenztabelle für Stufe 4) — noch nicht bewertet.

## Run 6 (27.07.2026) — Fünfte bis achte Quelle: `AR - 03 Studien`, `IMMO - 01 Projekte`, `IMMO - 02/03/05`, zweite SharePoint-Bibliothek

Vier weitere, bisher ungeprüfte SharePoint-Bereiche parallel durch vier Subagenten gesichtet
(Vorschlag aus `wiki/QUESTIONS.md`, Run 5).

**`AR - 03 Studien`** (18 Projektordner geprüft, 2410 WALD als Healthcare a priori
ausgeschlossen): 1 klar verwertbarer Fund (2001 Haus Deuber, `[x]` → `raw/2001-haus-deuber-
thalwil.md`), 1 teilweise verwertbarer, aber nicht extrahierter Kandidat (2304 Waedenswil
Residualwert-Tool: CHF/m³-Kennwert 1'566 vorhanden, aber GV selbst nicht explizit ausgewiesen
und BKP-1-5-Aufschlüsselung fehlt — `[ ]` offen für einen künftigen Lauf mit Excel-Einsicht),
Rest `[-]` nicht verwertbar (u.a. acht Projektordner mit identischem, nie ausgefülltem
GKS-Copy-Paste-Template — siehe Nebenbefund unten).

**`IMMO - 01 Projekte`** (14 Projektordner/-unterordner geprüft): 3 verwertbare Funde
(Niederhasli Seestrasse 64 `[x]` → `raw/8155-niederhasli-seestrasse64.md`; Wald
Haselstudstrasse `[x]` extrahiert, aber wegen BKP-1-9-vs-1-5-Vorbehalt nicht in `kennwerte.md`
promoviert → `raw/2411-wald-haselstudstrasse.md`; Ebmatingen Im Grossacher 2 zweites Dokument
`[x]` extrahiert, aber ohne GV nicht verwertbar → Addendum in `raw/2412-ebmatingen-
grossacher.md`), 1 mit Einschränkung (Langnau Giebelweg 12: GV 1'152 m³ explizit, aber Kosten
nur als "Annahme" innerhalb einer Residualwertberechnung, nicht aus eigener Kostenschätzung —
`[ ]` offen, zu schwach für Übernahme in diesem Lauf), Rest `[-]` (u.a. TDD Baar ohne
Objektbezug, Dubletten zu bekannten Projekten, reine Marktwert-/Rendite-Dokumente ohne
Erstellungskosten-Bezug).

**`IMMO - 02 UBSFS`**: `[-]` vollständig geprüft, komplett out of scope (reine Gemeinde-
Marktstatistik, keine Gebäude-Erstellungskosten).

**`IMMO - 03 KNOW-HOW`**: 1 verwertbarer, aber nicht extrahierter Kandidat (Pre-Check-Tool
Jans, Projekt 2305 Wädenswil: GV 11'724 m³ oi explizit, Erstellungskosten BKP1-9 16.18-18.12
Mio CHF — `[ ]` offen für einen künftigen Lauf, in diesem Lauf aus Kapazitätsgründen
zurückgestellt), 1 generische Referenztabelle ohne Projektbezug (Schätzungsanleitung Kap. 5:
Zürcher Baukostenindex 1939-2004, CHF/m³-Bandbreiten nach Bauklasse I-VI — potenziell wertvoll
für die in `training/PROGRAMM.md` Stufe 4 geforderte Teuerungs-Normalisierung, `[ ]` offen,
nicht als Projekt-Einzelfall zu behandeln), Rest `[-]` (Healthcare-Verweis bewusst
ausgeklammert, Kurs-/Übungs-Excel ohne Realbezug, reine Marktwert-/Methodik-Dokumente).

**`IMMO - 05 Bodenpreise`**: `[-]` vollständig geprüft, komplett out of scope (reine
Landpreis-Referenzen, keine Erstellungskosten).

**Zweite SharePoint-Bibliothek `OneDrive-FreigegebeneBibliotheken–RaphaelJans-ArchitektenETH`**:
`[-]` vollständig geprüft — enthält insgesamt nur 4 Dateien (2 bereits bekannte Projekte als
Dubletten, 2 neue aber reine Architektur-Plan-PDFs ohne Kostenbezug). Auffällig dünn besetzt
(letzte lokale Änderung September 2025) — möglicherweise nicht vollständig synchronisiert,
technisch von dieser Station aus nicht klärbar.

**Nebenbefund (Datenqualität, nicht grobkosten-spezifisch, aber vermerkt):** Acht
Projektordner unter `AR - 03 Studien` (2304 Waedenswil selbst betroffen, plus 2305/2408/2409/
2412/2513/2514/2515) teilen sich ein identisches, offenbar nie projektspezifisch ausgefülltes
GKS-Dokument (GV 1'668 m³, CHF 950-1'050/m³ — ein liegen gebliebenes Copy-Paste-Template ohne
reale Projektwerte). Kein Handlungsbedarf für diese KB (Template wird korrekt als `[-]`
geführt), aber als Beobachtung für Raphael festgehalten (keine Rückfrage/Mail in diesem
autonomen Lauf).

**Ergebnis Run 6:** 2 neue Einzelfälle in `kennwerte.md` aufgenommen (Niederhasli, Haus
Deuber), 2 weitere Rohbelege dokumentiert, aber nicht promoviert (Wald, Ebmatingen #2), 3
identifizierte, aber noch nicht extrahierte Kandidaten für künftige Läufe (2304 Waedenswil
Residualwert-Tool, 2305 Wädenswil Pre-Check-Tool, Langnau Giebelweg 12), 1 potenzieller
Baustein für Stufe 4 (Zürcher Baukostenindex-Referenztabelle). Details/offene Fragen:
`wiki/QUESTIONS.md`.

## Run 5 (26.07.2026) — Vierte Quelle: SharePoint `IMMO - 06 Kennwerte` (kuratierte Kennwerte-Bibliothek, nicht projektgebunden)

Gemäss Empfehlung aus Run 4 (`wiki/QUESTIONS.md`: "neue Quelle identifizieren") systematisch
die SharePoint-Bibliotheken ausserhalb `AR - 01`/`AR - 07` gesichtet (`OneDrive-
FreigegebeneBibliotheken–JANS`, Top-Level-Ordner). Kandidat mit direktem Namensbezug:
`IMMO - 06 Kennwerte` (kuratierte Kennwerte-/Benchmark-Ablage, nicht nach Projekt sondern nach
Thema gegliedert: `WOHNEN Baumasse`, `WOHNEN Ausnützungsziffer`, `Healthcare`, `BUERO`, `pms`,
`Immo-Monitoring_Baupreisteuerung`, `_Archiv`).

| Dokument | Inhalt | Verwertbarkeit |
|---|---|---|
| `_Kennwerte Jans.docx` (25.03.2025) | aGF/bGF-Faktoren (Alt-/Neubau 0.8/0.9), Erstellungskosten-Benchmark "Wohnen Individuell" EFH/ZFH (BKP2-Median 2020 indexiert 2025 → 4'485 CHF/m² GF BKP1-5), Rechenbeispiel "Thalwil Bohlweg 1" (950 m² GF, TG 8 SP à 42'000, Total 4.6 Mio, HNF-Kennwert 7'350 CHF/HNF) | `[x]` extrahiert Run 5 → `raw/kennwerte-jans-referenzdokument.md`: eigenständiger m²-GF-Benchmark in `wiki/kennwerte.md`, NICHT in m³-GV-Tabelle umgerechnet (ungeklärter GV/GF-Faktor) |
| `_Kennwerte_Links.docx` (29.12.2023) | reine Link-Liste externer Benchmark-Quellen (ZH-Wohnbaupreisindex, CRB werk-material, keevalue.ch, BFS, Wüest Reports) | `[-]` keine eigenen Zahlenwerte, nicht als Kennwert übernommen |
| `pms/5.34_BR_Grobkosten.pdf` | Benutzerhandbuch Drittsoftware "BBase Grobkosten" (PMS Informatik AG, 28.11.2012) | `[-]` untauglich: Drittanbieter-Methodikliteratur, kein JANS-Projektdatum |
| `BUERO/` (hbre Büromarkt-Analyse + Screenshots) | Büro-Marktmieten Zürich | `[-]` ausserhalb Scope: Marktmiete, keine Erstellungskosten |
| `WOHNEN Ausnützungsziffer/`, `_Archiv/` | — | `[-]` leere Ordner |
| `Healthcare/` (HEIM, Umbaukosten, Archiset) | Alters-/Pflegeheim-Kennwerte | `[-]` bewusst nicht geprüft: gehört gemäss `PROGRAMM.md` in Skill `kostenschaetzung`, nicht `grobkosten` |
| `WOHNEN Baumasse/Flächenkonzeption Wohnen` | Flächenfaktoren Wohnen | `[-]` bereits bekannt/verarbeitet in KB `immobilienbewertung` (`wiki/flaechendefinitionen-sia`), keine Dublette |

**Ergebnis Run 5:** Erste Quelle ausserhalb der reinen Projektordner erschlossen. Ein
verwertbarer, aber in anderer Einheit (m² GF statt m³ GV) geführter Benchmark gefunden und
transparent als Parallel-Sektion in `wiki/kennwerte.md` dokumentiert (keine erzwungene
Umrechnung). Weitere SharePoint-Top-Level-Ordner ungeprüft und Kandidaten für künftige Läufe:
`AR - 02 Wettbewerbe`, `AR - 03 Studien`, `AR - 04 Honorarauftraege`, `AR - 05 Transfer`,
`AR - 06 Referenzen`, `IMMO - 01 Projekte`, `IMMO - 02 UBSFS`, `IMMO - 03 KNOW-HOW`,
`IMMO - 04 Marktpreise` (enthält u.a. `crb.ch/Spital_210522_Kostenkennwerte_Referenzprojekte.pdf`
— Healthcare, nicht hier relevant), `IMMO - 05 Bodenpreise` sowie die zweite SharePoint-
Bibliothek `OneDrive-FreigegebeneBibliotheken–RaphaelJans-ArchitektenETH` (`JANS -
1_Architektur`, `RJ Architekt ETH - 1_Architektur`, komplett ungesichtet).

## Run 3 (25.07.2026) — Drittquelle SharePoint `AR - 07 Archiv` (abgeschlossene Mandate)

`AR - 07 Archiv/01_Projekte/` enthält nur 4 Ordner: `1318 Lorraine`, `2202 Ackersteinstrasse`,
`2304 Reckholdern`, `_SCHAFFNER`. Alle systematisch geprüft (`find -iname "*kosten*"` +
Sichtprüfung).

| Projekt | Kosten-Fund | Verwertbarkeit |
|---|---|---|
| 2202 Ackersteinstrasse 67 | `04_KTV/01_Kosten/` (KV-PDF, Kennwerte-Notiz, BKP-Archiv) + `04_KTV/03_Architektenvertrag/03_Grobkostenschaetzung/` (Vertrags-GKS, mehrere INDD-Revisionsstände 210610–230523) | `[x]` extrahiert Run 3 → `raw/2202-ackersteinstrasse.md`: 4 Kostenstände (613–850 m³ GV, CHF 480'000–1'219'133 Gesamtkosten) widersprechen sich ohne erkennbaren Grund, zusätzlich interne Widersprüchlichkeit im jüngsten Dokument (360.-/791.- CHF/m³) — nicht verwertbar, nicht mal als Einzelfall n=1 |
| 2304 Reckholdern 20 | `2304_Reckholdern_Dropbox/7 Kosten Finanzen/73 Kostenvoranschläge/` (KV Siworks), `02_Korrespondenz/01_BL_SiworksimmoAG/` (Grobkostenberechnung, Kostenstruktur), `04_KTV/06_Planungskostenkontrolle/` (Unternehmerkosten Baueingabe) | `[x]` extrahiert Run 3 → `raw/2304-reckholdern.md`: GV 1'715 m³ UND BKP-Gliederung liegen erstmals gleichzeitig vor, aber dasselbe Dokument enthält zwei sich widersprechende Gesamtkosten (CHF 2'960'000 vs. CHF 1'800'000, letztere erkennbar aus falscher Vorlage übernommen) — nicht verwertbar ohne Klärung, welcher Stand gilt |
| 1318 Lorraine (Küche Maria) | `03_Kueche_Maria/03_Kostenschaetzung/` — identisches Material bereits über NAS-Altarchiv bekannt (Run 1) | `[-]` bereits geprüft: Kücheneinbau, kein Gebäude-GV, ausserhalb Scope |
| 1318 Lorraine → 2203 Lorraine (nested) | `2203 Lorraine/02_Korrespondenz/Jans Maria/220809 Kostenschätzung`, `.../0000_Neustrukturierung/4_KTV/02 Kosten` | `[-]` untauglich: beide Ordner enthalten keine Dateien (`find -type f` liefert 0 Treffer) — leere Struktur-Schablonen |
| _SCHAFFNER | kein Inhalt | `[-]` Ordner komplett leer |

**05_Kostenplanung** (Bibliotheks-Unterordner, nicht projektgebunden) enthält nur generische
Vorlagen/Fremdprojekt-Fundstücke (Leutschenbach-Finanzrapport, AXA-Telli-KV, diverse fremde
Offerten) — kein JANS-Eigenprojekt mit GV-Bezug, nicht als Quelle geeignet für diese KB
(Scope: eigene, nutzungs-/standard-zuordenbare JANS-Projekte).

**Ergebnis Run 3:** 2 Projekte mit GV+BKP-Material gefunden (erstmals inkl. eines Falls mit
GV UND BKP-Gliederung im selben Dokument, Reckholdern) — aber BEIDE intern widersprüchlich
und daher nicht promotionsfähig, nicht mal als Einzelfall n=1. Damit ist `AR - 07 Archiv`
vollständig geprüft (alle 4 Projektordner `[x]`/`[-]`).

## Run 4 (26.07.2026) — Vertiefung der beiden Run-3-Kandidaten (kein neuer Projektordner)

Gemäss Empfehlung in `wiki/QUESTIONS.md` (Run 3): statt neue Projektordner zu erschliessen,
gezielt in den beiden bereits bekannten Kandidaten nach zusätzlichen Dokumenten gesucht
(Rechnungen, Zahlungskontrolle, Baubuchhaltung, Marktwertschätzung).

| Projekt | Zusätzlich geprüft | Ergebnis |
|---|---|---|
| 2202 Ackersteinstrasse 67 | `04_KTV/08_Rechnungen/` + `10_Dokumente/04_Rechnungen/` (alle Rechnungen re-00008/re-00030/re-00042) | `[x]` Ursache der Run-3-Widersprüche geklärt: Mandat endete 09/2023 in der Abänderungseingabe-Phase, nie Ausführung. Weiterhin nicht verwertbar, aber Fall geschlossen. Details `raw/2202-ackersteinstrasse.md`. |
| 2304 Reckholdern 20 | `2304_Reckholdern_Dropbox/7 Kosten Finanzen/74 Baubuchhaltung` (leer), `.../8 Verträge/85 Totalunternehmer/02 TUV/15 Auszug aus der Baubuchhaltung` (leer), `08_Publikationen/.../H_Baukostenplan` (nur generische BKP-2017-Referenz, kein Projektbezug), `02_Korrespondenz/01_BH_Benno_Wild/_Archiv/` Rechnungen + Zahlungskontrolle, **`09_Dokumente/Marktwertschaetzung/2304RE20_Marktwertanalyse_RJ.pdf`** | `[x]` Marktwertanalyse (Stand 31.12.2023) löst den Run-3-Widerspruch auf: GV 1'986 m³ + BKP 1-5 CHF 3'446'500 im selben, intern konsistenten Dokument. **Erster verwertbarer Einzelfall dieser KB mit sauberem GV+BKP-Tripel.** Details `raw/2304-reckholdern.md`, Verdichtung `wiki/kennwerte.md`. Baubuchhaltungs-/TUV-Ordner sind Struktur-Schablonen ohne Inhalt — keine Ist-Kosten der Ausführung verfügbar. |

**Ergebnis Run 4:** Beide Run-3-Kandidaten abschliessend bearbeitet — einer verwertbar
(Reckholdern), einer endgültig geschlossen ohne Kennwert (Ackersteinstrasse). Damit sind
`AR - 01 Projekte` und `AR - 07 Archiv` jetzt nicht nur vollständig, sondern auch vertieft
geprüft. Für Run 5 wird gemäss `wiki/QUESTIONS.md` eine neue Quelle oder ein Ereignis-Trigger
benötigt.
