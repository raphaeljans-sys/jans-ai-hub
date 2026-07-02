---
name: 2026-07-02_buch-run19-BLOCKED
typ: lern-report (abgebrochen)
lauf: Run 19
datum: 2026-07-02
status: TRANSFER blockiert (macOS TCC), kein neues Destillat
---

# Buch-Training Baurecht — Run 19 (2026-07-02): TRANSFER blockiert

## Kurzfassung

Der Lauf konnte den **TRANSFER-Block nicht ausfuehren**: die Quell-Screenshots im
OneDrive-Ordner sind **auffindbar und materialisiert** (nicht Cloud-Platzhalter), aber ihr
**Inhalt ist durch macOS TCC nicht lesbar**. Damit war kein Distillieren moeglich. Gemaess
Leitplanke «**nie erfinden**» wurde **kein** Kapitel-Destillat geschrieben und **kein** Status
im Inventar/Curriculum veraendert. Der Lauf liefert stattdessen diesen Blockade-Report plus
eine belegte Selbst-Pruefung (Modell A) aus bereits distilliertem Material.

## Was blockiert ist — Befund

- **Ordner erreichbar (OneDrive online):** `ls` listet die 780 JPG, `stat` liefert echte
  Groessen (Shot 121 = `Bildschirmfoto 2026-06-07 um 11.44.13.jpg`, **1 497 857 Bytes**,
  `flags=64`). Es sind **keine** 0-Byte-Cloud-Platzhalter — die Dateien liegen lokal vor.
- **Inhalt nicht lesbar:** `cat`, `head -c 4`, `xattr` und `cp` liefern alle
  **`Operation not permitted`** — auch mit deaktiviertem Sandbox. `stat` (Metadaten) geht,
  `open()` auf den Inhalt wird verweigert.
- **Scope:** Betrifft den gesamten geschuetzten Pfad
  `~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/…`. Das Repo auf
  `/Volumes/daten/jans-ai-hub` ist unveraendert **voll les- und schreibbar** (dieser Report
  wurde dorthin geschrieben).

Das ist **kein** «OneDrive offline», sondern eine **TCC-Berechtigungssperre**: der Prozess,
der diesen Scheduled Task ausfuehrt (bzw. sein Interpreter/Terminal), hat **keinen
Festplattenvollzugriff / Zugriff auf «Dateien und Ordner»** fuer den geschuetzten
CloudStorage-Ort. Analog zur bekannten Hub-Fussangel «launchd→SMB TCC-Blockade»
(dort `/bin/bash` fuer `/Volumes/daten`), nur hier fuer den CloudStorage-/OneDrive-Ordner.

## Reproduktion

```
SRC="~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/PL - 02_Recht_Norm/01_Gesetze/02_Zuerich/Planung/SM Planungs und Baurecht"
stat -f "%z" "$SRC/Bildschirmfoto 2026-06-07 um 11.44.13.jpg"   # -> 1497857  (OK, Metadaten)
cat  "$SRC/Bildschirmfoto 2026-06-07 um 11.44.13.jpg" >/dev/null  # -> Operation not permitted
```

## Fix (einmalig, durch Raphael)

Der ausfuehrenden Instanz **Festplattenvollzugriff** geben, damit der geschuetzte
CloudStorage-Ort lesbar wird:

1. Systemeinstellungen → Datenschutz & Sicherheit → **Festplattenvollzugriff**.
2. Die App eintragen/aktivieren, die den Scheduled Task ausfuehrt — je nach Ausfuehrungsweg
   **die Claude-App** und/oder **`/bin/bash`** (fuer launchd-getriebene Laeufe; vgl.
   `scripts/check-launchd-fda.sh` im Hub, dieselbe Mechanik).
3. Prozess/launchd-Job neu starten; Gegenprobe mit dem `cat`-Kommando oben (muss die
   JPG-Bytes statt «Operation not permitted» liefern).

Alternative fuer den Notfall (nicht empfohlen fuer den unbeaufsichtigten Lauf): die
Screenshots liegen laut `buecher/CLAUDE.md` **auch auf SharePoint** — ein kuenftiger Lauf
koennte die benoetigten Doppelseiten ueber den M365-/Graph-Connector herunterladen und lokal
lesen. Das ist ein groesserer Umbau und sollte nur gebaut werden, wenn der TCC-Fix dauerhaft
nicht moeglich ist.

## TRANSFER — geplant, nicht ausgefuehrt

Ziel dieses Laufs war **Kap. 3 Teil 2** (Band 1) — Fortsetzung von Run 18:
- **Quartierplan** (Ziff. 3.9, §§ 123-129 PBG-Bereich), **Grenzbereinigung**,
  **Baulandumlegung** und **Gueterzusammenlegung** ab **S. 238 / Shot 121**
  (`Bildschirmfoto 2026-06-07 um 11.44.13.jpg`) bis ca. Shot 133.
- Diese Doppelseiten bleiben im Inventar auf `[ ]` — **nichts** wurde als distilliert markiert.

## VERDICHTUNG

Entfaellt (kein neues Buchmaterial gelesen; ohne Beleg kein Wiki-Update — Leitplanke
«nie erfinden»).

## ANWENDUNG — Modell A (Frage→Beleg), aus bereits distilliertem Material

Um den Lauf nicht leer zu lassen, eine **belegte** Selbst-Pruefung ausschliesslich aus dem
**vorhandenen** Destillat [[band-1/03-erschliessung-landsicherung-teil1]] (Run 18) — keine
neuen Seiten, keine erfundenen Belege:

- **Buerofrage:** «Die Gemeinde hat eine seit Jahren eingezonte Bauparzelle nie erschlossen.
  Was kann der Grundeigentuemer tun?» — **Beleg-Antwort:** Die Gemeinde muss Bauzonen
  innerhalb der im Erschliessungsplan vorgesehenen Fristen, **laengstens innert 15 Jahren**
  erschliessen (Art. 19 Abs. 2 RPG i.V.m. Art. 15 Abs. 1 RPG). Kommt sie dem nicht nach,
  kann der Grundeigentuemer sein Land nach den genehmigten Plaenen **selber erschliessen oder
  die Erschliessung bevorschussen** (Art. 19 Abs. 3 RPG; VB.2010.00560); die Kosten sind
  spaeter — abzueglich Abgaben — zurueckzuzahlen. Das Selbsterschliessungsrecht setzt einen
  **Gestattungsakt** des Gemeinwesens voraus (nicht mehr im Ermessen der Gemeinde). Fuer dem
  Wohnungsbau dienende Zonen ergibt sich die Pflicht zusaetzlich aus Art. 5 WEG
  (Etappen **10-15 Jahre**). Eine **Auszonung** ist unzulaessig, wenn sie einzig erfolgt, weil
  das Gemeinwesen nicht rechtzeitig groberschliessen will (BGE 110 Ia 51).
  _(Quelle: Bd 1, S. 209; Destillat Kap. 3 Teil 1, Run 18.)_ ✅ Beleg vollstaendig.

Neue Karte in `training/drills.md` ergaenzt.

## Offene Punkte / was als naechstes

1. **TCC-Fix umsetzen** (siehe oben) — danach ist die ganze Trainingspipeline wieder
   funktionsfaehig.
2. Sobald lesbar: **Kap. 3 Teil 2** (Shots 121-133, S. 238 ff.: Quartierplan / Grenz-
   bereinigung / Baulandumlegung / Gueterzusammenlegung) als naechster TRANSFER — schliesst
   Kap. 3.
3. Danach Band-1-Tail: **Kap. 5** (Entschaedigung, S. 311), **Kap. 10** (widerrechtliche
   Bauten, S. 609), **Kap. 12 Teil 4** (S. 770-809, Altlasten Art. 32c USG).

## Register-Status dieses Laufs

- `seiten-inventar.md`: **unveraendert** (kein Shot distilliert).
- `curriculum.md`: **unveraendert**.
- `buecher/INDEX.md`: **unveraendert**.
- `training/drills.md`: +1 Karte (Modell A, belegt aus vorhandenem Destillat).
- `CHANGELOG.md`: Blockade-Eintrag ergaenzt.
