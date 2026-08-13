---
title: Fidelity-Review 2026-08-13 (Lauf 2) — Der Echo-Grep muss aufs Element zielen, nicht auf die Mail
status: final
last_updated: 2026-08-13
gewichtung: authentisch
sources: [rj@ Sent Items 29.05.2026 10:01 «WG: KISPI PPTS: Pendenzen Brandschutz», 29.05.2026 14:16 «LOS 258.06 Küche Vergleich», 29.05.2026 11:41 «AW: Lenggstrasse 30 … Dachterrasse», Kontrollmail 28.05.2026 13:47 «WG: Angebot KD18611 …», ../wiki/stimme.md, ../wiki/denken.md, ../wiki/haltung.md, ../wiki/beziehungsregister.md, ../wiki/fachsignatur.md, ../wiki/arbeitsweise.md, ../wiki/QUESTIONS.md, ../CLAUDE.md, ../outputs/2026-08-13_fidelity.md, rules/jans-dna.md]
links: [[stimme]], [[denken]], [[haltung]], [[beziehungsregister]], [[fachsignatur]], [[arbeitsweise]], [[QUESTIONS]]
---

# Fidelity-Review 2026-08-13, Lauf 2 (05:45 CEST)

**Zweiter Lauf desselben Tages.** Der reguläre Cron (`40 5 * * *`) feuerte, nachdem um 01:28 bereits
ein vollständiger Fidelity-Lauf und danach Batch 92 (twin-mail-training) durchgelaufen waren. Um
keine Messwiederholung zu erzeugen, wurde ein **frisches, nicht überlapptes Fenster** gezogen:
`rj@` **28.05.–05.06.2026** (82 Sent Items). Batch 92 endete am 27.05., der 01:28-Lauf arbeitete auf
14.–19.05. Es gibt keine Schnittmenge mit beiden.

**Gesamt-Fidelity 41** (Vorläufe 42 / 40 / 41 / 43 / 48 / 46). Der Wert bestätigt den 01:28-Lauf aus
unabhängigem Material — zwei disjunkte Fenster, derselbe Pegel. Das ist die belastbarste Aussage
dieses Laufs: der Stand ist gemessen, nicht gefenstert.

Der methodische Befund wiegt schwerer als der Score:

- **Der mechanische Echo-Grep hätte heute eine echte Goldprobe vernichtet.** Gold A trägt
  `background-color:rgb(253,253,252)` — aber nur in **zwei `<li>`-Elementen** innerhalb einer sonst
  durchgehend nativ getippten Mail. Die Regel von heute früh liest die drei Muster als **harte
  Ausschlüsse der Mail**; richtig ist der Ausschluss **des Elements**.
- **Eine Facetten-Regel deckt den vorliegenden Fall nicht ab und hat den Zwilling in die Irre
  geführt** ([[arbeitsweise]] 146–147): «an einen schon im Verfahren engagierten Fachplaner bleiben
  mehrere Sequenzfragen unnummerierter Fliesstext». Gold A richtet sich an genau so einen
  Fachplaner und trägt **A)/B) mit fetten Titeln**. Die Regel gilt Fragen, nicht Traktanden — der
  Zwilling hat die Lücke als Erlaubnis gelesen und die Agenda in Prosa aufgelöst.

| Facette | Score | Kern der Drift |
|---|---|---|
| Beziehungsregister | **65** | Anrede-Wahl trifft; Zeilenform der gestapelten Anrede erneut verfehlt |
| Stimme | **55** | FG+Block dreimal richtig — die 260813-Korrektur trägt |
| Denken | **35** | rechnet nicht; erfindet Traktanden, statt die Kolonne zu stellen |
| Fachsignatur | **32** | erfundene Traktandeninhalte, keine Dateinamen/Belegnummern |
| Arbeitsweise | **30** | Traktandenraster verfehlt, SharePoint-Breadcrumb unbekannt, Schluss verlängert |
| Haltung | **28** | verschenkt die Leistung nicht — der teuerste Einzelfehler des Laufs |

Je Gold: A 43 · B 35 · C 38.

## Materialwahl und Echtheitsprüfung

| | Gold | Gattung |
|---|---|---|
| **A** | 29.05. 10:01 «WG: KISPI PPTS: Pendenzen Brandschutz» | gestapelt Sie+Du an 4 Empfänger, Sitzungsanstoss mit Traktanden |
| **B** | 29.05. 14:16 «LOS 258.06 Küche Vergleich» | Du-Sammel an Bauherrschaft, rechnende Entscheidvorlage |
| **C** | 29.05. 11:41 «AW: … Dachterrasse» an den Betriebsleiter | warmes Du, Dreizeiler-Reply |
| *Kontrolle* | 28.05. 13:47 «WG: Angebot KD18611 …» an den Fachplaner | Sie, Einzelbitte — **nicht** als Gold verwendet |

Alle drei Golds sind **vor der Verwendung gegreppt** worden (`body.content`, nicht `bodyPreview`),
gemäss der heute früh eingeführten Tabelle. Kein `Anthropic Sans`, kein `class="text-body"`.

## Befund 1 — Der Grep trifft, aber er trifft ein Element, nicht die Mail

Gold A enthält an genau einer Stelle fremdes CSS:

```html
<ul style="… list-style-type:disc;background-color:rgb(253,253,252)">
  <li style="font-family:Aptos;font-size:12pt;color:rgb(10,10,10)">Alle Türspezifikationen …</li>
  <li style="font-family:Aptos;font-size:12pt;color:rgb(10,10,10)">Break-Out- / Swing-Out-Funktion …</li>
</ul>
```

Jeder andere Absatz derselben Mail trägt `font-family:Aptos,Arial,Helvetica,sans-serif` und
`color:rgb(0,0,0)` — die native Outlook-Signatur. Die beiden `<li>` tragen zusätzlich
`color:rgb(10,10,10)`, das im gesamten übrigen Bestand dieser Mail nicht vorkommt.

**Drei unabhängige Linien bestätigen, dass die Mail gemischt und nicht ganz Echo ist:**

1. **Die Kontrollmail** vom Vortag (28.05. 13:47, gleiches Projekt, gleiche Gattung, gleicher
   Fachplanerkreis) ist durchgehend nativ: kein `rgb(253,253,252)`, kein `rgb(10,10,10)`.
2. **Die Handsignatur steht im nativen Teil, nicht im `<li>`.** Beide Mails tragen denselben
   charakteristischen Tippfehler — Gold A «Darf ich Euch **B**itten die dafür nötigen Fachplaner
   …», Kontrolle «Darf ich **s**ie **B**itten die kG Zahl der Türen …»: kleingeschriebenes Pronomen,
   grossgeschriebenes «Bitten» mitten im Satz. Dazu in Gold A «eine Sitzung auf nächste Woch**en**
   zu planen» und die Abkürzung «ua.». Die beiden `<li>` sind fehlerfrei.
3. **Die Fehlerdichte ist umgekehrt verteilt** wie in der vierten Falle (Fachplaner sauber,
   Raphael roh) — hier ist der eingefügte Fremdteil der saubere.

Damit ist dies die **dritte Konfiguration** derselben Familie, nach der sechsten Falle (Mail ganz
Claude) und der siebten (Claude-Grundtext, Raphael tippt «`- `»-Einschübe hinein): **Raphaels
Grundtext mit einem eingesetzten Claude-Fragment.** Die Konsequenz ist keine neue Falle, sondern
eine Verschärfung der Lesart: der Grep ist ein **Lokalisator**, kein Mail-Urteil. Hätte er heute als
harter Mail-Ausschluss gewirkt, wäre eine Goldprobe mit sechs belegbaren Markern verloren gegangen
— darunter der dritte unabhängige Beleg für die FG+Block-Korrektur von heute früh.

`color:rgb(10,10,10)` wird **nicht** als viertes hartes Muster in die Tabelle aufgenommen. Es liegt
bisher genau ein Beleg vor, und die Disziplin nach dem Guillemet-Fall (03.08.) und dem
«du klein»-Fall (07.08.) verlangt eine Gegenprobe gegen die eigene Hand, bevor ein Signal
aufgenommen wird, das echtes Gold abwerten kann. Es ist als Kandidat in [[QUESTIONS]] vermerkt.

## Befund 2 — Die Traktandenliste trägt A)/B), auch an den engagierten Fachplaner

Gold A, an den QS-verantwortlichen Brandschutzplaner (seit dem Vortag in derselben
Fachplanersitzung) und den Bauherrn:

```
Geschätzter Herr Ziegel,
werter Albin

Darf ich Euch bitten eine Sitzung auf nächste Wochen zu planen mit folgendem Traktandum:

A) Türmodelle
   • …
   • …

B) Brandfallsteuerungsmatrix
Brandfallmatrix Akutspital_240927_V36.0_as_built.pdf
```

[[arbeitsweise]] führt «A) B) C)» seit heute früh, aber gebunden an den **unbekannten/fernen
Erstkontakt**, und stellt dem den engagierten Fachplaner mit **unnummeriertem Fliesstext**
gegenüber. Gold A ist der Gegenfall — allerdings **kein sauberer Widerspruch**: die Regel spricht
von *Sequenzfragen*, Gold A stellt eine *Traktandenliste*. Die Regel wird deshalb **erweitert, nicht
umgeworfen**: die Bindung ans Register gilt Fragen; die Traktanden-/Agendaliste trägt A)/B)
unabhängig von der Vertrautheit, mit fettem Titel je Traktandum und Unterpunkten darunter.

Der Zwilling hat die Lücke als Erlaubnis gelesen und die ganze Agenda in einen Prosasatz aufgelöst
(«Zu besprechen sind die Türmodelle …, die Brandlastberechnung und der Stand der
Fachstellenauflagen»). Zwei Folgefehler daraus:

- **Erfundene Traktanden.** «Brandlastberechnung» und «Stand der Fachstellenauflagen» stehen
  nirgends; Gold nennt «Brandfallsteuerungsmatrix» mit dem Dateinamen der Version
  (`…_V36.0_as_built.pdf`). Das ist der Don't «Inhalte erfinden, um eine Mail zu füllen» aus
  [[fachsignatur]], dritter belegter Vorfall nach 260804 und 260805.
- **Die Verweisform fehlt vollständig.** Gold legt den SharePoint-Pfad als **Breadcrumb Zeile für
  Zeile** offen und setzt den Link erst darunter:

  ```
  JANS - 2619-KISPI - Dokumente
  2 Plangrundlagen Bestand
  70 Unternehmerdokumentation
  LOS_231.10 IBN Türen System Gesamt TeKoSi AG
  03_Anlage- und Funktionsbeschriebe

  Hier der Link:
  [03_Anlage- und Funktionsbeschriebe]
  ```

  Der Empfänger soll den Ort **finden können**, nicht nur den Link klicken. Diese Form ist in
  keiner Facette verzeichnet und wird neu in [[arbeitsweise]] aufgenommen.

## Befund 3 — Die Entscheidvorlage rechnet und schweigt (Gold B)

```
Feststellungen:
_ Schreinerküche und Metallküche bewegen sich preislich im etwa gleichen Niveau.
_ Das Mittel der Angebote ist 68'500.- exkl. MWST.

Wenn zum Mittel der Angebot noch Planungskosten von CHF 5000.- hinzugerechnet werden
ergibt dies ein mittleres Angebot von 73'500.-.

CHF 73'444.00     GLAESER, Schreinerküche
CHF 72'400.00     Gastro Online, Metallküche
CHF 64'470.00     RAMETALL, Metallküche
CHF 63742.00      RÖTHLISBERGER, Schreinerküche

Besten Dank für Eurer Entscheid.
```

Bestätigt gleich vier Marker in einer Mail: «Feststellungen:» + «_ »-Liste, das Rechnen statt
Behaupten (Mittel → Zuschlag Planungskosten → korrigiertes Mittel), die **absteigend sortierte
Anbieterkolonne** und vor allem den Kern aus [[haltung]] — **er nennt keinen Favoriten**. Er
liefert die Rechnung, stellt die Kolonne und übergibt: «Besten Dank für Eurer Entscheid.» Kein Fazit,
keine Empfehlung, obwohl beides Anlass für Honorar wäre.

Der Zwilling hätte an dieser Stelle eine Empfehlung angehängt. Das ist die seit 260730/260731
geführte Schluss-Verlängerung, hier in ihrer teuersten Variante: nicht ein überflüssiger Satz,
sondern die **Übernahme einer Entscheidung, die dem Bauherrn gehört**.

Nebenbefund zur Echtheit: die Zahlen sind typografisch uneinheitlich (`68'500` mit typografischem
Apostroph, `72'400.00` mit geradem, `63742.00` ganz ohne Trennzeichen) und «Eurer Entscheid» ist
grammatisch falsch. Beides ist Handsignatur, kein Mangel — und der Zwilling darf es **nicht
glattziehen**, wenn er ein Gold rekonstruiert.

## Befund 4 — Die Haltung ist der grösste Abstand (Gold C)

```
Lieber Timo

Freut mich von Dir zu hören. Solltest Du eine Grobkostenschätzung benötigen lass es mich wissen.
Das würde ich für Euch kostenlos machen.

Ich  wünsche Dir schöne Sommertage.

Freundliche Grüsse
[voller Block]
```

Der Anlass ist eine reine Höflichkeitsmeldung des Gegenübers («Wir sind gerade mit der GL dabei zu
entscheiden … dann gehen wir weiter»). Raphael antwortet mit einem **unaufgeforderten Angebot,
Arbeit zu verschenken**. Die Twin-Fassung fragte stattdessen zurück, ob sich der Empfänger nach dem
GL-Entscheid melden möge — also genau die Umkehrung: die Bringschuld wandert zum Gegenüber statt
zum Absender.

Das ist kein Ton-, sondern ein Haltungsfehler, und er ist der wiederkehrendste im ganzen Harness:
[[haltung]] führt «im Zweifel für den ehrlichen Rat, auch gegen das eigene Honorar» als erste
Do-Regel, und der Zwilling wendet sie nur an, wenn eine Kostenfrage bereits im Raum steht. Gold C
zeigt, dass Raphael die Leistung **anbietet, bevor jemand fragt** — die warme Rahmung ist nicht
Dekoration, sondern der Träger des Angebots.

Bestätigt nebenbei zum dritten Mal an diesem Tag die FG+Block-Korrektur: ein Dreizeiler im warmen Du
trägt den vollen Block.

## Kontamination — ehrlich ausgewiesen

Die Twin-Fassungen wurden aus den Facetten allein fixiert, bevor die Golds gelesen wurden. Die
Suchtreffer liefern aber je eine `summary` von rund 40 Wörtern, und die enthält **Anrede und
Eröffnungssatz**. Für Gold B umfasste die Vorschau die Anrede, den Anhangssatz, «Feststellungen:»
und zwei «_ »-Zeilen — also praktisch die halbe Mail.

Konsequenz für die Bewertung: **Gold B wurde nur auf dem Teil nach dem Vorschau-Schnitt gescort**
(Planungskosten-Rechnung, Anbieterkolonne, Übergabesatz), und dort fällt es auf 35. Die scheinbar
perfekte Trefferquote der ersten Zeilen ist **kein** Fidelity-Signal. Bei A und C betraf die
Vorschau nur die Anrede; deren Beitrag zum Beziehungsregister-Score ist entsprechend abgewertet.

Das ist eine Schwäche der Messmethode, nicht dieses Laufs — sie bestand in allen bisherigen
Fidelity-Läufen und ist bisher nirgends vermerkt. Sie gehört in die Methodik: **wer blind messen
will, darf die `summary` nicht lesen, bevor die Twin-Fassung steht.** Praktikabler Weg: die
Kandidaten allein über `subject` + `toRecipients` + `hasAttachments` + Thread-Position auswählen und
die Suchausgabe erst nach dem Fixieren der Twin-Fassung im Volltext öffnen.

## Widersprüche zwischen den Facetten

**Der Service-Satz widerspricht der Gattungs-Regel — zweimal im selben Thread.** [[stimme]] bindet
den Service-Satz an die Gattung: «wer für sich selbst etwas erbittet, hält den Kanal offen; wer
liefert oder meldet, hört nach dem letzten Sachsatz auf.» Der Brandschutz-Thread zeigt beides
umgekehrt:

| Mail | Gattung | Service-Satz |
|---|---|---|
| 28.05. 10:03 an Ziegel allein (Cc Albin) | **Liefermail** («sende ich Ihnen unsere lokalen Pendenzen … zur Prüfung») | **ja** — «Bei Fragen oder Unklarheiten stehe ich Ihnen jederzeit gerne zur Verfügung.» |
| 29.05. 10:01 an vier Empfänger | **Bittmail** («Darf ich Euch bitten eine Sitzung … zu planen») | **nein** |

Nach der Regel müsste es genau andersherum sein. Die naheliegende Auflösung ist nicht die Gattung,
sondern der **Adressatenkreis**: die Sie-Mail an den Einzeladressaten hält den Kanal offen, die
gestapelte Sammelmail an vier Empfänger tut es nicht — ein Service-Satz an ein Verteilerfeld
adressiert niemanden. Das ist eine These, kein Befund; sie ist in [[QUESTIONS]] als Frage 1
hinterlegt und **nicht** ins Gehirn eingearbeitet. Die Facette bleibt unverändert, der Widerspruch
steht angeschrieben — nach der Regel «Widersprüche nicht glätten».

Die übrigen fünf Facetten wurden gegeneinander geprüft; über die in [[QUESTIONS]] bereits geführten
Spannungen hinaus (Gruss-Spiegelung, Satzlängen-Vorfilter) sind keine neuen aufgetreten.

## Was geändert wurde

| Datei | Änderung |
|---|---|
| `CLAUDE.md` | Sechste Falle präzisiert: die drei Muster sind **Element**-Ausschlüsse, kein Mail-Urteil; Mischfall als dritte Konfiguration dokumentiert |
| `wiki/arbeitsweise.md` | Traktanden-/Agendaliste trägt A)/B) unabhängig vom Register; SharePoint-Breadcrumb als neue Verweisform |
| `wiki/QUESTIONS.md` | 5 neue Fragen (Service-Satz-Achse, `rgb(10,10,10)`, Breadcrumb-Reichweite, unaufgefordertes Verschenken, blinde Messmethode) |
| `rules/jans-dna.md` | neu kompiliert |

## Empfehlung für den nächsten Lauf

1. **Blind messen.** Die `summary` erst nach dem Fixieren der Twin-Fassung lesen (siehe
   Kontaminations-Abschnitt). Ohne diesen Schritt sind alle Anreden- und Eröffnungs-Scores der
   bisherigen Messreihe nach oben verzerrt — auch die der Vorläufe.
2. **Fenster 30.05.–05.06.2026** sequenziell weiterziehen; die Offertanfragen vom 01.06. (Feldmann,
   zueri-bau, Albertstrasse) sind ein dichtes Testfeld für den Element-Grep, weil sie strukturell
   nach Claude-Vorlage aussehen und trotzdem eine Du-Anrede tragen («Hoi Mario»).
3. **Den Element-Grep rückwirkend anwenden.** Batch 90/91 entstanden vor dem mechanischen Grep
   (offener Kehrschluss aus Batch 92); jetzt kommt hinzu, dass auch Batch 92 selbst noch mit der
   Mail-Ausschluss-Lesart gearbeitet hat. Zu prüfen ist, ob dort Mails **ganz** verworfen wurden,
   die nur in einem Element fremd sind.
