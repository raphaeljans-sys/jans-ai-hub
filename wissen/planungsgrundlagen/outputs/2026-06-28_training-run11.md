# Trainings-Lauf 11 — KB Planungsgrundlagen

- **Datum:** 2026-06-28
- **Schwerpunkt-Domaene:** **Recht/Norm (PL-02)** — per Rotation (Run 10 Energie → Run 11 Recht/Norm).
- **Connector-Schritt:** **nein** (Recht/Norm hat kein eigenes Tool wie `geo-zh.mjs`).

## Ausgangslage
Run 10 hatte als naechsten Lauf «Recht/Norm» gesetzt, offen: **B1-Rest** LRV-ELI, **B2** ZH-PBG-
Fassung bei RPG-2-Publikation, **R2/R3** SZ-vs-ZH-Messweisen, **R4b** belegter Inhalt je BRA-Fall.
Schwerpunkt also: die **drei letzten echten Recht/Norm-Luecken schliessen** (LRV-ELI, ZH-RPG-2-
Fortschritt, SZ-Messweisen) und einen **SZ-Benchmark** aus den realen Baurechtsanalysen lesen — genau
das, was ein JANS-SZ-Projekt (Einsiedeln/March/Hoefe) sofort braucht.

## Bearbeitete Selbstfragen (7)
1. **Wie lautet die fedlex-ELI der LRV (814.318.142.1)?** → `cc/1986/208_208_208`. **ELI-Falle:**
   das ELI-Jahr ist das **AS-Publikationsjahr 1986**, nicht das Erlassdatum 16.12.1985. PDF-A Stand
   **20260101** getestet (HTTP 200, 1.5 MB). Damit ist das fedlex-ELI-Mapping **vollstaendig** (B1 erledigt).
2. **Gibt es einen ZH-RPG-2-Umsetzungs-Fortschritt seit 2026-06-20?** → ZH-Stabilisierungswert jetzt
   in **absoluten Zahlen** belegt (zh.ch): **40'807 Gebaeude und 2'594 ha versiegelte Flaeche** (Bezug
   29.09.2023). Bei +2 %-Ueberschreitung: jede neue Baute durch **Rueckbau einer anderen mit ≥ 6 m²**
   kompensieren. PBG weiter in Erarbeitung, kein Abschlussdatum.
3. **Wie funktioniert die ZH-Abbruchpraemie?** → Kanton bezahlt Rueckbau nach gesetzl. Vorgaben,
   **ab 01.07.2026**; **bereits erfolgte Rueckbauten werden NICHT entschaedigt** → fuer JANS: Praemie
   erst nach Inkrafttreten ausloesen, nicht vorgreifen.
4. **Was gilt in ZH bereits direkt seit 01.01.2026?** → u.a. Landwirtschaftsvorrang +
   **Bestandes-/Besitzstandsschutz fuer > 30 Jahre bestehende Gebaeude** ausserhalb Bauzone.
5. **Gibt es eine weitere relevante ZH-PBG-Revision?** → Ja, **«Klimaangepasste Siedlungsentwicklung»**
   (zh.ch, Umsetzungshilfe + Musterbestimmung): teils direkt im Baubewilligungsverfahren, teils
   kommunale Nutzungsplanung. NEU erfasst; ⚠ Datenstand beobachten.
6. **Wie misst der Kt. SZ Hoehe/Dichte/Abstand konkret?** → belegte SZ-Tabelle aus den Screenshots
   `02_Schwyz` (Stand SRSZ 1.2.2021): **§ 31i GFZ** (ΣGF/aGSF; GF = HNF+NNF+VF+KF+FF), **§ 31g BMZ**,
   **§ 60 Gebaeudehoehe** (ausgemittelter gewachsener Boden Fassadenmitte → Dachhaut; GA = 50 % GH,
   min 3 m), **Art. 42 Firsthoehe** (OK First lotrecht), **§ 61 Nebenbauten** (≤ 3.5 m GH / 4.5 m FH /
   60 m² → GA ≥ 2.5 m), **§ 62** ungleiche GA-Verteilung via Dienstbarkeit. **Kernbefund: SZ ist
   IVHB-aligned (GFZ/BMZ), die Ausnuetzungsziffer ist kantonal abgeschafft (RRB 457/2014).**
7. **Wie sieht eine reale JANS-SZ-Baurechtsabklaerung aus (R4b)?** → Benchmark `230207_Willerzell`
   (Grundstueck 3301, Reckholdern 20, Bezirk Einsiedeln): **dreistufige SZ-Quellen-Trias** Kt.-Baugesetz
   1970 / **Bezirks-Baureglement Einsiedeln** 1975 / **Quartiergestaltungsplan Reckholdern** 1983.
   Landhauszone **L 0.2**: AZ 0.2, GA 4/8 m, Bauhoehe 6 m, GZ 1.5, Laenge 20 m. **Planungs-Trap:**
   trotz kantonaler AZ-Abschaffung tragen aeltere Einsiedler Zonen via Baureglement/QGP **weiter eine
   Ausnuetzungsziffer**.

## Geaendert
- `wiki/recht-norm-quellenlandkarte.md` (**established**, last_updated 2026-06-28):
  - LRV-Zeile auf ELI `cc/1986/208_208_208` (Stand 20260101) gehoben; LRV als getestetes PDF-A-Beispiel
    + ELI-Jahr-Falle ergaenzt.
  - RPG-2-ZH-Block mit absoluten Zahlen (40'807 Geb. / 2'594 ha), Kompensation ≥ 6 m², Abbruchpraemie
    01.07.2026, Bestandesschutz > 30 J ausgebaut.
  - **NEU Abschnitt** parallele ZH-PBG-Revision «Klimaangepasste Siedlungsentwicklung».
  - **SZ-Messweisen-Block** von Stichwort-Liste zu **belegter Mass-Tabelle** (§ 31i/§ 31g/§ 60/Art. 42/
    § 61/§ 62) + Planungs-Trap (AZ-Abschaffung greift nicht auf alte kommunale Ordnungen).
  - Offen-Liste aktualisiert.
- `wiki/recht-norm-baurechtsanalysen-benchmarks.md` (last_updated 2026-06-28): **NEU SZ-Benchmark-
  Sektion Willerzell/Reckholdern 3301** (Quellen-Trias, L-0.2-Kennwerte, Benchmark-Lehre); Fall-Index-
  Zeile Willerzell von «Dateiname» auf «gelesen» gehoben.
- `wiki/INDEX.md`, `wiki/QUESTIONS.md` (B1 vollendet, B2 Update, **NEU B4/R2** SZ belegt), `training/
  curriculum.md` (R2 ✓ vertieft, R4 ✓ Willerzell), `raw/_INGESTED.md` (4 Run-11-Zeilen).

## Belegte Kernfakten (neu)
- **LRV** = fedlex `cc/1986/208_208_208` — fedlex-ELI-Mapping PL-02 jetzt **vollstaendig**.
- **ZH-RPG-2** in Zahlen: 40'807 Gebaeude / 2'594 ha (29.09.2023); Kompensation ≥ 6 m²; Abbruchpraemie
  ab **01.07.2026** (kein Vorgreifen); Bestandesschutz > 30 J direkt.
- **SZ ist IVHB-aligned:** Dichte ueber **GFZ (§ 31i)** und **BMZ (§ 31g)**, **AZ kantonal abgeschafft**
  — aber **alte kommunale/Bezirks-Zonen tragen weiter eine AZ** (Benchmark Einsiedeln L 0.2).
- **SZ-Quellen-Trias:** Kanton (Baugesetz/PBG) + **Bezirk** (Baureglement) + **QGP** (Sondernutzung) —
  in SZ regelt der **Bezirk**, nicht die politische Gemeinde, die Nutzungsplanung (Einsiedeln).

## Kein-Doppel-Entscheid
SZ-Messweisen sind als **belegter Wegweiser mit Kernregel** erfasst (Artikel + Mess-Prinzip), die
einzelfallbezogene rechtliche Wuerdigung bleibt im Skill `baurecht`. Die graue-Energie-/Klima-Methodik
wird nur verlinkt, nicht abgeschrieben.

## Datenstand-Warnungen
- SZ-Mass-Definitionen aus Screenshots Stand **SRSZ 1.2.2021** (> 18 Mt.) → ⚠ vor Zitat aktuelle
  SRSZ-Fassung (lexfind.ch/sz.ch) pruefen (QUESTIONS R2/B4).
- ZH-PBG (RPG-2-Umsetzung + Klima-Revision) in Bewegung, kein fixes Inkraft-Datum → bei Publikation nachziehen.

## Naechster Lauf
Rotation → **Brandschutz (PL-03)**. Offen: **C6/B5** BSV 2026 bei Publikation der definitiven Fassung
nachziehen (Inkraft-Antrag 03/2027; techn. Vernehmlassung lief bis 11.01.2026 — Stand pruefen).
Recht/Norm-Reste fuer spaeter: **R3** Dispensrecht-Muster (BRKE-Entscheid), **R4b** weitere BRA-Faelle
beim realen Bedarf (Waedenswil/Thalwil/Attika-ZSG); ZH-PBG-Fassungen bei Publikation. Danach wieder
Kartenportale (Prioritaet) — **M1** Grundlagen-Checkliste «neue Parzelle», proj-Abstandslinien/
senkrechtes Abstandsmass (Agent `baulinien-analyst`).
