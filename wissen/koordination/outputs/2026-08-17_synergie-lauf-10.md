# Synergie-Lauf 10 — 17.08.2026 (Tagestakt)

**Delta-Basis:** 16.08.2026 17:10 (Lauf 09) · **Fenster:** 23,8 Stunden · **113 Commits**
**Modus:** Inline, kein Fan-out · **Ergebnis:** 2 Befunde (1 umgesetzt, 1 vorgelegt)

## Schritt 0 — Uhr und NAS

NAS gemountet. Stationsuhr **17:10 CEST** gegen den nativen Synology-Log
`sync-tasks/log/selfcommit-202608.log`, letzter Eintrag **17:00:05** (`2a06264c`).
Abweichung im Minutenbereich, **kein Drift** — der Lauf verwendet das Stationsdatum.

## Schritt 1 — Delta mit Gegenprobe

| Messung | Wert |
|---|---|
| Commits im Fenster | 113 |
| Neuester Treffer | `2a06264c` (17.08. 17:00) — zugleich tatsaechlicher HEAD |
| Aeltester Treffer | `4192a468` (16.08. 17:15) — schliesst direkt an die Delta-Basis an |

Gegenprobe bestanden: die gefilterte Menge deckt sich oben mit dem HEAD und unten mit der
Delta-Basis, es fehlt kein Rand.

**Strukturelles Delta:** 0 neue Skills, Agenten, Connectoren, Commands, Services oder
Rules. 4 neue Dateien unter `skills/wissens-destillat/training/` (Inventar, Sektionen und
zwei Laufprotokolle des Korpus `buero-projekte`) — Trainingsartefakte, keine Bausteine.
9 geaenderte Bausteine, davon 3 aus den eigenen Schreibvorgaengen von Lauf 09
(`31df12e2`) und deshalb nicht neu aufgerollt.

Der Frueh-Ausstieg nach Schritt 2 griff damit nicht.

## Schritt 3 — Befunde

### SYN-33 (umgesetzt) — die SIA-118-Achse kennt sich nur in eine Richtung

Wissens-Chef Run 34 (`0999939f`, 16.08. 23:30) hat die Achse `normen → Bauleitungs-Skills`
zum wiederholten Mal auf der **Skill-Seite** korrigiert: `offertenpruefung` bekam die
Fristenkorrektur samt `normen-referenz` im Contract, `werkvertrag` und
`unternehmerkontrolle` die Trennung von Rueckbehalt (Art. 149-150) und Solidarbuergschaft
(Art. 181).

Die **Router-Seite** blieb erneut unberuehrt. `skills/normen/SKILL.md` Z. 50-53 fuehrte als
SIA-118-Abnehmer nur `ausschreibung`/`werkvertrag`/`unternehmerkontrolle`. Es fehlten:

- **`kostenkontrolle`** — traegt mit Art. 150/152/153-156/172/177/180/190 plus SIA 416:2003
  die dichteste SIA-118-Strecke aller fuenf Skills (Z. 82-115, 5 Treffer auf `wissen/normen`,
  mehr als jeder andere). Das Destillat `sia-118-1991.md` Z. 148 nennt ihn seinerseits
  namentlich als Abnehmer — die Kante existiert also, aber nur beim Zulieferer.
- **`offertenpruefung`** — seit dem 16.08. mit der Rule im Contract, im Router nicht gefuehrt.

**Der Befund ist aktenkundig, nicht neu entdeckt.** `QUERBEZUEGE.md` Z. 348 notiert ihn seit
Run 33 woertlich: «der Router `skills/normen/SKILL.md` Z. 51 fuehrt ihn nicht in seiner
Abnehmerliste». Run 34 schliesst dieselbe Achse mit «Trefferquote der Achse bisher 4 von 5
Skills» (Z. 211) — die Zahl 5 stammt aus einer Abnehmerliste, die zwei Abnehmer nicht kennt.
**Zwei Laeufe hintereinander wurde auf der Skill-Seite nachgezogen und die Gegenkante
liegen gelassen.**

Zweitens fehlte `normen-referenz` im Contract-Pflichtfeld von `kostenkontrolle` (Z. 13) und
`ausschreibung` (Z. 13); bei den drei Schwesterskills steht sie seit dem 16.08.

**Adversariale Gegenpruefung.** `normen-referenz` ist eine importierte Always-on-Rule — das
fehlende Contract-Feld schaltet sie nicht ab. Der Befund ist deshalb kein Funktionsmangel,
sondern einer der Auffindbarkeit und der Contract-Konsistenz. Er bleibt trotzdem stehen:
Run 34 hat denselben Mangel bei `offertenpruefung` als korrekturwuerdig behandelt, und ein
Router, der seine staerksten Abnehmer nicht kennt, laesst jeden kuenftigen Norm-Lauf die
Stichprobe falsch schneiden. Genau so entstand «4 von 5».

**Umgesetzt** (active-with-flagging): Router-Zeile auf die volle Phasenkette G bis I
erweitert, mit Grund je Skill und Herkunftsvermerk; `normen-referenz` in beide
Contract-Felder gesetzt.

### SYN-34 (vorgelegt) — die geparkte Pruefung, nachgeholt

Run 34 schliesst die Achse mit «**Offen: `ausschreibung`** (402 Zeilen) ueber die
Stichprobe hinaus ungeprueft» (`QUERBEZUEGE.md` Z. 212). Die Pruefung kostete drei Greps.

Zwei Fundstellen in der Wissensbasis, aus der die Devis- und Vertragsbedingungstexte
entstehen:

- `wissensbasis/06_glossar.md` Z. 23 — «Nach SIA 118 i.d.R. 2 Jahre Rügefrist + 5 Jahre
  verdeckte Mängel»
- `wissensbasis/07_werkvertrag-unternehmerkontrolle.md` Z. 13 — «Garantieverfalldaten —
  i.d.R. 2 Jahre Rügefrist, 5 Jahre verdeckte Mängel (SIA 118)»

Beide ohne Ausgabe, ohne Artikel, ohne den Vertragsvorbehalt «nur sofern SIA 118
vereinbart». Zwei Sachprobleme, beide am Destillat belegt:

**(a)** Die 5 Jahre sind die Verjaehrung **aller** Maengelrechte nach Art. 180, bei
absichtlich verschwiegenem Mangel 10 Jahre (`sia-118-1991.md`, `status: established`,
Z. 114). Die Kurzformel bindet die Zahl an den falschen Tatbestand und verschweigt die
10-Jahres-Variante. Das Destillat warnt in Z. 142 ausdruecklich vor genau dieser
Verwechslung — es ist dieselbe Stelle, an der Run 34 `offertenpruefung` korrigiert hat.

**(b) Terminkritisch:** Die Ruegepflicht fuer verdeckte Maengel ist seit dem **01.01.2026**
nicht mehr «sofort», sondern **zwingend 60 Tage ab Entdeckung** (OR-Revision Baumaengel,
nachgefuehrt in `sia-118-c1-2026.md`, `status: established`, refuter-bestanden 07.08.2026,
Art. 179 Abs. 2). Das Destillat haelt fest, dass die Frist zwingendes Gesetzesrecht ist und
vertraglichen Bestimmungen vorgeht, also fuer jeden Neuvertrag ohnehin gilt.

Genau diesen additiven Hinweis hat Run 33 in `skills/werkvertrag/templates/werkvertrag-vorlage.md`
und `skills/unternehmerkontrolle/templates/abnahmeprotokoll.md` gesetzt (`QUERBEZUEGE.md`
Z. 340-345). **`ausschreibung` ist der vorgelagerte Skill** — dort entstehen die Texte, die
spaeter in den Werkvertrag wandern, und er wurde uebersprungen. Die Korrektur laeuft der
Kette rueckwaerts hinterher.

**Nicht selbst gesetzt.** Beide Stellen sind Vertragsbedingungs-Text mit Geld- und
Rechtsfolge, der ueber Devis und LV nach aussen geht. Die Guardrail dieses Skills erlaubt
Querverweise und Contract-Pflichtfelder, keine Fristenaussagen in ausgehenden
Vertragstexten. Praezedenz: Run 34 hat aus demselben Grund einen «teilweise»-Befund an
`ausschreibung` vorgelegt statt gesetzt. Das Contract-Feld ist gesetzt (SYN-33), die
Fundstellenpflicht greift also ab sofort, auch solange der Wortlaut unveraendert ist.

## Geprueft, kein Befund

1. **Die drei am 16.08. korrigierten Skills** sind sachlich am Destillat korrekt:
   Art. 149-150 gegen Art. 181 sauber getrennt, beide Schwellen (Fr. 300'000 / Fr. 200'000)
   richtig zugeordnet, Ausgabe und Statusfeld genannt.
2. **`kostenkontrolle` Z. 82-115** traegt die SIA-118-Strecke inhaltlich vollstaendig und
   korrekt, inklusive der Rechtsfolge des Pruefversaeumnisses (Art. 155 Abs. 2) und des
   Vorrangs anderer Fachverbandsnormen bei der Garantiedauer. Der Mangel lag allein im
   Contract-Feld und in der Router-Gegenkante.
3. **Die vier neuen `buero-projekte`-Dateien** sind beidseitig verdrahtet:
   `KORPUS-QUEUE.md` Z. 15 fuehrt den Korpus mit Status «aktiv» und dem Stand Phase 0.
4. **`rules/anrede-kontakte.md`** (`728e53c6`, Levi Hiltmann, belegt am Kalendereintrag) und
   **`rules/jans-dna-facetten.md`** (`5d6d096b`, Gattungs-Praezisierung des Kurzgrusses) sind
   Registerpflege mit Beleg, keine neue Kante.

Nicht neu aufgerollt (Compounding, kein Beteiligter bewegt): SYN-01 bis SYN-32.
Kein neuer Service-ENTWURF, kein Katalog-Bezug.

## Bewusst nicht als eigener Befund gefuehrt

Der zusammengezogene Kurzschluessel «Rueckbehalt/Garantie 10 %» ueberlebt in
`skills/kostenkontrolle/SKILL.md` Z. 76 und im Arbeitstemplate
`templates/baubuchhaltung.md` Z. 38 — in genau der Formel, die Run 34 in `werkvertrag` und
`unternehmerkontrolle` aufgeloest hat. Im Skill selbst ist sie zwanzig Zeilen weiter unten
(Z. 99-105) korrekt aufgeloest und als «Regelfall, nicht der einzige» markiert; der Punkt
gehoert damit sachlich zu SYN-33 und nicht in eine eigene Zeile.

**Vermerkt fuer den Lauf, der die Bauleitungs-Templates als Ganzes prueft:** die Abhak-Zeile
im Template traegt die Aufloesung nicht mit. Zwischen Fr. 200'000 und Fr. 300'000 divergieren
die beiden Sicherheiten sofort — dort haekelt der Bauleiter «10 %» ab, wo 5 % plus 5 %
gelten.

## Schreib-Kontrolle (Rule `auto-verbesserungen` 260811)

| Datei | numstat | Zeilen vorher/nachher |
|---|---|---|
| `skills/normen/SKILL.md` | 9/1 | 53/61 |
| `skills/kostenkontrolle/SKILL.md` | 1/1 | 130/130 |
| `skills/ausschreibung/SKILL.md` | 1/1 | 402/402 |
| `wissen/koordination/SYNERGIE-REGISTER.md` | 53/0 | 288/341 (32/34 Tabellenzeilen) |

Keine Datei hat Bestand verloren; die drei Loeschungen sind beabsichtigte
Zeilenersetzungen, das Register waechst reines Anhaengen.

**Zwei methodische Nachtraege:**

1. Die drei Skill-Dateien mussten gegen Commit `7ef6c2a6` (17:15) statt gegen den
   Arbeitsbaum gemessen werden — der 15-Minuten-Selfcommit fuhr waehrend des Laufs
   dazwischen, `git diff` zeigte sie deshalb nicht mehr. Ein leeres `diff` ist auch hier
   zuerst eine Aussage ueber den Messzeitpunkt, nicht ueber die Datei.
2. Die zuerst notierten numstat-Werte (11/4 und 35/1) waren **geschaetzt, nicht gemessen**,
   und wurden nachgezogen. Derselbe Fehlertyp, den Lauf 09 an dieser Stelle schon einmal
   korrigieren musste — und genau der, den dieser Skill prueft.

## Beobachtung zum Muster

Beide Befunde dieses Laufs sind **dieselbe Figur wie in Lauf 09**: eine Selbstkorrektur des
Hub, die nur an einem Teil der zustaendigen Stellen ankommt. Neu ist die Richtung. In
Lauf 09 fehlte die Regel bei einem parallelen Pruefer; hier fehlt sie einmal beim
**Zulieferer** (Router kennt seine Abnehmer nicht) und einmal am **vorgelagerten Ende der
Kette** (korrigiert wurde in Phase G bis I, die Formel steht in der Ausschreibung davor).

Der wiederkehrende Zug: **die Korrektur folgt dem Ort, an dem der Fehler auffiel, nicht dem
Ort, an dem er entsteht.** Beide Male hatte der ausloesende Lauf den offenen Rest sogar
korrekt notiert — Run 33 die Router-Zeile, Run 34 den ungeprueften `ausschreibung` — und
beide Male blieb die Notiz im abgebenden Register liegen. Das ist genau das in `QUERBEZUEGE`
als «Uebergabe verpufft im abgebenden KB» gefuehrte Struktur-Muster (NEU Run 8), hier zum
ersten Mal zwischen **Skill und Router** statt zwischen zwei KBs.
