---
title: "Synergie-Lauf 06 (13.08.2026) — Verifikations- und Ablage-Vorbehalte, die nur ihr Erzeuger kennt"
status: established
last_updated: 2026-08-13
sources:
  - "git log 13.08.2026 01:35 bis 17:00, 80 Commits, HEAD d6b59600"
  - "wissen/koordination/SYNERGIE-REGISTER.md (SYN-24 bis SYN-26)"
links: [[SYNERGIE-REGISTER]]
---

# Synergie-Lauf 06 — 13.08.2026

Zweiter Lauf im neuen Tagestakt. Delta-Basis 13.08.2026 01:35 (Ende Lauf 05), Fenster
15,5 Stunden, 80 Commits.

## Schritt 0 — Uhr und NAS

NAS gemountet. Stationsuhr `2026-08-13 17:10 CEST` gegen den nativen Synology-Log
`sync-tasks/log/selfcommit-202608.log`, letzter Eintrag `2026-08-13T17:00:06 push OK
(d6b59600)`. Abweichung im Minutenbereich, **Uhr-Check bestanden** — die Schieflage aus
Chronik 260813e bleibt behoben, Commit-Daten sind belastbar.

## Schritt 1 — Delta, mit Gegenprobe

80 Commits im Fenster. Gegenprobe bestanden: der neueste Commit im gefilterten Ergebnis
ist `d6b59600` und damit HEAD. NAS-Repo und SSD-Klon stehen auf demselben Stand, deshalb
liefen alle Git-Lesevorgaenge auf dem Klon statt ueber SMB.

Strukturelles Delta:

- **Neue Bausteine: 0** (`--diff-filter=A` ueber `skills/ agents/ rules/ connectors/
  services/ commands/` liefert nichts).
- **Geaenderte Bausteine: 5** — `skills/ausschreibung/SKILL.md` (`2b6177dc`),
  `skills/pdf2dwg/SKILL.md` (`675657b0`), `rules/auto-verbesserungen.md` (`2641d5ad`),
  `rules/jans-dna-facetten.md` (`6c207435`), `CLAUDE.md` (`b1782600`).
- **KB-Bewegung:** normen 37, twin 14, wettbewerbs-dna 13, bauprodukte 5, koordination 3,
  energie 3, claude-code 3, grobkosten 2. `wissen/claude-code` ist **nicht** neu
  (erste Dateien 01.08.2026), also keine neue KB.

Der Frueh-Ausstieg aus Schritt 2 griff nicht: geaenderte Skills und Rules liegen vor.

**Messhinweis, in diesem Fenster erneut bestaetigt:** die Commit-Messages passen nicht zu
den geaenderten Dateien, weil `nas-selfcommit` laufende Fremdarbeit unter eigener Message
erfasst (Chronik 260813d). Alle fuenf Bausteine wurden ueber `git show <hash> -- <pfad>`
am Inhalt zugeordnet, nie ueber die Message.

## Schritt 3 — Befunde

### SYN-24 — Der Verifikationsstatus der Destillate erreicht einen von elf Abnehmern

Das ist der Hauptbefund des Laufs, und er entstand aus der Bewegung im Fenster selbst.

Rule `normen-referenz.md` ist importiert und damit in jeder Session aktiv. Sie nennt in
Z. 21–23 elf Fach-Skills und schickt sie in die Normen-KB, «Register + Destillate». Ueber
den **Verifikationsstatus** dieser Destillate sagt sie nichts: 0 Treffer auf `status`,
`speculative`, `established`.

Die KB fuehrt den Status sehr wohl. `wiki/INDEX.md` hat eine Status-Spalte, und von 368
Destillaten stehen rund 35 auf `speculative`. Gemessen ueber alle elf adressierten Skills:

| Skill | Treffer Status-Vorbehalt | Treffer «Destillat» |
|---|---|---|
| `ausschreibung` | 4 | 4 |
| die uebrigen zehn | je 0 | je 0 |

Die zehn kennen den Begriff «Destillat» also gar nicht — sie erreichen die KB
ausschliesslich ueber die Rule. Das ist der Grund, warum die Reparatur in die Rule gehoert
und nicht in zehn Skills.

**Der Anlass ist kein Gedankenspiel, er liegt in diesem Fenster.** `normen` Run 48
destillierte zu SIA 118/262 Ziff. 8.4.2.2 die Bedeutungsumkehr «beim Betonbau gar nicht
inbegriffen». Wissens-Chef Run 29 verdrahtete sie um 01:13 in `ausschreibung`. `normen`
Run 49 widerlegte sie um 01:43 am Original-PDF. Run 30 zog den Abnehmer um 02:10 nach
(Commit `2b6177dc`) und schrieb dabei den Status-Vorbehalt in den Skill. Die Kette hat
funktioniert — aber nur fuer den einen Abnehmer, der zufaellig verdrahtet war. Waere der
Wert in einem Werkvertrag statt in einem LV gelandet, haette ihn niemand nachgezogen.

**Zweite Haelfte, dasselbe Muster.** Die Warnkarte
`wiki/abb-reihe-verguetungs-und-ausmassgrenzen.md` traegt `status: speculative` und
bezeichnet sich selbst ausdruecklich als «keine Zitierquelle». Sie benennt drei
Konsumenten. Gemessen:

| Skill | Treffer `abb-reihe` | Treffer `wissen/normen` |
|---|---|---|
| `ausschreibung` | 1 | 2 |
| `werkvertrag` | 0 | 0 |
| `unternehmerkontrolle` | 0 | 0 |

`skills/normen/SKILL.md` Z. 50 fuehrt alle drei umgekehrt als Abnehmer. Das ist das
SYN-10-Muster in Reinform: eine Kante, die nur der Zulieferer kennt — hier doppelt.

**Umgesetzt in diesem Lauf** (active-with-flagging):

- Punkt **1b** in `rules/normen-referenz.md`: nur `established` ist ohne Gegenlesen
  zitierfaehig; `speculative` ist ein Entwurf und wird am Original nachgelesen; ein
  ⚠-Kernbefund-Marker sperrt die Angabe ganz; ein Wiki-Artikel auf `speculative` ist
  Warnkarte, nicht Zitierquelle. Bewusst als Unterpunkt 1b statt als neue Nummer —
  Gegenprobe: kein Verweis im Hub zielt auf Punktnummern dieser Rule, ein Umnummerieren
  waere trotzdem unnoetiges Risiko gewesen.
- Rueckkanten in `werkvertrag` und `unternehmerkontrolle`: Warnkarten-Zeiger mit dem
  Vermerk «kein Zitat, nur Wegweiser», und `normen-referenz` in den Pflichtfeldern
  «Abhaengige Rules», wo es bei beiden fehlte.

**Adversariale Gegenpruefung.** Zwei Argumente sprechen gegen den Befund, beide halten
nicht: (i) Das Anwachsen einer importierten Rule ist per Rule 260719 begruendungspflichtig.
Es sind 9 Zeilen Grundkontext gegen elf Abnehmer — die Alternative, elf Skill-Edits,
kostet beim Laden dasselbe und divergiert mit der Zeit. (ii) `wissen/WISSEN-CLAUDE.md`
Z. 47 und 58–59 definiert die Status-Stufen bereits. Das ist aber die Bibliothekar-Seite,
also die Schreibregel fuer den, der einen Artikel anlegt; kein Fach-Skill liest sie beim
Zitieren.

**Offen (c):** nichts hindert einen kuenftigen Lauf daran, erneut einen
`speculative`-Wert in einen Fach-Skill zu verdrahten — genau das geschah heute um 01:13,
und die Lese-Disziplin einer Rule ist eine schwaechere Sicherung als ein Check. Ein
mechanischer Abgleich «Skill zitiert Norm-Wert, Destillat steht auf `speculative`» waere
der dauerhafte Schutz. Nicht in diesem Lauf gebaut: das ist ein Werkzeug, kein
Querverweis, und es beruehrt die Zitierdisziplin geldnaher Erzeugnisse.

### SYN-25 — pdf2dwg-Sackgassen nicht im Wege-Register

Commit `675657b0` trug den Fall Schmidlin in `skills/pdf2dwg/SKILL.md` ein: Fremd-DXF nach
DWG ueber ezdxf-Abflachung, dazu zwei belegte Sackgassen (LibreDWGs DXF-Reader scheitert an
SPLINE/HATCH mit `READ ERROR 0x800`; ein 3DSOLID/ACIS uebersteht die Konvertierung nicht)
und eine Verifikations-Falle (`dwg2SVG` zeigt fuer korrekte DWGs 1e20-Koordinaten, ein
Render-Bug, kein Datenfehler).

`connectors/WEGE.md` hatte dazu 0 Treffer auf `pdf2dwg`, `libredwg`, `dxf`, `dwg`,
`ezdxf`. Rule `wege-und-vollmachten` Punkt 4 verlangt aber die Eintragung jeder gelaufenen
Sackgasse, und die Faehigkeits-Matrix fuehrt bereits Nicht-M365-Zeilen (Git auf dem NAS,
Mac-App-Store-Updates) — das Register ist also nicht auf externe Zugaenge beschraenkt.

**Umgesetzt:** eine Matrix-Zeile «CAD: Vektor-PDF oder Fremd-DXF nach DWG» plus ein
Kurzhinweis auf die drei Fallen, der ausdruecklich auf `skills/pdf2dwg/SKILL.md` als
fuehrende Fassung zeigt. Der technische Block wurde **nicht** kopiert: zwei Fassungen
desselben Wissens divergieren, und die Sackgassen gehoeren dorthin, wo sie gepflegt werden.

### SYN-26 — Ablage-Spiegelung 260813 ohne Gegenkante

`rules/auto-verbesserungen.md`, Eintrag 260813 (Commit `2641d5ad`, Freigabe Raphael),
schreibt fuer 2619 KISPI die zweifache Ablage fest und verallgemeinert sie ausdruecklich:
in geteilte, fuer Dritte zugaengliche Projektbibliotheken gehoeren nie MD-Quell- oder
Arbeitsdateien. Der Eintrag endet mit «ergaenzt Rule `projekt-ablage-stand.md`». Dort stand
davon nichts.

Verschaerfend: derselbe Abschnitt in `projekt-ablage-stand.md` (Z. 49–52) regelt
Plattform-Downloads als **exakten** Spiegel der Quelle. Ohne Querverweis liest sich
«Spiegel» im selben Abschnitt gegenlaeufig zur neuen, bewusst reduzierten Spiegelung.

**Umgesetzt:** Aufzaehlungspunkt mit expliziter Abgrenzung der beiden Spiegel-Arten.
Wortlaut und Pfade bleiben in `auto-verbesserungen.md`, hier nur Zeiger und Abgrenzung —
`projekt-ablage-stand.md` ist die importierte Rule und muss fuer sich allein lesbar sein.

## Geprueft, kein Befund

- **`rules/jans-dna-facetten.md`** (`6c207435`, 16 Zeilen zu 12): Verdichtung plus zwei
  neue Marker (Register-Bindung der Traktandenliste, Breadcrumb-Ablageverweise). Der dabei
  entfallene `[[stimme]]`-Backlink ist kein Bruch — die Datei ist kein Wiki-Artikel, und
  das Twin-Wiki fuehrt die Facette unveraendert.
- **`CLAUDE.md`** (`b1782600`): zieht nur den Befund des `methoden-radar` nach, dass die
  drei Rollen-Scripts nie im heartbeat hingen. Reine Praezisierung.

Nicht neu aufgerollt (Compounding, kein Beteiligter bewegt): SYN-01 bis SYN-23, ausser wo
oben genannt.

## Schreib-Kontrolle

Nach Rule `auto-verbesserungen` 260811, `git diff --numstat` auf dem NAS-Repo:

```
8  0  connectors/WEGE.md
9  0  rules/normen-referenz.md
7  0  rules/projekt-ablage-stand.md
2  1  skills/unternehmerkontrolle/SKILL.md
2  1  skills/werkvertrag/SKILL.md
```

Die beiden Einer-Loeschungen sind die beabsichtigten Zeilenersetzungen in den zwei
Contract-Bloecken (die Zeile «Abhaengige Rules» wurde um `normen-referenz` erweitert).
Keine Datei hat Bestand verloren; kein globales Suchen-und-Ersetzen eingesetzt. Vor den
Edits gegen Parallelarbeit geprueft: keine der fuenf Zieldateien war seit dem 12.08.
angefasst worden.

## Kein Service-Bezug

Kein neuer Service-ENTWURF, kein Katalog-Bezug. `services/KATALOG.md` blieb unberuehrt
(Leitplanke: Raphaels Produkttext).
