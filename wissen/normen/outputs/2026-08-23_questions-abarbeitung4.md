# QUESTIONS-Abarbeitung, vierter Lauf (23.08.2026)

**Auftrag Raphael:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je
Aussage (Norm, Ausgabe, Ziffer), Verifikationsstatus des Destillats vor Zitat lesen. Vorlauf
gelesen: `CHANGELOG.md` (damaliger Kopfeintrag «Cross-KB-Nachtrag aus `energie`») und
`outputs/2026-08-23_questions-abarbeitung3.md` (letzter Lauf desselben Tages).

## Ausgangslage

Der Vorlauf hatte am selben Tag bereits drei Läufe gefahren und alle günstig abschliessbaren
Punkte bis auf einen Rest (Kalk-Nachfolgenorm) geschlossen. Ausdrücklich als
Entscheid-/Freigabepunkte markiert und deshalb erneut nicht angefasst: die drei
N-SIASWEEP-Fragen (Bring-Schuld Raphael, Kauf nötig), N60-1 (Destillat-Duplikat, destruktiver
Merge), N60-2 (Methodik-Pflicht-Vorschlag, Freigabe nötig), das BRL-13-15-Duplikat (dieselbe
Entscheidklasse wie N60-1), die NIN-Frage (kostenpflichtiger Zugang, bereits zweimal
ergebnislos recherchiert).

Ein Durchgang durch ältere Run-Abschnitte (Run 57-59) fand drei weitere, selbständig
bearbeitbare Punkte.

## 1. N59-4 — Zwischenausgaben 40-15/108-15 — TEILWEISE GESCHLOSSEN

Die Frage vermutete unveröffentlichte Zwischenausgaben zwischen den destillierten Fassungen
und ging davon aus, dass kein Archivzugang existiert.

- Per `curl -sL -A "Mozilla/5.0" https://www.bsvonline.ch/de/brandschutzvorschriften/archiv-bsv-2015`
  (derselbe Astro-JSON-Payload-Zugang, der N58-3 geschlossen hat) einen Archivzugang
  gefunden, der die Annahme «kein Archivzugang bekannt» widerlegt.
- Für **BRL 108-15**: genau ein archiviertes Dokument gelistet, wörtlicher Titel «108-15
  Gewährleistung der Betriebsbereitschaft von Brandfallsteuerungen (BFS) (gültig bis
  31.12.2019)» (`BSPUB-1394520214-3144.pdf`), neben dem aktuellen Dokument (`…-837.pdf`) und
  einem FAQ-Eintrag (`…-1255.pdf`). Damit ist primärquellenfest belegt: die Fassung
  01.01.2015 war lückenlos bis 31.12.2019 gültig, 01.01.2020 folgte nahtlos — **keine
  unveröffentlichte Zwischenausgabe** zwischen 2015 und 2020.
- Nachtrag in `destillate/vkf-brl-108-15-betriebsbereitschaft-bfs.md` (Frontmatter
  `gueltigkeit`, `last_updated` auf 2026-08-23).
- **Für 40-15** zeigte dieselbe Archivseite **keinen** zusätzlichen «gültig bis»-Eintrag (nur
  zwei Treffer, beide das aktuelle Dokument «40-15 Weitere Bestimmungen»). Die Frage bleibt
  für 40-15 offen — eine Abwesenheit auf dieser einen Archivseite beweist keine Abwesenheit
  von Zwischenausgaben, da unklar ist, ob das Archiv jeden Schritt oder nur den letzten vor
  der aktuellen BSV-2015-Ära führt.
- Der ursprünglich engere Teilschritt 2020 → 2022 bei 108-15 (unrevidierter Wortlaut vor der
  Ziff.-5.3-Korrektur) bleibt ebenfalls offen: dafür existiert auf der Archivseite kein
  eigenes «gültig bis»-Dokument.
- `QUESTIONS.md`, Eintrag N59-4, mit Schliessungsbox versehen (Ursprungstext bleibt stehen,
  rein additiv).

## 2. N58-5 — weitere Fach-Skills mit VKF-Nummern — GESCHLOSSEN

Die Restfrage aus dem 20.08.2026 korrigierten `skills/brandschutz/SKILL.md`-Fehler («ob
weitere Fach-Skills VKF-Nummern oder -Fassungen führen — nicht geprüft»).

- Grep über `skills/`, `agents/`, `commands/` (Muster BSR/BRL/VKF gefolgt von zwei- bis
  vierstelliger Nummer plus «-15») ausserhalb von `skills/brandschutz/`: **0 Treffer**.
- Ein breiterer Grep (`[0-9]{2,4}-15`) fand vier Zufallstreffer (Prozentangaben in
  `offertenpruefung/SKILL.md`, Dateinamen-Fragmente in `wissens-destillat/training/
  buero-projekte-inventar.md`) — geprüft, kein VKF-Bezug.
- `QUESTIONS.md`, Eintrag N58-5, mit Schliessungsbox versehen.

## 3. Zwei dokumentierte Sackgassen (kein Fund, aber protokolliert)

**N53-3-Rest (Kalk-Nachfolgenorm zu SIA 215:1978):** der im Vorlauf vorgeschlagene nächste
Schritt («SN EN 459-1 auf shop.sia.ch direkt suchen») wurde ausgeführt —
`https://shop.sia.ch/normenwerk/ingenieur/sn%20en%20459-1/d/D/Product` liefert 404. SN EN
459-1 ist eine CEN/SNV-Norm, keine SIA-Publikation, und über das SIA-Shop-URL-Muster nicht
erreichbar. Echte Sackgasse für diesen Weg.

**N58-2-Rest (zweite unabhängige Quelle für das Rückzugsdatum 31.08.2025 von BRL 103-15):**
zwei naheliegende Seiten geprüft (`bsvonline.ch/de/aktuell/stp-feusuisse-2025`,
`feusuisse.ch/stand-der-technik-papiere`) — keine nennt das Rückzugsdatum. Bleibt wie bisher
nachrangig offen (die bestehende Primärquelle, die VKF-Newsseite, nennt Rückzug samt Grund;
nur die zweite unabhängige Bestätigung fehlt weiterhin).

Beide Punkte in `QUESTIONS.md` mit einem Vermerk versehen, damit ein künftiger Lauf dieselben
zwei Wege nicht wiederholt.

## Verifikation

Nach jedem Schreibvorgang `git diff --numstat -- wissen/normen/` geprüft:
`destillate/vkf-brl-108-15-betriebsbereitschaft-bfs.md` 2/2 (gezielte Feldersetzung
`gueltigkeit` + `last_updated`), `wiki/QUESTIONS.md` additiv (vier Schliessungs-/
Sackgassen-Boxen ergänzt, kein bestehender Fragetext verändert oder gelöscht),
`CHANGELOG.md` 44/0. Keine fremde Zeile verändert oder gelöscht.

## Nicht geleistet / offene Bring-Schulden

- 40-15-Zwischenausgaben weiterhin ungeklärt.
- Der isolierte Teilschritt 2020 → 2022 bei 108-15 weiterhin ungeklärt.
- Kalk-Nachfolgenorm zu SIA 215:1978 weiterhin nicht identifiziert (jetzt zwei ergebnislose
  Wege dokumentiert).
- Zweite unabhängige Quelle für das BRL-103-15-Rückzugsdatum weiterhin nicht gefunden.
- Kein Normtext gekauft. Die drei N-SIASWEEP-Fragen, N60-1, N60-2, BRL-13-15-Duplikat und die
  NIN-Frage unverändert offen — bewusst nicht erneut angefasst (Entscheid-/Freigabepunkte).
