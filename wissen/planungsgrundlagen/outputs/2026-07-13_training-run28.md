# Trainingslauf Planungsgrundlagen — Run 28 (2026-07-13)

Schwerpunkt-Domaenen laut Rotation nach Run 27: **Recht & Norm (PL-02)** + **Brandschutz (PL-03)**,
Token-Vollgas 2 Domaenen.

## Besonderheit dieses Laufs: unregistrierte Vorarbeit vorgefunden

Beim Einstieg zeigte sich, dass ein frueherer, offenbar unterbrochener Trainingsdurchgang bereits
vier vollstaendige Recht/Norm-Wiki-Artikel geschrieben hatte (`recht-norm-baueingabe-verfahren-zh`,
`recht-norm-ivhb-baubegriffe`, `recht-norm-regenwasser-gewaesserraum-zh`,
`recht-norm-submissionsverordnung-zh`, alle mit Datumsstempel "Run 28" und bereits per
NAS-Selfcommit gesichert), ohne dass `curriculum.md`, `wiki/QUESTIONS.md`, `wiki/INDEX.md` oder das
CHANGELOG nachgefuehrt worden waren. Im Brandschutz-Wegweiser fand sich zudem ein bereits
geschriebener Korrekturblock (§4c), der auf zwei noch nicht existierende Abschnitte "§5g"/"§5l"
verwies. Statt diese Arbeit zu ignorieren oder blind zu uebernehmen, wurde sie in diesem Lauf:

1. **verifiziert** — alle referenzierten Quelldateien wurden auf Disk lokalisiert und die
   inhaltlichen Kernaussagen stichprobenartig gegen die Originale (PDF-Volltext) gegengeprueft;
2. **registriert** — Curriculum, QUESTIONS, INDEX und CHANGELOG wurden fuer die bereits
   geschriebenen Artikel nachgefuehrt (R18-R21);
3. **fortgesetzt** — die fehlenden §5g/§5l-Abschnitte wurden recherchiert, geschrieben und ebenfalls
   gegen die Originalquellen verifiziert (B19/B20), bevor weitere neue Brandschutz-Fragen bearbeitet
   wurden.

## Bearbeitete Fragen (12)

### Recht & Norm — vier bereits geschriebene, jetzt verifizierte + registrierte Artikel (R18-R21)

1. **R18 — Baueingabe-Verfahren ZH** (`01_Gesetze/02_Zuerich/Planung/Baueingabe Fristen/`):
   Drei-Spuren-Modell (ohne Bewilligung / Anzeigeverfahren mit 30-Tage-Fiktion / ordentliches
   Verfahren), Phasenprinzip Vorpruefung→Bewilligung→Rechtskraft mit Fristen (oeffentliche Auflage
   20 Tage, Rekurs 30 Tage), Plandarstellungskonvention § 4 Abs. 4 BVV (rot=neu/gelb=abzubrechen/
   schwarz=bestehend), reale Fallbeleg-Kennzahlen Wartstrasse 8 Zuerich (Denkmalschutz-Vorlauf) +
   Bohlweg 3 Thalwil → NEU [[recht-norm-baueingabe-verfahren-zh]].
2. **R19 — IVHB-Leitfaden Kt. ZH** (`01_Gesetze/02_Zuerich/Planung/IVHB_Leitfaden/`): vollstaendiges
   29-Begriffe-Inventar (§§ ABV), amtlicher Wortlaut Massgebendes Terrain § 5 ABV (10-Jahres-
   Verjaehrung entfaellt), Gebaeude/Kleinbauten/Anbauten § 2/2a, unterirdische/Unterniveaubauten
   § 2b/2c, Fassadenflucht/-linie § 6/6a → NEU [[recht-norm-ivhb-baubegriffe]]. Offen: Ziffern
   5.1-8.5 (Gesamthoehe/Fassadenhoehe/Vollgeschosse/Baulinien/Ausnuetzungsziffer) noch nicht im
   Volltext gelesen.
3. **R20 — Regenwasserentsorgung + Gewaesserraum-Verfahren ZH** (`01_Gesetze/02_Zuerich/Wasser/`):
   AWEL-Richtlinie Regenwasserentsorgung (Versickerung vor Einleitung, GWS-Zonen-Verbote S1/S2/S3,
   verschmutzt/nicht-verschmutzt-Abgrenzung) + Verfahren 2/3 zur Gewaesserraum-Festlegung
   (nutzungsplanerisch §§ 36-89 PBG / Wasserbauprojekt § 18 WWG) → NEU
   [[recht-norm-regenwasser-gewaesserraum-zh]], ergaenzt die Bemessungswerte aus
   [[recht-norm-abstandsvorschriften-wald-gewaesser]] um das Festsetzungsverfahren.
4. **R21 — Submissionsverordnung Kt. ZH (SubV 720.11)** (`01_Gesetze/02_Zuerich/Submission/`):
   4 Vergabearten inkl. Wettbewerbs-Ausnahme § 10 lit. i, Fristen Staatsvertrag/Nicht-
   Staatsvertragsbereich, Zuschlagskriterien § 33, Abgrenzung zur privaten JANS-Devisierung
   (Skill `ausschreibung`) → NEU [[recht-norm-submissionsverordnung-zh]]. Offen: `4094.pdf` im
   selben Ordner noch nicht identifiziert.

### Brandschutz — Verifikations-Abschluss + sechs gegengeprüfte Kandidaten (B19-B25)

5. **B19 — «Parking»-Begriff** (VKF-Wohnbauten-Arbeitshilfe 1001-15de Ziff. 2.4/12.1/12.2):
   Begriffsabgrenzung > 600 m² vs. Raeume bis 600 m² (keine Anforderung EFH/geringe Abmessung),
   vollstaendiger Wortlaut inkl. **Schleusenpflicht ab 1'200 m² Brandabschnittsflaeche** (bisher
   nicht dokumentierte Kernzahl) → NEU §5g [[brandschutz-pl03-wegweiser]].
6. **B20 — BSR 21-15 RWA-Grundrichtlinie:** vollstaendige Parking-Tabelle (600/3'600 m² unter
   Terrain, 2'400/4'800 m² ueber Terrain, LRWA/MRWA/NRWA-Systematik) → NEU §5l
   [[brandschutz-pl03-wegweiser]]. B19+B20 schliessen gemeinsam eine bereits im §4c-Korrekturblock
   begonnene, aber unvollstaendige Verifikation der ueberholten 2003er-Parkhaus-Arbeitshilfe ab —
   die dort bereits genannten Zahlen (4'800/2'400/9'600 m²) wurden gegen die Originalquellen
   bestaetigt.
7. **B21 — BS-Symbole 01.01.2017** (kanonischer Vollkatalog `brandschutznachweis.ch`): Delta zum
   bereits dokumentierten projektspezifischen Musterplansatz (§5b) — zusaetzliche Kategorien
   Rauchschutz-Druckanlage/Spuelluftung/Poller/PV-Wechselrichter/Stromabschaltung → Ergaenzung §5b.
8. **B22 — «Die feuerpolizeilichen Bedingungen.docx»** (Ordner `08 QS`): geprueft, **kein neuer
   Inhalt** — private ChatGPT-Erklaerungsnotiz zu QSS 1, bereits als "08 QS/ JANS-Notiz" in §3
   referenziert.
9. **B23 — Solaranlagen-Projektordner:** geprueft, **kein neuer Inhalt** — identische Datei
   (Name + Groesse 11 MB) wie die bereits fuer [[energie-pv-brandschutz]] genutzte Quelle, auch
   unter PL-04/Energie/Solaranlage/_Brandschutz/ abgelegt.
10. **B24 — 07 Blaues Buch Ordner:** geprueft, **kein weiteres Material** — enthaelt exakt die 2
    bereits in §5e ausgewerteten PNG-Screenshots, keine zusaetzlichen Seiten verfuegbar.
11. **B25 — Lignum Erdbeben (`Erdbebengerechte_Holzbauten_d.pdf`):** **technisch nicht lesbar** —
    OneDrive-Cloud-Platzhalter, `cp`/`ditto`/Read scheiterten wiederholt mit "Resource deadlock
    avoided" (kein anderer Prozess haelt die Datei laut `lsof`). Kein inhaltliches Ergebnis, offener
    Punkt fuer den naechsten Lauf.

## Neue/erweiterte Artikel

- **NEU (established):** [[recht-norm-baueingabe-verfahren-zh]], [[recht-norm-ivhb-baubegriffe]],
  [[recht-norm-regenwasser-gewaesserraum-zh]], [[recht-norm-submissionsverordnung-zh]]
- **[[brandschutz-pl03-wegweiser]] erweitert:** §5g NEU (Parking-Begriff), §5l NEU (BSR-21-15-RWA),
  §5b ergaenzt (BS-Symbole-Vollkatalog), §4c-Korrektur referenziell geschlossen

## Verifikations-Stufe (Modell-D-Volltextabgleich)

Alle vier Recht/Norm-Quellen wurden auf Disk lokalisiert (Dateiexistenz bestaetigt) und ihre
Kernaussagen stichprobenartig gegen den PDF-Volltext gegengeprueft (u. a. IVHB-Begriffsinventar
Seite fuer Seite, SubV-Fristen/Vergabearten, Regenwasser-Rechtsgrundlagen) — keine Uebernahme ohne
eigene Pruefung, obwohl die Artikel bereits vollstaendig vorlagen. Fuer Brandschutz wurden die
beiden neuen Quellen (Wohnbauten-Arbeitshilfe Ziff. 12, BSR 21-15 Ziff. 3.1) direkt gelesen und die
darin enthaltenen Zahlen mit dem bereits existierenden §4c-Korrekturblock abgeglichen — vollstaendige
Uebereinstimmung, keine Beanstandung. Drei Kandidaten erwiesen sich als bereits abgedeckt/dupliziert
(B22-B24) und wurden ehrlich als Nicht-Fund dokumentiert statt stillschweigend uebersprungen; ein
Kandidat (B25) war aus technischen Gruenden nicht zugaenglich und wird als offener Punkt gefuehrt,
nicht als recherchiertes Ergebnis ausgegeben.

## Was als naechstes

- **Naechste Domaenen laut Rotation:** Kartenportale (PL-01) + Energie (PL-04) fuer den naechsten
  Lauf (Rotation zurueck zum Anfang, da Recht/Norm + Brandschutz nun beide vertieft sind).
- **Offen bleibt:** IVHB-Leitfaden Ziffern 5.1-8.5 (Gesamthoehe/Fassadenhoehe/Vollgeschosse/
  Baulinien/Ausnuetzungsziffer) im Volltext lesen; `4094.pdf` im Submission-Ordner identifizieren;
  Regenwasser-Richtlinie Anhang 1-6 + S.12ff.; Lignum-Erdbeben-PDF erneut zugreifen (ggf. im Finder
  oeffnen, um den OneDrive-Download zu erzwingen).
- **Prozess-Lehre:** Ein Trainingslauf sollte beim Einstieg immer pruefen, ob bereits geschriebene,
  aber unregistrierte Wiki-Aenderungen vorliegen (Diff INDEX.md/curriculum.md gegen tatsaechlich
  vorhandene `wiki/*.md`-Dateien) — das haette diesen Lauf schneller gemacht, wenn es frueher im
  Prozess systematisch geprueft worden waere statt zufaellig beim Lesen der Zieldateien aufzufallen.
