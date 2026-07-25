---
titel: "Energie — Nebenlauf 2026-07-25: VKF-Brandschutzrichtlinie 22-15 + GVZ-PV-Formular"
datum: 2026-07-25
typ: nebenlauf-report
lauf-nummer: keine (bewusst KEINE Run-Nummer belegt — siehe «Kollisionslage»)
status: Funde verifiziert, Register-Einarbeitung ausstehend
---

# Energie-Nebenlauf 2026-07-25 — zwei «nicht auslesbar»-Kandidaten geschlossen

## Kollisionslage (Grund fuer den Nebenlauf-Status)

Der Scheduled Task `energie-training` startete um 22:37, waehrend auf demselben Host bereits
seit 22:30 eine zweite Instanz desselben Loops lief (`claude -p «Fuehre EINEN Intensiv-Lauf des
Energie-Trainings aus …»`, PID 95841, Vollgas-Runner). Diese zweite Instanz hatte zum Zeitpunkt
der Pruefung bereits Run-111-Edits in zwei Destillaten geschrieben
(`sia-2060-kosten-ladeinfrastruktur-vertiefung.md`, `denkmalschutz-energiesanierung-zh-sz.md`).

Gemaess Rule `auto-verbesserungen` 260724 (Kollisionsschutz Lern-/Trainings-Loops) ist dieser Lauf
daher **zurueckgetreten**:

- **keine** Run-Nummer belegt (Run 111 gehoert der parallelen Instanz),
- **keine** Edits an geteilten Registern (`INDEX.md`, `QUESTIONS.md`, `curriculum.md`,
  `CHANGELOG.md`, `pdf-inventar.md`, `_INGESTED.md`),
- **keine** Edits an bestehenden Destillaten,
- **kein** `git commit` / `git push` (index.lock-/Merge-Race),
- stattdessen: eigene Funde in diesem eindeutig benannten `outputs/`-Report gesichert; der native
  nas-selfcommit uebernimmt die additive Datei kollisionsfrei.

Damit die Arbeit nicht doppelt geschieht, wurde bewusst **komplementaer** gearbeitet: die parallele
Instanz hatte zwei der vier von Run 110 hinterlassenen Kandidaten bereits abgearbeitet (Referat
Vogelsang, Denkmalpflege «Energie und Baudenkmal» Teil 1+2). Dieser Nebenlauf hat die **beiden
verbliebenen** Kandidaten uebernommen.

## Fund 1 — VKF-Brandschutzrichtlinie 22-15 «Blitzschutzsysteme» erstmals im Volltext gelesen

**Das schliesst einen seit mehreren Laeufen offenen Punkt** aus
`destillate/pv-blitzschutz-gebaeudeversicherung-ch.md` («VKF-Richtlinie 22-15 selbst bleibt offen —
ein frueherer Beschaffungsversuch traf ein falsches/veraltetes Dokument, 23-03d von 2003»).

- **Quelle (Primaerdokument):** `https://services.vkg.ch/rest/public/georg/bs/publikation/documents/BSPUB-1394520214-107.pdf/content`
- **Dokument:** «Brandschutzrichtlinie Blitzschutzsysteme», Kuerzel 22-15de, Fusszeile 01.01.2017,
  Copyright 2015 VKF/AEAI/AICAA, 8 Seiten inkl. Anhang, 459'318 Bytes, PDF 1.5
- **Datenstand:** durch IVTH-Beschluss vom 18.09.2014 verbindlich erklaert, **in Kraft seit
  1.1.2015**, fuer alle Kantone verbindlich (Ziffer 7). Anhang-Tabelle nachgefuehrt.
  ⚠ Die Totalrevision der Brandschutzvorschriften (BSV 2026, Vernehmlassung August 2026,
  Inkraftsetzung voraussichtlich Herbst 2027) wird diese Fassung ersetzen.
- **Methode:** `curl -A Mozilla` + `pdftotext -layout` — das PDF ist textbasiert, die
  multimodale Read-Stufe war gar nicht noetig.

### Die Kernfrage ist beantwortet: wer ist ueberhaupt blitzschutzpflichtig

Ziffer 2 Abs. 1: «Je nach Personenbelegung und Nutzung sind Bauten, Anlagen oder Brandabschnitte
mit ausreichend dimensionierten Blitzschutzsystemen auszuruesten.» Ziffer 2 Abs. 2 fuehrt die
Faelle a–g; die Anhang-Tabelle ordnet je Fall die Blitzschutzklasse zu (Spalte A = VKF-Pflicht,
Spalte B = SNR 464022):

- **a) Grosse Personenbelegung:** Raeume, in denen sich **mehr als 300 Personen** aufhalten koennen
  (Mehrzweck-/Sport-/Ausstellungshallen, Saele, Theater, Kinos, Restaurants, Versammlungsstaetten)
  sowie Verkaufsraeume bis 1'200 m² Verkaufsflaeche. Ueber **1'200 m²** wird immer von >300 Personen
  ausgegangen. (Klasse III/II)
- **b) Beherbergungsbetriebe** je **20 oder mehr** aufgenommene Personen, dreifach differenziert:
  [a] auf fremde Hilfe angewiesen (Krankenhaeuser, Alters-/Pflegeheime) III/II · [b] nicht auf
  fremde Hilfe angewiesen (Hotels, Pensionen, Ferienheime) III/III · [c] abgelegen/nicht
  vollstaendig erschlossen, berggaengige Personen III/III
- **c) Besonders hohe Bauwerke** (Hochhaeuser, Hochkamine, Tuerme) inkl. anstossender Gebaeude
  normaler Bauhoehe; **als Hochhaus gilt ein Gebaeude mit Gesamthoehe von mehr als 30 m**. (III/II)
- **d) Landwirtschaftliche Oekonomie-/Betriebsbauten ueber 3'000 m³** inkl. anstossender Silos/
  Wohnbauten, Holzbearbeitungsbetriebe, Textil-/Kunststoffwerke (III/III); Fermenter von
  Biogasanlagen separat (II/II)
- **e) Industrie-/Gewerbebauten mit gefaehrdeten Bereichen** (feuer-/explosionsgefaehrliche Stoffe,
  Muehlen, chemische Fabriken, Sprengstoff-/Munitionslager, Rohrleitungsanlagen, Tankstellen)
  (II/II–I); explosionsgefaehrdete Bereiche unter dem Dach separat (I/I)
- **f) Behaelter/Lager fuer feuer- und explosionsgefaehrliche Stoffe** samt zugehoerigen Bauten (I/I)
- **g) Bauten und Anlagen an exponierten topographischen Lagen** (III/III–I)

Nur in der Anhang-Tabelle, **ohne** VKF-Pflicht (Spalte A leer, nur SNR-Empfehlung): h) empfindliche
technische Anlagen / Rechenzentren · i) lebenserhaltende technische Anlagen (Spitaeler, Altersheime)
· j) Inhalt von besonderem Wert (Archive, Museen, Sammlungen).

Auffangklausel Ziffer 2 Abs. 2 letzter Satz: «In Zweifelsfaellen entscheidet die Brandschutz-
behoerde, ob Bauten und Anlagen aufgrund dieser Brandschutzrichtlinie gegen Blitzschlag zu
schuetzen sind.» Anhang-Schlussanmerkung: fuer nicht aufgefuehrte Faelle ggf. Risikoanalyse nach
SN EN 62305-1:2011 / SN EN 62305-2:2012.

**Bestand:** Ziffer 3.3 Abs. 2 — «Werden mit Blitzschutzsystemen versehene Bauten und Anlagen
geaendert oder erweitert, sind die Blitzschutzsysteme den neuen Verhaeltnissen anzupassen.»

**Vollzug:** Projektgenehmigung auf Verlangen der Brandschutzbehoerde vor Ausfuehrungsbeginn
(4.1); Erdungen/Fundamenterder vor Eindeckung bzw. Einbetonieren kontrollieren; Meldung der
abnahmebereiten Anlage durch den Systemhersteller; periodische Kontrollen (4.2); Meldepflicht des
Eigentuemers nach Blitzeinschlag (4.3); Wartungspflicht des Eigentuemers (5).

### Verifiziert (Hauptmodell, nicht nur Agenten-Zusage)

Die konsequenzreichen Aussagen wurden direkt am heruntergeladenen PDF gegengeprueft, nicht aus dem
Agentenbericht uebernommen: Schwellenzitate (300 Personen, 1'200 m², «20 oder mehr», 30 m,
Zweifelsfall-Klausel) einzeln im Volltext lokalisiert; Inkraftsetzung 1.1.2015 im Volltext
bestaetigt.

### Wichtigster Einzelbefund: 22-15 sagt zu Photovoltaik gar nichts

Eine Volltextsuche ueber alle 8 Seiten ergibt **null Treffer** fuer «Photovoltaik», «PV» und
«Solaranlage» (eigene Gegenpruefung, nicht nur Agenten-Aussage). Das ist ein belastbarer
Negativbefund und praezisiert die bisherige KB-Aussage:

- Die Blitzschutzpflicht entsteht **ausschliesslich aus Gebaeudetyp, Nutzung, Personenbelegung,
  Hoehe, Volumen und Lage** nach der Liste a–g — **nie aus der PV-Anlage selbst**.
- Die in der KB zitierte Formulierung «PV fuehrt zu keiner Blitzschutzpflicht, sofern dies gemaess
  VKF-Brandschutzrichtlinie 22-15 fuer dieses Gebaeude nicht gefordert wird» stammt aus dem
  **VKF-Brandschutzmerkblatt «Solaranlagen» 2001-15**, nicht aus 22-15. Die Verweiskette ist damit
  sauber aufgeloest: 2001-15 verweist auf 22-15, und 22-15 kennt PV nicht — die Pflicht haengt
  allein am Gebaeude.

## Fund 2 — GVZ-PDF `21photovoltaikanlagen-doku-pm.pdf`: lesbar, aber inhaltlich ergiebig ist es nicht

- **Quelle:** `https://www.gvz.ch/_file/1661/21photovoltaikanlagen-doku-pm.pdf`
- **Dokument:** «Dokumentation ‹Photovoltaikanlage›», Gebaeudeversicherung Kanton Zuerich,
  **April 2021**, **1 Seite**, 250'788 Bytes, PDF 1.7
- **Methode:** `curl -A Mozilla` + `pdftotext -layout` (bereits ausreichend), zusaetzlich
  multimodal per Read-Tool gegengeprueft — deckungsgleich.

**Die Archivnotiz war falsch, der erhoffte Inhalt existiert aber nicht.** Der KB-Vermerk «technisch
nicht auslesbar (stark komprimierter/kodierter PDF-Stream)» ist widerlegt — das PDF laesst sich
problemlos lesen. Es ist jedoch **kein Merkblatt, sondern ein einseitiges interaktives
Meldeformular** (AcroForm) fuer die Installationsfirma: Projekt-/GVZ-Nr., PV-Flaeche, Kunde,
Aufstellort, Ersteller, Checkbox «Blitzschutzsystem ja/nein», Beilage Strangplan, Zeichenfeld mit
Symbol-Legende (PV-Generator, spannungsfuehrende Leitung, Wechselrichter, DC-Trenneinrichtung,
Schaltstelle, Batterien).

Ehrliche Negativbefunde zu den offenen Fragen (eigene Gegenpruefung: null Treffer fuer
«Praemie»/«Promille»/«‰» im Volltext):

- **Praemienwirkung / PV-spezifischer Satz:** im Dokument nicht enthalten.
- **Batteriespeicher:** kommt vor — aber **ausschliesslich als Zeichensymbol** in der
  Strangplan-Legende. Zur versicherungstechnischen Behandlung steht nichts. Der bisherige
  Analogieschluss der KB («Speicher = Wertvermehrung wie PV») bleibt damit **unbestaetigt**;
  dieses Dokument stuetzt ihn weder noch widerlegt es ihn.
- **CHF-/Prozent-Schwellen** (kleine Wertvermehrung vs. Schaetzungsgesuch/Bauzeitversicherung):
  nicht enthalten.
- **Pro-rata-Frage** (Praemienwirkung im laufenden Jahr): nicht enthalten.
- **Auflagen an die Anlage:** einzig die Erhebung «Blitzschutzsystem ja/nein» — ohne inhaltliche
  Anforderung. Nichts zu Feuerwehr-Zugang oder weiteren Brandschutzauflagen.

Der offene Punkt «GVZ-Praemienmechanik fuer Batteriespeicher» bleibt also offen, ist aber jetzt
**praezise eingegrenzt**: er ist ueber dieses Dokument nicht zu schliessen. Der belastbare Weg
bleibt die direkte Anfrage bei der GVZ-Fachstelle (versicherung@gvz.ch).

## Bauherren-Transfer

1. **Eine PV-Anlage macht ein Gebaeude nicht blitzschutzpflichtig.** Ob Blitzschutz noetig ist,
   entscheidet allein das Gebaeude: Personenbelegung (>300 bzw. >1'200 m² Verkaufsflaeche),
   Beherbergung ab 20 Personen, Hoehe ueber 30 m, Landwirtschaftsbau ueber 3'000 m³, gefaehrliche
   Stoffe, exponierte Lage. Fuer das normale EFH/MFH ohne diese Merkmale besteht **keine
   Blitzschutzpflicht** — auch nicht mit PV.
2. **Ist bereits ein Blitzschutzsystem vorhanden, muss die PV fachgerecht eingebunden werden**, und
   eine Aenderung/Erweiterung des Gebaeudes zwingt zur Anpassung des Systems (Ziffer 3.3 Abs. 2).
3. **Grenzfall Healthcare:** Alters-/Pflegeheime und Krankenhaeuser ab 20 auf fremde Hilfe
   angewiesenen Personen sind nach Buchstabe b **pflichtig** (Klasse III) — fuer JANS-Projekte im
   Healthcare-Segment ist das der Regelfall, nicht die Ausnahme. Zusaetzlich empfiehlt die
   SNR-Spalte fuer Betriebe mit lebenserhaltenden Anlagen ein Ueberspannungsschutzkonzept in
   Betreiberverantwortung.
4. **Zweifelsfall:** entscheidet die Brandschutzbehoerde — also fruehzeitig abklaeren, nicht selbst
   auslegen.
5. **Meldung PV im Kt. ZH:** Die GVZ verlangt das einseitige Formular «Dokumentation
   ‹Photovoltaikanlage›» mit Strangplan als Beilage; ein vorhandener Batteriespeicher ist im
   Strangplan einzuzeichnen. Was die Anlage praemienseitig kostet, sagt dieses Formular nicht —
   dafuer die GVZ direkt fragen.

## Werkzeug-Lehre — mit einer noetigen Praezisierung

Run 109 und 110 hatten die These aufgestellt, «WebFetch gescheitert / bildbasiert nicht auslesbar»
sei meist eine Werkzeuggrenze und keine Sackgasse. Dieser Nebenlauf bestaetigt das ein drittes und
viertes Mal — praezisiert die Diagnose aber:

**Beide heute geoeffneten Dokumente waren schlicht normale Text-PDFs, bei denen bereits
`pdftotext -layout` genuegte.** Die multimodale Read-Stufe war in keinem der beiden Faelle noetig.
Die urspruenglichen «nicht auslesbar»-Vermerke stammen also nicht von wirklich schwierigen PDFs,
sondern davon, dass **WebFetch als einziges Werkzeug versucht wurde**. Praktische Konsequenz fuer
kuenftige Laeufe: die Eskalationsleiter ist `curl -A Mozilla` → `file`-Check → `pdftotext -layout`
→ **erst dann** Read-Tool multimodal. Wer bei WebFetch stehen bleibt, produziert falsche
Sackgassen-Vermerke in der KB.

## Was noch in die Register muss (bewusst NICHT von diesem Lauf ausgefuehrt)

Diese Einarbeitung gehoert der naechsten Instanz, die kollisionsfrei schreiben darf:

1. `destillate/pv-blitzschutz-gebaeudeversicherung-ch.md`: Kriterienliste a–g aufnehmen, den
   offenen Punkt «VKF-Richtlinie 22-15 selbst» schliessen, Quelle/Datenstand ergaenzen
   (22-15de, in Kraft 1.1.2015, ⚠ BSV 2026 kommt), den Negativbefund «22-15 erwaehnt PV nicht»
   festhalten und die Verweiskette 2001-15 → 22-15 sauber darstellen.
2. `destillate/gvz-praemienmechanik-pv-speicher.md`: den Vermerk «technisch nicht auslesbar»
   **korrigieren** in «gelesen — einseitiges Meldeformular ohne Praemien-/Speicheraussagen»;
   den Batteriespeicher-Analogieschluss ausdruecklich als weiterhin unbestaetigt markieren.
3. **FAQ-Kandidat:** «Brauche ich wegen meiner PV-Anlage einen Blitzschutz?» — die Antwort ist
   jetzt primaerquellenbelegt und waere ein starker neuer BAUHERREN-FAQ-Eintrag.
4. Statusfrage fuer die Verifikationsstufe: die Blitzschutz-Kernaussage in
   `pv-blitzschutz-gebaeudeversicherung-ch` ist neu am Originaldokument verifiziert und traegt
   damit `established` deutlich besser als bisher.
5. Aus der Run-110-Liste bleiben nach diesem Nebenlauf **keine offenen curl+Read-PDF-Kandidaten**
   mehr: Vogelsang und Denkmalpflege Teil 1+2 hat die parallele Instanz erledigt, VKF 22-15 und
   das GVZ-PDF dieser Nebenlauf. Damit steht die Saettigungs-/Ruecktaktungsfrage aus PROGRAMM.md
   wieder unverstellt im Raum und sollte Raphael vorgelegt werden.

## Unveraendert offen (aus Run 110 uebernommen, keine Bewegung)

- Fuenf gebuendelte Kaufentscheide (B1-Konsolidierung, SWKI-VA105-01, SIA-385/1, SIA-385/2,
  SIA-384.354) — jetzt **dreizehn Laeufe** ohne Entscheid. Empfehlung unveraendert: als kurze
  Buendel-Frage vorlegen.
- Meta-Punkt M2 (eigenstaendiger Skill «energie»?) seit Run 45 unentschieden.
- SIA-2024-Gesundheitsbau-Merge ausfuehrungsreif, wartet auf Zustimmung.
