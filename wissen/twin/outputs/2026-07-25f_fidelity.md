# Twin-Fidelity-Review 2026-07-25f

**Agent:** twin-chef · **Modus:** Fidelity-Selbsttest gegen authentische Goldproben, plus Echo-Kontrolle.
**Goldproben:** drei Sent-Items-Mails von rj@raphaeljans.ch, gezogen via M365-Connector (CLI-Kommando
`m365 outlook message list`/`message get`, Ordner `sentitems`), Zeitraum 18.–21.05.2026, KISPI-/
Albertstrasse-Achse:
1. **Stadelmann/Estermann** (Sie, Brandschutz-Fachplaner, 18.05.2026) — Nachgang zu einem Telefonat,
   Anfrage zur Ertüchtigung zweier Leichtbauwand-Typen auf EI30-RF1 für die KISPI-Umnutzung 1.OG.
2. **Schwarzwaldelemente** (Sie, unbekannte Trennwand-Herstellerfirma, 21.05.2026) — Submissionsanfrage
   BKP 277.20, drei Sanitär-Trennwände.
3. **Besnik/fsgbau** (Du, Bauunternehmer-Kontakt, 21.05.2026) — kurze Bitte um Gewerke-Zahl und
   Unternehmer-Empfehlungen für eine Submission (Albertstrasse 7).

**Wichtige Vorabprüfung:** Vor der Verwendung als Gold wurde jede der drei Mails gegen die bestehende KB
abgeglichen. Ergebnis: **zwei der drei sind bereits dokumentiert**, eine ist neu:
- Stadelmann-Mail: bereits in `beziehungsregister.md` (Zeile ~1132/1443, «Geschätzter Herr Stadelmann»)
  und `fachsignatur.md` (Leichtbauwand-Ertüchtigung) belegt — **nutzbar als Vergleichs-Gold**, da bereits
  als authentisch eingestuft.
- Schwarzwaldelemente-Mail: bereits als **Echo-Falle 16** in `stimme.md` (Zeile 1670) dokumentiert und
  ausgeschlossen — kompletter, unveränderter Output des Skills `ausschreibung`, kein handgetippter Marker
  (Neutralitätsgebot exakt getroffen, aber die stilistischen Gedankenstriche im Fliesstext sind der
  Echo-Indikator). **Diese Session bestätigt den bereits dokumentierten Echo-Befund unabhängig** — gute
  Kreuzvalidierung, aber **nicht als Fidelity-Gold verwendet**.
- Besnik-Mail («Gewerke/Empfehlung», 21.05.2026): **neu, bisher nicht im Wiki.** Einziger echter Neufund
  dieser Runde.

## Gesamt-Fidelity: 81 / 100

| Facette | Score | Kurzbefund |
|---|---|---|
| Stimme/Ton | 75 | Twin überlädt den Telefonat-Nachgang mit «Besten Dank für das Telefonat» + «Ich erlaube mir …» — das Original bleibt knapper. |
| Denken/Argumentation | 85 | Konditionale Fragestellung (Ertüchtigung → Konformitätsnachweis) sauber reproduziert. |
| Haltung/Werte | 83 | Kein Fehlton, aber kein starkes Testsignal in diesen drei Proben. |
| Beziehungsregister | **70** | Schwächste Facette: bekannte Stadelmann-Mapping («Geschätzter») nicht abgerufen, defaultete auf «Sehr geehrter»; Besnik-Eskalation naturgemäss nicht vorhersehbar (neu). |
| Fachsignatur | 90 | Brandschutz-/Submissions-Vokabular (EI00/EI30/RF1/GKB, SIA 118, Rabatt/Skonto/Gewährleistung) korrekt und inline. |
| Arbeitsweise | 85 | Struktur (Leistungsumfang/Beilagen-Listen, Termin-Kombinationsvorschlag) gut getroffen; Nummerierung vs. «_»-Bullet bei Sachfragen abweichend. |

## Vorgehen (Schritt 2)

Die drei Twin-Fassungen wurden **blind** erzeugt: ein separater Agent-Lauf ohne Zugriff auf den
tatsächlichen Wortlaut der Golds, nur mit den sechs kompilierten Facetten-Wikis und
`rules/anrede-kontakte.md` als Massstab, bekam die reinen Sachverhalte (Empfänger, Kontext, Inhalt) und
sollte daraus die Mail schreiben.

**Task A (Stadelmann-Äquivalent):** Twin öffnet mit «Sehr geehrter Herr Stadelmann, / Besten Dank für das
Telefonat von heute. / Ich erlaube mir, das Gespräch nachfolgend schriftlich festzuhalten …» — technisch
korrekt (Wandtypen, EI30/RF1, Konformitätsnachweis, Termin-Kombinationsvorschlag, Sachfragen, Service-Satz,
FG+Block), aber **zwei Drifts**: (a) «Sehr geehrter» statt des im Wiki bereits **dokumentierten**
«Geschätzter Herr Stadelmann» — ein reiner Retrieval-Fehler, keine Wissenslücke (die DNA-Kompilierung
enthält offenbar keine namentlichen Kontakt-Mappings, nur allgemeine Prinzipien); (b) die
Doppel-Signaturphrase «Besten Dank für das Telefonat» + «Ich erlaube mir …» wirkt zeremoniell, wo das
Original direkt einsteigt: «Wie telefonisch besprochen sende ich Ihnen die Unterlagen …» — ein bereits
eingespielter Fachplaner-Kontakt bekommt offenbar die knappere, nicht die volle Eröffnungsformel. Die
Sachfragen wurden vom Twin durchnummeriert (1./2.), das Original nutzt einen fetten Header «Sachfragen
gemäss Telefon:» + «_ »-Bullets — eine Grenzfrage der bestehenden Nummerierungsregel (→ Frage 2 unten).

**Task B (Schwarzwaldelemente-Äquivalent):** Twin-Fassung strukturell sehr nah am Original (Leistungsumfang-
Bullets, Vertragliche Grundlage SIA 118, Beilagen-Liste, Eingabefrist, Vor-Ort-Termin-Angebot), inklusive
korrektem Wir/Ich-Splitting («Im Auftrag der Bauherrschaft … melde ich» / «Wir bitten um Einreichung»).
**Nicht bewertet als Fidelity-Treffer**, da das Original selbst als Echo-Falle 16 (unveränderter
Skill-`ausschreibung`-Output) eingestuft ist — der Twin hat hier im Grunde denselben Skill-Stil
reproduziert, was die Diagnose bestätigt, aber keine echte Stimme-Messung erlaubt.

**Task C (Besnik-Äquivalent):** Twin schreibt «Besnik, / Für die aktuelle Submission zwei kurze Fragen: …
/ Lgr» — exakt nach dem bisher einzigen dokumentierten Besnik-Beleg (nackter Vorname, «Lgr», 26.03.2026).
Das reale Original weicht davon ab: «**Geschätzter Besnik,**» + direkt in den vollen «Freundliche
Grüsse»-Signaturblock, ohne eigenen Kurzgruss. Das ist **kein Fehler des Twins** (die Information war zum
Zeitpunkt der blinden Erzeugung schlicht nicht bekannt), sondern ein **echter Neufund**: eine
Gewerke-/Unternehmer-Empfehlungsbitte ist offenbar gewichtig genug, die Anrede auch bei einem sonst
lockeren Du-Kontakt auf «Geschätzter» zu heben — der bereits belegte Marker «Geschätzter als
Inhalts-Spike» (Stefan Tschopp, Fidelity 260714d) gilt damit auch bei einem Kontakt, dessen Standard-
Mapping bisher als starr «informell» geführt wurde. In `beziehungsregister.md` nachgetragen.

## Schritt 3 — gegenseitige Validierung der Facetten

Die sechs Facetten-Artikel wurden gegeneinander gelesen (Stimme/Beziehung/Arbeitsweise an den drei
Testfällen); keine neuen Widersprüche zwischen den Facetten selbst gefunden. Eine bereits bekannte
Spannung wurde bestätigt statt aufgelöst: die Nummerierungsregel für Sequenzfragen (aus 260725b) ist an
ihrer Grenze zu knapp gefasst — sie deckt den Sie-Erstkontakt-Fall gut ab, aber nicht den Fall
«technische Sachfragen an einen bereits eingespielten Fachplaner», wo ein fetter Themen-Header +
«_ »-Bullets näher am Original liegt. In `QUESTIONS.md` als Frage 2 aufgenommen statt vorschnell
generalisiert.

## Echo-Kontrolle (Nebenbefund, hohe Relevanz)

Diese Session hat unabhängig dieselbe Mail als Echo-Risiko identifiziert, die bereits in `stimme.md`
als Echo-Falle 16 geführt wird (Schwarzwaldelemente-Submissionsanfrage, 21.05.2026): zwei stilistische
Gedankenstriche im Fliesstext («auszuschreiben — als Nach- bzw. Anpassungslieferung», Betreff «Areal
Süd — Eingabefrist») widersprechen der expliziten Raphael-Regel «kein Gedankenstrich als Stilmittel»
und decken sich exakt mit Struktur/Wortlaut des Skill-Templates `ausschreibung`. Die unabhängige
Bestätigung erhöht die Sicherheit dieser Einstufung, löst aber keine neue Aktion aus (bereits
`claude-aera`-äquivalent, ausgeschlossen). Empfehlung an den `twin-mail-training`-Loop unverändert:
professionalisierte/standardisierte Auftragstypen (Submissionsanfragen) haben ein erhöhtes
Echo-Risiko und sollten vor der Aufnahme als Gold zusätzlich auf Gedankenstriche/Skill-Template-
Übereinstimmung geprüft werden — dieser Mechanismus greift hier bereits korrekt.

## Selbstfragen

Drei neue Fragen an `wissen/twin/wiki/QUESTIONS.md`, Runde 260725f angehängt: Besnik-«Geschätzter»-
Spike-Generalisierung; Nummerierung vs. «_»-Bullet bei technischen Sachfragen an eingespielte
Fachplaner; Pflicht-Doppel-Opener «Besten Dank für das Telefonat»/«Ich erlaube mir» nur bei neuen/
gewichtigeren Kontakten.

## Zusammenfassung

🧠 twin-chef — Fidelity: 81
Stimme 75  Denken 85  Haltung 83  Beziehung 70  Fachsignatur 90  Arbeitsweise 85
Entscheid: kein Veredelungslauf nötig (Selbsttest, keine Ausgabe an Raphael)
Hinweis: schwächste Facette Beziehungsregister — Ursache diesmal ein Retrieval-Fehler (bekannte
Stadelmann-Mapping nicht angewendet), nicht eine Wissenslücke; die DNA-Kompilierung scheint keine
namentlichen Kontakt-Mappings zu transportieren, nur allgemeine Prinzipien.
→ Nächster Lauf sollte prüfen, ob `build_dna.py` benannte Kontakt-Mappings (Stadelmann, Hottinger,
Tschopp etc.) aus `beziehungsregister.md` in den Auto-Block übernehmen kann, oder ob das bewusst der
Kontext-Diät zum Opfer fällt und stattdessen `rules/anrede-kontakte.md` diese Rolle tragen soll.
