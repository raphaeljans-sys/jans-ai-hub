# CHANGELOG — KB `claude-code`

Neueste Eintraege zuoberst.

## 2026-07-30 (methoden-radar, Wochenlauf 23:07) — Vorfilter war blind: Quellordner umbenannt
- **[befund, behoben] `scripts/methoden-scan.sh` brach mit Exit 2 ab**, weil der Methodenordner
  von «03 Prompteingaben» auf **«00 Prompteingaben»** umbenannt wurde (mtime 30.07. 09:49). Die
  Fehlermeldung war nicht von einem fehlenden OneDrive-Mount zu unterscheiden — der Loop haette
  sie laut eigener Vorschrift als «Mount fehlt» quittiert und waere ab sofort woechentlich blind
  gelaufen. Script auf eine Kandidatenliste umgestellt («00», dann «03», zuletzt `find`-Muster
  `* Prompteingaben`), verwendete Quelle wird auf stderr ausgewiesen.
- **[befund, gleichentags geklaert] 8 von 32 Slides fehlen in OneDrive** (`260729 Antrophic
  Lecture`: IMG_5462/5464/5466/5471/5472/5478/5481/5485). Zunaechst als QUESTIONS 0b aufgenommen
  statt geraten; **Raphael am 30.07. im Chat: bewusst aufgeraeumt**, kein Sync-Problem → nach
  «Beantwortet» verschoben. Kein Wissensverlust, alle 32 nachgemessen vollstaendig in `raw/`;
  die raw-Kopie bleibt als Belegbasis der Destillate unangetastet.
- **[verifikation, ohne Befund] Rotation Zeile 1 `3 EASY STEPS - the Spec`:** `rules/spec-methode.md`,
  `skills/spec/SKILL.md` und die 5 KB-Artikel existieren; `spec-training` enabled=false ist durch
  Raphaels Entscheid vom 26.07. gedeckt (kein stiller Ausfall); Liefer-Beleg `wissen/spec/CHANGELOG.md`
  29.07. Stempel gesetzt, naechste Zeile der Rotation: `Methode SPW`.
- Geaendert: `scripts/methoden-scan.sh`, `wiki/methoden-register.md`, `wiki/QUESTIONS.md`,
  `wiki/INDEX.md`, `docs/konzepte/260729-Methoden-Lern-Loop/`, `logbuch/LOGBUCH.md`, Scan-Stand.

## 2026-07-30 — Zwei offene Punkte geschlossen (GitHub-App: Verzicht · User-Commands: umgesetzt)
- QUESTIONS Punkt 2 (`/install-github-app`): **endgueltiger Verzicht, Entscheid Raphael
  30.07.2026** — GitHub bleibt reines Backup, kein Issue-/PR-Betrieb; nach «Beantwortet»
  verschoben, Konzeptdokument 260729 nachgefuehrt. Nicht erneut vorschlagen.
- QUESTIONS Punkt 3 (User-Level-Slash-Commands): umgesetzt — `~/.claude/commands` →
  `NAS/commands` auf Mini und MacBook Pro, Onboarding via `neue-station.sh` Schritt 4b;
  nach «Beantwortet» verschoben. Verbleibende offene Punkte neu nummeriert (0a, 1–3).

## 2026-07-29 (Wissens-Chef Run 20) — ERST-PRUEFUNG dieser KB im Cross-KB-Lauf
- **[befund, geht an Raphael] Der Hub widerlegt seine eigene, tagesaktuelle Regel.** Die in
  `wiki/kontext-architektur.md` gefuehrte Entscheidungsregel («automatisch oder lazily?») schliesst
  Loops, Infrastruktur und Messwerte ausdruecklich aus dem @-Import aus. **Am selben Tag** wurde
  `rules/rollen-taxonomie.md` importiert (CLAUDE.md:300) — mit genau diesem Inhalt:
  90-%-Rechenzeit-Messung, 10'501 Laeufe, 10'017 Fehlstarts, drei Loop-Scripts. Der Chef greift
  **nicht** selbst ein (Rollen-Taxonomie Regel 4: messen und berichten, nie automatisch durchsetzen);
  als Entscheid vorgelegt, mit einer dritten Option als Vorzugsvariante, die keine Ausnahmeklausel
  braucht.
- **[korrektur, mit abgewehrter Fehlkorrektur] Das eigene Grundkontext-Budget war am Messtag zu
  tief.** Gefuehrt waren 19 Importe / 87'398 B; nachgemessen sind es **20 Importe / 96'946 B /
  ~24'236 Token**. Die bestehende Ersparnis-Zeile (105'573 → 87'398 B, 18'175 B, 17 %) durfte dabei
  **nicht** ueberschrieben werden — sie misst die Wirkung des Eingriffs am Commit `29bcb1ac`; das
  nachtraegliche Wiederanwachsen ist eine andere Groesse. Beides steht jetzt getrennt, mit Messweg
  (`stat -f%z` ueber CLAUDE.md **plus** die Dateien aus `grep '^@/Volumes' CLAUDE.md` — CLAUDE.md
  selbst zaehlt mit) und Zeitstempel, weil der Wert nachweislich in Minuten veraltet.
- **[verlinkung] Null Querverweise zu `spec`,** obwohl `kontext-architektur` und
  `environment-jans-hub` dieselbe Sache aus zwei Winkeln beschreiben. Beidseitig verlinkt: diese KB
  fuehrt den **gemessenen Ist-Zustand**, `spec` das **formale Layer-3-Modell**. Die Baustein-Tabelle
  in `spec` bleibt inhaltlich stehen (sie enthaelt eine Zuordnung, die es hier nicht gibt).
- **[kein Befund, ehrlich vermerkt]** Die Abgrenzung gegen die Rules ist in `CLAUDE.md` sauber
  formuliert («diese KB begruendet die Konfiguration, ersetzt sie nicht»). Zwei gemeldete
  Doppelspur-Vorwuerfe (Hub-Inventar-Zahlen, Herkunft des Wissens-Layers) wurden **widerlegt**.
- Geaendert: `wiki/kontext-architektur.md`.


## 2026-07-29 (Nachtrag) — Entscheide Raphael zu den offenen Kandidaten

- Drei-Marken-/Website-Strategie verworfen: beide DOCX im OneDrive-Ordner `Agenten`
  geloescht (SharePoint-Papierkorb). Ordner `Prompts` komplett geloescht.
- 4-Agenten-Blaupause (Indexer, Baueingabe-Check, Brandschutz, QA-Trace) als
  Skill-Kandidat aufgenommen; Destillat im [[methoden-register]], Pendenz fuer
  hub-chef im Logbuch.
- Register + QUESTIONS nachgefuehrt, Scan-Stand neu eingefroren (8 Ordner).

## 2026-07-29 — Methoden-Register + SPW-Destillat + Lern-Loop `methoden-radar`

- Vollanalyse des OneDrive-Ordners `03 Prompteingaben` (alle 9 Unterordner, Auftrag
  Raphael): Spec, Anthropic-Lecture und Archetypen waren bereits implementiert;
  «Methode SPW» erwies sich als die Video-Blaupause des bestehenden Wissens-Layers
  (inkl. wortgleicher 7 Audits im Skill `wissenscheck`), war aber nirgends als Quelle
  registriert.
- `wiki/methode-spw-wissensbasis.md` neu — Destillat der 30 Screenshots + Abgleich
  Video ↔ Hub-Implementation (kein inhaltliches Delta gefunden).
- `wiki/methoden-register.md` neu — kanonisches Register aller Quellen aus
  `03 Prompteingaben` mit Destillat-/Implementations-/Trainingsstand und
  Verifikations-Rotation; 3 offene Kandidaten fuer Raphael erfasst (Drei-Marken-
  Strategie, Baueingabe-Check/Trace-Matrix, Ordner Prompts).
- `raw/_INGESTED.md` neu (fehlte in dieser KB) — Lecture-Slides + externe Quellen.
- Lern-Loop `methoden-radar` eingerichtet: `scripts/methoden-scan.sh` (deterministischer
  Delta-Scan) + Scheduled Task woechentlich Mo 21:00. Konzept:
  `docs/konzepte/260729-Methoden-Lern-Loop/`.
- INDEX + QUESTIONS nachgefuehrt.

## 2026-07-29 — KB angelegt

- KB `wissen/claude-code/` neu angelegt (Ordner `raw/ wiki/ outputs/`, `CLAUDE.md`,
  dieses CHANGELOG). Anlass: Anthropic-Lecture vom 29.07.2026; Auftrag Raphael,
  die Prinzipien in die Hub-Architektur zu implementieren.
- `raw/`: 32 Lecture-Slides (IMG_5458 bis IMG_5489) aufgenommen, Quelle
  `OneDrive/AD - 01 Geschaeftsfuerung/JANS AI/260729 Antrophic Lecture/`.
- `wiki/lecture-260729-anthropic.md` — vollstaendiges Destillat aller 32 Slides
  (acht Tips, Kontext-Hierarchie, Team-Matrix, Keybindings, SDK, Multi-Claude)
  inkl. eines Abschnitts, was die Lecture NICHT behandelt (Ressourcengrenzen).
- `wiki/kontext-architektur.md` — gemessener Ist-Zustand der vier Kontext-Schichten
  im Hub, Grundkontext-Budget vor/nach der Diaet 2.0, Entscheidungsregel
  «automatisch gegen lazily».
- `wiki/INDEX.md` und `wiki/QUESTIONS.md` angelegt; fuenf offene Punkte erfasst
  (Enterprise-Policy-Ebene, GitHub-App, User-Level-Slash-Commands, Versionsbindung,
  exakte Tokenzahl).
