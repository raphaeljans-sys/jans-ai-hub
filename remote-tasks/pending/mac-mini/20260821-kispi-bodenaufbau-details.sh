#!/bin/bash
# Remote-Task: kispi-bodenaufbau-details — fuer Station mac-mini
# $1 = Ergebnis-Verzeichnis (remote-tasks/results/...)
#
# Auftrag Raphael 21.08.2026: Bodenaufbau-Details KISPI beschaffen —
#   (1) Nasszellen Plattenbelag 1:2/1:5 inkl. Plattentyp und Fugen
#   (2) Therapiekuechen Linoleum inkl. Farbe, Rutschfestigkeit, Fugenausbildung
#   (3) Bolon-Bodenbelag Konstruktionsaufbau 1:2/1:5 inkl. Produktspezifikation
# Read-only: NICHTS versenden, NICHTS auf der Plattform aendern.

R="$1"
REPO="$HOME/Developer/jans-ai-hub"
DS3="$REPO/connectors/truninger-ds3.mjs"
E="$R/ERGEBNIS.txt"

# --- Diagnose zuerst (in .txt, *.log ist gitignored) ------------------------
{
    echo "== Zeit: $(date -Iseconds) auf $(hostname -s)"
    echo "== NAS-Mount:";      ls -d /Volumes/daten 2>&1
    echo "== DS3-Zugang:";     ls -l "$HOME/.truninger-ds3.env" 2>&1
    echo "== OneDrive KISPI:"; ls -d "$HOME/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken"*"JANS/AR - 01 Projekte/2619_KINDERSPITAL" 2>&1
    echo "== node:";           node --version 2>&1
} > "$R/diagnose.txt" 2>&1

# --- Vorpruefung Truninger-Plattform (mechanisch, vor dem Harness-Lauf) -----
node "$DS3" --test  > "$R/ds3-test.txt"   2>&1
node "$DS3" --ls /  > "$R/ds3-wurzel.txt" 2>&1

# --- Inhaltlicher Lauf mit vollem JANS-Harness ------------------------------
bash "$REPO/scripts/dispatch-run.sh" \
"Auftrag Raphael 21.08.2026, Projekt 2619 KISPI (Neubau Kinderspital Zuerich, Projekt-Nr. Bauherrschaft 4010000880, und Umbau Therapiestation PPTS 1. OG). Beschaffe drei Bodenaufbau-Details samt Produktangaben und belege JEDE Angabe mit Fundstelle. NUR LESEN — nichts versenden, nichts auf der Plattform aendern, keine Mail hinausschicken.

QUELLEN IN RANGFOLGE:
1. Truninger-Plattform DS3 (ds3.data-share.ch) ueber connectors/truninger-ds3.mjs. Zuerst 'node connectors/truninger-ds3.mjs --hilfe' bzw. den Kopf der Datei lesen, dann '--ls /' fuer die Sammlungen, dann gezielt '--ls <Collection> --tiefe 3' und '--suche <Begriff> --in <Collection> --tiefe 5'. Suchbegriffe mindestens: Bodenaufbau, Bodenbelag, Nasszelle, Nasszellen, Plattenbelag, Plattenbelaege, Keramik, Fugen, Linoleum, Therapiekueche, Bolon, Vinyl, Detail, Ausbaubeschrieb, Baubeschrieb, Materialkonzept, Farbkonzept, Raumbuch, LOS 281, 282. Achte auf die Ordner 'Projektraum' > Ausfuehrungsplanung/Details und die Los-Ordner 281/282.
2. Projektordner OneDrive/SharePoint: '~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/AR - 01 Projekte/2619_KINDERSPITAL/' — dort auch '0 Plangrundlagen Bestand' und '2 Umbauprojekt Neu PPTS'.
3. NAS-Archiv /Volumes/daten (Bueroprojekte, 03 Bauprodukte_BKP).
4. Apple Mail (osascript, Konto Exchange, rj@raphaeljans.ch) — Faeden zu Bodenbelag/Nasszellen/Therapiekueche/Bolon, nur lesend.

WAS GESUCHT IST (drei Bloecke, je einzeln beantworten):
A) NASSZELLEN, Plattenbelag: Detailplan im Massstab 1:2 oder 1:5 mit Schichtaufbau. Liefere: Plannummer, Blatt-/Detailnummer, Massstab, Datum, Verfasser, Ablagepfad — und den Schichtaufbau von OK Fertigboden nach unten in mm (Plattenbelag, Duennbettmoertel/Kleber, Verbundabdichtung, Unterlagsboden/Estrich mit Typ und Dicke, Trennlage, Trittschalldaemmung, Rohdecke), dazu Gefaelle, Bodenablauf-Typ und Randabschluss/Hohlkehle. Produkte: Plattentyp (Hersteller, Serie, Format, Dicke, Oberflaeche, Farbe, Rutschfestigkeit R-Klasse nach DIN 51130 und ggf. Barfussbereich A/B/C nach DIN 51097), Fugen (Fabrikat und Produktname des Fugenmoertels, Farbton mit Farbnummer, Fugenbreite, sowie die elastischen Fugen: Silikon-Fabrikat und Farbe, Fugenanordnung/Bewegungsfugen).
B) THERAPIEKUECHEN, Linoleum: Bodenaufbau-Detail (1:2/1:5, sonst der naechstgelegene Massstab) mit Schichtaufbau in mm. Produkte: Linoleum-Fabrikat und Kollektion (z.B. Forbo Marmoleum), Farbbezeichnung MIT Farbnummer, Dicke, Nutzungsklasse, Rutschfestigkeit (R-Klasse), Oberflaechenverguetung; Fugenausbildung: Nahtbild, Schweissschnur (Fabrikat und Farbnummer) oder Kaltverschweissung, Sockel/Hohlkehle mit Radius und Abschlussprofil, Klebstoff und Spachtelmasse.
C) BOLON (in der Frage 'Bologn' geschrieben): Konstruktionsaufbau 1:2 und 1:5, so weit vorhanden. Produktspezifikation: Kollektion, Artikel-/Farbbezeichnung, Bahnenbreite oder Plattenformat, Gesamtdicke, Brandverhalten, Gleitwiderstand, Verlegeart, Klebstoff, Nahtausbildung, Sockel. Bekannter Ausgangspunkt im Hub, gegenpruefen und ergaenzen: 'Bolon Sisal Plain Sand', Kollektion BKB, 200 cm Bahnenware, Bfl-s1, DoP 005DoP2016-02-10, LOS 281.20 ueber Pfister Professional/INEVO — Beleg in skills/brandschutz/referenzen/praxisfaelle/260520-KISPI-Bolon-Sisal-Bodenbelag-Fluchtweg/README.md.

ARBEITSWEISE UND AUSGABE:
- Relevante Detailblaetter mit '--holen' herunterladen und gemaess Ablage-Regel in den Projektordner spiegeln; zusaetzlich Kopien der Schluesselblaetter (PDF) in das Ergebnis-Verzeichnis '$R' legen.
- PDFs wirklich oeffnen und lesen; Angaben aus der Zeichnungslegende bzw. dem Schichtverzeichnis woertlich uebernehmen, nichts aus Erfahrung ergaenzen.
- Bericht schreiben nach '$R/BERICHT.md': je Block eine Tabelle Schicht/Material/Dicke/Produkt, darunter die Produkt- und Fugentabelle, jede Zeile mit Fundstelle (Datei, Plannummer, Seite/Detail). Was nicht belegt ist, kommt unter '## Nicht belegt' mit dem naechsten konkreten Schritt (welcher Plan fehlt, wer ihn hat) — nie schaetzen.
- Vor der Ausgabe den Korrektur-Harness (Skill korrektur) ueber den Bericht laufen lassen.
- Zusaetzlich eine Kurzfassung (max. 15 Zeilen) nach '$R/KURZ.md'.
- Kein Mailversand, keine Freigabe, keine Aenderung auf DS3." \
    > "$R/antwort.txt" 2>&1
RC=$?

# --- Ergebnis-Signal ---------------------------------------------------------
if [ "$RC" -eq 0 ] && [ -s "$R/BERICHT.md" ]; then
    echo "OK: Bericht erstellt — siehe BERICHT.md / KURZ.md." > "$E"
else
    echo "UNVOLLSTAENDIG: dispatch rc=$RC. Siehe antwort.txt, ds3-test.txt, diagnose.txt." > "$E"
fi
exit 0
