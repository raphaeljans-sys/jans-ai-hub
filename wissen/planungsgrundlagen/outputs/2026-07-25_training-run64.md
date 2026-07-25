# Training Run 64 — Recht & Norm + Brandschutz (Token-Vollgas)

Intensiv-Lauf gemäss `training/PROGRAMM.md` (Token-Vollgas bis 10.08.2026): **2 Domänen** im
Schwerpunkt — Recht & Norm (PL-02) und Brandschutz (PL-03), gemäss Domänen-Rotation
(Kartenportale/Energie hatten Run 63). Direkt in der Hauptsession durchgeführt (nicht per
Fan-out an Hintergrund-Subagenten), gemäss der dokumentierten Lehre aus Run 56
(Hintergrund-Subagenten stallen auf OneDrive-Pfaden).

## Ablauf

1. Stand gelesen: `curriculum.md` (Domäne 3 Recht/Norm R1-R63 vollständig `[x]`, Domäne 4
   Brandschutz B1-B46 vollständig `[x]`, nur B5/BSV-2026-Refresh laufend `[~]`),
   `wiki/QUESTIONS.md` Sektionen B/C (beide ohne offene `[ ]`-Punkte), letzter Report (Run 62 —
   Recht/Norm+Brandschutz, damals der komplette §9-Rest-Backlog AHB geschlossen).
2. **Delta-Scan** beider PL-Ordner (`find -newermt 2026-07-20`) — keine neuen Dateien seit dem
   letzten Lauf (nur OneDrive-Sync-Marker).
3. Da beide Domänen laut eigener Registerlage ohne bekannten Backlog-Punkt waren, **denselben
   Scout-Ansatz wie Run 63** (dort für PL-01/PL-04) auf PL-02/PL-03 angewendet: vollständige
   Top-Level-Ordnerliste (`find -maxdepth 2 -type d`) gegen den Text von
   `curriculum.md`/`raw/_INGESTED.md` gegengrepped, um tatsächlich nie erwähnte Ordner zu
   finden — nicht nur pauschal „X Screenshots ausgewertet"-Ordner.
4. **Fund:** vier bisher nie erschlossene Kleinst-Ordner unter `PL-02/06_Richtlinien/`
   (`_Kanton Basel`, `VSA`, `BKZ`, `SWKI`) — zusammen 9 Dateien. Alle vier Ordner waren
   **cloud-only** (0 Byte lokal, `mdls -name kMDItemNumberOfPages` liefert `(null)`) und dadurch
   für alle 63 vorangegangenen Läufe unsichtbar geblieben, obwohl `06_Richtlinien/` selbst
   längst als Quelle geführt wird (SECO/BfU/AWEL/Minergie/GVZ/2000-Watt etc. bereits
   dokumentiert). `cp` in `/tmp` materialisiert die Dateien zuverlässig (dieselbe Mechanik wie
   die bekannten EDEADLK-Workarounds aus Run 53/59/61, aber ein anderes Symptom: hier keine
   Fehlermeldung, sondern stille 0-Byte-Platzhalter).
5. In **PL-03 (Brandschutz)** keine analogen unentdeckten Ordner gefunden — alle Top-Level-
   Ordner (inkl. `_Projekte Themen/*`, `z_Administration`, `11 Projekte`) sind bereits im
   Register nachweisbar. Brandschutz-Domäne bleibt damit ohne neuen Fund in diesem Lauf.
6. Alle 9 Fundstellen gelesen (8 PDF via Read, davon eine 110-seitige Norm nur teilweise —
   S. 1-25 — aus Umfangs-/Copyright-Gründen) und in drei bestehende Wiki-Artikel eingearbeitet.

## Funde (Recht & Norm, R64-R67)

- **R64 Kt.-Basel-Landschaft Büroausstattung** (Hochbauamt BL, Juli 2008, 34 S.): zweites
  vollständiges kantonales Büroraum-Bemessungssystem (SIA 416/DIN 277) neben dem bereits
  dokumentierten Stadt-ZH-AHB-System — 12 durchgerechnete Flächenmodelle (Einzel-AP Typ 1-3
  7.04-7.92 m², Block-/Z-AP 2/4/6 Personen 14-32 m², Sitzungszimmer 8/12 Personen), Kennzahl
  CHF 7'500 Mobiliarkosten/AP, Teambüro-Definition (≥6 AP), Desk-Sharing-Regel bei
  Teilzeit <50 % → NEU §7 [[recht-norm-raumprogramm-referenzwerke]].
- **R65 VSA (Verband Schweizerischer Aufzugsunternehmen)**, 3 Webseiten-Auszüge © 2011:
  vollständiges SIA-370/SN-EN-81-Normenregister (11 Teilnormen tabellarisch zugeordnet, u.a.
  370.070=EN-81-70 Zugänglichkeit, 370.072/073 Feuerwehraufzug/Brandverhalten, 370.080=EN-81-80
  =SNEL) — schliesst den seit Run 37 offenen QUESTIONS-Punkt „SN EN 81-70 nicht im Ordner
  vorhanden". Zusätzlich **ESBA** (Kt. ZH, seit 2008: 7 Gefahrenpunkte Bestandsaufzüge,
  5-Jahres-Nachrüstfrist ab Verfügung) und **SNEL** (= SN EN 81-80:2003, 74
  Gefährdungspunkte, gesetzliche Umsetzung nur in **Kt. ZH/GE/GL**, sonst unverbindliche
  Empfehlung) → NEU §2b [[recht-norm-hindernisfreies-bauen-zh]].
- **R66 BKZ (Behindertenkonferenz Kanton Zürich, Bauberatung)**, 4 PDF — der grösste Fund
  dieses Laufs: Checkliste Hochbau (Stand 2005, § 239 PBG/§ 34 BBV I-Verankerung, WC-/
  Küchen-Fixmasse getrennt öffentlich/Wohnbau), Merkblatt 13/05 „Sehbehindertengerechtes
  Bauen" (Dez. 2005) und das ZHB-Handbuch „Hindernisfreies Bauen — Mindestanforderungen"
  (Schweizer Paraplegiker-Stiftung, 2005). Bisher deckte der Artikel ausschliesslich
  Mobilitätsbehinderte (Rollstuhl) ab — jetzt neu die komplette **Sehbehinderten-** (taktile/
  akustische Orientierung, Reliefschrift min. 1 mm, Kontraststreifen 140-160 cm, keine
  Sensortasten am Lift) und **Hörbehinderten-Dimension** (Höranlage in Versammlungsräumen,
  SIA 181/DIN 18041), plus eine vierstufige **Begriffsleiter** (absolute Barriere → relative
  Hindernis → anpassbar → behindertengerecht/hindernisfrei → rollstuhlgängig), die bisher
  unpräzise verwendet wurde → NEU §3b [[recht-norm-hindernisfreies-bauen-zh]].
- **R67 SWKI VA103-01:2017** „Lüftungsanlagen für Parkhäuser" (110 S., ersetzt SWKI 96-1:1997;
  S. 1-25 gelesen): Geltungsbereich ab 100 m² Mittel-/Grossgarage, CO-Bemessungswert 100 ppm
  unverändert, MAK-/KZGW-Grenzwerttabelle (CO 30/60 ppm, NO2 3/3 ppm), Einschaltwert 50-70 ppm
  (Momentanwertmethode, tiefer als der deutsche VDI-2053-Mittelwert), Referenztemperatur +5 °C,
  Geschossbewertung exponiert (+5 K)/geschützt (+10 K). Kaltfahrt-Emission dominiert klar
  gegenüber Warmfahrt (Faktor > 40) — verknüpft die bereits dokumentierte VSS-Geometrie
  (kurze Ausfahrtstrecke, Abschnitt 2.1) direkt mit der energetischen Lüftungsauslegung. Bisher
  fehlende TGA-Dimension im rein geometrischen Tiefgarage-Artikel → NEU §8
  [[recht-norm-tiefgarage-erschliessung]]. Rest (Kap. 3-9, Berechnungsformeln/Material/
  Ausführung, 85 S.) bleibt für einen Folgelauf offen.

## Brandschutz (PL-03)

Kein neuer Fund — Scout-Abgleich bestätigt, dass alle Top-Level-Ordner bereits im Register
erfasst sind. B5 (BSV-2026-Terminplan) wurde erst gestern (Run 62) zuletzt per WebSearch
geprüft (politische Vernehmlassung weiterhin 08/2026 angekündigt) — kein erneuter Refresh in
diesem Lauf, um keine Doppelarbeit am selben Tag zu erzeugen.

## Verifikations-Stufe (Rule auto-verbesserungen 260712)

Keine Status-Hebung auf `established` ohne direkte Primärquellen-Lektüre. Alle vier neuen
Abschnitte (§7 Raumprogramm, §2b + §3b Hindernisfrei, §8 Tiefgarage) auf `established` gesetzt
— Grundlage ist in allen Fällen die direkt gelesene amtliche/verbandsseitige Primärquelle
(Hochbauamt BL, VSA-Verbandsseite, BKZ-Bauberatung/Schweizer Paraplegiker-Stiftung,
SWKI-Richtlinientext), keine Sekundärinterpretation. Datenstand-Warnung explizit gesetzt: die
VSA-/BKZ-Quellen sind 10-20 Jahre alt (2005/2011) — Kernaussagen (Begriffsdefinitionen,
Normverweise, ESBA/SNEL-Mechanik) ändern sich erfahrungsgemäss selten, aber vor einer
verbindlichen Eingabe wurde das in den Artikel als ⚠-Vermerk aufgenommen statt stillschweigend
als aktuell übernommen. Kein Adversarial-Verify-Workflow nötig (keine strittigen
Rechtsaussagen, reine Fakten-/Kennzahlen-Extraktion aus Primärquellen).

## Methodische Lehre (für künftige Scout-Läufe)

Cloud-only-Dateien (OneDrive „online-only", 0 Byte lokal, `Read`-Tool wirft `ECANCELED`) sind
für einen reinen Ordner-/Dateinamens-Abgleich **nicht unsichtbar** (der Dateiname erscheint in
`find`), aber `mdls -name kMDItemNumberOfPages` liefert `(null)` statt einer Seitenzahl — das
ist ein brauchbarer Marker, um cloud-only-Kandidaten vor dem Lesen zu erkennen. `cp
<quelle> /tmp/<ziel>` triggert die Synchronisation zuverlässig (getestet an allen 9 Dateien
dieses Laufs, inkl. der 9 MB grossen SWKI-Norm). Diese vier Ordner waren vermutlich deshalb bei
63 vorangegangenen Läufen unentdeckt, weil frühere Scout-Durchgänge sich auf bereits
materialisierte Dateien konzentrierten und `_Kanton Basel`/`VSA`/`BKZ`/`SWKI` nie zufällig
materialisiert wurden (im Gegensatz zu den grossen, oft geöffneten Hauptordnern).

## Token-Vollgas-Bilanz

9 Quellen gelesen (8 vollständig, 1 Norm teilweise S. 1-25/110) = 9 bearbeitete Punkte, am
unteren Rand des Zielkorridors 10-16 — analog zur Begründung in Run 63: beide Domänen sind
nach 63 (Recht/Norm) bzw. 46 (Brandschutz) Curriculum-Lektionen extrem ausgeschöpft, der
Scout-Ansatz fand nach vollständigem Top-Level-Abgleich nur noch vier kleine, aber inhaltlich
sehr ergiebige Cloud-Only-Ordner. Bewusst keine künstlichen Zusatzfragen erzeugt (Rule
wissens-bibliothekar: nichts erfinden, keine Pseudo-Tiefe).

## Nächster Schritt

Recht & Norm und Brandschutz haben nach diesem Lauf **erneut keinen bekannten Backlog-Punkt**
mehr — mit der neuen Erkenntnis, dass ein Cloud-Only-Check (`mdls`/`du -h`) Teil des
Scout-Abgleichs werden sollte, bevor ein Ordner als „vollständig ausgewertet" gilt. Empfehlung
für den nächsten Kartenportale/Energie-Turnus (Run 65 laut Rotation): denselben
Cloud-Only-Check auf PL-01/PL-04 anwenden, da dort möglicherweise weitere unentdeckte
Kleinst-Ordner mit demselben Symptom liegen. SWKI VA103-01 Kap. 3-9 bleibt als konkreter
Vertiefungspunkt für einen künftigen Recht/Norm-Lauf vorgemerkt.
