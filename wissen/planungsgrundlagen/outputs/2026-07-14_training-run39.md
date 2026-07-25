# Trainings-Lauf 39 — 14.07.2026 (Recht/Norm + Brandschutz, TOKEN-VOLLGAS, Fan-out)

## Ausgangslage

Run 38 hatte Kartenportale (K32/K33) und Energie (E5/E9/E31-Refresh) bearbeitet und als
naechsten Schritt Recht/Norm oder Brandschutz empfohlen — beide Domaenen waren seit Run 37 ohne
bekannten Rueckstand. Dieser Lauf hat beide Domaenen parallel per Fan-out (zwei
General-Purpose-Agenten) nach der bewaehrten Ordner-Abgleich-Methodik bearbeitet: ein Agent hat
den kompletten SharePoint-Ordner PL-02 gegen das Curriculum (R1-R38) abgeglichen, der andere hat
den offenen Punkt B5 (BSV-2026-Refresh) nachgezogen und den PL-03-Ordner erneut vollstaendig
durchsucht.

## Domaene 3 — Recht & Norm (PL-02): ein bisher nie kartierter Ordner (R39)

Der systematische Ordner-Abgleich deckte den Unterordner `04_Merkblätter/Projektadmin AHB/` auf
— ein ~50-teiliges Vertragswerk-/Standard-Buendel des **Amtes fuer Hochbauten Stadt Zuerich
(AHB)** und der **Immobilien-Bewirtschaftung Stadt Zuerich (IMMO)** fuer alle Planenden, die im
Auftrag der Stadt bauen. Vier von zehn Unterordnern wurden inhaltlich ausgewertet:

- **SIA-416/d-0165-Flaechenformelkette** (Richtlinie RFB, Version 7.0/2007, 85 S.) — ergaenzt die
  bisher nur begriffliche SIA-416-Behandlung um die rechnerische Ebene: GF=NGF+KF,
  NGF=NF+VF+FF, **HNF in 6 Kategorien nach DIN 277 inkl. HNF 6 Heilen und Pflegen**
  (direkt JANS-Healthcare-relevant), EBF/thermische Huelle, Mietflaechenkaskade
  VMF/VWAGF/ZF/LF/EF/DMF/VTF, plus konkrete Problemfaelle (Bruestungen, Nischen,
  Installationsgeschosse).
- **CAFM-Bezeichnungssystem** Stadt Zuerich (Standort/Gebaeude/Geschoss/Raum/Tuer/Parkplatz-
  Nomenklatur, Datei-Namenskonvention Bewirtschaftungsplan).
- **Sicherheitsnachweis Elektroinstallationen (SiNa)** — NIV-Kontrollperioden-Tabelle:
  **Spitaeler/Heime = 5 Jahre** (strengste Periode), direkt terminplanungsrelevant fuer
  Healthcare-Bauleitungsmandate.
- **GA-Standard Pflegezentren Stadt Zuerich** (Version 1.1, Juli 2008) — Raumautomations-Tabelle
  nach Raumtyp (Patientenzimmer: manuelle grosse beschriftete Tasten, Dauerbetrieb-Lueftung),
  Alarm-Priorisierung 1-3, Grundsatz GA-System/BMA/Patientenrufanlage als gleichrangige getrennte
  Meldewege.

Neuer Artikel: [[recht-norm-ahb-stadt-zuerich-projektstandards]] (Status `emerging`). Backlink in
[[recht-norm-raumprogramm-referenzwerke]] ergaenzt. Sechs weitere Unterordner (Submissionswesen
AHB, CAD-Richtlinie, Honorar-AHB SIA 102/103/105/108-2009, Ingenieurwesen, eco-bau Nachhaltiges
Bauen, GT-Richtlinien-Serie) sind als Backlog im Artikel dokumentiert (§5).

## Domaene 4 — Brandschutz (PL-03): B5-Refresh + drei neue Dateien + Register-Luecke (B30)

**BSV-2026-Refresh:** Stand unveraendert bestaetigt (politische Vernehmlassung weiterhin
08-11/2026, IOTH-Plenums-Genehmigung 03/2027, Inkrafttreten Herbst 2027, Marschhalt
Liberalisierung weiter in Kraft). Neu belegt: die technische Vernehmlassung (15.09.2025-
11.01.2026) erhielt **ca. 11'000 Rueckmeldungen**, die das IOTH jetzt zusammen mit den ersten
Erkenntnissen der Crans-Montana-Untersuchung auswertet.

**Ordner-Abgleich PL-03 (vollstaendiger `find`-Durchlauf):** drei bisher nie erschlossene Dateien
im bereits >20-Titel-grossen Ordner `02 Brandschutzrichtlinien 2015-17-22/` gefunden:

1. **VKF-Vernehmlassungsbericht 2013** — erklaert die Genese der BSV 2015 (Hochhausgrenze
   25→30 m, 900-m²-Fluchtweg-Schwelle, Holzbau bis 8 Geschosse, Einfuehrung RF1-RF4) und liefert
   einen bisher nicht dokumentierten Fakt: die 600-m²-Bagatellschwelle hat eine explizite
   **Ausnahme fuer Kindergarten/Altersheim** — JANS-Healthcare-relevant.
2. **Teilrevision-2017-Volltext-Delta** (AFC Basel, 34 S.) — bestaetigt volltextbelegt, dass die
   bereits dokumentierten Kernzahlen (§4b Brandschutzabstaende etc.) unveraendert blieben; 2017
   brachte ueberwiegend redaktionelle Praezisierungen.
3. **SZS steeldoc 03/15 «Brandschutz im Stahlbau»** — irrefuehrend als "SService..." benannte
   Datei, tatsaechlich eine eigenstaendige Stahlbau-Brandschutz-Fachquelle (Stahlbau Zentrum
   Schweiz), bisher unbekannt.

Zusaetzlich als Registrierungs-Luecke aufgedeckt: eine unbenannte Datei
(`BSPUB-1394520214-77.pdf`) ist tatsaechlich **BSR 14-15 "Verwendung von Baustoffen"** (28 S.) —
bisher nie katalogisiert, inhaltlich verschieden von der bereits dokumentierten BSR 13-15
"Baustoffe und Bauteile". Nur als Register-Fund vermerkt, Volltext noch offen (Kandidat fuer
`wissen/normen/destillate/` oder einen Folgelauf).

Bestaetigte Nicht-Funde: zwei leere Ordner (`09_Brandschutzvorschriften/`,
`Brandschutzplaene bsvonline.ch/Produkte/`), sowie die 2015-Basisfassung von BSR 16-15 (kein
Delta zur bereits genutzten rev2016-Fassung).

Eingearbeitet in [[brandschutz-pl03-wegweiser]] als neue Ziffer **§5ac**, Frontmatter
(`sources`/`last_updated`) aktualisiert.

## Nebenbefund — Formatierungsfehler in wiki/INDEX.md behoben

Beim Konsolidieren der Register fiel auf, dass die INDEX.md-Zeile fuer
[[brandschutz-pl03-wegweiser]] seit einem frueheren Lauf einen verwaisten Text-Fragment-Block
(Duplikat eines Teils des bereits vollstaendigen Haupteintrags, ohne Markdown-Bullet-Praefix)
enthielt. Der verwaiste Block wurde entfernt (reine Formatierungskorrektur, kein inhaltlicher
Verlust — der Inhalt war bereits vollstaendig in der Haupt-Zeile enthalten) und die
Wegweiser-Zeile um den neuen §5ac-Vermerk ergaenzt.

## Verifikations-Stufe (Pflicht seit 12.07.2026)

Beide Agenten haben vor jeder Uebernahme gegen die Originalquelle geprueft: Recht/Norm-Agent
gegen die vier real gelesenen SharePoint-PDFs (inkl. Seitenzahlen-Beleg RFB S.1-46),
Brandschutz-Agent gegen die drei neuen PDF-Originale sowie gegen zwei unabhaengige Web-Quellen
(bsvonline.ch offizielle Info-Seite + VKG-Medienmitteilung) fuer den BSV-2026-Refresh. Keine
unbelegten Kennwerte/Paragraphen uebernommen.

## Register aktualisiert

- `training/curriculum.md`: R39 (Domaene 3) + B30 (Domaene 4) neu angehaengt.
- `wiki/QUESTIONS.md`: R39 (Sektion B) + C31/B30 (Sektion C) neu oben angefuegt.
- `wiki/INDEX.md`: neue Zeile [[recht-norm-ahb-stadt-zuerich-projektstandards]]; Wegweiser-Zeile
  um §5ac ergaenzt; verwaister Formatierungsfehler behoben.
- `raw/_INGESTED.md`: zwei neue Zeilen (AHB-Bündel PL-02, drei neue PL-03-Dateien + Web-Refresh).
- Wiki-Artikel: NEU [[recht-norm-ahb-stadt-zuerich-projektstandards]] (emerging); geaendert
  [[recht-norm-raumprogramm-referenzwerke]] (Backlink), [[brandschutz-pl03-wegweiser]] (§5ac,
  established bleibt established).

## Was als naechstes

- **Recht/Norm:** die sechs Backlog-Unterordner des AHB-Buendels sind der naheliegende naechste
  Ansatzpunkt — insbesondere die "Wegleitung Submissions-/Zahlungswesen" (staedtische
  Vollzugsebene unterhalb der bereits dokumentierten kantonalen SubV ZH) und die AHB-Fassungen
  SIA 102/103/105/108-2009 (relevant fuer Skill `honorarberechnung-sia102`).
- **Brandschutz:** BSR 14-15 "Verwendung von Baustoffen" ist registriert, aber nicht
  volltext-destilliert — Kandidat fuer einen Folgelauf oder die Normen-KB. BSV-2026: naechster
  Check erst bei tatsaechlichem Start der politischen Vernehmlassung (08/2026) oder neuem
  Terminplan.
- **Rotation:** naechster Lauf Kartenportale oder Energie (beide seit Run 38 ohne bekannten
  Rueckstand, Refresh-only-Kandidaten). Der Ordner-Abgleich hat sich erneut als zuverlaessigster
  Weg erwiesen, auch in scheinbar erschoepften Domaenen (dieses Mal in BEIDEN Domaenen echte
  Neufunde geliefert, obwohl Run 37/38 bereits als "vollstaendig" galten) — bestaetigt die
  Run-38-Empfehlung, diese Methodik systematisch weiterzufuehren.
