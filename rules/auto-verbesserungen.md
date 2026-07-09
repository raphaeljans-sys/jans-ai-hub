# Regel: Auto-erfasste Verbesserungen (verbindlich)

Diese Datei wird automatisch gepflegt. Jede dauerhafte Verbesserung oder Korrektur,
die der Benutzer im Gespräch äussert («ab jetzt immer …», «nie …», «künftig …»,
«merk dir …»), wird hier als datierter Eintrag hinterlegt und ist damit sofort auf
allen Stationen aktiv (MacBook Pro, Mac Mini) — ohne Git-Commit.

Die Erfassung läuft automatisch über den Hook `scripts/verbesserung-capture.sh`
(`UserPromptSubmit`) in Kombination mit Claudes Bewertung, ob es sich wirklich um
eine Dauerregel handelt.

## 260709 — Mails UND Anhänge wirklich lesen; Status aus dem BELEG ableiten, nie aus einer Absichtserklärung
- **Auslöser:** Zwei Rückmeldungen am 09.07. (1) "mir erscheinen die erwähnten log's nicht wirklich sinnhaft und mit dem aktuellen mailverkehr abgeglichen: A) RE-00088 ist bezahlt B) Rechnung Ersatzabgabe wurde von KISPI bezahlt ... wenn du dies tun würdest [Mailverkehr + Anhänge anschauen] wäre es klar dass diese rechnung bezahlt wurde." (2) "Diese Argumentation gefällt mir ganz und gar nicht dass du deshalb diesen punkt gestrichen hast weil die argumentation sollte sein, dass du dem mail mit dem Anhang siehe belege entnehmen kannst wie die sachlage ist. Das ist der grund warum ich nicht wirklich an dich glaube wenn du weiterhin so schlampig arbeitest du mails nicht list die anhänge nicht kontrollierst und verstehst was die sachlage ist." — Claude hatte die Lenggstrasse-30-Ersatzabgabe zuerst mit einer blossen Zusage begründet («wird sofort überwiesen») statt mit dem im Thread hängenden ZKB-Buchungsbeleg (Belastung CHF 21'000.00, Valuta 08.07.2026, KISPI → Stadt Zürich, EAG-Objekt 2026/171/0092), der die effektiv ausgeführte Zahlung zeigt.
- **Regel:** (1) **Anhänge sind Pflichtlektüre.** Bei jedem Punkt, dessen Sachlage/Status an einem Dokument hängt (Rechnung, Zahlungsbestätigung, Buchungs-/Bankbeleg, Verfügung, Vertrag, Offerte), wird der Anhang GEÖFFNET und GELESEN (PDF-Seiten, nicht nur Dateiname/Betreff); die relevanten Fakten (Betrag, Valuta/Datum, Absender/Empfänger, Referenz) werden dem Beleg entnommen, nicht geraten. Findet sich ein referenzierter Anhang nicht in der Mail-API, über Spotlight/`mdfind` bzw. den Outlook-Attachment-Cache lokalisieren. (2) **Status aus dem Beleg, nie aus Absicht.** Eine tatsächlich ausgeführte Zahlung/Erledigung wird durch den BELEG festgestellt (Zahlungsbestätigung, Buchungsdetail, Bankbelastung, bexio `--verzug` = nicht mehr im Verzug), NICHT durch promissorische Sprache («wird überwiesen», «werde zahlen», «veranlasst», «kümmere mich»). Eine blosse Zusage ohne Beleg = weiter beobachten, NICHT schliessen; liegt der Beleg vor, wird darauf abgestützt und im Register/Journal zitiert (Dokument + Betrag + Datum + Referenz). (3) Der Logbuch-Radar darf einen Punkt nicht tagelang unverändert als «offen/dringend» wiederholen, ohne den neuesten Thread inkl. Anhang geprüft zu haben (Pflicht-Schritt 2b Gegen-Verifikation). Fremd-Rechnungen (Bauherr/KISPI zahlt, nicht JANS) sind keine offene JANS-Aktion, sobald der Beleg die Zahlung zeigt. (4) **Jede relevante Mail wird gelesen, um den SACHVERHALT zu verstehen** — inkl. Anhänge, nicht nur Betreff/Stichworte; der Radar hat keinen Sinn, wenn Mails/Anhänge nur überflogen werden. (5) **Eingehend ↔ ausgehend paaren:** Wirft eine eingehende Mail einen Sachverhalt/eine Frage/Bitte auf und hat eine spätere AUSGEHENDE Mail (von RJ/JANS im selben Thread) diesen beantwortet/gelöst/geliefert, dann ist der Punkt ERLEDIGT und wird als erledigt verbucht (→ Archiv) — nicht nur den Eingang sehen, sondern prüfen ob die lösende Antwort schon raus ist (Sent Items/Thread). «Offen/nachfassen» bleibt nur, wenn die Gegenantwort nachweislich noch fehlt. Beim Schliessen kurz belegen (eingehend Absender/Datum/Anliegen → ausgehend Antwort Datum/Kerninhalt).
- **Gilt für:** Scheduled Task `logbuch-radar`, Skill `logbuch`, und JEDE Arbeit mit Mails/Belegen (auch `hub-chef`, `/morgen`, `mahnwesen`/`zahlungsabgleich`/`kostenkontrolle`, Offert-/Rechnungsprüfung) — Mails samt Anhängen lesen, den Sachverhalt verstehen, eingehend↔ausgehend paaren, alle Stationen.

## 260702 — Buchhaltung: bexio ist fuehrend; Claude bucht NUR nach Einzelfreigabe je Buchungsliste
- **Auslöser:** Aufgleisung Buchhaltungssystem 02.07.2026 (Spec `wissen/spec/outputs/2026-07-02_buchhaltungssystem_spec.md`); Schluesselentscheide via AskUserQuestion bestaetigt.
- **Regel:** (1) **bexio ist das fuehrende System** (Quelle der Wahrheit) fuer die JANS-Buchhaltung; die OneDrive-Ablage `AD - 06 Unternehmung/03 Buchhaltung` ist nur noch Jahres-Archiv (Inbox + Abschluss-/Steuer-Exporte), die manuelle 4-stellige Ordner-Kontierung wird nicht weitergefuehrt. (2) Claude darf Geschaeftsvorfaelle in bexio **buchen, aber ausschliesslich nach expliziter Einzelfreigabe**: erst Kontierungs-/Buchungsliste als Trockenlauf zeigen, gebucht wird nur nach Raphaels Ja (Connector-Muster `--ja`, analog Mahnwesen). NIE automatisch buchen, NIE ohne vorgelegte Liste, weiterhin NIE Zahlungen ausloesen, NIE reconcilen/loeschen/stornieren (Regel aus `zahlungsabgleich` bleibt). Diese Regel praezisiert die Whitelist «Geld/Buchungen NIE» zu «Buchungen nur mit Einzelfreigabe».
- **Gilt für:** Connector `connectors/bexio.mjs`, Skills `zahlungsabgleich`/`mahnwesen`/`kostenkontrolle`/`hub-chef` und alle Buchhaltungsarbeiten, alle Stationen.

## 260629 — Baurechtsfrage: ZUERST das Buch-Destillat im Hub konsultieren, nie extern/aus Scans bauen ohne diesen Schritt
- **Auslöser:** "dein baurecht skill sollte beide Bänder komplett als md files als kontext ... auf dem nas abgelegt haben prüfe das bitte und schaue das in zukunft du selbständig diese grundlagen sofort findest" (Claude hatte für die Giebelweg-Einwendung eine PDF aus den SharePoint-PNG-Scans gebaut, statt die bereits vorhandenen md-Destillate zu nutzen).
- **Regel:** Bei JEDER Baurechtsfrage (insb. PBG/ABV/BVV/BBV ZH, Abstände, Baulinien, Ausnützung, Enteignung, Verfahren) wird ZUERST das Buch-Destillat «Zürcher Planungs- und Baurecht» (Fritzsche/Bösch/Wipf/Kunz, Bd 1+2) im Hub konsultiert — Einstieg IMMER über `wissen/baurecht/buecher/INDEX.md` (Kapitel→Artikel-Landkarte + Abdeckungs-Matrix) und die per-Kapitel-Destillate in `wissen/baurecht/buecher/band-1|band-2/`, zusammen mit dem amtlichen § aus `wissen/baurecht/raw/*_amtlich_zh_*.md`. Erst wenn ein Kapitel laut INDEX/Matrix NOCH NICHT distilliert ist (⬜/🟡-Lücke), über `wissen/baurecht/buecher/seiten-inventar.md` die Original-Screenshots im Ordner «SM Planungs und Baurecht» (bzw. die kuratierten Seiten in «SM Blaues Buch») nachlesen — UND das Ergebnis als neues Destillat ablegen (Compounding). NIE extern/Web suchen oder Belegseiten aus Scans zusammenstellen, ohne diesen Skill-internen Buch-Layer zuerst geprüft zu haben. (Der Skill `baurecht` schreibt das in Sektion 0b bereits vor — diese Regel erzwingt die Einhaltung.)
- **Status der KB (29.06.2026):** beide Bände sind als Destillat angelegt, aber NICHT vollständig (≈10 von 23 Kapiteln; Kap. 14 🟢, Kap. 15 inkl. § 265/§§ 98–104 🟡, Bd 1 Kap. 6–9 teilweise). Abdeckung wächst über den Scheduled Task `baurecht-buch-training`. «Komplett» ist Ziel, nicht Ist-Stand — bei Lücken den distillieren-statt-improvisieren-Weg gehen.
- **Gilt für:** Skill `baurecht` und alle baurechtlich gestützten Skills (`machbarkeit`, `ankaufspruefung`, `behoerden-vorabklaerung`, `auflagebereinigung`, `massgebendes-terrain`, …), alle Stationen.

## 260627b — Baukörper in Volumenstudien: ausgerichtet und architektonisch gegliedert, nie nackter schräger Quader
- **Auslöser:** "warum hast du den baukörper schreg in die parzelle gestellt? Das geht gar nicht ... das projekt viel besser als was du hier vorschlägst ... kannst du nicht mal die variantenstudie im ordner anschauen und daraus lernen was ich mag"
- **Regel:** Der projektierte Baukörper in jeder Volumen-/Machbarkeitsstudie wird (1) IMMER an der Parzelle/Strasse AUSGERICHTET — entlang der Hauptachse der Parzelle bzw. parallel zur dominanten Nachbarbebauung/Strassenkante (minimal umschliessendes Rechteck der Parzelle), NIE achsparallel zu den Landeskoordinaten schräg in die Parzelle gestellt; (2) als architektonisch GEGLIEDERTER Körper dargestellt wie in den JANS-Referenz-Variantenstudien (Satteldach/Giebel oder Attika, ggf. in mehrere Volumen gestaffelt, Firstrichtung passend) — KEIN nackter Extrusionsquader als Endresultat. Vorbild sind die realen Variantenstudien (z.B. 2621 Giebelweg, gegliederte Körper mit Dachform). Massenmodell-Geometrie an `volumenstudie`-Standard halten; bei Unsicherheit die Variantenstudie im Projektordner ansehen und den Stil übernehmen.
- **Gilt für:** Skills `volumenstudie`, `machbarkeit-studio`, `machbarkeit`, `massgebendes-terrain` und alle Massen-/Situationsmodelle, alle Stationen.

## 260627 — 3D-/Massen-/Situationsdarstellungen IMMER auf echte swisstopo-Grundlagen stellen
- **Auslöser:** "die 3D darstellung arbeitet nicht mit dem richtigen topographie, kannst du da bitte auf die richtigen grundlagen zurückgreifen wo wir schon konektoren zu den gebäudekuben und dem gelände gebaut haben — SwissBUILDINGS Gebaeudekuben, SwissALTI Gelaendemodell, SwissSURFACE Punktwolke"
- **Regel:** Jede 3D-, Massen- oder Situationsdarstellung (Skills `volumenstudie`, `machbarkeit-studio`, `machbarkeit`, `massgebendes-terrain`) wird auf den ECHTEN amtlichen Geodaten aufgebaut, nicht mit Platzhalter-/Ersatzgeometrie (kein flaches Gelände, kein quadratischer Ersatz-Footprint, keine erfundene Nachbarschaft): Gelände aus **swissALTI3D** (DTM), Nachbar-/Bestandes-Gebäudekuben aus **swissBUILDINGS3D**, bei Bedarf **swissSURFACE3D** (Punktwolke) für Vegetation/Detail; Parzellen-/Baufeld-Polygon aus der amtlichen Vermessung. Dafür die bestehenden Connectoren nutzen (`connectors/geo-zh.mjs --produkt dtm,gebaeude,punktwolke`, `geoshop-zh.mjs`, swisstopo STAC) und die Situations-/Render-Tools des Skills `volumenstudie` (`situationsmodell.py`, `c4d_situation.py`, `axo_render.py`). Der projektierte Baukörper steht auf dem echten Terrain im echten Kontext. Nur wenn eine Grundlage nachweislich nicht beschaffbar ist, ein als Annahme markierter Fallback — und das transparent ausweisen (identifikatoren-/grundlagen nie erfinden).
- **Gilt für:** Skills `volumenstudie`, `machbarkeit-studio`, `machbarkeit`, `massgebendes-terrain` und alle Situations-/Massenmodelle, alle Stationen.

## 260626 — Devisierungs-/Submissionsunterlagen neutral und offen formulieren (Anbieter im Unklaren lassen)
- **Auslöser:** "keine erwähnung wie die ausschreibung sein wird (also der unternehmer in unkenntniss lassen welche unternehmen zur submission eingeladen werden, grundsätzlich submission offen formulieren auch für ander Türsystemplaner"
- **Regel:** Devisierungsgrundlagen, Devis/LV, Begleitschreiben und alle an Anbieter gehenden Submissionsunterlagen werden GRUNDSÄTZLICH neutral und offen formuliert: (1) KEINE Angabe zur Vergabeart/Ausschreibungsform (nie «freihändig», «Direktauftrag», «Konkurrenzausschreibung», keine IVöB-/Ausnahmetatbestands-Begründung); (2) NIE offenlegen oder andeuten, welche oder wie viele Unternehmen eingeladen sind, den Anbieter darüber im Unklaren lassen; (3) das Dokument NICHT auf einen bestimmten (z.B. bestehenden) Lieferanten zuschneiden, sondern generisch «der Anbieter» schreiben, so dass es offen auch an weitere Fachplaner derselben Disziplin (z.B. andere Türsystemplaner) gehen kann; (4) keine Verweise auf einen bestehenden/ursprünglichen Vertrag und nicht auf KBOB; technische Kompatibilitäts-/Schnittstellenanforderungen (Anbindung an Bestand) bleiben als sachliche Spezifikation erlaubt. Knapp und kompakt halten.
- **Gilt für:** Skill `ausschreibung` und alle Submissions-/Devisierungsunterlagen, alle Stationen.

## 260624 — Volumenstudien IMMER auf das maximal zulässige Volumen auslegen
- **Auslöser:** "du musst überall bei allen körper immer die maximal mögliche fassadenhöhe planen nicht nur 1 geschoss sondern es ist die w2 zone bitte schau die baurecht grundlagne nochmals an und mach das maximal mögliche volumen"
- **Regel:** Bei jeder Volumen-/Machbarkeitsstudie (Skill `volumenstudie`/`machbarkeit`) werden die Baukörper IMMER auf das baurechtlich maximal zulässige Volumen ausgelegt, nie als eingeschossige Platzhalter. Konkret: zuerst die Zonen-Grundmasse prüfen (Skill `baurecht`/ÖREB/BO) und dann die bindenden Maxima ausreizen — Fassadenhöhe/Gebäudehöhe (z.B. W2 Oberrieden: 9.0 m traufseitig, 13.0 m giebelseitig, 2 Vollgeschosse + Dach- ODER Attikageschoss), Geschosszahl, und die Ausnützungsziffer als Dichte-Deckel. Das gebaute Volumen wird so gewählt, dass die **bindende** Restriktion (meist AZ → anrechenbare Geschossfläche) ausgeschöpft ist; Footprint/Anzahl Körper entsprechend kalibrieren. aGF und GV im Output ausweisen, Annahmen markieren, Kennwerte nie erfinden.
- **Gilt für:** Skill `volumenstudie`, `machbarkeit` und alle Volumen-/Massenmodelle, alle Stationen.

## 260619 — Dateien/Ordner IMMER mit vollständigem Pfad ausweisen
- **Auslöser:** "kannst du mir jeweils den pfad komplett ausschreiben dass ich weiss wie ich zu suchen habe" + "kannst du mir auch hier immer die pfade komplett anzeigen bitte hinterlege das als verbindend für zukünftige anfragen"
- **Regel:** Wann immer Claude eine Datei oder einen Ordner nennt (gefundene Dokumente, Downloads, Ablageorte, Suchtreffer), wird der **vollständige Pfad** ausgeschrieben — nie abgekürzt mit «…» oder nur dem Dateinamen. Das gilt für **beide** Arten von Pfaden: (1) lokale/Cloud-Dateipfade (kompletter Pfad ab Mount/Library, z.B. `/Users/raphaeljans/Library/CloudStorage/OneDrive-…/JANS - 2619-KISPI - Dokumente/…/00 Eingabe SRZ/<Datei>.pdf`) und (2) Pfade in externen Projekträumen/Plattformen (z.B. Truninger DS3): die komplette Ordnerkette als Klartext-Breadcrumb von der Wurzel bis zur Datei (`Hauptsammlung › Projektraum › … › Bewilligung_Schutzraum › <Datei>.pdf`), damit Raphael den Weg 1:1 nachklicken oder suchen kann. Bei Plattform-Treffern den Breadcrumb bei Bedarf aktiv aus der Quelle auslesen (Connector), nicht raten.
- **Gilt für:** Alle Antworten, alle Skills/Connectoren, alle Stationen.

## 260616 — Baurecht: IMMER beide Bände des Standardwerks prüfen UND zitieren
- **Auslöser:** "ich bitte dich daher zukünftig alle baurechtsanfragen mit beiden bänder Band 1 und 2 zu prüfen und diese auch im Quellenverweis zu Zitieren und aufzuführen bitte akutalisiere den Baurechtskill"
- **Regel:** Jede Baurechtsanfrage wird gegen BEIDE Bände von Fritzsche/Bösch/Wipf/Kunz «Zürcher Planungs- und Baurecht» (6. Aufl. 2019) geprüft: Band 1 (Planungsrecht, Verfahren, Rechtsschutz) UND Band 2 (Bau- und Umweltrecht). Beide Bände werden im Quellenverweis mit Band/Kapitel/Seite aufgeführt; der für die konkrete Frage nicht einschlägige Band wird kurz als nicht einschlägig vermerkt, nie stillschweigend weggelassen. Das Werk darf in einer baurechtlichen Stellungnahme nie fehlen. Fehlt ein Kapitel als Destillat (Band 1 noch weitgehend offen), die Screenshot-Doppelseiten via `seiten-inventar.md` lesen und als Destillat ablegen (Compounding). Verankert im Skill `baurecht`, Sektion 0b + «Quellenangaben».
- **Gilt für:** Skill `baurecht`, alle baurechtlichen Stellungnahmen/Dokumente, alle Stationen.

## 260616 — Kein Baurechts-/Rechtsberatungs-Disclaimer am Schluss von Dokumenten
- **Auslöser:** "Kannst du jeweils diese Baurechts-Disclaimer am schluss der Dokumente weglassen, bitte hinterlege das im claude md file für alle zukünftigen von dir zu erstellenden dokumente"
- **Regel:** In von Claude erstellten Dokumenten (DOCX/PDF, Factsheets, Berichte, Memos) den abschliessenden Haftungs-/Disclaimer-Baustein («Hinweis: Diese Einschätzung ersetzt keine Rechtsberatung. Für verbindliche Auskünfte den aktuellen Gesetzestext konsultieren oder eine baurechtliche Fachperson beiziehen.») WEGLASSEN. Quellenangaben (§§/Erlasse) bleiben erlaubt und erwünscht, nur die Rechtsberatungs-Floskel entfällt. Überschreibt die «Haftungshinweis»-Vorgabe im Skill `baurecht`.
- **Gilt für:** Alle von Claude erzeugten Dokumente, alle Skills (baurecht, immobilienbewertung, ankaufspruefung etc.), alle Stationen. Chat-Antworten dürfen weiterhin bei Bedarf einen kurzen mündlichen Vorbehalt enthalten.

## 260615 — Bewertungsgutachten: auf die METHODE berufen, SVKG-Zertifizierung weder behaupten noch verneinen
- **Auslöser:** "ich bin nicht zertifiziert nach SVKG daher so formulieren dass wir uns auf die methode berufen bitte nicht sagen dass ich nicht SVKG zertifiziert bin einfach offen lassen und aber auch nicht so formulieren das zertifzierung nach SVKG vorausgesetzt werden kann"
- **Regel:** In Immobilienbewertungs-Gutachten (Skill `immobilienbewertung`) IMMER auf die anerkannte **Methode/den Standard** berufen — Formel wie «nach Schweizer Schätzungsstandard / Schätzerhandbuch SVKG/SEK/SVIT 2012» bzw. «methodisch SVS-konform». NIE eine SVKG-Mitgliedschaft oder -Zertifizierung des Verfassers behaupten oder implizieren (kein «zertifizierter Schätzungsexperte SVKG», kein Logo/Mitglieds-Hinweis). Ebenso NIE aktiv erwähnen, dass keine Zertifizierung besteht — die Frage der persönlichen Zertifizierung bleibt offen/unerwähnt. Es geht um die Methodentreue, nicht um einen Titel.
- **Gilt für:** Alle Bewertungs-Gutachten und Marketing-/Akquise-Texte rund um die Immobilienbewertung, alle Stationen.

## 260612 — Projektraum-/Plattform-Downloads IMMER doppelt ablegen (extern + eigene Site), Struktur = EXAKTER Spiegel der Quelle
- **Auslöser:** "bitte lege die dokumente einerseits auf dem für externe partner geteilten sharepoint sowie meiner eigentlichen server sharepoint seite ab (doppelt, falls jemand unfug auf der externen platte macht)" + "die ordnerstruktur auf beiden sharepoint-sites muss exakt die gleiche ablagehierarchie anwenden wie auf der truninger plattform — exakter spiegel"
- **Regel:** Dokumente, die von externen Plattformen/Projekträumen (z.B. Truninger DS3) für ein Projekt beschafft werden, werden IMMER doppelt abgelegt: 1) auf der mit externen Partnern geteilten Projekt-Site (z.B. `JANS - 2619-KISPI - Dokumente/…`) und 2) auf der eigenen internen Projekt-Site unter `AR - 01 Projekte/<Projekt>/99 Grundlagen/<…> DOWNLOAD PROJEKTRAUM/…`. Die Ablagehierarchie ist dabei ein **EXAKTER Spiegel der Quellplattform**: identische Ordnernamen (inkl. Schreibweise/Umlaute), identische Verschachtelung, keine eigenen Zwischenordner und keine Umbenennungen. Eigene JANS-Arbeitsordner (z.B. «33 Auflagebereinigung») bleiben klar erkennbar daneben, gehören aber nicht in den Spiegel. Die interne Kopie ist die Sicherung, falls auf der externen Ablage «Unfug» passiert; sie wird nie weggelassen.
- **Gilt für:** Alle Plattform-/Projektraum-Downloads in allen Projekten, alle Stationen.

## 260611 — C4D-Rendering laeuft IMMER auf dem Mac Mini (Render-Weiche)
- **Auslöser:** "muss ich extra erwähnen dass ich möchte dass immer auf dem mac mini gerendert wird oder wie ist da jetzt der mecano?"
- **Regel:** Jede Cinema-4D-Arbeit (c4dpy-Szenen, Commandline-Renders, c4dpy-Scripts wie `c4d_situation.py`) wird OHNE besondere Erwähnung ueber die Render-Weiche `skills/volumenstudie/tools/render-remote.sh` ausgefuehrt — nie c4dpy/Commandline direkt. Die Weiche rendert automatisch auf dem Mac Mini (Always-On, dort liegt die Maxon-Lizenz); vom MacBook aus via SSH mit Auto-Staging ueber `render-scratch/`. Die Maxon-Lizenz bleibt auf dem Mac Mini — nicht zuruecktransferieren. Lokales Rendern nur auf explizite Anweisung (`JANS_RENDER_LOCAL=1`).
- **Gilt für:** Alle Render-/C4D-Aufrufe auf allen Stationen (volumenstudie, Situationsmodelle, kuenftige Render-Pipelines).

## 260611 — Sichtbarkeit bei laufenden lokalen Jobs (Render, Builds)
Raphael nutzt die Aktivitaetsanzeige (drei Punkte in der Recents-Vorschau) als Signal,
dass Claude arbeitet. Bei laengeren lokalen Jobs (C4D-Render, Builds, Downloads) deshalb
BEVORZUGT im Vordergrund warten (Wait-Loop im Zug, Status-Updates), statt still in den
Hintergrund zu legen und den Zug zu beenden. Hintergrund nur, wenn der Job laenger als
~10 Minuten dauert ODER parallel weitergearbeitet wird — dann explizit ankuendigen,
dass die Anzeige auf idle springt und die Meldung automatisch kommt.

## Eintrags-Format (beim Anhängen genau so verwenden, neueste zuoberst)

```
## YYMMDD — <Kurztitel>
- **Auslöser:** <was der Benutzer gesagt hat, knapp>
- **Regel:** <die dauerhafte Anweisung, imperativ formuliert>
- **Gilt für:** <Kontext / Anwendungsbereich>
```

## 260611 — Konzeptionelle/Pipeline-Dokumente zentral aufs NAS
- **Auslöser:** "wäre es nicht besser wenn wir in bezug auf konzeptionelle pipeline fragestellungen alles auf dem nas abspeichern zentral sodass alle arbeitsstationen und ai modelle immer auf dem aktuellsten stand sind … bitte lege alle immer zentral auf dem nas ab" (Konzept-PDF war faelschlich nur in OneDrive gelandet)
- **Regel:** Konzept-, Prinzip- und Pipeline-Dokumente (Architektur-/Workflow-Entscheide, Datenaustausch-Prinzipien, Connector-Konzepte) werden **kanonisch auf dem NAS** unter `/Volumes/daten/jans-ai-hub/docs/konzepte/` abgelegt (MD als Wahrheit, DOCX/PDF danebenliegend), damit alle Stationen und AI-Modelle denselben aktuellen Stand sehen. Eine Lese-/Praesentationskopie (PDF) darf zusaetzlich in den OneDrive-Output-Ordner gelegt werden — die Wahrheit bleibt das NAS. Ergaenzt `sync-kanonische-quelle.md` (NAS = einzige Wahrheit).
- **Gilt für:** Alle Konzept-/Pipeline-Erzeugnisse auf allen Stationen.

## 260611 — Mobile-Ketten nie vom MacBook Pro abhaengig machen
- **Auslöser:** "ich finde diese kette sehr schwach warum muss das mac book pro in dieser kette vorhanden sein am besten wäre doch der mac mini weil der ist immer an und der mac book pro ist immer unterwegs und oft ausgeschaltet" (Dispatch-Thread war historisch ans MacBook gekoppelt)
- **Regel:** Jede Always-On-/Fernsteuerungs-Strecke (Dispatch, Scheduled Tasks, Runner, Automationen, künftige Connectoren) wird so gebaut, dass der MAC MINI der einzige notwendige Endpunkt ist. Das MacBook Pro ist mobil und oft aus — es darf nie ein notwendiges Glied einer Kette sein, höchstens optionaler Mitnutzer. Bestehende Kopplungen, die das MacBook voraussetzen, gelten als Geburtsfehler und werden auf den Mac Mini umgezogen, sobald möglich (bei Dispatch: QR-Neukopplung am Mac Mini). Workarounds wie SSH-Weiterleitung sind nur Sicherheitsnetz, nie Soll-Architektur.
- **Gilt für:** Alle Infrastruktur-/Automations-Entscheide auf allen Stationen.

## 260610 — Inhaber-Auftraege als Lernsignal fuer den Hub nutzen
- **Auslöser:** Systemaudit-Auftrag: "hinterlege dass solche Eingaben in das digitale Gedaechtnis von JANS AI HUB aufgenommen werden und jede von mir gestellte Aufgabe genutzt wird, besser zu werden und systematische Komplettloesungen zu bilden"
- **Regel:** Jeder groessere Auftrag von Raphael ist zugleich Lernmaterial fuer den Hub. Nach Abschluss eines substanziellen Auftrags: (1) verallgemeinerbare Erkenntnisse in die passende Wissens-KB zurueckschreiben (Systemarchitektur/Infrastruktur → `wissen/projekt-lessons/raw/`, fachliche Erkenntnisse → jeweilige Domaenen-KB); (2) wiederkehrende Auftragsmuster als Skill-/Rule-Verbesserung vorschlagen; (3) Systemaudits und deren Befunde unter `docs/` versionieren, damit der naechste Audit auf dem letzten aufbaut (kompoundierend). Nicht jede Kleinanfrage dokumentieren — nur Auftraege mit Wiederverwendungswert.
- **Gilt für:** Alle Sessions auf allen Stationen, inkl. Scheduled Tasks.

## 260609 — Tool-Berechtigungen immer erlauben (keine Permission-Prompts)
- **Auslöser:** "immer erlauben" (nach Hintergrund-Trainings, die auf M365-Connector-Prompts blockierten)
- **Regel:** Claude darf alle eingerichteten Werkzeuge und Connectoren ohne Rückfrage nutzen. Umgesetzt in `.claude/settings.json` (permissions.allow): zusätzlich zu `Bash(*)`/`Write(*)` etc. neu auch der M365-Such-Connector (`mcp__c5e16058-…__*`), `mcp__figma__*`, `mcp__Control_your_Mac__*` (osascript/Apple Mail), `mcp__computer-use__*` und `mcp__ccd_session__*`. Wird via Git auf beide Stationen synchronisiert. Fehlt künftig ein neuer Connector in der Allowlist, direkt ergänzen statt wiederholt prompten.
- **Gilt für:** Alle Sessions und Hintergrund-Agenten (Scheduled Tasks, Trainings), auf allen Stationen.

## 260605 — Keine Boilerplate-Disclaimer in Erzeugnissen
- **Auslöser:** "hey kannst du solche formulierungen weglassen" (zur Verfasser-/Haftungszeile «Verfasst durch Raphael Jans Architekten ETH (JANS) im Auftrag der Eigentümerschaft. … ersetzt keine Rechtsberatung …»)
- **Regel:** In JANS-Erzeugnissen (Briefe, Stellungnahmen, Berichte, Memos, Dokumente) KEINE Standard-Boilerplate anhängen — insbesondere nicht «Verfasst durch … im Auftrag …» und nicht generische Haftungsausschlüsse wie «ersetzt keine Rechtsberatung / verbindliche Auskunft bei der Behörde einholen». Substanzielle, fallbezogene Vorbehalte (z.B. "Klassifizierung ist strittig", "BO noch zu verifizieren") bleiben erlaubt; nur die formelhaften Floskeln weglassen. Nur einsetzen, wenn der Benutzer es ausdrücklich verlangt.
- **Gilt für:** Alle erzeugten Texterzeugnisse/Deliverables (Skills, Agenten, Dokumente), auf allen Stationen.

## 260604 — Deliverable-Ordner nach Benennungsprinzip benennen
- **Auslöser:** "bitte immer in ordner anlegen und benennung analog bennenungsprinzip als regeln und skill ablegen"
- **Regel:** Jedes Erzeugnis kommt in einen EIGENEN Unterordner (nie lose abgelegt), und der ORDNER folgt demselben Benennungsprinzip wie die Dateien: 6-stelliges Datum (YYMMDD) + Bindestrich + sprechender Titel = identisch zum Namensstamm der enthaltenen MD/DOCX/PDF. Beispiel: Ordner `260604-AfB-Fristen-Stadt-ZH/` enthält `260604-AfB-Fristen-Stadt-ZH.{md,docx,pdf}`. Verbindlich verankert in `rules/dateinamen-konvention.md` (Sektion "Ordner-Ablage"). Schärft den Eintrag 260603 (dort "thematisch benannt" → jetzt präzise: Datums-Prefix-Namensstamm).
- **Gilt für:** Alle erzeugten Deliverables/Outputs (Skills, Agenten, Wissens-Layer-outputs, Studien), auf allen Stationen.

## 260603 — Word + PDF immer neben MD ablegen, in Ordner strukturieren
- **Auslöser:** "lege immer auch word und pdf neben md files mit ab, strukturiere in ordner"
- **Regel:** Wenn ein inhaltliches Erzeugnis als Markdown (.md) entsteht (Analyse, Bericht, Auswertung, Memo, Factsheet, To-do, Mail-Entwurf), erzeuge IMMER zusätzlich eine DOCX- und eine PDF-Fassung mit gleichem Namensstamm und lege alle drei im selben Unterordner ab — der Ordner ist nach dem Datums-Prefix-Benennungsprinzip benannt (siehe Eintrag 260604), nie lose Dateien im Root. Konvertierung: MD → DOCX via `skills/studien-generator/tools/md2docx.py` (python-docx, JANS-Layout Cambria 11pt) → PDF via `soffice --headless --convert-to pdf`. Ergänzt [[feedback_docx_pdf]] (DOCX immer mit PDF) und [[feedback_ablage_immer_in_ordner]].
- **Gilt für:** Alle erzeugten Deliverables/Outputs (Skills, Wissens-Layer-outputs, Studien), auf allen Stationen.

## Hinweise

- Widerspricht eine neue Verbesserung einem bestehenden Eintrag: alten Eintrag
  korrigieren statt doppelt anlegen.
- Wächst ein Thema zu einer eigenständigen, grösseren Regel heran: in eine eigene
  Rule-Datei auslagern (in README.md registrieren, @-Import in CLAUDE.md ergänzen)
  und den Eintrag hier durch einen Verweis ersetzen.

---

<!-- Neue Einträge werden unterhalb dieser Linie angehängt — neueste zuoberst. -->

## 260602 — NAS ist kanonische Quelle (Sync-Disziplin)
- **Auslöser:** Analyse ergab drei divergente Kopien (NAS, SSD-top-level, GitHub); der Auto-Sync sicherte die falsche (SSD-)Kopie, während Claude den NAS editierte. Benutzer wählte Ziel-Topologie «benigner Spiegel» mit NAS als Wahrheit.
- **Regel:** Geteilte Inhalte (skills/rules/agents/commands/scripts/templates/CLAUDE.md) NUR auf dem NAS-Pfad `/Volumes/daten/jans-ai-hub/` editieren — nie im SSD-top-level oder in Worktrees. Nach Änderung das NAS-Repo committen und nach GitHub pushen (so erreicht es Backup + zweite Station via Pull). KEIN automatischer Git-Job über den SMB-Mount (verursacht index.lock-Kollisionen/Index-Korruption — am 260602 live aufgetreten). Reconcile-Stand: alle drei Kopien auf `1d566d0` zusammengeführt.
- **Gilt für:** alle Sessions/Stationen. Eigene Rule `sync-kanonische-quelle.md` (registriert, @-Import in CLAUDE.md). Siehe Memory `project_sync_architektur` + `docs/sync-reconcile-plan.md`.

## 260602 — Harness lernt zu lernen (Meta-Lern-Loop + Skill-Contract)
- **Auslöser:** Benutzer will den Code-Harness ganzheitlich/integriert statt Cowork-Offload; Aufgaben konsistent mit Skills/Agenten trainieren, Stil-Verbesserungen langzeitfähig integrieren, «lernen zu lernen». Basis: Analyse von 43 Sessions / 2061 Prompts.
- **Regel:** (1) Jeder Skill folgt dem verbindlichen `skills/SKILL-CONTRACT.md` (Contract-Kopfblock: Trigger / Inputs / Output-Ablage / abhängige Rules / vor-+nachgelagerte Skills). (2) Bei Mehrfach-Aufträgen zuerst Deliverable-Checkliste via TaskCreate (Rule `auftrags-dekomposition.md`). (3) Identifikatoren (Projektnr./Adresse/Termin/Firma/BKP) immer aus kanonischer Quelle verifizieren, nie raten (Rule `identifikatoren-verifizieren.md`). (4) Der reaktive Lern-Loop (Hook → `auto-verbesserungen.md`) wird durch den wiederkehrenden Meta-Loop `skills/masterclass/harness-review.md` geschlossen: Consolidate → Promote (Log→Rule/Skill) → Rückfall messen (Text-Rule reicht nicht → Guard-Hook) → Prune. Werkzeug: `scripts/session-insights.sh`.
- **Gilt für:** den gesamten Harness. Verbindet `SKILL-CONTRACT.md`, Rules `auftrags-dekomposition`/`identifikatoren-verifizieren`, Skill `masterclass` (harness-review), Script `session-insights.sh`. Ausführen via «Harness-Review» / «Lern-Loop».

## 260602 — Korrektur-Harness vor jedem Versand (Pflicht)
- **Auslöser:** Trotz Regel `umlaute-konvention.md` gingen Mails mit «fuer/Rueckmeldung/Gruesse» raus; Benutzer fordert, dass künftig garantiert echte Umlaute ä/ö/ü verwendet werden — und ein Harness mit Prüf-Agenten für alle Erzeugnisse.
- **Regel:** Jedes Texterzeugnis (Mail-Body, DOCX/PDF, LV, Protokoll, Pendenzenliste, LinkedIn-Post, Website-Text, Chat-Antwort zum Kopieren) MUSS vor der Ausgabe durch den Korrektur-Harness (Skill `korrektur`) — Fan-out auf die Agenten `rechtschreibung` (echte Umlaute ä/ö/ü, ss statt ß, Tippfehler/Grammatik) und `layout` (Dokument-/Mail-Standard, fehlerhafte Umbrüche, sechsstellige Daten). Erst die korrigierte Fassung ausgeben, nie das Rohprodukt. Umlaute nie mechanisch ersetzen — nur dort, wo ae/oe/ue wirklich ein Umlaut ist.
- **Gilt für:** alle von Claude erzeugten JANS-Texte. Verbindet `umlaute-konvention.md`, `dokument-layout-standard.md`, `mail-formatierung.md`. Skill `korrektur`, Command `/korrektur`, Agenten `rechtschreibung` + `layout`. Zusätzlich deterministische Absicherung: Stop-Hook `scripts/umlaut-guard.sh` (in `.claude/settings.json`) blockiert das Beenden, wenn die letzte Antwort hochsichere ASCII-Umlaut-Stämme (fuer, rueck, gruess, koenn, moeglich, …) enthält, und erzwingt die Korrektur.

## 260601 — Keine dekorativen Symbole in JANS-Dokumenten
- **Auslöser:** Haken «✔» in der Submittentenliste entfernen — kein JANS-Grafikelement.
- **Regel:** In JANS-Dokumenten (Word/Excel/PDF) keine dekorativen Symbole, Sonderzeichen oder Emojis verwenden (z.B. ✔, ●, ★, ✎). Status/Hervorhebung rein über Text und Schriftschnitt (fett/kursiv) lösen — passend zum zurückhaltenden, schwarz-weissen JANS-Layout.
- **Gilt für:** alle von Claude erstellten JANS-Dokumente. Ergänzt `dokument-layout-standard.md`.

## 260601 — Excel/Tabellen im JANS-Layout + 3 Unternehmen je Gewerk
- **Auslöser:** Excel-Submittentenliste sollte dem JANS-Vorgabelayout entsprechen, pro Gewerk genau drei Unternehmen zeigen und die Gewerke klar voneinander abgetrennt darstellen.
- **Regel:** Auch Excel-/Tabellen-Outputs folgen dem JANS-Vorgabelayout (Cambria, durchgehend schwarz, keine Farbflächen; Struktur/Whitespace statt bunter Hervorhebung). In Submittentenlisten je Gewerk genau drei Unternehmen darstellen und die Gewerk-Blöcke optisch klar voneinander trennen (Gruppen-Label + Abstand/dezente Linie), sodass auf einen Blick erkennbar ist, welche Firmen zu welchem Gewerk gehören.
- **Gilt für:** Skill `unternehmerfindung`, alle Submittenten-/Unternehmerlisten und tabellarischen Excel-Outputs. Ergänzt `dokument-layout-standard.md` (gilt nun auch für Excel).

## 260601 — Submittentenlisten: Kontaktperson + Abgleich Postausgang
- **Auslöser:** Bei der Submittentenliste 2620 Albertstrasse 7 sollten alle Firmen Kontaktperson/E-Mail/Telefon tragen (Platzhalterlinie wenn Zuständige unklar), und die Liste gegen die real versendeten Devis im Mail-Postausgang verifiziert werden.
- **Regel:** In Submittenten-/Unternehmerlisten je Firma Kontaktperson, E-Mail und Telefon ausweisen; ist die zuständige Person unklar, eine ausfüllbare Platzhalterlinie («________________») setzen statt zu raten. Vor Fertigstellung die Liste gegen die tatsächlich versendeten Devis im Mail-Postausgang (Gesendete Elemente) abgleichen und die effektiv angefragten Unternehmer als solche markieren.
- **Gilt für:** Skill `unternehmerfindung` und alle Submittenten-/Unternehmerlisten (Word/Excel/PDF).
