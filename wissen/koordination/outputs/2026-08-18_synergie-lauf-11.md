---
titel: Synergie-Lauf 11 (Tagestakt)
datum: 2026-08-18
delta_basis: 2026-08-17 17:10
fenster: 23,8 Stunden · 112 Commits
neue_befunde: SYN-35
status: abgeschlossen
---

# Synergie-Lauf 11 — 18.08.2026

## Schritt 0 — Uhr und NAS

NAS gemountet. Stationsuhr **2026-08-18 17:10 CEST**, jüngster nativer Synology-Eintrag
**2026-08-18T17:00:08** (`sync-tasks/log/selfcommit-202608.log`, Commit `8d2d2013`).
Abweichung rund zehn Minuten, also der reguläre Abstand zum 15-Minuten-Selfcommit. Uhr-Check
bestanden, Lauf mit dem realen Datum durchgeführt.

## Schritt 1 — Delta mit Gegenprobe

Delta-Basis laut Fussnote Lauf 10: **17.08.2026 17:10**. Im Fenster **112 Commits**.

Gegenprobe bestanden: der neueste Treffer der gefilterten Abfrage (`8d2d2013`) ist zugleich
der tatsächliche HEAD, der älteste (`7ef6c2a6`, 17.08. 17:15) schliesst direkt an die
Delta-Basis an. Keine Uhr-Schieflage, kein Werkzeug-Artefakt.

Strukturelles Delta:

- **0 neue** Skills, Agenten, Connectoren, Commands, Services, Rules
- **8 geänderte** Bausteine
- 3 neue Dateien ausserhalb `wissen/` (`logbuch/arbeits-weiche/260818-entscheide.jsonl`,
  `logbuch/konversationen/260818-konversationen.md`, `tenant-hygiene/reports/260817-hygiene.md`)
  — Journale und ein Report, keine Bausteine
- KB-Aktivität: `twin` 20, `baurecht` 13, `normen` 7, `koordination` 7,
  `entwurfs-referenzen` 7, `energie` 7, weitere kleiner

Der Frühausstieg nach Schritt 2 greift nicht (acht geänderte Bausteine).

Zuordnung der acht geänderten Bausteine auf ihre Urheber:

| Commit | Zeit | Urheber | Bausteine |
|---|---|---|---|
| `7ef6c2a6` | 17.08. 17:15 | **Lauf 10 selbst** | `normen`, `ausschreibung`, `kostenkontrolle` |
| `f3a2f1ad` | 17.08. 23:39 | wissens-chef Run 35 | `kostenkontrolle`, `kostenschaetzung`, `honorarberechnung-sia102` |
| `15f9749c` | 18.08. 02:45 | (Sammelcommit) | `agents/energie-berater.md`, `agents/geodaten-beschaffer.md` |
| `42ced312` | 18.08. 05:57 | twin-fidelity-review | `rules/jans-dna-facetten.md` |

Die drei Bausteine aus `7ef6c2a6` sind die eigenen Schreibvorgänge des Vorlaufs und wurden
nicht neu aufgerollt.

## Schritt 3 — Prüfung

### Befund SYN-35 — der Zulieferer nennt vier Abnehmer, verankert wurden drei

Wissens-Chef Run 35 hat aus zwei neuen Fällen der KB `projekt-lessons` Führungszeilen in drei
Skills gesetzt (`f3a2f1ad`, +21 Zeilen über drei Dateien). Die Rückkanten-Prüfung nach
Schritt 3.2 zeigt: beide Artikel führen im Frontmatter-Feld `skills:` je **drei** Abnehmer.

- `nerves-2015-kv-nebengewerke-unterschaetzt.md` Z. 12 → `[kostenschaetzung, ausschreibung, kostenkontrolle]`
- `lorrainestrasse-2011-realisierungsphase-honorar-unpreist.md` Z. 12 → `[honorarberechnung-sia102, ausschreibung]`

`skills/ausschreibung/SKILL.md` hatte **0 Treffer** auf `projekt-lessons`. Die halbe Kante,
die nur der Zulieferer kennt — derselbe Typ wie SYN-10, SYN-14, SYN-16, SYN-20.

**Adversariale Gegenprüfung.** Zwei Fragen: trägt die Lehre für diesen Skill sachlich, und
steht sie nicht längst woanders?

Für den **nerves**-Fall: ja, sie trägt. Der Artikel endet mit einer Handlungsanweisung, die
keine Schätzungs-, sondern eine Ausschreibungs-Handlung ist — «wo möglich frühzeitig eine
indikative Marktofferte einholen» (Z. 63-64). Der Skill `ausschreibung` kannte den Begriff
«Richtofferte» bislang nur als Ordnernamen in der Ablagestruktur (Z. 359), nicht als
Anweisung. Die Führungszeile in `kostenschaetzung` deckt die Nachbarhandlung ab («höher
zuschlagen»), nicht diese.

Für den **lorrainestrasse**-Fall: nein, sie trägt nicht. Dort ist «Ausschreibung» lediglich
die SIA-102-Phasenbezeichnung innerhalb eines Honorarfalls; die Lehre («keine Phase ohne
Preis oder Preismechanismus») gehört allein zu `honorarberechnung-sia102` und ist dort seit
Run 35 verankert. Die Nennung im Feld `skills:` ist hier nominell.

Daraus die Differenzierung, die in den Registereintrag eingegangen ist: **eine Nennung im
Feld `skills:` ist ein Hinweis, kein Beleg für eine tragende Kante.** Mechanisch alle
genannten Abnehmer zu verdrahten hätte hier eine Kante erzeugt, die niemand braucht.

**Umgesetzt** (active-with-flagging): Verweis in der Inputs-Zeile von `ausschreibung`
ergänzt, mit dem `status: emerging`-Vorbehalt und der ausdrücklichen Warnung, dass der im
Artikel genannte Zuschlagsfaktor kein Kennwert ist — gleiche Vorsichtsformel, die Run 35
selbst in `kostenschaetzung` gesetzt hat.

### Nebenbefund, im Lauf behoben — tote SYN-ID im eigenen Vorlauf

`skills/ausschreibung/SKILL.md` Z. 13 verwies auf «den offenen Punkt zur Wissensbasis in
**SYN-35**». Diese ID existierte im Register nicht (0 Treffer, höchste vergebene ID war
SYN-34). Gemeint war **SYN-34**, der von Lauf 10 selbst angelegte Eintrag zur
`ausschreibung`-Wissensbasis. Ein toter Verweis, gesetzt vom eigenen Vorlauf; korrigiert.

Die Reihenfolge war Absicht: erst den Fehlverweis heilen, dann die neue ID vergeben. Hätte
dieser Lauf zuerst SYN-35 angelegt, wäre aus dem toten Verweis ein **falscher** geworden —
einer, der auf den Nachbarbefund zeigt und deshalb bei keiner künftigen Prüfung mehr
auffällt. **Lehre: eine SYN-ID nie in einem Baustein zitieren, bevor die Registerzeile
geschrieben ist.**

### Geprüft, kein Befund

**(1) Rückkanten der drei verankerten Skills.** Sauber beidseitig. Beide Artikel nennen die
Skills sowohl im Feld `skills:` als auch im eigenen Abschnitt «Wo diese Lehre gelandet ist»
(nerves Z. 69-71, lorrainestrasse Z. 67-69); die drei Skills nennen den jeweiligen Artikel
mit vollem Pfad und `status: emerging`-Vorbehalt. Die Lücke lag allein beim vierten Abnehmer.

**(2) Frontmatter-Bereinigung an zwei Agenten** (`15f9749c`): `agents/energie-berater.md` und
`agents/geodaten-beschaffer.md` haben je die Zeile `tools: All tools` verloren. Die Prüfung
auf eine Kappung von Fähigkeiten fällt negativ aus, es ist eine korrekte Bereinigung: der
Wert war tautologisch, und nach der Änderung trägt **kein** Agent mehr `All tools`
(0 Treffer im ganzen Verzeichnis). Die 14 Agenten, die ein `tools:`-Feld führen, tragen
durchgehend echte Einschränkungen als mehrzeilige YAML-Liste — `layout` und `rechtschreibung`
(`Read, Write, Edit, Grep, Glob`), die acht `twin-*` (`twin-chef` zusätzlich mit `Bash, Agent`),
die drei `linkedin-*` und `website-content`. Die Konvention ist nach der Änderung
konsistenter als vorher, nicht lückenhafter.

**(3) `rules/jans-dna-facetten.md`** (`42ced312`, +38 Zeilen). Die Datei ist **generiert**
(`kompiliert_von: skills/twin/tools/build_dna.py`, Kopfzeile «Nicht von Hand editieren»), der
naheliegende Verdacht war also ein Handedit am Kompilat. Widerlegt: derselbe Commit ändert
alle sechs Quell-Artikel unter `wissen/twin/wiki/` (stimme, denken, haltung,
beziehungsregister, fachsignatur, arbeitsweise) und hebt in `build_dna.py` die Schwelle
`MAX_AUTO_BYTES` von 30'000 auf 34'000 B an. Der Kompilierweg wurde eingehalten; der Riegel
wurde bewusst entschieden und begründet
(`wissen/twin/outputs/2026-08-18_fidelity.md` Z. 270 ff.).

### Nicht aufgerollt

SYN-01 bis SYN-34 (Compounding — kein Beteiligter hat sich im Fenster bewegt). Kein neuer
Service-ENTWURF, kein Bezug zum Service-Katalog.

## Schritt 4 — Schreib-Kontrolle

Nach Rule `auto-verbesserungen` 260811, alle Werte mit `git diff --numstat` gemessen:

| Datei | numstat | Zeilen vorher/nachher | Bemerkung |
|---|---|---|---|
| `skills/ausschreibung/SKILL.md` | **2/2** | 402/402 | zwei beabsichtigte Zeilenersetzungen (Z. 11 KB-Verweis, Z. 13 Fehlverweis) |
| `wissen/koordination/SYNERGIE-REGISTER.md` | **53/0** | 346/399 | reines Anhängen, **null Löschungen**; 34/35 Tabellenzeilen |

Keine Datei hat Bestand verloren. Der Registerwert wurde nach dem Anhängen der Fussnote
nachgemessen und einmal korrigiert — zuerst notiert war die Zwischenmessung nach der
SYN-Zeile allein (+1/0), die die eigene Fussnote noch nicht enthielt. Beide Läufe zuvor
mussten an genau dieser Stelle nachbessern, weil die Werte geschätzt statt gemessen waren;
hier war der Wert gemessen, aber zu früh.
