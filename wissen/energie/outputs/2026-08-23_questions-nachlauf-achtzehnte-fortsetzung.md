# QUESTIONS-Nachlauf, achtzehnte Fortsetzung (23.08.2026)

Auftrag: weitere offene Fragen in `wissen/energie/wiki/QUESTIONS.md` abarbeiten, belegt mit
Quelle und Datenstand, dann in die Wiki-Artikel einarbeiten. Zuerst `CHANGELOG.md` und den
Bericht der letzten Session gelesen (siebzehnte Fortsetzung,
`2026-08-23_questions-nachlauf-siebzehnte-fortsetzung.md`), dann dort weitergemacht.

## Ausgangslage

Die siebzehnte Fortsetzung hatte E-R161-3 vollständig geschlossen und folgende Punkte als
verbleibend offen übergeben:

- **E-R148-1** (P1) — Normkauf SIA 380/1:2016, Beschaffungsentscheid Raphaels.
- **E103** — Pflegeplatz-Flächenkennwert, Entscheid Raphaels nötig.
- **E94** — Innendämmungs-Kennwert, Entscheid Raphaels nötig.
- **E-R161-1** — Tabellenwert für ruhende/schwach belüftete Luftschichten nach SN EN ISO 6946,
  eingestuft als «gleiche Klasse wie E-R148-1, Beschaffungsentscheid Raphaels, keine Recherche».
- Diverse bereits mehrfach bestätigte Negativbefunde (E-S1, E-R129-5, E-WC32-1, E-R134-3,
  E-R150-3) — ohne neue Information seit Run 159/160.

Diese Session hat **E-R161-1 doch gelöst** (die Einstufung «keine Recherche möglich» war zu
pessimistisch) und dabei einen Nebenbefund zu **E-R148-1** gemacht.

## E-R161-1: der Tabellenwert stand bereits im Bestand

**Ausgangspunkt der Suche:** Die KB hatte E-R161-1 als Normkauf-Fall eingestuft, weil der
Tabellenwert für ruhende Luftschichten «nach SN EN ISO 6946» gesucht wird und die Norm selbst
nicht im Bestand liegt. Bevor das akzeptiert wurde, wurde geprüft, ob eine **Sekundärquelle**
denselben Wert amtlich reproduziert — eine gängige Praxis bei Schweizer Bauphysik-Publikationen
aus den 1990er/2000er Jahren, die die ISO-Tabellen für die Baupraxis aufbereitet haben.

**Fund:** `[[bfe-u-wert-bauteilekatalog-neubauten-2002]]` — ein Destillat, das seit Run 65
(14.07.2026) als `established` in der KB liegt, «vollständig gelesen, Seiten 1-80 von 80» — hatte
Kap. 2.3.3 («Wärmedurchlasswiderstand Rg von Luftschichten», Buchseite 14 / PDF-Seite 16) nie
transkribiert, obwohl das Kapitel im Original vorhanden ist. Die Quelldatei wurde erneut vom
SharePoint geladen (Graph-Connector, Drive-ID der Bibliothek `02_Recht_Norm`, Item-ID
`01XRK3TQ2XTF2THCR26FDL4W2NLOS5M4UY`) und mit PyMuPDF Seite für Seite durchsucht.

**Tabelle 3 (Original, wörtlich übernommen):**

| Dicke Luftschicht | aufwärts | horizontal | abwärts |
|---|---|---|---|
| 5 mm | 0,11 | 0,11 | 0,11 |
| 10 mm | 0,15 | 0,15 | 0,15 |
| 25 mm | 0,16 | 0,18 | 0,19 |
| 50 mm | 0,16 | 0,18 | 0,21 |
| 100 mm | 0,16 | 0,18 | 0,22 |

Mit dem Originalzitat «Zwischenwerte dürfen interpoliert werden». Für horizontalen Wärmestrom
(die für Wände relevante Richtung) ist der Wert von 25 bis 100 mm konstant 0,18 m²K/W — die für
die 40-mm-Luftschicht der bereits bestehenden Korrekturrechnung in
`[[ki-generierte-fachdokumente-referenzablage]]` benötigte Zahl liegt damit ohne
Interpolationsbedarf fest.

**Was die Tabelle nicht abdeckt:** nur «ruhende» Luftschichten. Die «schwach belüftete»
Zwischenstufe (weder ruhend noch stark belüftet/hinterlüftet) ist im BFE-Dokument nicht
beziffert — dafür bliebe der Normtext SN EN ISO 6946 selbst nötig. Dieser Teilaspekt bleibt
offen, in derselben Klasse wie E-R148-1.

### Verifikations-Protokoll

| Aussage | Prüfung | Verdikt |
|---|---|---|
| «Tabelle 3 existiert in Kap. 2.3.3 dieses Dokuments» | Datei neu geladen, PyMuPDF-Volltextsuche über alle 80 Seiten nach «uftschicht» (7 Treffer), Seite 16 im Detail gelesen | **bestanden** |
| «Werte 0,11/0,15/0,16/0,18/0,19/0,21/0,22 sind korrekt extrahiert» | Blockreihenfolge nach Position sortiert (nicht Standard-Lesereihenfolge), Tabellenkopf/-werte im Rohtext einzeln zugeordnet | **bestanden** |
| «Horizontal ist 25-100 mm konstant 0,18» | direkt aus der sortierten Tabelle abgelesen, keine Interpolation nötig | **bestanden** |
| «Dokument deckt „schwach belüftet" nicht ab» | Volltextsuche nach «schwach» im ganzen PDF: einziger Treffer ist «Schwachstellen» (Wärmebrücken-Absatz), kein inhaltlicher Treffer | **bestanden** (Negativbefund) |
| «Quelle ist amtlich, kein Sekundär-Rauschen» | Impressum/Titelseite gelesen: Bundesamt für Energie BFE, 2002, Bestell-Nr. 805.150 d, Autor Kurt Marti (Ingenieurbüro für Energie und Umwelt) | **bestanden** |

## Nebenbefund: E-R148-1-Framing veraltet

Beim Gegenlesen von E-R148-1 (Begründung zitiert die Healthcare-Einstufungsfrage E-R140-1 als
ungelöst) fiel auf: **E-R140-1 wurde bereits am selben Tag geschlossen** (Run 153,
`[[sia-2024-nutzungsrandbedingungen-gesundheitsbau]]` belegt Pflegeheim/Altersheim → Kat. VIII.2,
70 kWh/m², nicht Kat. I). Der Recap-Absatz in E-R148-1 («verdoppelt oder halbiert den Grenzwert
bei jedem Healthcare-Projekt») war zum Zeitpunkt dieser Session nicht mehr zutreffend — die
Sachfrage ist gelöst, nur die formell zitierfähige Norm-Fundstelle (Rule `normen-referenz`) fehlt
weiterhin. E-R148-1 selbst bleibt offen (U-Wert-/Q_H,li-Tabellenwerte fehlen nach wie vor), aber
mit korrigierter Dringlichkeit. Kein historischer Eintrag überschrieben, nur ein Recap angehängt
(Muster dieser KB).

## Cross-KB-Prüfung ohne Fund

Bei der Suche nach dem Rg-Tabellenwert wurde zunächst ein grösseres SharePoint-Normen-Archiv
gefunden (Site `/sites/PL`, Bibliothek `PL Immobilienpreise`/`02_Normen`, über 200 SIA-PDF nach
Normnummer sortiert) und für einen Moment als unbekannter Fund eingeschätzt. Gegenprüfung: die
KB `normen` kennt dieselbe Bibliothek bereits vollständig (über 200 SIA-Destillate im Bestand,
u.a. `[[sia-380-1-2016]]` mit identischer Fundstelle `i380-1_2016_d.pdf`, bereits korrekt als
6-von-60-Seiten-Vorschau erkannt und mit explizitem Querbezug zur KB `energie` versehen). Kein
neuer Cross-KB-Eintrag nötig — die Bringschuld war bereits erfüllt.

## Register gepflegt

`wiki/QUESTIONS.md` (E-R161-1 auf `[x]`, neuer Recap-Abschnitt am Dateiende) ·
`destillate/bfe-u-wert-bauteilekatalog-neubauten-2002.md` (neuer Abschnitt Kap. 2.3.3) ·
`destillate/ki-generierte-fachdokumente-referenzablage.md` (zweite Lesart der Korrekturrechnung
ergänzt) · `wiki/u-werte-grenzwerte-ch.md` (Griff 02 nachgeführt, Frontmatter) ·
`CHANGELOG.md` (dieser Eintrag).

Nach jedem Schreibvorgang `git diff --numstat` geprüft:
`bfe-u-wert-bauteilekatalog-neubauten-2002.md` +48/-1 (die eine Löschung ist die erwartete
Ersetzung der Frontmatter-Datumszeile, keine fremde Löschung), `u-werte-grenzwerte-ch.md` +7/-3
(zwei Ersetzungen, Frontmatter + Griff-02-Absatz), `ki-generierte-fachdokumente-referenzablage.md`
+21/-0, `QUESTIONS.md` +74/-0 kumuliert über beide Edits, `CHANGELOG.md` +48/-0 — durchweg additiv
bzw. die erwartete eigene Ersetzung, keine fremde Löschung. Während der Session wurde die Datei
`QUESTIONS.md` von einem parallel laufenden `nas-selfcommit` zwischenzeitlich committet (Commit
`fb1cc1ba`); die eigenen Edits griffen danach sauber gegen den neuen Stand, `git status` zeigt
keine Konflikte mit anderen KBs (parallele Änderungen in `baurecht`, `normen`,
`architektur-fachwissen` stammen von anderen, gleichzeitig laufenden Sessions und wurden nicht
angefasst).

## Verbleibend offen

- **E-R148-1** (P1) — Normkauf SIA 380/1:2016, unverändert Beschaffungsentscheid Raphaels
  (U-Wert-/Q_H,li-Tabellenwerte, formelle Anhang-A-Fundstelle); Dringlichkeits-Framing korrigiert
  (siehe Nebenbefund oben).
- **Schwach belüftete Luftschicht** (neuer kleiner Teilaspekt aus E-R161-1) — gleiche Klasse wie
  E-R148-1, Normtext SN EN ISO 6946 nötig.
- **E103** — Pflegeplatz-Flächenkennwert aus JANS-Projektdaten, Entscheid Raphaels nötig.
- **E94** — Innendämmungs-Kennwert aus einer realen JANS-Offerte, Entscheid Raphaels nötig.
- **E-R134-3** — Lambda-Anomalie im Faustregeln-Merkblatt, Quelle ohne Herausgeber/Datum, kein
  weiterer Recherche-Ansatz.
- Sonstige, bereits mehrfach bestätigte Negativbefunde (E-S1, E-R129-5, E-WC32-1, E-R150-3) —
  diese Session hat sie nicht erneut aufgerollt.
