# Wissens-Health-Check: bauprodukte — 2026-09-01

Phase 1 (Audit + Report), keine Aktionen ausgeführt. Vorheriger Health-Check:
`outputs/2026-08-03_health-check.md`. In der Zwischenzeit sind Wissens-Chef-Läufe 40, 41
und 46 sowie mehrere Output-Reports (Ausgussbecken, Wandmischer, Wandmischer-CAD) hinzugekommen.

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprüche | 0 |
| B Kaputte Backlinks/Orphans | 2 |
| C Unbelegte Claims / BKP-Codes | 0 |
| D RAW-Coverage-Lücken | 0 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstösse | 3 |
| G Promotion-Kandidaten | 1 |

## Top-3 (Raphaels Aufmerksamkeit)

1. **`wiki/kevi-buerodrehstuhl.md` verlinkt fälschlich auf `[[REGISTER]]`** — das Ziel liegt in
   einer fremden KB (`wissen/normen/wiki/REGISTER.md`) und hat mit einem Bürostuhl nichts zu
   tun. Alle 16 übrigen Artikel verlinken korrekt auf `[[INDEX]]`. Der mechanische Prüfer
   `wiki-konsistenz.sh` meldet das nicht als Fehler, weil der Dateiname `REGISTER.md`
   irgendwo im Wissens-Layer real existiert — technisch löst der Link auf, semantisch ist er falsch.
2. **Zwei Möbel-Artikel tragen `status: established` mit nur einer einzigen Quelle**
   (`ch24-wishbone-chair.md`, `matrah-moll-naturmatratze.md`) — das verletzt die KB-eigene
   Schreibregel 6 («established erst bei unabhängiger Zweitbelegung»).
3. **`wiki/cheminee-aufbau-hafnerarbeiten.md` hat ein stehen gebliebenes `last_updated`-Datum**
   (2026-08-01), obwohl der Artikel am 24.08.2026 (Wissens-Chef Run 41) inhaltlich um einen
   ganzen Abschnitt (Fassungs-/Norm-Kante zu `wissen/normen`) erweitert wurde.

## Details je Audit

### A. Widersprüche

Keine gefunden. Die 17 Artikel decken grösstenteils disjunkte Gewerke/Produktgattungen ab
(ein Artikel je Sache, wie im KB-`CLAUDE.md` vorgesehen); wo zwei Artikel dasselbe BKP-Feld
teilen (z. B. `bkp-281-estrich-systeme` und `terrazzo-kunststein-bodenbelaege`, beide BKP 281),
behandeln sie unterschiedliche Bauteile (Unterlagsboden/Estrich vs. Nutzbelag Terrazzo/Kunststein)
ohne widersprüchliche Aussage. Die in `QUESTIONS.md` bereits geführten Spannungen (VKF-BRL
23-15-Fassungsvorbehalt bei `bkp-261-aufzuege`, Kabinenbreite AS-Aufzüge) sind unverändert offen
geführt, nicht neu und nicht widersprüchlich zueinander — sie sind Prüfaufträge, keine
Gegenaussagen zweier Artikel.

### B. Kaputte Backlinks & Orphans

1. **Vom zentralen Vorlauf gemeldeter «toter Backlink» in `erco-lichtplanung-glossar.md` —
   verifiziert als Fehlalarm, kein echter Befund.** `wiki-konsistenz.sh` markiert `[[...]]` als
   unauflösbares Linkziel. Der Fundort ist Zeile 35 im Fliesstext: *„Original-Konvention ERCO,
   nicht in Wiki-Links `[[...]]` umgewandelt, da es sich um reine Binnenverweise […] handelt)."*
   Das ist Prosa, die die Wiki-Link-Syntax **beschreibt** (die Ellipse `...` steht als
   Platzhalter), kein tatsächlicher Link. Die echten Backlinks des Artikels
   (`[[erco-lichtplanung-grundlagen]]`, `[[erco-lichtplanung-simulation-berechnung]]`,
   `[[INDEX]]`) lösen alle korrekt auf. **Keine Korrektur nötig** — der Text ist so, wie er
   dasteht, korrekt und verständlich; eine Änderung würde nur den Fehlalarm-Trigger entfernen,
   ohne inhaltlichen Nutzen. Für den Bibliothekar festgehalten, damit der nächste Lauf nicht
   erneut Zeit hier investiert.
2. **`wiki/kevi-buerodrehstuhl.md`, Frontmatter `links:` zeigt auf `[[REGISTER]]` statt
   `[[INDEX]]`.** Einziger Treffer eines KB-fremden Linkziels unter allen 17 Artikeln. Der
   mechanische Prüfer akzeptiert ihn, weil `wissen/normen/wiki/REGISTER.md` real existiert
   (das Script baut sein Ziel-Universum über alle KBs hinweg) — sachlich ist der Link falsch:
   ein Bürostuhl-Artikel aus `bauprodukte` hat keinen Bezug zum Normen-Register. Wahrscheinlich
   eine Verwechslung beim Schreiben (Register/Index). Reparaturvorschlag für Phase 2:
   `[[REGISTER]]` → `[[INDEX]]`, analog zu allen anderen Artikeln.
3. **`wiki/INDEX.md` führt BKP 281 unter zwei getrennten Überschriften** (Zeile 27
   «Bodenbeläge (Estrich-Systeme)» → `bkp-281-estrich-systeme`, Zeile 97 «Bodenbeläge» →
   `terrazzo-kunststein-bodenbelaege`). Kein neuer Fund — bereits als **BP46-1** im
   Cross-KB-Eingang «Wissens-Chef Run 46» (28.08.2026) in `QUESTIONS.md` erfasst und
   **weiterhin unbehoben**. Zum Stichtag verifiziert: der Zustand ist unverändert seit dem
   28.08.2026. Kein inhaltlicher Schaden (beide Ziele lösen korrekt auf), aber ein
   Registrierungs-Defekt, der bei einer künftigen Zusammenführung der beiden BKP-281-Artikel
   stören würde.

Orphans: keine. Alle 17 Wiki-Artikel sind im `INDEX.md` registriert (der o.g. Doppeleintrag
betrifft nur die Gliederung, nicht die Vollständigkeit).

### C. Unbelegte Claims / BKP-Codes

**BKP-Code-Prüfung (Schwerpunkt dieses Laufs):** Alle in `wiki/*.md` vorkommenden BKP-Codes
wurden einzeln gegen `references/bkp-2017/BKP-2017-Liste.md` geprüft: 900, 285, 285.3, 225,
225.3, 225.4, 281, 281.0, 281.1, 281.5, 224, 221, 221.0, 233, 261, 260, 272, 273, 273.0, 273.3,
284, 214, 214.1, 215, 271, 230, 288 — **alle existieren in der offiziellen Liste und sind
korrekt verwendet.** Insbesondere: **kein einziger Code mit zweistelliger Nachkommastelle**
(kein «271.10»-Muster) im Wiki-Bestand. Die einzige Fundstelle mit Los-Nummern-artiger
Schreibweise (271.10/271.13) liegt gar nicht in dieser KB, sondern wird in `QUESTIONS.md`
(Punkt 9) korrekt als «Projektnomenklatur, kein BKP-2017-Code» aus einem verlinkten
`projekt-lessons`-Artikel referenziert — bereits richtig eingeordnet.

Ein scheinbarer Treffer «BKP 202» (drei Fundstellen in `QUESTIONS.md`) erwies sich bei
Prüfung als Lese-Artefakt der eigenen Suchmaske: die Zeichenkette stammt aus «ecoBKP **202**6»
(Jahresangabe der ecoBKP-Ausgabe), nicht aus einem referenzierten BKP-Code 202. Kein Befund.

**Weitere Claim-Stichprobe:** Bis zu drei zentrale Aussagen je Artikel wurden gegen die
Quellenangabe geprüft (u. a. `biofa-coloroel.md`, `bkp-221-holzfenster-3fach-verglasung.md`,
`z-winkel-beschlag-schreinerei.md`). Alle geprüften Kernaussagen tragen eine datierte,
nachvollziehbare Quelle; Herstellerangaben sind durchgängig als solche gekennzeichnet
(«Herstellerangabe», «Marketing» explizit ausgeklammert). Kein unbelegter Claim gefunden.
Der bereits dokumentierte, in Run 27 (06.08.2026) korrigierte «erfundene Beleg» im
ERCO-Glossar-Artikel (QUESTIONS Punkt 14) ist abgeschlossen und bleibt es — keine Wiederkehr
festgestellt.

### D. RAW-Coverage

Diese KB führt kein eigenes `raw/`-Depot (Quelle bleibt am Originalort
`/Volumes/daten/03 Bauprodukte_BKP`, Register siehe `raw/_INGESTED.md`). Der Fortschritt wird
über `skills/wissens-destillat/KORPUS-QUEUE.md` und
`skills/wissens-destillat/training/bauprodukte-inventar.md` geführt.

**KORPUS-QUEUE.md, Position 1 «bauprodukte»: Status „erledigt" seit 15.08.2026** —
214 Dateien inventarisiert, 26 destilliert, 188 bewusst verworfen (Altersregel/kein
Bauprodukte-Bezug), 0 offen, 0 triagiert. Die 17 Wiki-Artikel ziehen zusammengezählt aus
rund 25 distinkten Quelldateien (Abgleich: die drei ERCO-Artikel teilen sich eine einzige
435-seitige Quelldatei, mehrere Artikel haben 2–6 Einzelquellen) — die Grössenordnung deckt
sich mit den 26 gemeldeten Destillat-Vorgängen. Keine Coverage-Lücke identifiziert.

Zwei strukturelle Blockaden aus `QUESTIONS.md` bleiben unverändert bestehen und sind kein
neuer Befund: Punkt 9 (Holzbau/Trockenbau BKP 214/271, Quellordner im Archiv leer, Weg über
Korpus 2 `buero-projekte` oder Raphaels Entscheid) und Punkt 13 (Sektion 900 Einrichtung,
Konsumgüter-Möbelkataloge ohne Bauteilbezug, Entscheid bei Raphael ausstehend). Beide sind seit
Wochen als GEBLOCKT bzw. entscheidungsoffen geführt, kein Fortschritt seit dem letzten
Health-Check nötig oder erwartet.

### E. Veraltete Artikel

Kein Artikel ist älter als 90 Tage — die KB wurde erst am 28.07.2026 angelegt, der älteste
Artikel-Stempel liegt bei 35 Tagen (`arbeitsplatten-verbinder-schreinerei.md`,
`chromstahltreppe-oberflaechen.md`, `dachbegruenung-systeme.md`, `pu-beschichtung-fassade.md`,
je 2026-07-28). Audit E liefert damit strukturell 0 Befunde. (Siehe stattdessen Audit F für
den verwandten, aber andersartigen Befund einer inhaltlich überholten, aber nicht
nachgezogenen `last_updated`-Angabe.)

### F. Schreibregel-Verstösse

1. **`ch24-wishbone-chair.md` — `status: established` mit genau einer Quelle.** KB-Schreibregel
   6 verlangt für `established` eine unabhängige Zweitbelegung (Norm, zweites Datenblatt,
   eigener Projektbeleg). Die `sources`-Liste enthält ausschliesslich das eine
   Carl-Hansen-&-Søn-Produktdatenblatt. Verstoss.
2. **`matrah-moll-naturmatratze.md` — `status: established` mit genau einer Quelle**
   (Produktblatt Hüsler Nest-Center/Indigo Naturwaren). Gleicher Verstoss wie oben.
   Grenzfall zur Kenntnis: `kevi-buerodrehstuhl.md` ist ebenfalls `established`, stützt sich
   aber auf drei Dokumente (Datenblatt + zwei Herstellerkataloge) — auch wenn alle drei
   letztlich vom selben Hersteller/Vertrieb stammen, ist das näher an einer «Zweitbelegung»
   als die beiden oben genannten Fälle mit nur einer einzigen Datei. Kein Verstoss, aber
   erwähnenswert als Grenzfall für eine künftige Präzisierung der Schreibregel.
3. **`cheminee-aufbau-hafnerarbeiten.md` — `last_updated: 2026-08-01` ist überholt.** Der
   Artikel wurde nachweislich am 24.08.2026 (Wissens-Chef Run 41, siehe CHANGELOG-Eintrag
   «die zurueckgestellte Kante zu `normen` ist gesetzt») um einen ganzen Abschnitt
   («Fassungs- und Norm-Kante, nachgetragen 24.08.2026») erweitert — im Artikeltext selbst
   nachgewiesen (Zeile 80 ff.). Das Frontmatter-Feld `last_updated` wurde bei dieser Änderung
   nicht mitgeführt. Kein Inhaltsfehler, aber ein Meta-Datenfehler: ein künftiger
   Aktualitäts-Check (Audit E) würde diesen Artikel fälschlich als 2026-08-01er-Stand
   einordnen.

Übrige Schreibregeln (Umlaute, Schweizer Hochdeutsch, kein ß, keine Deko-Symbole, vollständige
Frontmatter-Pflichtfelder `title/status/last_updated/sources/links`) sind über alle 17
Artikel eingehalten; kein weiterer Verstoss gefunden.

### G. Promotion-Kandidaten

1. **`bkp-261-aufzuege.md` (aktuell `emerging`) ist ein Kandidat für `established`.** Der
   Artikel stützt sich auf sechs unabhängige Herstellerquellen (AS Aufzüge, Garaventa Liftech,
   Schindler, Schmitt+Sohn) über fünf Systemtypen — das erfüllt die Zweitbelegungs-Schwelle der
   Schreibregel 6 mehrfach. **Gegen eine sofortige Promotion sprechen** die in `QUESTIONS.md`
   noch offenen Prüfpunkte 5, 6 und 11 (Datierung zweier AS-Dokumente nur über Dateinamen,
   EN-81-70-Ziffernprüfung nicht am Volltext, Kabinenbreite 1050 mm nicht beim Hersteller
   verifiziert). Empfehlung: Promotion zurückstellen, bis diese drei Punkte geschlossen sind
   oder Raphael sie ausdrücklich als unkritisch für den Status einstuft.

Keine `speculative`-Artikel in der KB vorhanden — die übliche erste Promotionsstufe
(speculative → emerging) entfällt daher komplett für diesen Lauf.

## Cross-KB-Bezüge (zur Einordnung, kein eigener Audit-Punkt)

Der Wissens-Chef hat in den letzten vier Wochen wiederholt Cross-KB-Kanten zu `wissen/normen`
und `wissen/energie` in dieser KB gepflegt (Fassungsvorbehalte VKF-BRL 23-15 und 103-15,
ecoBKP-2026-Zeiger für BKP 214/215/225/271/281). Alle in diesem Lauf geprüften Cross-KB-Links
(`[[../../normen/destillate/sia-380-1-2016]]`, `[[…vkf-brl-23-15-befoerderungsanlagen]]`,
`[[…sia-370-028-2003]]`, `[[…sia-251-2008]]`, `[[…sia-312-2013]]`, `[[…sia-244-2006]]`,
`[[…bfu-bodenbelaege]]`) lösen korrekt auf. Kein Handlungsbedarf.

## Methodischer Hinweis

Die Aufgabenstellung ging von «19 Wiki-Artikeln» aus; tatsächlich enthält `wiki/` 17
Sach-Artikel (plus `INDEX.md` und `QUESTIONS.md`, die keine Sach-Artikel sind). Alle 17
wurden vollständig gelesen (Frontmatter + Kapitelstruktur; Volltext dort, wo Claims zu
verifizieren waren, insbesondere die BKP-Code-Stellen und die drei ERCO-Artikel).
