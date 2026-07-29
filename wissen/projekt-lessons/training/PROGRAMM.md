---
name: PROGRAMM
beschreibung: Ingest-Programm fuer projekt-lessons. Erschliesst das Erfahrungswissen aus JANS-Projekten Lauf um Lauf ueber drei getrennte Stufen (Destillat, Kompilat, adversarische Verifikation) und verdichtet es zu belegten Lesson-Artikeln. Pilot: 2619 Kinderspital Zuerich (laufendes Mandat).
frequenz_phase1: taeglich (Aufbau, ~erste 4 Wochen)
frequenz_phase2: alle 2 Tage (Vertiefung)
frequenz_phase3: woechentlich (Festigung)
scheduled_task: projekt-lessons-ingest (NOCH NICHT REGISTRIERT — siehe «Freigabe»)
last_updated: 2026-07-29 (angelegt, Lauf 0; Pilot 2619 KISPI gesetzt)
---

# Ingest-Programm — Projekt-Lessons

**Ziel:** Das Erfahrungswissen aus JANS-Projekten — QS-Korrekturen, Auflagenbereinigung,
Koordinationsentscheide, Nachträge, Mängel, Behördenverfahren — in belegte, verlinkte
Lesson-Artikel überführen, sodass Projekt N von den Projekten 1…N-1 profitiert.

Das gilt für **abgeschlossene wie laufende** Mandate: bei abgeschlossenen liefert die
Schlussphase die dichteste Quelle, bei laufenden entsteht das Wissen in der Ausführung —
und wirkt dort sofort zurück. Der Pilot (2619 KISPI) ist ein laufendes Mandat; was das
für die Suche bedeutet, steht im nächsten Abschnitt.

## Warum dieser Loop

`wissen/projekt-lessons/CLAUDE.md` bezeichnet diese KB als «den eigentlichen 100×-Hebel des
Wissens-Layers». Der Stand am 29.07.2026 trägt das nicht:

- `raw/` ist **leer** — `_INGESTED.md` enthält genau eine Zeile: `_(noch leer)_`.
- `wiki/` trägt **einen** Artikel (`kispi-lbw-rohdichte-800.md`).

Solange kein Quellmaterial da ist, kann der Bibliothekar nichts kompilieren, und jede
Bauleitungs-Frage wird weiterhin aus dem Gedächtnis beantwortet. Dieser Loop füllt `raw/`
aus dem realen JANS-Bestand — dasselbe Problem und dieselbe Lösung wie beim
`grobkosten`-Loop (angelegt 25.07.2026).

## Pilot: 2619 Kinderspital Zürich (Entscheid Raphael, 29.07.2026)

**Der Pilot ist ein LAUFENDES Mandat, nicht ein abgeschlossenes Projekt.** Das ist bewusst
so gewählt und ändert, wonach gesucht wird: es gibt keine Schlussbesprechung und keine
Schlussabrechnung, aus denen sich Lessons ablesen liessen. Stattdessen entsteht das
Erfahrungswissen laufend — in QS-Korrekturen, Auflagenbereinigung, Fachplaner-Koordination
und Unternehmer-Korrespondenz der Ausführungsphase.

Warum trotzdem der richtige Pilot:

- Er trifft den KB-Schwerpunkt «Bauen im Betrieb / Healthcare» (Fokus-Bereich 2) direkt.
- Der bisher **einzige** Artikel in `wiki/` ist bereits ein KISPI-Artikel
  (`kispi-lbw-rohdichte-800.md`, 23.07.2026) — die KB hat hier schon Substanz und einen
  belegten Qualitätsmassstab (siehe «Referenz-Artikel» unten).
- Lessons aus einem laufenden Mandat wirken **sofort** auf dasselbe Mandat zurück, statt
  erst auf ein künftiges Projekt.

Risiko, das der erste Lauf im Blick behalten muss: bei laufender Ausführung ist vieles noch
nicht entschieden. Ein Sachverhalt, der heute wie eine Lesson aussieht, kann nächste Woche
anders ausgehen. Deshalb im Zweifel `status: speculative` und Eintrag in `QUESTIONS.md`,
nicht `established`.

### Drei Quellen, nicht eine

| Quelle | Zugriff | Was dort liegt |
|---|---|---|
| **Projektordner** | Dateisystem, `.../2619_KINDERSPITAL/` | Laufende Korrespondenz, Pläne, Protokolle, LOS-Dossiers |
| **Truninger-DS3** | `connectors/truninger-ds3.mjs` (**read-only**, `~/.truninger-ds3.env`) | Bewilligungsverfahren, Submissions-LV der Erstellung, Unternehmerdokumentation |
| **Mail** | rj@raphaeljans.ch, Gruppe kispi@ | Fachplaner-Abstimmungen, Entscheide, die nirgends abgelegt sind |

Der DS3-Connector ist im Code hart auf lesend beschränkt (einzige erlaubte POST-Anfrage ist
das Login) — er kann im Projektraum nichts verändern.

### Belegte Pfadmuster

Aus der Beweiskette von `wiki/kispi-lbw-rohdichte-800.md` (dort mit Fundstellen belegt),
daher hier **verifiziert** und nicht Kandidat:

```
02_Korrespondenz/4_Gruners GT Planer/296_7_Brandschutzexperte Ziegel/
03_BKP/LOS_<nr> <gewerk> <unternehmer>/<nr> 08 Korrespondenz/
DS3: 33 Bewilligungsverfahren/01_Eingaben
DS3: 41.2 Dossier Submission/03_Versand/
DS3: 70 Unternehmerdokumentation/09_Materialdeklaration
```

**Wurzelpfad verifiziert (Lauf 1, 29.07.2026):** Der beim Anlegen dieses Programms genannte
Kandidat `/Volumes/daten/04_Buero/02_Projekte/2619_KINDERSPITAL/` existiert **nicht** — dieser
NAS-Ordner enthält ein anderes, älteres Archiv (Projektnummern 10xx–16xx, nicht KISPI). Der
tatsächliche Wurzelpfad des laufenden Mandats liegt auf SharePoint/OneDrive (Ebene «Projekt»
gemäss Rule `projekt-ablage-stand`, nicht NAS):

```
/Users/raphaeljans/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/AR - 01 Projekte/2619_KINDERSPITAL/
```

Struktur passt zu den unten belegten Pfadmustern (`02_Korrespondenz/4_Gruners GT Planer/…`,
`03_BKP/LOS_…`). Diese Station-Besonderheit gilt vermutlich für alle Stationen identisch, da
OneDrive-Pfade kontounabhängig strukturiert sind — auf einer anderen Station ggf. gegenprüfen,
falls der Pfad dort abweicht.

### Dokumenttypen — angepasst an ein laufendes Mandat

| Dokumenttyp | Warum wertvoll |
|---|---|
| QS-Korrektur / Planvermerk eines Fachplaners | Dichteste Quelle — eine Vorgabe ohne Fundstelle ist immer eine Lesson (vgl. Referenz-Artikel) |
| Auflagenbereinigung, Behördenkorrespondenz | Behörden-Lessons; Schnittstelle zu KB `auflagebereinigung` |
| Sitzungs-/Koordinationsprotokoll | Koordinations-Lessons, Schnittstellen Fachplaner |
| Nachtrag, Regierapport, Ausmass-Differenz | Kosten-Lessons in der Entstehung |
| Unternehmerdokumentation, Materialdeklaration | Belegt, was tatsächlich verbaut ist — Gegenprobe zu Vorgaben |
| Etappierungs-/Provisoriumsentscheid | Kern von «Bauen im Betrieb» |

Nicht hierher gehört: Kostenkennwerte (→ KB `grobkosten`), Healthcare-m²-Daten
(→ Skill `kostenschaetzung`), baurechtliche Grundsatzfragen (→ KB `baurecht`),
Norm-Fundstellen und VKF-Kennwerte (→ KB `normen`), Auflagen-Pflichten mit Amt und Frist
(→ KB `auflagebereinigung`). Wenn ein Dokument dorthin gehört, im Inventar mit Verweis
vermerken statt destillieren — die Rollen-Matrix zwischen den KBs ist verbindlich.

### Laufendes Mandat — zwei Zusatzpflichten

- **Rule `projekt-ablage-stand`:** projektgebundene Erzeugnisse gehören in den
  Projektordner, nicht nur nach `outputs/`. Der Referenz-Artikel führt das unter
  «Projekt-Ablage» korrekt vor.
- **Anonymisierung (KB-Regel):** bei einem laufenden Mandat mit namentlich beteiligten
  Fachplanern und Unternehmern besonders streng — Sachverhalt und Regel festhalten, keine
  Bewertung von Personen.

## Stufe 1 — Inventar zuerst (garantiert produktiv)

Bevor irgendetwas destilliert wird: `training/quellen-inventar.md` anlegen und füllen.
Je gefundenes Dokument eine Zeile:

| Feld | Inhalt |
|---|---|
| Projekt | Projektnummer + Kurzname |
| Nutzung | Wohnen / Healthcare / Gewerbe / … |
| SIA-Phase | in welcher Phase das Dokument entstand |
| Pfad | vollständiger NAS-Pfad, wie er tatsächlich existiert |
| Typ | Schlussbesprechung / Mängelliste / Nachtrag / Protokoll / Bauentscheid / … |
| Status | `[ ]` offen · `[x]` destilliert · `[-]` untauglich |

**Nullbefunde werden eingetragen, nicht verschwiegen.** Enthält ein Projektordner nichts
Lehrreiches, kommt er mit `[-]` und einer Begründung ins Inventar — sonst öffnet ihn jeder
Folgelauf erneut. Dieselbe Konvention wie `wissen/grobkosten/training/quellen-inventar.md`.

## Die drei Stufen — getrennte Prompts, getrennte Fragen

Der häufigste Fehler ist der eine grosse Prompt («lies alles und bau ein Wiki»). Das
erzeugt plausiblen Brei. Jede Stufe stellt eine andere Frage und wird **getrennt**
ausgeführt — auch dann, wenn alle drei im selben Lauf vorkommen.

---

### Stufe A · Destillat — ein Rohdokument → ein Destillat

Ziel: das Dokument beweissicher erschliessen. Rolle: **Extraktor, nicht Autor.**

```
Du destillierst ein einzelnes Rohdokument fuer die Wissensbasis projekt-lessons.
Verbindlich: wissen/projekt-lessons/CLAUDE.md (Fokus-Bereiche, Schreibregeln).

Aufgabe:
1. Jede Aussage extrahieren, die einem der fuenf Fokus-Bereiche zuzuordnen ist
   (Bauleitung/Ausfuehrung, Bauen im Betrieb, Kosten & Termine, Behoerden &
   Bewilligungen, Koordination & Kommunikation).
2. Zu JEDER Aussage: woertliches Zitat (max. 2 Saetze) + Fundstelle (Datei, Seite,
   Protokollpunkt, Datum). Ohne Fundstelle keine Aussage.
3. Was du nicht belegen kannst, kommt unter "## Unsicher" — nicht weglassen,
   nicht behaupten.
4. Widersprueche im Dokument selbst oder zu bereits destilliertem Material:
   unter "## Spannungen", mit beiden Seiten und beiden Fundstellen.
5. Anonymisierung gilt bereits hier (KB-Regel): Sachverhalt festhalten, keine
   Schuldzuweisung an Personen oder Firmen formulieren.

Was du NICHT tust: interpretieren, verallgemeinern, mit Weltwissen ergaenzen,
Luecken fuellen, aus einem Einzelfall eine Regel machen. Das ist Stufe B.

Ausgabe: Markdown nach wissen/WISSEN-CLAUDE.md-Frontmatter
(title, status, last_updated, sources) nach raw/<JJJJMMTT>-<projekt>-<thema>.md.
Schweizer Hochdeutsch, echte Umlaute, kein Eszett.
```

Nach jedem Destillat: Zeile in `raw/_INGESTED.md` nachführen, Inventar-Status auf `[x]`.

---

### Stufe B · Kompilat — N Destillate → ein Lesson-Artikel

Ziel: aus Einzelfällen eine übertragbare Regel. Erst hier wird verallgemeinert — und nur
so weit, wie die Destillate tragen.

```
Du kompilierst mehrere Destillate aus raw/ zu einem Lesson-Artikel in wiki/.

Pflichtstruktur (KB-Regel aus projekt-lessons/CLAUDE.md):
  Situation → was passiert ist → Ursache → Konsequenz → Regel fuer naechstes Mal.
Der letzte Punkt ist der eigentliche Wert; ein Artikel ohne Regel ist unfertig.

Pflicht-Tagging: Gewerk/BKP (Referenz references/bkp-2017/BKP-2017-Liste.md),
SIA-Phase, und — wo einschlaegig — der betroffene Skill (ausschreibung,
unternehmerkontrolle, kostenkontrolle, terminplanung), damit die Erkenntnis in
den Skill zurueckfliessen kann.

KERNREGEL — Widersprueche NICHT aufloesen:
Wenn zwei Destillate sich widersprechen, glaettest du das nicht und waehlst nicht
aus. Beide Positionen kommen mit ihrer Quelle in den Artikel, und die offene Frage
kommt nach wiki/QUESTIONS.md. Ein Kompilierer, der Widersprueche wegbuegelt,
zerstoert genau das Wissen, das am meisten wert ist.

Belegkette: jede Aussage im Artikel zeigt ueber `sources` auf das Destillat, aus dem
sie stammt. Keine Aussage ohne Destillat dahinter.
status: speculative bei einem einzigen Beleg, emerging ab zwei unabhaengigen
Faellen, established erst wenn die Regel sich mehrfach bewaehrt hat.
Backlinks [[artikel-name]] zu verwandten Artikeln setzen.
```

Nach jedem Artikel: `wiki/INDEX.md` und `wiki/QUESTIONS.md` nachführen.

**Referenz-Artikel — der Massstab:** `wiki/kispi-lbw-rohdichte-800.md` (23.07.2026). Er ist
das Vorbild für alles, was Stufe B produziert, und zeigt fünf Dinge, die ein Lesson-Artikel
können muss:

1. **Nummerierte Beweiskette** statt Behauptung — hier fünf Glieder von der QS-Vorgabe über
   das Erstellungs-LV bis zur Materialdeklaration des Unternehmers.
2. **Jedes Glied mit vollständigem Fundort**, inklusive DS3-Dateinummer.
3. **Explizite Negativ-Aussage** («nicht aus dem globalen Brandschutzkonzept») — was geprüft
   und ausgeschlossen wurde, gehört in den Artikel.
4. **Cross-KB-Einordnung**: welche Werte sind hier nur *abgeleitet* und werden von einer
   anderen KB geführt (`normen`, `auflagebereinigung`), sodass eine Korrektur dort
   nachgezogen werden kann.
5. **Verallgemeinerbare Lesson als eigener Abschnitt**, mit konkretem Suchpfad fürs nächste
   Mal — der eigentliche Wert des Artikels.

Ein Artikel, der diese fünf Punkte nicht erfüllt, ist unfertig.

---

### Stufe C · Adversarische Verifikation — das eben Geschriebene angreifen

Ziel: falsche Belege finden, bevor sie in einen Bericht wandern. Dieser Schritt hat im
`baurecht`-Loop (Run 69) drei Zitierfehler und eine seit 2022 aufgehobene Verordnung
gefunden — er ist der Grund, warum die KBs belastbar sind.

```
Du pruefst den soeben geschriebenen Wiki-Artikel gegnerisch. Deine Aufgabe ist,
ihn zu WIDERLEGEN, nicht ihn zu bestaetigen.

Je Aussage:
1. Existiert die angegebene Fundstelle wirklich? Datei oeffnen, Stelle aufsuchen.
2. Traegt sie die Aussage tatsaechlich — oder nur ungefaehr?
3. Ist sie noch aktuell (Norm/Verordnung/Vertragsstand nicht ueberholt)?
4. Gibt es im uebrigen raw/-Bestand ein Destillat, das dagegen spricht?

Default bei Unsicherheit ist "widerlegt", nicht "bestaetigt".

Ergebnis:
- Widerlegte Aussagen aus dem Artikel entfernen oder auf status: speculative
  zuruecksetzen, mit Begruendung.
- Befunde in wiki/QUESTIONS.md und im CHANGELOG.md protokollieren
  (Format wie baurecht: "N bestaetigt / M widerlegt").
- Bei destruktiven Eingriffen (Artikel mergen, umbenennen, loeschen) gilt
  Rule wissens-bibliothekar: pausieren und rueckfragen.
```

---

## Ablauf eines Laufs (immer gleich)

1. **Stand lesen:** `training/quellen-inventar.md` (nächste offene Zeilen),
   `raw/_INGESTED.md`, `wiki/INDEX.md`, `wiki/QUESTIONS.md`, letzter `outputs/`-Report.
2. **TRANSFER (Pflicht):** Stufe A auf **3–8 Dokumente** der nächsten offenen
   Inventar-Zeilen. Inventar und `_INGESTED.md` nachführen.
3. **VERDICHTUNG (Pflicht):** Stufe B — mindestens **ein** Wiki-Artikel neu geschrieben
   oder geschärft, `INDEX.md` + `QUESTIONS.md` nachgeführt.
4. **PRÜFUNG (Pflicht):** Stufe C auf genau die Artikel, die dieser Lauf angefasst hat.
5. **Protokoll:** `CHANGELOG.md` der KB nachführen (jede Änderung, neueste zuoberst) und
   den Tracker unten ergänzen.

Kein Block ist optional. Ein Lauf ohne Stufe C produziert unbelegtes Wissen und ist
schlimmer als kein Lauf.

## Freigabe — dieser Loop läuft NOCH NICHT autonom

`scheduled_task: projekt-lessons-ingest` ist im Frontmatter benannt, aber **nicht
registriert**, und es gibt keinen Eintrag in `scripts/wissens-trigger.sh`.

Grund: ein fehlerhafter Stufe-A-Prompt multipliziert sich über den ganzen Archivbestand.
Erst wenn Stufe A an **einem** realen Dokument von Hand geprüft wurde — Zitate und
Fundstellen stichprobenweise gegen das Original — wird der Task registriert. Der Entscheid
dazu gehört Raphael, nicht dem Loop.

## Tracker

| Lauf | Datum | Projekte / Dokumente | Neue Artikel | Befunde Stufe C |
|---|---|---|---|---|
| 0 | 29.07.2026 | — (Programm angelegt, Pilot 2619 KISPI gesetzt) | — | — |
| 1 | 29.07.2026 | 2619 KISPI — Wurzelpfad verifiziert (SharePoint/OneDrive, nicht NAS); `quellen-inventar.md` angelegt (36 Zeilen); Stufe A auf 1 Dokument (Rückweisung Installationsplan Lüftung, 296_7_Brandschutzexperte Ziegel) | — (Stufe B bewusst ausgelassen, siehe unten) | — (Stufe C bewusst ausgelassen, siehe unten) |

**Hinweis zu Lauf 1:** zwei vorherige Remote-Dispatch-Versuche (`20260729-lauf1-projekt-lessons`,
`…-v2`) sind an Infrastrukturfehlern gescheitert (exit 1 bzw. Git-Remote-Fehler auf der
Zielstation) — Lauf 1 wurde stattdessen interaktiv nachgeholt. Wie im Tracker vorgesehen: NUR
Stufe A, Raphael liest das Destillat `raw/260729-kispi-rueckweisung-installationsplan-lueftung.md`
gegen die drei Originaldateien gegen. Stufe B/C folgen erst nach dieser Handkontrolle (Lauf 2).

**Nächster Schritt (Lauf 2, erst nach Freigabe durch Raphael):**

1. Raphael prüft das Destillat gegen das Original (Zitate/Fundstellen stimmen?).
2. Bei Freigabe: die übrigen offenen Inventar-Zeilen (Stufe A, 3–8 weitere Dokumente je Lauf),
   danach erstmals Stufe B (ein Wiki-Artikel aus mehreren Destillaten) und Stufe C.
3. Erst danach — ebenfalls mit Raphaels Freigabe — Registrierung als `scheduled_task`
   (siehe Abschnitt «Freigabe» oben).
