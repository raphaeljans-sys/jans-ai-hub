# Fidelity-Review 2026-07-14d (twin-chef)

## Ausgangslage

Vierter Lauf des Tages (VOLLGAS-Loop, aber Task selbst als "gedrosselt, 1x taeglich"
gekennzeichnet — dieser Lauf haelt sich deshalb bewusst knapp statt einen weiteren
Gross-Sweep zu fahren). M365-MCP war in dieser Session nicht erreichbar (`npx m365`
nicht installiert); Fallback auf Apple Mail via `osascript` (Exchange-Konto rj@,
Mailbox "Gesendete Elemente", deutsche Lokalisierung).

Gepullt: der komplette Faden **Stefan Tschopp** (privater Bauherr, Aufstockung/
Umgebungsplan, Du-Register), 11.05.–04.06.2026 — genau das Zeitfenster, das Lauf
2026-07-14c als naechste Luecke empfohlen hatte (zwischen Sequential-Sweep-Ende
20.05. und den frisch gefundenen Golds vom 05./22.06.). Ein Teil dieses Fadens
(bis 27.05., Index 389-360) wurde bereits vom parallel laufenden `twin-mail-training`
Batch 46 erfasst (Baurecht-Kurzformel «baugesetzlich maximal machbar ohne
Näherbaurecht» ist dort bereits notiert) — dieser Lauf nutzt den VOLLEN Faden inkl.
der neuen 04.06.-Mail als eigenstaendige Fidelity-Goldprobe mit Fokus auf
Anrede-/Register-Dynamik INNERHALB eines einzelnen, laengst eingespielten Fadens.

**Echo-Falle-Check:** sauber. Handgetippte Umgangssprache/Tippfehler durchgehend
("Ho Raphel", "zurückurufen", "Sonntig", "aktualisiert", knappe Satzfragmente) —
kein Claude-Grundtext, keine polierte Struktur.

## Goldprobe: Faden Stefan Tschopp (Du, privater Bauherr, 5 Mails im Faden)

| Datum | Anrede | Inhalt | Gruss |
|---|---|---|---|
| 11.05. | Hoi Stefan | Plan-Versand, 2 offene Freigabepunkte | Freundliche Grüsse + Block |
| 22.05. | **Geschätzter Stefan** | baurechtlich verbindliches Ergebnis (Vordach-Position "ohne Näherbaurecht") | Freundliche Grüsse + Block |
| 24.05. | (kein Anrede-Header, Reply) | Ultrakurz: "Ja, Ich ruf Dich Montag an." | Kein Gruss, nur "Raphael" |
| 27.05. | Hoi Stefan | Plan-Update (finale Ansichten) | Freundliche Grüsse + Block |
| 04.06. | Hoi Stefan | Plan-Update (finaler Umgebungsplan), Delegations-Frage an Bauherr | Freundliche Grüsse + Block |

## Blind erzeugte Twin-Fassung vs. Gold (Scoring)

Vor dem Lesen der Anrede-Verteilung haette der Twin (nur nach Wiki-Regelstand vor
diesem Lauf) durchgehend "Hoi Stefan" erwartet — die "Respektvoll-Du"-Regel
("Vergabe, Vertrag, bedeutsame Entscheide") war zwar vorhanden, aber ohne den
"faellt sofort wieder zurueck"-Zusatz; ein naiver Twin haette riskiert, nach einer
gewichtigen Mail dauerhaft auf "Geschätzter" zu wechseln (Register-Klebrigkeit).

| Facette | Score | Befund |
|---|---|---|
| Beziehungsregister | 90 (vorher waere ~72 gewesen) | **Hauptbefund dieses Laufs:** "Geschätzter" ist ein Inhalts-Spike, kein dauerhafter Registerwechsel — zweiter unabhaengiger Beleg neben Batch 07 (Christoph-Offerte). Beantwortet offene Frage 260714c #2 (David-Fall) mit hoher Sicherheit. |
| Stimme | 88 | Ultrakurzer Reply ohne Gruss (nur Name) bestaetigt bereits gut belegtes Muster (stimme.md Z.285-292). Neu: englischer Idiom-Einschub "as you wish" mitten im deutschen Fachsatz — nur 1 Beleg, als Frage erfasst statt generalisiert. |
| Denken/Arbeitsweise | 85 | Direkte Delegations-Formel "Du musst mir einfach sagen was ich zeichnen soll" bei einer rein gestalterischen (nicht baurechtlichen) Detailfrage — neuer, aber einzelner Beleg fuer "delegiert statt selbst Varianten vorzurechnen, wenn die Frage Geschmackssache ist". Als Frage erfasst. |
| Fachsignatur | 95 | Bestaetigt bereits erfasste Baurecht-Kurzformel ("baugesetzlich maximal machbar ohne Näherbaurecht", Ergebnis statt Herleitung) — Cross-Validierung mit Batch 46 sauber, keine Widersprueche. |
| Haltung | 87 | "as you wish" + aktive Entscheidungsfreiheit einraeumen passt zur bekannten Nicht-vereinnahmenden Haltung; kein neuer Befund ueber die zwei o.g. Fragen hinaus. |

**Gesamt-Fidelity dieses Laufs: ~89.** Der wesentliche Wert liegt nicht in einem
neuen Marker, sondern im **Schliessen einer Regelluecke** (Register-Klebrigkeit
von "Geschätzter"), die den Twin sonst bei einer Folgemail nach einem gewichtigen
Ergebnis systematisch falsch (zu foermlich) haette antworten lassen.

## Facetten-Gegenvalidierung

Keine neuen Widersprueche zwischen den sechs Artikeln. Der neue Beziehungsregister-
Fund steht im Einklang mit der bereits bestehenden "Anrede-Warming"-Logik (dort
monotones Warmwerden ueber Zeit; hier zusaetzlich: kurzzeitiger Spike nach oben bei
Einzelmails mit hohem inhaltlichem Gewicht, danach Ruecksprung) — beide Mechanismen
koexistieren, kein Widerspruch.

## Vorgenommene Aenderungen

- `wiki/beziehungsregister.md`: neuer Absatz "«Geschätzter» als Inhalts-Spike, NICHT
  als dauerhafte Stufe" unter der Anrede-Warming-Sektion, mit Quellenverweis; Frontmatter
  (`sources`) ergaenzt.
- `wiki/QUESTIONS.md`: Frage 260714c #2 als **BEANTWORTET** markiert (mit Beleg-Zusammenfassung);
  neue Runde 260714d mit 2 frischen Fragen (englischer Idiom-Einschub, Delegations-Formel bei
  Geschmacksfragen) angehaengt.
- `build_dna.py` erneut ausgefuehrt: der Do/Don't-Block von beziehungsregister.md wurde NICHT
  veraendert (der neue Absatz ist ein Beleg-Detail, keine neue Verhaltensregel — die bestehende
  DNA-Kurzform "Register aus Kontakt UND Anlass waehlen" deckt den Spike bereits ab); Ergebnis
  idempotent, keine inhaltliche Aenderung an `rules/jans-dna.md`.
- Dieser Report.

## Empfehlungen

1. Die neu geschlossene Regelluecke (Register-Spike statt Klebrigkeit) sollte bei der naechsten
   Gelegenheit auch am David-Fall (260714c #2, Freund-Du) nochmals gegengeprueft werden, sobald
   eine Folgemail an David nach der Kaufpreisempfehlung vorliegt (wuerde die Hypothese ein drittes
   Mal bestaetigen).
2. Naechster sinnvoller Sequential-Sweep-Abschnitt bleibt weiterhin Anfang-Mitte Juni 2026
   (06.–21.06., die verbleibende Luecke zwischen den in 14c gefundenen Einzelbelegen).
3. Diese KB-Runde war bewusst kurz gehalten (VOLLGAS-Drosselungsnotiz 260713: Fokus liegt auf
   dem Wettbewerbs-DNA-Harness). Naechster `twin-fidelity-review`-Lauf regulaer erst wieder
   morgen 05:40, ausser ein weiterer Ad-hoc-Trigger verlangt es.
