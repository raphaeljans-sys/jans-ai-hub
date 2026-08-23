# SIA-Sweep, siebzehnte Fortsetzung — neue Methode (freie Korrigenda-Downloads), drei Destillate SIA 269/3, 269/5, 269/8

- **Datum:** 23.08.2026
- **Auftrag Raphael:** SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte SIA-Zeilen
  ohne Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register
  nachführen, Destillate anlegen. Rule `normen-referenz` und `wissens-bibliothekar` beachten,
  jede Aussage belegen, nichts raten, CHANGELOG-Eintrag setzen, nach jedem Schreiben
  `git diff --numstat` prüfen.
- **Vorlauf gelesen:** `CHANGELOG.md` (Kopf: SIA-Sweep sechzehnte Fortsetzung) und
  `outputs/2026-08-23_sia-sweep-sechzehnte-fortsetzung.md`.

## Ausgangslage und Kollisionsprüfung

`ps aux` zu Laufbeginn geprüft: der eigene Prozess ist PID 17924 (gestartet 20:57, identischer
Startprompt zu diesem Auftrag). Ein zweiter, bereits abgeschlossener Prozess mit demselben
Startprompt (PID 13981, gestartet 20:47) hatte diesen Lauf bereits ausgeführt — das Ergebnis
liegt als die gelesene sechzehnte Fortsetzung vor, kein Konkurrent, reine
Scheduler-Überschneidung. Zwei weitere, unabhängige `claude -p`-Prozesse (PID 18397 `energie`,
PID 18653 `baurecht`-Reglemente) arbeiteten an fremden KBs, kein Kollisionsrisiko.

Die sechzehnte Fortsetzung hatte die Marker-Abgleich-Methode (Abschnitt A, 266 SIA-Zeilen gegen
acht Direktprüfungs-Marker) auf 0 offene Zeilen gebracht und ausdrücklich empfohlen, nicht
erneut denselben Scan zu fahren, sondern entweder eine neue Cross-KB-Bring-Schuld abzuwarten
oder eine andere Norm-Familie zu bearbeiten.

## Neue Methode statt erneutem Marker-Scan

Statt die erschöpfte Methode zu wiederholen, wurde eine **andere, bisher nur punktuell genutzte
Methode systematisch angewendet**: die REGISTER-Statistik weist **56 SIA-Zeilen** mit Status
«Kein Volltext im Haus» aus (Zeile 84 REGISTER.md) — für alle 56 sind Gültigkeits-Metadaten
(gültig-ab/-bis, Nachfolgenorm) bereits über die Shop-Produktseite belegt, aber kein Volltext
gelesen, weil die Basisnormen kostenpflichtig sind. Zwei frühere Läufe (achte Fortsetzung:
SIA-405-Leseprobe; sechzehnte Fortsetzung: SIA-2024-Korrigenda C1/C2) hatten **zufällig**
entdeckt, dass einzelne Produktseiten trotz kostenpflichtiger Basisnorm einen **kostenlosen
Korrigenda-Download** (Preisgruppe 0.00 CHF) führen. Dieser Lauf hat das erstmals **gezielt**
auf mehrere der 56 Zeilen angewendet (Auswahl nach JANS-Healthcare-Relevanz: Erhaltungsnormen-
Familie SIA 269/x, Bestandsbauten/Erdbebenüberprüfung).

## Durchgeführt

Drei Produktseiten der Familie SIA 269/x per `curl -A "Mozilla/5.0"` abgerufen, `DownloadAnhang`-
UUID-Links extrahiert, PDFs geladen und mit `/opt/homebrew/bin/pdftotext -layout` gelesen (auf
dieser Station nicht im `PATH`, nur unter dem vollen Homebrew-Pfad):

1. **SIA 269/8-C1:2022** (SN 505269/8-C1:2022, 8 S., gültig ab 01.11.2022, genehmigt 21.10.2022) —
   vollständig gelesen. **JANS-relevanter Kernbefund:** Tabelle 1 macht den
   Mindesterfüllungsfaktor 0,40 für Bauwerksklasse II-s (Schulen/Kindergärten) neu bedingt
   («sofern die maximale Personenbelegung PBmax nach SIA 261 > 10 Personen»); Ziff.
   10.3.7/Tabelle 2 referenziert für Personenbelegungs-Richtwerte neu **SIA 261:2020 Tabelle
   26**, darunter die Kennzahl «Spital: 1,5–2,5 Personen/Bett»; Formel (26) der
   Gebrauchstauglichkeits-Überprüfung wird strenger (Faktor 0,5 im Nenner Ad,act entfällt —
   bei Anwendung nach altem Formelstand würde 𝛼eff systematisch zu günstig ausgewiesen).
2. **SIA 269/3-C1:2017** (3 S., gültig ab 01.08.2017) und **-C2:2022** (3 S., gültig ab
   01.11.2022) — technische Detailkorrekturen (Tab. 9 Knickspannungskurve Gusseisen; Ziff.
   5.3.1.2 Normalkraftwiderstand genieteter Bauteile), keine JANS-Praxisrelevanz erkannt.
3. **SIA 269/5-C1:2022** (3 S., gültig ab 01.08.2022) — Nebenbefund im korrigierten Vorwort:
   **SIA 269/6 wurde in 269/6-1 (Natursteinmauerwerk) und 269/6-2 (künstliche Steine)
   aufgespalten**; die Nennung von SIA 269/8 wechselt von «vorgesehene Ergänzung» zu fester
   Aufzählungszeile — Datierungsbeleg, dass SIA 269/8 zwischen der Erstausgabe SIA 269/5:2011
   und der Korrigenda-Gültigkeit 01.08.2022 zur Normfamilie hinzukam. Zusätzlich Ziff. 4.5.3
   (Ausgaben-/Formelnummernsprung SIA 265:2003→2021) und Tab. 6 (Normverweis SN EN 335-2→SN EN
   335).

Alle drei PDFs waren im Dokument selbst mit «Preisgruppe: 0» ausgewiesen — kein Kauf nötig, kein
DRM-Hindernis.

## Neue Destillate und Nachführungen

- `destillate/sia-269-8-korrigenda-c1.md` (neu, `established`) — Erstanlage der Norm SIA 269/8
  in dieser KB.
- `destillate/sia-269-3-5-korrigenda.md` (neu, `established`) — kombiniertes Destillat für die
  drei kleineren Korrigenda-Funde.
- `wiki/REGISTER.md`: drei Zeilen (SIA 269/3, 269/5, 269/8) inhaltlich ergänzt, zwei neue
  Zeilen in der «FRISCH GEMELDET»-Tabelle.
- `destillate/INDEX.md`: zwei neue Zeilen.
- `CHANGELOG.md`: eigener Eintrag oben.

## Verifikation

`git diff --numstat` nach jedem Schreibvorgang geprüft:

| Datei | Befund |
|---|---|
| `destillate/sia-269-8-korrigenda-c1.md` | `??` (echte Neuanlage) |
| `destillate/sia-269-3-5-korrigenda.md` | `??` (echte Neuanlage) |
| `wiki/REGISTER.md` | 5/3 (drei gezielte Zeilenersetzungen + zwei neue Tabellenzeilen, ausschliesslich eigene Zeilen betroffen) |
| `destillate/INDEX.md` | 2/0 (reine Neuzeilen) |
| `CHANGELOG.md` | 78/0 (rein additiv, oberhalb des bestehenden Eintrags eingefügt) |

Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt.

## Nicht geleistet / offene Bring-Schulden

- Die Basisnormen SIA 269/3:2011, SIA 269/5:2011 und SIA 269/8:2017 selbst liegen weiterhin
  nicht im Haus (kostenpflichtig) — nur die frei verfügbaren Korrigenda zeigen die geänderten
  Ausschnitte, nicht den vollständigen Normtext.
- Die neue Methode wurde nur auf 3 von 56 «Kein Volltext im Haus»-Zeilen angewendet. Für einen
  künftigen Lauf naheliegend: die übrigen Erhaltungsnormen (SIA 269, 269/1, 269/2, 269/4,
  269/7) und die Merkblatt-Familie SIA 20xx auf dieselbe Weise prüfen — vermutlich ähnliche
  Korrigenda-Struktur, da die SIA-Kommission für Tragwerksnormen Korrigenda offenbar
  systematisch kostenlos bereitstellt.
- SIA 269/6-1 und SIA 269/6-2 (Nebenbefund) sind noch nicht als eigene Register-Zeilen
  geführt — reiner Fundvermerk, keine eigene Recherche in diesem Lauf.
- Kein Fach-Skill zitiert SIA 269/8, 269/3 oder 269/5 bisher aktiv — keine Cross-KB-Nachführung
  nötig, da noch kein Abnehmer existiert.
- **Empfehlung an den nächsten Lauf:** die neue Methode («freie Korrigenda-Downloads auf den
  56 Blindzone-Zeilen systematisch prüfen») ist der nächstliegende, noch nicht erschöpfte
  Ertrag für eine achtzehnte Fortsetzung — mit Priorität auf Normen, die bereits in einem
  Fach-Skill zitiert werden (SIA 380/x, SIA 118/xxx-Familie, SIA 2028 Klimadaten), da dort ein
  Korrigenda-Fund sofort eine Cross-KB-Nachführung auslösen würde.
