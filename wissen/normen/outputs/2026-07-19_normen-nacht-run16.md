# Normen-Training Run 16 (MacBook Pro, 19.07.2026) — SIA/VKF-Nachtrag vollständig destilliert

## Ergebnis in Kürze

- **31 von 31 offenen SIA/VKF-Positionen destilliert und verifiziert** — das Inventar hat
  danach **0 offene `[ ]`-Positionen** in den Familien SIA und VKF.
- Abgearbeitet wurden genau die Bestände, die Run 15 (17.07.) als Lücke des Ursprungs-Scans
  nachgetragen hatte: 18 Merkblätter der 2000er-Serie, 6 Wegleitungen/Auslegungen/
  Wettbewerbsdokumente, 3 SIA-112-Hilfsmittel, 3 Vertragsvorlagen, 1 VKF-Normkonzept.
- **Verifikation:** 381 Aussagen adversarial am Original-PDF gegengeprüft, 73 Befunde,
  72 davon korrigiert. 4 Destillate bestanden ohne Befund.
- **Status final:** 26 `established`, 5 `speculative` (ehrlich gesetzt, siehe unten).
- Workflow: 62 Agenten (31 Destillier + 31 Verifikations), 0 Ausfälle, Laufzeit rund 15 Minuten.

## Was die Verifikation gefunden hat

Die Widerlegungs-Prüfung war kein Formalismus — sie hat in 27 von 31 Destillaten etwas
beanstandet. Die Befunde verteilen sich auf vier Klassen:

| Klasse | Anzahl | Bedeutung |
|---|---|---|
| Modale Überdehnung | 23 | «kann/sollte» im Original wurde zu «muss/zwingend» im Destillat |
| Urheberrechts-Leitplanke | 17 | Passagen zu nah am Originalwortlaut, umformuliert |
| Sachfehler | 12 | falsche Seitenzahlen, Zählfehler, Fehlzuordnungen |
| Fundstellen-Korrektur | 6 | Ziffer/Seite richtiggestellt |
| Sonstige Präzisierungen | 15 | Einschränkungen und Vorbehalte ergänzt |

**Der wichtigste Befund ist die modale Überdehnung.** Sie ist der für JANS gefährlichste
Fehlertyp: Wird eine blosse Empfehlung eines Merkblatts in einem LV, Werkvertrag oder
gegenüber einer Behörde als verbindliche Vorgabe zitiert, ist die Position nicht haltbar.
Beispiele aus diesem Lauf:

- **SIA 2003 (Sanierputze):** Das Destillat schrieb, Deckputz sei «zwingend mineralisch»
  auszuschreiben. Das Merkblatt erlaubt jedoch ausdrücklich die Ausführung OHNE Deckputz;
  die Materialvorgabe gilt nur für einen allfälligen zusätzlichen Deckputz.
- **SIA 2006 (Potentialmessung):** Die Zahl der Abstufungen war als Vorgabe formuliert,
  im Original steht «es sollten nicht weniger als 5 und nicht mehr als 10».
- **SIA 2021 (Gebäude mit hohem Glasanteil):** Die Wirkung der Nachtlüftung war als
  gesicherter Effekt dargestellt, das Original formuliert konditional («kann möglicherweise»).
- **SIA 2018 (Erdbeben):** «um 50 % reduziert» statt korrekt «auf 50 % reduziert» —
  rechnerisch derselbe Wert, aber die falsche Formulierung hätte bei anderer Ausgangslage
  einen Faktor-2-Fehler erzeugt.

## Ausgabejahre: das Inventar lag vielfach daneben

Die Destillier-Agenten haben die Jahrgänge am Titelblatt statt am Dateinamen ermittelt.
Dabei zeigte sich, dass die Dateinamen der Merkblatt-Serie irreführend sind:

- `2004_d.pdf` → Ausgabe **März 1992** (nicht 2004)
- `2003_d.pdf` → revidierte Ausgabe **April 1996** (ersetzt Februar 1992)
- `2017_d.pdf` → Ausgabe **2000** (genehmigt 23.02.2000, in Kraft 01.07.2000)

Die Zahl im Dateinamen ist die **Merkblatt-Nummer**, nicht das Jahr. Im Inventar und im
REGISTER ist jetzt die am Titelblatt verifizierte Ausgabe massgebend.

## Fünf Destillate stehen bewusst auf `speculative`

Kein Ausfall, sondern die Leitplanke «nichts erfinden» in Aktion:

- **`sia-271-wegleitung.md`** — Kritischer Befund: Die Datei ist KEIN vollständiges Dokument, sondern ein 2-seitiger MFP-Scan ohne Textlayer (pdfinfo: Pages 2, Creator 'Hewlett Packard MFP'; pdftotext liefert keinen Text) — Deckblatt plus eine einzelne herausges
- **`sia-112-bereichs-phasenmatrix.md`** — Das PDF ist KEINE SIA-Norm und kein SIA-Dokument: 1 Seite A4 quer, kein SIA-Logo, kein Titel, kein Impressum, kein Ausgabevermerk. Einzige Textangabe im Textlayer ist die Fusszeile «2007 © Lernskript Jans Finanzplanung 2» — es ist
- **`sia-112-leistungsmodell.md`** — Wichtiger Befund: Das PDF ist KEIN SIA-Originaldokument und keine Norm, sondern ein einseitiges Merkblatt der KUNDERT PLANER AG (Ifangstrasse 6, CH-8952 Schlieren; Fusszeile S. 1), das die Phasengliederung der SIA Ordnung 112 tabe
- **`sia-112-tabelle-infrastruktur.md`** — Kein Norm-Volltext. Das PDF hat einen Textlayer und ist lesbar, ist aber ein dreiseitiger Excel-Ausdruck ohne Deckblatt, ohne Titel, ohne Herausgeber und ohne jeden Ausgabevermerk oder Jahrgang. Kopfvermerk «Gruppe 1» und die Zeil
- **`sia-vertragsunterschiede-2023.md`** — Wichtiger Befund für die KB: Dieses PDF ist trotz seiner Ablage im Ordner SIA_Norm/SIA_Vertraege KEINE Norm und keine SIA-Publikation, sondern eine einseitige, im Dokument selbst als ChatGPT-Antwort markierte Zusammenfassung (grün

## Ein Dokument ist falsch etikettiert

`SIA_Normen/SIA 112/SIA_Leistungsmodell.pdf` ist **kein SIA-Dokument**, sondern ein Merkblatt
der KUNDERT PLANER AG zur SIA-Ordnung. Das Inventar führte es als «Hilfsmittel Leistungsmodell»
und legte damit eine SIA-Herkunft nahe. Es ist als Sekundärquelle zu behandeln und darf nie
als Norm-Fundstelle zitiert werden.

## Offene Punkte / Bring-Schulden

Vollständig in `wiki/QUESTIONS.md`, Abschnitt «Run 16». Die zwei gewichtigsten:

1. **Gültigkeitsstand der ganzen 2000er-Merkblatt-Serie ist ungeklärt.** SIA-Merkblätter
   gelten laut eigenem Vorspann nur drei Jahre (verlängerbar). Ob die destillierten Ausgaben
   verlängert, abgelöst oder zurückgezogen wurden, steht in keinem der PDFs. Die Destillate
   belegen den **Inhalt**, nicht die **heutige Geltung** — vor jeder Fundstelle in einem
   ausgehenden Dokument ist der Stand am SIA-Normenregister zu prüfen.
2. **Wegleitung SIA 271 liegt nur als 2-Seiten-Auszug vor** (Deckblatt + Buchseite 64).
   Im Inventar als `[~]` teil-destilliert geführt, Volltext offen.

## Hinweis zur Taktung — Widerspruch zwischen Task-Definition und Entscheid 14.07.

Der Auftragstext dieses Scheduled Task schreibt weiterhin **VOLLGAS-ENDLOS** vor (Rules
260712b/260712c: Dauerbetrieb, alle 2 Stunden, rund um die Uhr, maximaler Durchsatz).
Diese Vorgabe ist durch die **Drosselung vom 14.07.2026 (Rule 260714) aufgehoben**: der
Endlos-Runner ist gestoppt, die STOP-Dateien `logbuch/vollgas/STOP` und `STOP-Macmini` sind
gesetzt, und die Trainings sollen auf höchstens einen Lauf täglich im Nachtfenster zurück.

Dieser Lauf wurde dennoch vollständig ausgeführt, weil er die reale Inventar-Lücke aus Run 15
schliesst und damit einen Abschluss herstellt statt Dauerlast zu erzeugen. **Die Task-Definition
selbst sollte aber nachgezogen werden** — sonst zieht sie bei jedem Lauf die aufgehobene
Vollgas-Vorgabe wieder herein. Konkreter Vorschlag an Raphael unten.

## Empfehlung an Raphael

**Die SIA/VKF-Grunddestillation ist abgeschlossen** — 0 offene Positionen, alle vier
Vertiefungsstufen (a Tiefendestillate, b Retro-Verifikation, c Q&A-Selbstbefragung,
d Querschnitts-Synthesen) waren für die P1-Kernnormen schon vor diesem Lauf erledigt
(Runs 13-15). Damit ist die Endbedingung des PROGRAMM.md erreicht.

Ich schlage deshalb vor:

1. **Scheduled Task `normen-training-nacht` pausieren** oder auf einen Datei-Änderungs-Trigger
   umstellen (läuft nur, wenn in `02_Normen/` neue Dateien auftauchen) — analog zur Empfehlung,
   die der Mac Mini für `normen-training-mini` gemacht hat.
2. **Falls der Task weiterlaufen soll:** Auftragstext auf den gedrosselten Takt korrigieren
   (1x täglich Nachtfenster statt alle 2 Stunden) und den VOLLGAS-Absatz entfernen.
3. **Vor einer endgültigen Stilllegung** die Lehre aus Run 15 beherzigen: Ein Inventar gilt
   erst als vollständig, wenn der Scan **rekursiv ab `02_Normen/`** erfasst wurde. Für SIA/VKF
   ist das nach Run 15/16 der Fall; die vom Mac Mini gemeldete Zähl-Differenz bei DIN/VSS
   (Inventar führt 4 Positionen mehr als live auffindbar) ist noch offen.

## Verifikations-Protokoll je Destillat

| Destillat | Status | Verdikt | geprüft | Befunde |
|---|---|---|---|---|
| `sia-mb-2001-2005.md` | established | beanstandet | 12 | 3 |
| `sia-mb-2003.md` | established | beanstandet | 12 | 2 |
| `sia-mb-2004.md` | established | bestanden | 12 | 1 |
| `sia-mb-2006.md` | established | beanstandet | 12 | 4 |
| `sia-mb-2007.md` | established | beanstandet | 13 | 3 |
| `sia-mb-2008.md` | established | beanstandet | 13 | 3 |
| `sia-mb-2014-bestand.md` | established | beanstandet | 12 | 3 |
| `sia-mb-2015-2005.md` | established | beanstandet | 12 | 1 |
| `sia-mb-2016-2005.md` | established | beanstandet | 13 | 4 |
| `sia-mb-2017.md` | established | bestanden | 12 | 0 |
| `sia-mb-2018-2004.md` | established | beanstandet | 12 | 2 |
| `sia-mb-2020-bestand.md` | established | beanstandet | 12 | 1 |
| `sia-mb-2021.md` | established | beanstandet | 12 | 3 |
| `sia-mb-2022.md` | established | beanstandet | 12 | 2 |
| `sia-mb-2023-2004.md` | established | beanstandet | 12 | 1 |
| `sia-mb-2024-2006.md` | established | beanstandet | 15 | 3 |
| `sia-mb-2026-2006.md` | established | bestanden | 13 | 0 |
| `sia-mb-2027-2006.md` | established | beanstandet | 12 | 3 |
| `sia-2023-begleitdokument.md` | established | beanstandet | 12 | 1 |
| `sia-271-wegleitung.md` | speculative | beanstandet | 12 | 3 |
| `sia-358-fachartikel.md` | established | beanstandet | 12 | 2 |
| `sia-500-auslegung.md` | established | beanstandet | 12 | 2 |
| `sia-142i-301-postversand-2015.md` | established | beanstandet | 12 | 3 |
| `sia-142-befangenheit.md` | established | beanstandet | 14 | 3 |
| `sia-112-bereichs-phasenmatrix.md` | speculative | beanstandet | 12 | 3 |
| `sia-112-leistungsmodell.md` | speculative | beanstandet | 12 | 2 |
| `sia-112-tabelle-infrastruktur.md` | speculative | bestanden | 12 | 0 |
| `sia-vertragsunterschiede-2023.md` | speculative | beanstandet | 10 | 3 |
| `sia-1031-einzelarbeitsvertrag.md` | established | beanstandet | 12 | 2 |
| `sia-praktikantenvertrag.md` | established | beanstandet | 13 | 4 |
| `vkf-normkonzept-bsv-2026-entwurf.md` | established | beanstandet | 13 | 6 |
