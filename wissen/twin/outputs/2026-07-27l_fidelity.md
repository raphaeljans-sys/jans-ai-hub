---
title: Fidelity-Review 2026-07-27l — Korpus-Abschluss + Formalisierungs-Reflex behoben
status: established
last_updated: 2026-07-27
gewichtung: authentisch
sources: [rj@raphaeljans.ch Sent Items 2025-10 (Recall-Test), rj@ Sent Items 2025-07-04ff (Korpus-Untergrenze), raw/_INGESTED.md Batches 01/15/17/18/74]
links: [[arbeitsweise]], [[stimme]], [[fachsignatur]], [[haltung]], [[beziehungsregister]], [[QUESTIONS]]
---

# Fidelity-Review 2026-07-27l

Zwölfter Lauf des Tages. Kollisions-Check vor Beginn: kein paralleler `twin-fidelity-review`-
Prozess (`ps`-Prüfung, der einzige `claude`-Prozess war die eigene Trägersession, PPID
verifiziert). Dieser Lauf liefert zwei Dinge, die die Vorläufer offen liessen: einen **harten
Korpus-Abschlussbeweis** und die **Umsetzung** der seit Lauf k offenen Arbeitsweise-Korrektur.

## Befund 1 — der authentische Korpus ist an beiden Enden geschlossen (neu, härter als 260727i)

Lauf i hatte «Material erschöpft» festgestellt, aber nur den **Vorwärts**-Zeiger geprüft (keine
neue Mail seit dem letzten Sweep). Lauf j/k schlossen daraus auf einen **Rückwärts**-Sweep und
zogen September/Oktober 2025 als vermeintlich frische Fenster. Dieser Lauf zeigt: das war ein
Trugschluss.

- **Oktober 2025 (`rj@`, 43 Sent Items) ist vollständig destilliert** — Batches 15
  (02.–08.10.), 17 (09.–20.10.) und 18 (22.10.–06.11.). Die vermeintlich frischen Golds waren
  bereits im Wiki abgebildet, teils wörtlich (siehe Befund 2).
- **Die Untergrenze des Korpus ist erreicht:** `rj@` Sent Items enthält **keine Mail vor dem
  04.07.2025** (Abfrage `beforeDateTime: 2025-07-15, order: oldest` → ältester Treffer
  04.07.2025; Abfrage März–April 2025 → 0 Treffer). Das Postfach beginnt dort. Und **Batch 01
  setzt exakt an diesem Datum an** (`2025-07-04 bis 2025-07-08`).
- Die Batch-Kette läuft von dort **lückenlos** bis 2026-07 (Monatsabdeckung im Ingest-Register:
  2025-07 bis 2026-07, ohne Loch). `mail@` ist parallel ab 09.07.2025 abgedeckt (Batch 74 ff.).

**Konsequenz:** Es existiert auf beiden Geschäftspostfächern **kein unerschlossenes Fenster
mehr** — weder vorwärts noch rückwärts. Das ist keine Tagesdiagnose («heute kam nichts»), sondern
eine strukturelle Grenze. Neues Stil-Gold kann ab jetzt nur noch aus (a) neu eintreffenden Mails,
(b) Korrektur-Deltas oder (c) einer bisher unerschlossenen Quelle stammen. Als Frage an Raphael
in `QUESTIONS.md` aufgenommen.

**Methodische Lehre (deckt sich mit Batch 80):** Der Abgleich gegen `raw/_INGESTED.md` gehört
**vor** die Goldbeschaffung, nicht danach. Ich habe hier zuerst Golds gezogen und erst beim
Ehrlichkeits-Check gemerkt, dass sie bereits erfasst waren — vermeidbarer Aufwand.

## Befund 2 — unbeabsichtigter Recall-Test, und er fiel sehr gut aus

Weil ich nicht wusste, dass die gezogenen Mails bereits destilliert waren, entstand ein sauberer
**Recall-Test**: Wie genau rekonstruiert die kompilierte DNA eine Mail, die sie «gelernt» hat?
Die Blindfassungen wurden **vor** der Lektüre fixiert.

**Probe — MWST-Abmeldung/Betreibungslöschung an die ESTV (03.10.2025), rechtsbegründetes Ersuchen
an ein generisches Bundesamt-Postfach.**

| Marker | Blindfassung des Zwillings | Original | Treffer |
|---|---|---|---|
| Anrede | «Sehr geehrte Damen und Herren» | identisch | ja |
| Sprechakt | «… ersuche ich Sie …» | identisch | ja |
| Norm | Art. 10 Abs. 2 lit. a MWSTG | identisch | ja |
| Subsumtion | «In meinem Fall ist diese Voraussetzung erfüllt, da …» | «Diese Voraussetzung ist in meinem Fall erfüllt, da …» | ja (Wortstellung) |
| Antrag + Bestätigung | «Ich bitte Sie um Bestätigung …» | «Ich bitte Sie, die Abmeldung … vorzunehmen und mir eine schriftliche Bestätigung zukommen zu lassen.» | ja |
| Schluss | FG + Block, **ohne** Service-Satz | identisch | ja |
| Tausender-Apostroph | CHF 100'000 | CHF 100'000.– | ja (ohne Strich) |

Zwei echte Abweichungen: der Zwilling gab die Schwelle als «innert eines Jahres» statt korrekt
«**in zwei aufeinanderfolgenden Geschäftsjahren**» wieder (Norm-Inhalt ungenau, obwohl die Norm
richtig zitiert war), und er formulierte die Abmeldung als **Bitte**, während das Original sie als
**Gestaltungserklärung** setzt («Zudem erkläre ich hiermit die Abmeldung …») und nur die
*Vornahme* erbittet. Letzteres ist ein feiner, aber juristisch relevanter Unterschied.

**Probe — Design-/Kostenmail an eine Akquise-Kundin (09.10.2025, warm-sozial branchenfern).** Die
Blindfassung traf «Liebe Lu», «Besten Dank für Deine E-Mail», die direkte Bezifferung ohne
Weichspüler und die Faktoren-Systematik A)/B)/C) (Grösse · Komplexität · Materialeinsatz), den
Planungsaufwand als weitgehend fixen Budgetposten und die ehrliche Unvollständigkeits-Markierung.
Das ist allerdings **kein Verdienst der Generalisierung**: die DNA enthält genau diese Mail bereits
als abstrahierte Regel im Fachsignatur-Do-Block. Der Recall ist hoch, der Test aber nicht blind.

**Wertung:** Diese Zahlen messen **Recall-Fidelity** (reproduziert der Zwilling, was gespeichert
ist?) — nicht **Generalisierungs-Fidelity** (trifft er Unbekanntes?). Sie werden hier bewusst
getrennt ausgewiesen, statt als ein geschöntes Gesamtergebnis. Eine echte Generalisierungs-Messung
ist mangels unerschlossenem Material derzeit **nicht möglich**.

## Scoring

| Facette | Recall | Drift |
|---|---|---|
| Stimme | 90 | Anrede/Gruss/Apostroph über drei Register korrekt abgerufen. Offen bleibt die Nullform (kein Gruss), die die Zwei-Typen-Typologie nicht abdeckt — siehe Facetten-Spannung. |
| Denken | 86 | Konditionale Kette in diesen Proben nicht gefordert; Baseline ohne Gegenbeleg fortgeschrieben. |
| Haltung | 93 | Direkte, ungepolsterte Bezifferung (CHF 60'000.– bis 120'000.–) und satzweise wir/ich-Trennung im Blindversuch korrekt getroffen. |
| Beziehungsregister | 91 | Bundesamt-Sie, warm-sozial «Liebe», Peer-Du sauber getrennt. «Geschätzte Lu» → «Liebe Lu» innert 24 h bestätigt das Nachziehen der Anrede erneut. |
| Fachsignatur | 88 | Norm **zitiert** korrekt, Norm**inhalt** ungenau wiedergegeben (Ein- statt Zweijahresregel) — der Zwilling merkt sich die Fundstelle besser als den Tatbestand. Konkretes Handwerksvokabular bleibt schwächer als die Registerkenntnis. |
| Arbeitsweise | 78 → korrigiert | Unverändert der Formalisierungs-Reflex. Anders als in Lauf k bleibt es diesmal nicht bei der Empfehlung — siehe unten. |

**Recall-Fidelity gesamt: ~88.** Generalisierungs-Fidelity: **nicht messbar** (kein
unerschlossenes Material).

## Umgesetzte Korrektur — Formalisierungs-Reflex (der eigentliche Ertrag dieses Laufs)

Lauf k hatte Arbeitsweise mit 78 unter die Gate-Schwelle 80 gesetzt und eine Do-Block-Ergänzung
**empfohlen, aber nicht vorgenommen**. Mit dem heutigen dritten unabhängigen Beleg ist die
Einzelbeleg-Schwelle überschritten, und die Korrektur ist ausgeführt:

1. Fidelity 260727j (#5): logische statt spontaner Reihenfolge.
2. Fidelity 260727k: Bildregie-Korrektur 01.09.2025 — Urgenz-Titel «Allerletzte Bitte:» statt
   Anrede, Fliesstext statt Nummerierung, komplett grussloser Schluss.
3. **Neu, 260727l:** Zahlungs-/Statusfrage an denselben Freelancer, 15.10.2025 — zwei Fragen
   spontan aneinandergereiht («Frage: … / Zweite Frage: Gel zeitlich …»), Umgangs-Opener «Gel»,
   und ein **nach dem Gruss nachgeschobener Dank** («Lieber Gruss Raphael / Und danke das Du da
   so durchgehalten hast.»).

Änderungen in `wiki/arbeitsweise.md`:
- **Do-Block ergänzt:** im engsten, eingespielten Peer-Du die Rohheit halten — spontane
  Reihenfolge, Fliesstext-Anschluss, Urgenz-Titel statt Anrede, grussloser oder nachgeschobener
  Schluss sind dort **korrekt**.
- **Don't-Block ergänzt:** den Formalisierungs-Reflex nicht ins engste Peer-Du tragen.
- **Neuer Beleg-Abschnitt** «Der Formalisierungs-Reflex des Zwillings — Gegenbeleg-Sammlung» mit
  allen drei Datenpunkten, damit die Regel nachprüfbar bleibt.

Da der Do/Don't-Block verändert wurde, wurde das Gehirn **neu kompiliert** (`build_dna.py`).

## Facetten-Widersprüche

Ein neuer, echter Widerspruch gefunden und in `QUESTIONS.md` vermerkt: Die Gruss-Typologie in
[[stimme]] kennt **zwei** Fälle (operativ → Kurzgruss; dokumentierend → FG + Block). Die in
[[arbeitsweise]] jetzt festgehaltene **Nullform** (gar kein Gruss) und der **Nachsatz hinter dem
Gruss** passen in keinen davon. Die Typologie ist unvollständig, nicht falsch — sie braucht einen
dritten Topf. Nicht eigenmächtig geglättet (Schreibregel: Widersprüche nicht glätten, sondern
vorlegen). Die älteren offenen Spannungen (Nullform-Reichweite, Emoji-Achse) bleiben unverändert.

## Empfehlungen

1. **Taktfrage, dritte Wiederholung — jetzt mit strukturellem statt tagesaktuellem Grund.** Die
   Läufe g/h/i argumentierten mit abnehmendem Grenznutzen, j/k fanden noch Material im
   Rückwärts-Sweep. Dieser Lauf zeigt, dass jener Rückwärts-Vorrat **bereits erschöpft war** und
   der Korpus eine harte Untergrenze hat. Ein dreizehnter Lauf heute kann definitionsgemäss kein
   neues authentisches Material finden. Empfehlung an Raphael: `twin-fidelity-review` auf den
   ursprünglichen Takt (1x/Tag, 05:40) zurückfahren. Das bleibt eine **Beobachtung** — die
   Takt-/Drossel-Entscheidung liegt bei Raphael (Rule `auto-verbesserungen` 260714/260725).
2. **Fokus verschieben: von Sweep auf Korrektur-Delta.** Da der authentische Fundus geschlossen
   ist, ist das **Korrektur-Delta** (Claude-Entwurf → Raphaels Fassung) die einzige verbleibende
   ergiebige Lernquelle. Der `twin-chef` sollte Deltas beim Gate systematisch erfassen; das
   `twin-mail-training` läuft sonst dauerhaft leer.
3. **Norminhalt mitlernen, nicht nur die Fundstelle.** Der Zwilling zitierte die Norm exakt, gab
   ihren Tatbestand aber falsch wieder. Für Rechtstexte gilt: Fundstelle **und** Tatbestand
   verifizieren (deckt sich mit Rule `normen-referenz` / `identifikatoren-verifizieren`).
4. Vier neue Selbstfragen in `QUESTIONS.md` (Runde 260727l): dritter Gruss-Typ, Nachsatz hinter
   dem Gruss, Reichweite von «Gel», und die Frage nach einer bisher unerschlossenen Vor-Claude-
   Quelle.
