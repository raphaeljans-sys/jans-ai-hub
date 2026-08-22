# Synergie-Lauf 15 — 22.08.2026 (Tagestakt)

**Delta-Basis:** 21.08.2026 17:10 (Lauf 14) · **Fenster:** 24,0 Stunden · **105 Commits**
**Laufzeit:** 17:10–17:35 · **Modus:** inline, kein Fan-out (Tagestakt)

## Schritt 0 — Uhr und NAS

NAS gemountet. Stationsuhr `2026-08-22 17:10 CEST`; juengster nativer Synology-Push laut
`sync-tasks/log/selfcommit-202608.log`: `11a6af91` um `2026-08-22T17:00:06`. Abweichung im
Minutenbereich — kein Umdatieren, keine Chronik-Zeile noetig.

## Schritt 1 — Delta mit Gegenprobe

| Messung | Wert |
|---|---|
| Commits im Fenster | 105 |
| HEAD (SSD-Klon) | `11a6af91`, 22.08. 17:00:02 |
| aeltester Treffer im Fenster | `fbc5511f`, 21.08. 17:15:01 |
| neue Skills/Agenten/Connectoren/Commands/Services/Rules | **0** |
| geaenderte Struktur-Dateien | **8** (davon 2 eigene Edits aus Lauf 14) |

Gegenprobe bestanden: HEAD des Klons ist identisch mit dem juengsten Synology-Push, und der
aelteste Treffer schliesst lueckenlos an die Delta-Basis an. Kein Uhr-Verdacht.

KB-Bewegung (ohne neue Bausteine): `twin` 19 · `normen` 17 · `energie` 12 ·
`planungsgrundlagen` 6 · `koordination` 6 · `immobilienbewertung` 2 · `claude-code` 2 ·
`architekten-synobsis` 2. `wissen/claude-code/` ist **keine** neue KB (angelegt `fe6f1150`,
29.07.2026) — gepruefte Verdachtsstelle, entkraeftet.

Schritt 2 (Frueh-Ausstieg) griff nicht: sechs echte Struktur-Aenderungen im Fenster.

## Schritt 3 — Pruefung der sechs echten Aenderungen

| Datei | Commit | numstat | Ergebnis |
|---|---|---|---|
| `skills/brandschutz/SKILL.md` | `69027822` | 25/0 | **Befund SYN-41 + SYN-42** |
| `skills/wettbewerb/SKILL.md` | `66bcbd21` | 8/0 | Kante beidseitig — kein Befund |
| `skills/kostenschaetzung/SKILL.md` | `66bcbd21` | 8/1 | Kante beidseitig — kein Befund |
| `skills/unternehmerkontrolle/SKILL.md` | `14bd91de` | 1/1 | Ziel existiert, Konvention geprueft — kein Befund |
| `rules/anrede-kontakte.md` | `66bcbd21` | 17/1 | Entscheid Raphael ausstehend — bewusst nicht verdrahtet |
| `rules/jans-dna-facetten.md` | `aa2e8ef5` | 12/13 | Kompilierweg, 5. Mal in Folge — kein Befund |

### Befund SYN-41 (Typ 1, Ketten-Luecke)

Der Normen-Lauf 59 destillierte am 22.08.2026 fuenf VKF-Fassungs-Deltas (`d4f0e294`,
`69027822`). `skills/brandschutz/SKILL.md` wurde im selben Commit `69027822` nachgezogen.
`wissen/normen/wiki/synthese-sia-vkf-fachskills.md` — der Artikel, der **zwischen** Destillat
und Fach-Skills sitzt und nach Ueberschrift ausdruecklich nach Skills gegliedert ist — wurde im
ganzen Fenster **null Mal** angefasst und steht auf `last_updated: 2026-07-17`.

Zwei Stellen sind konkret beruehrt:

1. **Z. 269-271** klassifiziert geringe/mittlere Hoehe/Hochhaus ueber die **Gesamthoehe**.
   Deren Messweise am Flachdach hat mit der Fassung 01.01.2019 gewechselt: neu ab Dachflaeche
   ueber dem **tiefstgelegenen** massgebenden Terrain statt ab Dachrand. Die Schwellenwerte
   (11 m / 30 m) bleiben, die Bezugsebene nicht — die Einstufung kann kippen.
2. **Z. 331** gewaehrt die Fluchtweg-Erleichterung «bei ueberhohen Raeumen … bis 50 m».
   Dieselbe Fassung hat das Flaechenkriterium > 4'800 m² fuer «ueberhohe Raeume» **gestrichen**;
   es genuegt Raumhoehe > 6.0 m. Die Erleichterung erfasst damit ein Vielfaches an Raeumen.

Verschaerfend: der Artikel traegt `status: established` und ist damit nach Rule
`normen-referenz` Ziff. 1b ohne Gegenlesen zitierfaehig. Er wird ueber
`wissen/koordination/QUERBEZUEGE.md` und zwei normen-Wiki-Artikel referenziert.

**Adversariale Gegenpruefung.** Der Einwand, der Artikel sei als 2015-Korpus-Schnappschuss
gemeint, traegt nicht: er fuehrt bereits vier eigene Fassungs-Annotationen inline (Z. 303, 316,
323, 329, 332) und wurde laut `wissen/normen/CHANGELOG.md` Z. 3763 bei einer frueheren
Fassungsaenderung (Personenbelegung Verkauf, Stand 01.12.2022) genau so nachgefuehrt.
Nachfuehren ist die Konvention dieses Artikels, nicht die Ausnahme.

**Gesetzt:** Fassungs-Vorbehalt am Anfang von Abschnitt 4 (16 Zeilen), der die fuenf
Delta-Destillate namentlich nennt, beide Stellen benennt und festhaelt, dass der
`status: established` sie **nicht** ohne Gegenlesen zitierfaehig macht. **Bewusst nicht
gesetzt:** eine Korrektur der Tabellenwerte — die verlangt das Original-PDF und ist Arbeit der
KB `normen` (Run 59 fuehrt sie unter «18 der 23 bleiben offen»), nicht eines Aufsichtslaufs.

### Befund SYN-42 (Typ 6, Redundanz/Konsistenz)

`wissen/normen/wiki/REGISTER.md` Z. 37 fuehrte die fuenf Deltas mit dem Status «offen — die
Abnehmer-Skills sind noch nicht nachgezogen (v.a. `brandschutz`: QSS-Tabelle, Gesamthoehe,
BFS-Pruefintervalle)». Gegenprobe am Commit-Inhalt: `git show 69027822 --name-only` enthaelt
**sowohl** die REGISTER-Datei **als auch** `skills/brandschutz/SKILL.md` mit genau diesen drei
Punkten. Der Zulieferer meldete eine Bringschuld als offen, die er im selben Zug erfuellte.

Kein Vorwurf an den Lauf: ein Selfcommit buendelt 15 Minuten Dateiarbeit, die Reihenfolge
innerhalb des Bundles ist nicht sichtbar. Genau deshalb gehoert der Status am **Ende** des Laufs
gegen den eigenen Arbeitsstand geprueft. **Gesetzt:** Statuszelle korrigiert auf «teilweise
erledigt» mit Commit-Hash und dem real verbliebenen Rest (dem Synthese-Artikel aus SYN-41).

## Verworfene Kandidaten (adversarial gegengeprueft)

| Kandidat | Warum kein Befund |
|---|---|
| `skills/massgebendes-terrain` nennt «Gesamthoehe» | Z. 108-110 fuehrt die Gesamthoehe nach **§ 281 nPBG** — anderes Rechtsregime als die VKF-Gesamthoehe. Gleiches Wort, andere Norm. |
| `skills/auflagebereinigung` nennt «QSS» | Der KB-Artikel haelt QSS 3 als **projektbezogenen** Befund aus dem Bauentscheid 2619 KISPI fest, behauptet keine allgemeine Schwelle, und fuehrt die Uebereinstimmungserklaerung bereits als «QS-unterzeichnet» — deckungsgleich mit dem Delta. |
| Delta-Destillate nennen `brandschutz` nicht zurueck | Gemessen: nur **3 von 376** normen- und **5 von 325** energie-Destillaten tragen ueberhaupt einen Abnehmer-Vermerk. Die Rueckkante liegt in dieser Architektur im REGISTER, nicht im Destillat. Ein Befund hier waere Konventionsbruch, nicht Synergie. |
| 4'800-m²-Treffer ausserhalb `brandschutz` | Zur Haelfte die **Parking-Brandabschnittsflaeche** (BRL 15-15 Ziff. 3.7.11), nicht das gestrichene Kriterium fuer ueberhohe Raeume. Nur der Fluchtweg-Treffer Z. 331 traegt. |
| `rules/anrede-kontakte.md` Nivellier-Klausel | Ausdruecklich «Entscheid Raphael ausstehend». Einen unbestaetigten Hinweis in einen ausfuehrenden Agenten zu schreiben, wuerde ihn zur Regel machen, bevor Raphael entschieden hat. Wieder aufzurollen nach `wissen/twin/wiki/QUESTIONS.md` 260821 #1. |

## Schreib-Kontrolle (Rule `auto-verbesserungen` 260811)

| Datei | numstat | Zeilen vorher/nachher |
|---|---|---|
| `wissen/normen/wiki/synthese-sia-vkf-fachskills.md` | **16/0** | 549 / 565 |
| `wissen/normen/wiki/REGISTER.md` | **1/1** | 741 / 741 |
| `wissen/koordination/SYNERGIE-REGISTER.md` | **74/0** | 565 / 567 (+ Fussnote); Tabellenzeilen 40 / 42 |

Kein globales Suchen-und-Ersetzen: der Synthese-Einsatz lief ueber einen eindeutigen Anker mit
vorheriger Trefferzahl-Pruefung (`count == 1`), die REGISTER-Korrektur zeilenindiziert mit
assertiertem Praefix und Suffix. Keine Datei hat Zeilen verloren.

## Leitplanken eingehalten

Inline, kein Fan-out. Nur beobachtet und vorgeschlagen; die beiden Eingriffe sind Querverweis
bzw. Statuskorrektur (active-with-flagging). Kein Skill geloescht oder gemergt, `services/
KATALOG.md` nicht angefasst, kein Service-ENTWURF. Keine Mail — stiller Lauf.
