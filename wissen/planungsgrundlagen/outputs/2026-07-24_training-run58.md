# Training Run 58 — Recht & Norm + Brandschutz (Token-Vollgas)

Intensiv-Lauf gemäss `training/PROGRAMM.md` (Verifikations-Stufe/Intensivphase/Token-Vollgas bis
10.08.2026): **2 Domänen** im Schwerpunkt — Recht & Norm (PL-02) und Brandschutz (PL-03), gewählt
zur besseren Domänen-Balance (Kartenportale/Energie liefen zuletzt Run 55/56, 21.–22.07.; Recht/Norm
zuletzt substanziell Run 53, 19.07.; Brandschutz zuletzt substanziell Run 54, 20.07.). Direkt in der
Hauptsession durchgeführt (nicht per Fan-out an `geodaten-beschaffer`/`energie-berater`), da Run 56
dokumentiert hat, dass Hintergrund-Subagenten auf OneDrive-Pfaden nach dem ersten Read-Aufruf
abbrechen.

## Ablauf

1. Stand gelesen: `curriculum.md` (beide Domänen), `wiki/QUESTIONS.md`, letzter Report (Run 57
   Registerpflege). Befund: Domänen 3/4 haben **keine offenen `[ ]`-Lektionen** mehr (bestätigt seit
   Run 54) — der Lauf musste aus Delta-Scans neuer Fragen schöpfen, nicht aus dem Curriculum.
2. **Retry der zwei letzten technischen Blocker** (B42 Störfall-ABC-Objekt, B43 z_Administration):
   Dateien inzwischen problemlos lesbar. Beim Abgleich mit dem bestehenden Wiki-Artikel zeigte sich,
   dass **beide bereits in Run 54 vollständig gelöst waren** (§5ao/§5ap) — curriculum.md hatte die
   Lösung nur nie nachgezogen (identisches Muster zur Run-57-Registerlücke bei den K-Items).
   Reine Konsistenzpflege statt neuer Recherche.
3. **Systematischer Delta-Scan** beider PL-Ordner (`find` über alle PDF/DOCX) gegen das Curriculum
   R1–R57/B1–B44 abgeglichen, um bisher unkatalogisierte Dateien/Ordner zu finden.
4. Fund + Volltextlektüre der genuinen Neufunde (Details unten), Einarbeitung in die Wiki-Artikel,
   Register nachgeführt.

## Ergebnisse Brandschutz (Domäne 4)

- **B42/B43 — Registrierungslücke geschlossen** (kein neuer Fakt): curriculum.md B42/B43 fuhren
  weiterhin den Run-52-Blocker-Text, obwohl Run 54 (§5ao/§5ap) die Lösung längst dokumentierte.
  Nachgezogen, Re-Lektüre bestätigt beide Abschnitte 1:1.
- **B45 NEU — VKF-Publikation «Allgemein anerkannte Bauprodukte» V12.0** (TKB-Beschluss 31.03.2017,
  `BSPUB-1394520214-251.pdf`, bisher nie katalogisiert, weil ausserhalb des bereits erschlossenen
  Musterplansatz-Unterordners): vollständige RF1/RF2/RF3-Einstufungstabellen für Standard-Baustoffe
  (inkl. Laubholz-Delta — Eiche/Robinie/Teak/Wenge sind RF2, übrige Laubhölzer RF3) sowie
  Mindestmass-Tabellen (SIA-262/266-Kurzfassung) für Beton-/Mauerwerks-/Verputz-/Brandschutzplatten-
  Bauteile je Feuerwiderstandsdauer 30–240 Min. — **ohne** Einzel-Prüfnachweis verwendbar. Direkter
  LV-/Vorprojekt-Nutzen. → NEU §5aq `wiki/brandschutz-pl03-wegweiser.md`.
- **Vier Delta-Checks bestätigt** (keine neuen Fakten, aber Präzisierung bestehender pauschaler
  Einordnungen mit Ziffern-Beleg): Anerkennungsverfahren (28-15de, verwaltungsprozessual, kein
  Planungsgrundlagen-Bezug), Brandschutz-Praevention.pdf (Duplikat des Merkblatts
  Brandschutz-Klassifikation), gege-panikprogramm-1.pdf (Herstellerkatalog GEGE/Kaba, keine
  normative Substanz über die bereits dokumentierten Kennwerte hinaus), Merkblatt_012_d.pdf
  (VST Nr. 012 — inhaltlich weitgehend deckungsgleich mit dem bereits ausgewerteten SMU/VST-
  Merkblatt 004, kein neuer Fakt).
- **BSPUB-185.pdf** — bestätigter Nicht-Fund: identisch mit der bereits dokumentierten
  Brandschutzarbeitshilfe 1001-15de Wohnbauten (dritte Mehrfachablage derselben Datei).

## Ergebnisse Recht & Norm (Domäne 3)

- **R58 NEU — Fugenlose Bodenbeläge/Estriche (PAVIDENSA)**: Ordner `04_Merkblätter/Fugenlose
  Bodenbeläge/` (9 Einzeldokumente, nie erschlossen) — zwei vollständig gelesen: Checkliste PAV-E
  16:2012 (5-Phasen-Planungs-/Ausführungsablauf) und PAV-E 01:2008 Heizestrich-Spezialregeln
  (Fugenplan-Pflicht des **Bestellers** nach SIA 251:2008 Art. 2.4.9, Feldgrössen CT 6 m/CA+CAF
  8 m, drei Verlegearten der Heizregister, Belastungsprobe-Temperaturregime, Calciumsulfat-Estrich
  max. 50 °C Vorlauftemperatur, Praxis-Fehlerliste). Direkt LV-relevant BKP 281.1. → NEU §5
  `wiki/recht-norm-arbeitshilfen-planungsdetails.md`. Sieben weitere PAV-A/PAV-E-Dokumente als
  Backlog (Betonoberflächenbearbeitung, Schutzschichten, Mineralfaserdämmplatten, Fugen in
  Calciumsulfatestrichen, Verschleisswiderstand, Schwimmende Estriche oberflächenfertig).
- **R59 NEU — Balkone/Laubengänge-Abdichtung SIA 271/273**: Ordner `04_Merkblätter/Merkblatt
  Unterlagsboden/` (irreführender Name, Inhalt hat nichts mit Unterlagsböden zu tun) — LPM AG/
  Richard Graf, KBS-Fachtagung 2010, 36 Folien vollständig gelesen. Realer Schadenskatalog
  (Durchfeuchtung/Ausblühungen, Risse bis 4 mm, fehlende Pfeiler-Anschlussfugen, nicht entwässerte
  «Wannen») plus normative Anforderungen: Schichtaufbau, Untergrund-Tabelle (Haftzugfestigkeit/
  Rauheit/Ebenheit/Trockenheit), Mindestgefälle 1,5 % — **ohne Unterschreitungsmöglichkeit** bei
  Balkonen/begehbaren Dächern/Terrassen/Dächern ohne Schutzschicht/nicht belüfteten
  Holzkonstruktionen, Fugenbreite min. 20 mm entlang aller Anschlüsse. **SIA 273** als eigenständige
  Norm für befahrene Flächen im Hochbau (Parkdecks/Rampen/Innenhöfe) mit
  Systemaufbau-Zuordnungstabelle. → NEU §6 `wiki/recht-norm-arbeitshilfen-planungsdetails.md`,
  ergänzt [[recht-norm-tiefgarage-erschliessung]]. JANS-Nutzen v. a. Ankaufsprüfung/Sanierung
  (Schadensbild-Wiedererkennung).

## Verifikations-Stufe (Rule auto-verbesserungen 260712)

Keine Status-Hebung auf `established` bei unbelegten Aussagen — alle neuen Kennwerte stammen aus
vollständig gelesenen Primärquellen (VKF-Publikation, PAVIDENSA-Empfehlungen, LPM-Fachtagung mit
SIA-271/273-Zitaten) mit Seiten-/Ziffernangabe. Kein Adversarial-Verify-Workflow nötig, da keine
widersprüchlichen/unsicheren Behauptungen entstanden sind — reine Extraktion aus eindeutigen
Tabellenwerken. Die vier Delta-Checks (Brandschutz) haben bewusst **keine** neue Substanz erzeugt,
sondern eine frühere pauschale Einordnung präzisiert bzw. bestätigt — ehrlich als Nicht-Fund
dokumentiert statt künstlich aufgebauscht.

## Token-Vollgas-Bilanz

10 bearbeitete Fragen/Delta-Checks über 2 Domänen (B45 + 4 Delta-Checks + BSPUB-185-Check + B42/B43-
Registerfix = 7 Brandschutz-Punkte; R58 + R59 = 2 Recht/Norm-Punkte, davon R58 selbst zwei
Teilquellen) — leicht unter dem oberen Zielkorridor 10–16, weil beide Domänen bereits extrem tief
erschlossen sind (curriculum ohne offene `[ ]`-Lektionen seit Run 54) und ehrliche Delta-Checks
(«kein neuer Fakt») bewusst nicht künstlich zu grossen Funden aufgeblasen wurden.

## Register nachgeführt

- `wiki/brandschutz-pl03-wegweiser.md`: neues §5aq, §1-Registerzeile präzisiert, Frontmatter
  (sources/last_updated) aktualisiert.
- `wiki/recht-norm-arbeitshilfen-planungsdetails.md`: neue §5/§6, Delta-Vermerk in §4, Frontmatter
  aktualisiert, Titel erweitert.
- `wiki/INDEX.md`: beide Artikel-Einträge ergänzt.
- `training/curriculum.md`: B42/B43 korrigiert (GELÖST-Vermerk statt Blocker-Text), B45/R58/R59 neu.
- `wiki/QUESTIONS.md`: C37 (Brandschutz) + R58-R59 (Recht/Norm) neu.
- `raw/_INGESTED.md`: 6 neue Zeilen.

## Nächster Schritt

Domänen-Rotation: nächster Schwerpunkt turnusgemäss wieder Kartenportale/Energie oder — für die
Balance — ein weiterer Recht/Norm-Brandschutz-Lauf, der den PAVIDENSA-Backlog (7 Dokumente) und
einen erneuten systematischen Ordner-Delta-Scan von PL-02 (1216 Dateien, bislang nur stichprobenhaft
auf neue Top-Level-Kandidaten geprüft) abschliesst. Kein technischer Blocker mehr offen.
