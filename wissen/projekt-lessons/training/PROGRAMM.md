---
name: PROGRAMM
beschreibung: Ingest-Programm fuer projekt-lessons. Erschliesst das Erfahrungswissen aus abgeschlossenen Projektordnern im NAS-Archiv Lauf um Lauf ueber drei getrennte Stufen (Destillat, Kompilat, adversarische Verifikation) und verdichtet es zu belegten Lesson-Artikeln.
frequenz_phase1: taeglich (Aufbau, ~erste 4 Wochen)
frequenz_phase2: alle 2 Tage (Vertiefung)
frequenz_phase3: woechentlich (Festigung)
scheduled_task: projekt-lessons-ingest (NOCH NICHT REGISTRIERT — siehe «Freigabe»)
last_updated: 2026-07-29 (angelegt, Lauf 0)
---

# Ingest-Programm — Projekt-Lessons aus dem NAS-Projektarchiv

**Ziel:** Das Erfahrungswissen abgeschlossener JANS-Projekte — Schlussbesprechungen,
Mängelrückblicke, Nachtragsstreite, Terminverzüge, Behördenverfahren — aus den
Projektordnern in belegte, verlinkte Lesson-Artikel überführen, sodass Projekt N von den
Projekten 1…N-1 profitiert.

## Warum dieser Loop

`wissen/projekt-lessons/CLAUDE.md` bezeichnet diese KB als «den eigentlichen 100×-Hebel des
Wissens-Layers». Der Stand am 29.07.2026 trägt das nicht:

- `raw/` ist **leer** — `_INGESTED.md` enthält genau eine Zeile: `_(noch leer)_`.
- `wiki/` trägt **einen** Artikel (`kispi-lbw-rohdichte-800.md`).

Solange kein Quellmaterial da ist, kann der Bibliothekar nichts kompilieren, und jede
Bauleitungs-Frage wird weiterhin aus dem Gedächtnis beantwortet. Dieser Loop füllt `raw/`
aus dem realen JANS-Bestand — dasselbe Problem und dieselbe Lösung wie beim
`grobkosten`-Loop (angelegt 25.07.2026).

## Quellenlage — NOCH NICHT VERIFIZIERT

**Wichtig:** Dieses Programm wurde ohne gemountetes NAS geschrieben. Die folgenden Pfade
sind **Kandidaten**, keine Tatsachen (Rule `identifikatoren-verifizieren`). Der erste Lauf
verifiziert sie und **trägt das Ergebnis hier nach**, mit Datum — erst dann gilt dieser
Abschnitt als belegt.

Zu prüfende Kandidaten:

```
/Volumes/daten/04_Buero/02_Projekte/<projekt>/
```

Gesucht sind Dokumente mit **Rückblick-Charakter**, typischerweise in Unterordnern für
Bauleitung, Protokolle, Abnahme oder Korrespondenz:

| Dokumenttyp | Warum wertvoll |
|---|---|
| Schlussbesprechung / Projektabschluss | Dichtestes Material — bereits verdichtete Erfahrung |
| Mängelliste, Abnahmeprotokoll, Garantiefall | Zeigt, was in der Ausführung wiederkehrt |
| Nachtragsverhandlung, Regierapport-Streit | Ursachen von Kostenabweichungen |
| Bauprogramm-Revision, Verzugsanzeige | Termin-Lessons |
| Bauentscheid mit Auflagen, Einsprache-Korrespondenz | Behörden-Lessons |
| Sitzungsprotokolle der Schlussphase | Koordinations-Lessons |

Nicht hierher gehört: Kostenkennwerte (→ KB `grobkosten`), Healthcare-m²-Daten
(→ Skill `kostenschaetzung`), baurechtliche Grundsatzfragen (→ KB `baurecht`).
Wenn ein Dokument dorthin gehört, im Inventar mit Verweis vermerken statt destillieren.

**Auswahlregel für den Pilot:** ein einziges, **abgeschlossenes** Projekt mit dichter
Korrespondenz. Nicht das grösste, sondern das am besten dokumentierte.

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
| 0 | 29.07.2026 | — (Programm angelegt) | — | — |
