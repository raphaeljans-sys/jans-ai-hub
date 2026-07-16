---
titel: "Normen-Training Mini-Run 32 (Mac Mini) — INVENTAR KOMPLETT fuer DIN/VSS/RAL bestaetigt"
datum: 2026-07-16
station: "Mac Mini"
familien: "DIN, VSS, RAL (Stations-Split; SIA/VKF nicht angefasst)"
---

# Normen-Training Mini-Run 32 — Mac Mini (DIN/VSS/RAL)

## Auftrag

Ein weiterer Intensiv-Lauf gemaess `training/PROGRAMM.md`, direkt im Anschluss an Mini-Run 31:
NUR die Familien DIN, VSS und RAL (Stations-Split — SIA und VKF gehoeren dem MacBook Pro,
nicht angefasst). Verbindlich: Verifikations-Stufe (adversarial vor jeder `established`-
Hebung), Token-Vollgas/Workflow-Parallelisierung autorisiert, Arbeitsliste
`training/norm-inventar.md`, Quell-PDFs auf SharePoint `PL - 02_Recht_Norm/02_Normen`,
DRM-PDFs manuell markieren, Register/REGISTER.md/CHANGELOG nachfuehren, Report nach
`outputs/`, git pull vor Commit.

## Inventar-Check (dritte Bestaetigung in Folge)

Datei-fuer-Datei-Abgleich `training/norm-inventar.md` gegen die live gemountete
SharePoint-Ablage:

```
~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/PL - 02_Recht_Norm/02_Normen/
  DIN_Norm  -> 72 Dateien (Inventar: 72)
  VSS_Norm  -> 17 Dateien (Inventar: 17)
  RAL_Norm  ->  1 Datei  (Inventar: 1)
```

Ergebnis: **0 offene `[ ]`-Positionen**, keine neuen Dateien seit Mini-Run 31 (260716,
selber Tag). Zusaetzlich geprueft: der Ordner
`PL - 02_Recht_Norm/02_Normen/Lignum/` — bisher in keinem Inventar-Lauf erwaehnt — ist
**leer** (0 Dateien). Kein Bestandsfehler, nur zur Vollstaendigkeit vermerkt: sollten dort
kuenftig Dateien abgelegt werden, braucht es einen neuen Inventar-Eintrag (Familie "Lignum"
ist keiner der beiden Stationen im Stations-Split zugeteilt — bei Bedarf mit Raphael klaeren,
wer sie uebernimmt).

## Bewertung: keine kuenstliche Batch-Zielzahl erzwungen

Grunddestillation (a), Retro-Verifikation (b), Q&A-Selbstbefragung (c) und
Querschnitts-Synthese (d) sind fuer alle 90 DIN/VSS/RAL-Dateien bereits seit Mini-Run 29/30
(260715) vollstaendig abgeschlossen. Eine erzwungene Batch-Zielzahl von 15-25 bzw. 30-40
Positionen (PROGRAMM.md-Eskalation) haette in dieser Lage zwangslaeufig Wiederholung oder
Erfindung bedeutet — das widerspricht der Leitplanke "nie Ziffern/Kennwerte erfinden".
Stattdessen wurden zwei konkrete Pruefungen durchgefuehrt:

### 1. Erneute Pruefung der 4 nach Mini-Run 31 verbleibenden Vertiefungs-Luecken

Alle vier bleiben unveraendert **nicht** aus dem DIN/VSS/RAL-Scope heraus schliessbar:

- **SIA 266/262/267-Detailbemessung** gegen DIN 1053/1045-2/1054: benoetigt vertiefte
  SIA-Destillate (Ziff. 3.2-3.6/4.1-4.5 SIA 266, Ziff. 6-16 SIA 267) — Station MacBook Pro.
- **SIA-Raumakustik-Norm**: existiert laut `destillate/INDEX.md` nicht in der KB; keine
  DIN/VSS/RAL-seitige Massnahme moeglich.
- **Suva-/EKAS-Richtlinie Fassadengeruest-Verankerung/Dachhaken**: kein Fund im SharePoint-
  Normen-Inventar (auch nicht ausserhalb DIN_Norm/VSS_Norm/RAL_Norm, siehe unten) — externe
  Beschaffung noetig, nicht per Destillation loesbar.
- **VKF-BRL 15-15**: VKF-Familie, Station MacBook Pro.
- **«2026 verschaerfte kantonale Velo-Abstellpflicht»**: Recherchefrage ausserhalb der
  bestehenden Quellen (kein VSS/SN-Fund), keine neue Datei in der Ablage.

Ergaenzende Suche (dieser Lauf): `find` nach "suva/ekas/geruest/gerüst/dachhaken" im
gesamten `02_Normen`-Baum (alle Familien-Ordner, nicht nur DIN/VSS/RAL) — **0 Treffer**.
Die Suva-/EKAS-Luecke ist damit bestaetigt eine echte externe Beschaffungs-Luecke, keine
uebersehene Datei im Bestand.

### 2. Stichprobe: DIN 5034-1 Teil-Destillat-Kennzeichnung verifiziert

`norm-inventar.md` fuehrt `DIN 5034-1.pdf` als "Teil-Destillat". Gegenprobe: `pdfinfo`
zeigt die Bestandskopie hat **10 Seiten** (Title-Metadaten "5034t1 1..10"); das Destillat
`destillate/din-5034-1-1999.md` weist im Frontmatter `gelesen: S. 1-10 (vollständig)` aus.
**Befund:** die Teil-Destillat-Kennzeichnung ist korrekt — sie bezieht sich auf die
Bestandskopie (die selbst nur ein 10-seitiger Auszug der vollstaendigen amtlichen Norm ist),
nicht auf ein Lese-Versaeumnis. Keine Korrektur noetig, keine neue Lese-Arbeit moeglich ohne
die vollstaendige amtliche Fassung zu beschaffen.

## Formale Feststellung

DIN (72) / VSS (17) / RAL (1) = **90 Dateien, INVENTAR KOMPLETT** im Sinne von
`training/PROGRAMM.md` — dritte Bestaetigung in Folge (Mini-Run 29 → 30 → 31 → 32), auf
allen vier Vertiefungsstufen, ohne offene Destillations-Luecke innerhalb des Stations-Scopes.

## Empfehlung an Raphael

Der Scheduled Task `normen-training-mini` sollte gemaess der PROGRAMM.md-Endbedingung
("meldet der Lauf «INVENTAR KOMPLETT»... bittet Raphael, den Scheduled Task zu beenden")
**pausiert** oder auf einen **Datei-Aenderungs-Trigger** umgestellt werden (nur auslösen,
wenn neue Dateien in DIN_Norm/VSS_Norm/RAL_Norm/Lignum auftauchen), statt weiterhin feste
Zeitintervalle ohne neuen Content abzufahren. Das passt zur bereits laufenden allgemeinen
Token-Drosselung (Rule `auto-verbesserungen.md`, Eintrag 260714 — Wochenlimit schonen).
Die 4 verbleibenden Vertiefungs-Luecken sind keine DIN/VSS/RAL-Aufgabe mehr: 2 warten auf
SIA/VKF-Vertiefung (Station MacBook Pro), 2 sind Recherchefragen ausserhalb der
Normen-Bibliothek (Suva/EKAS-Richtlinie, kantonale Velo-Abstellpflicht 2026) — dafuer wären
eher die Skills `brandschutz`/`behoerden-vorabklaerung` oder eine gezielte Web-Recherche
zustaendig, nicht der Normen-Destillations-Loop.

## Nachgefuehrte Dateien

- `training/norm-inventar.md` (Kopfzeile, Mini-Run-32-Eintrag)
- `wiki/QUESTIONS.md` (neuer Abschnitt "Mini-Run 32")
- `CHANGELOG.md` (datierter Eintrag, neueste zuoberst)
- Dieser Report
