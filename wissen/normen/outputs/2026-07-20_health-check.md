# Wissens-Health-Check: normen — 2026-07-20

Erster Wissenscheck-Lauf dieser KB (Phase 1, unbeaufsichtigt, Nachtschicht Mac Mini). Kein
CHANGELOG-Eintrag mit «health-check»/«Audit» vor diesem Lauf gefunden — die KB wurde bislang
ausschliesslich vom Trainings-Loop (`normen-training-nacht`/`-mini`) selbst geprüft
(Grunddestillation, Retro-Verifikation, Q&A, Synthese), nie durch den Skill `wissenscheck`.

Diese KB hat keine klassischen Themen-Wiki-Artikel, sondern drei Ebenen: `wiki/REGISTER.md`
(Gültigkeit), `destillate/<norm>-<jahr>.md` (289 Dateien inkl. `destillate/qa/`) und die
SharePoint-Originale (nicht kopiert). Die sieben Audits wurden entsprechend auf diese Struktur
übertragen (siehe Methodik je Audit unten). Sehr viele potenzielle Befunde sind bereits in
`wiki/QUESTIONS.md` (582 Zeilen, Stand vor diesem Lauf) getrackt — diese wurden geprüft, aber
nicht doppelt gezählt, ausser wo sich der Bearbeitungsstand seit der Erstmeldung geändert hat.

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 1 |
| B Kaputte Backlinks/Orphans | 64 (39 tote Backlink-Vorkommen + 25 nicht im destillate/INDEX.md registrierte Destillate) |
| C Unbelegte Claims | 1 |
| D RAW-/Inventar-Coverage-Luecken | 0 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 143 (11 ß-Vorkommen + 1 Deko-Symbol + 4 fehlende Pflichtfelder last_updated/datenstand + 127 fehlende Pflichtfeld ersetzt/ersetzt_durch) |
| G Promotion-Kandidaten | 0 (6 speculative-Destillate geprüft, alle korrekt zurückgehalten) |

## Top-3 (Raphaels Aufmerksamkeit)

1. **SIA-112:2014-Destillat ordnet SIA 104/105 seit mind. 17.07.2026 falsch zu, trotz
   offenem QUESTIONS-Eintrag bis heute unkorrigiert.** `destillate/sia-112-2014.md` (Z. 19,
   109, 135) führt «SIA 104 (Landschaftsarchitektur)» und «SIA 105 (Maschinen-/
   Elektroingenieur)». Tatsächlich ist SIA 104 = Forstingenieure (`sia-104-2003.md`), SIA 105
   = Landschaftsarchitekten (`sia-105-2020.md`), SIA 108 = Gebäudetechnik/Maschinenbau/
   Elektrotechnik (`sia-108-2014.md`). Risiko: zitiert ein Fach-Skill (`ausschreibung`,
   `werkvertrag`) SIA 112 als Quelle für die Berufsgruppen-Zuordnung, landet die falsche
   Norm-Nummer im Dokument (Rule `identifikatoren-verifizieren`/`normen-referenz`).
2. **39 tote `[[Backlink]]`-Vorkommen in 26 Destillaten** — überwiegend fehlende Jahres-
   Suffixe im Linkziel (`[[sia-118]]` statt `[[sia-118-1991]]`, `[[sia-262-2013]]` statt
   `[[sia-262-2003]]`) sowie Links auf nie erstellte Destillate (`[[sia-2024]]`, `[[sia-160]]`,
   `[[sia-380-4]]`, `[[sia-d-0165]]`). Rein kosmetisch (keine falschen Fachaussagen), aber
   erschwert Navigation im Compounding-Loop.
3. **11 DIN-Destillate verwenden noch «ß» statt «ss»** (Rule `umlaute-konvention`) — deutsche
   Normtexte wurden mit deutscher statt Schweizer Rechtschreibung übernommen (u.a.
   `din-1054-2010.md`, `din-4102-1-1998.md`, `din-18040-1-2010.md`).

Voller Report: `wissen/normen/outputs/2026-07-20_health-check.md`

## Details je Audit

### A. Widersprueche

**Methodik:** Da die KB keine Themen-Artikel mit Überlappung hat, wurden (a) die beiden
Synthese-Artikel (`wiki/synthese-sia-vkf-fachskills.md`, `wiki/synthese-din-vss-ral-fachskills.md`)
gegen `wiki/REGISTER.md` und die zitierten Destillate geprüft, (b) Stichproben von
Destillaten mit Quer-Zitaten (z.B. SIA 111/112 vs. 102/103/104/105/108) auf sich
widersprechende Fachaussagen geprüft.

- **Noch offen (bereits in QUESTIONS.md getrackt, unverändert seit Erstmeldung 17.07.2026,
  «Neubefund der Synthese»):** `sia-112-2014.md` schreibt SIA 104 = Landschaftsarchitektur,
  SIA 105 = Maschinen-/Elektroingenieur. Das widerspricht direkt den eigenständigen
  Destillaten `sia-104-2003.md` (Titel: «Ordnung für Leistungen und Honorare der
  Forstingenieure und Forstingenieurinnen»), `sia-105-2020.md` (Titel: «... der
  Landschaftsarchitektinnen und Landschaftsarchitekten») und `sia-108-2014.md` (Titel:
  «... Gebäudetechnik, Maschinenbau und Elektrotechnik»). Vermutete Ursache laut QUESTIONS:
  OCR-Fehler, da die SIA-112-Quelle ein Scan ohne Textlayer ist. **Neu an diesem Befund:**
  der Fehler steht seit der Erstmeldung 3 Tage und mehreren SIA/VKF-Läufen (Run 16 am
  19.07.) unkorrigiert weiter im Destillat — die Korrektur ist trivial (Abgleich S. 4/S. 10
  am Original SIA 112:2014), aber noch nicht erfolgt. Empfehlung: beim nächsten SIA-Lauf
  priorisieren, weil das Destillat aktiv von mehreren Fach-Skills referenziert wird.
- Keine weiteren, bisher ungemeldeten Widersprüche in der Stichprobe (Synthese-Artikel vs.
  REGISTER, SIA 380/1-Ausgabenlage, VKF-BRL-16-15-Personenbelegung) gefunden — alle
  entsprechenden Spannungen sind bereits sauber in QUESTIONS.md dokumentiert und teilweise
  gelöst (z.B. VKF-BRL-16-15-Personenbelegung, Run 8, 18.07.2026).

### B. Kaputte Backlinks & Orphans

**Methodik:** Alle `[[link]]`-Vorkommen in `wiki/*.md` und `destillate/*.md` extrahiert (92
Vorkommen, 34 unterschiedliche Ziele) und gegen die tatsächlich existierenden Dateinamen in
`wiki/` und `destillate/` (292 Dateien) geprüft. Zusätzlich: jede Datei in `destillate/`
gegen die Registrierung in `destillate/INDEX.md` geprüft (Analogie zu «Artikel, die nicht im
INDEX.md stehen»).

- **39 tote Backlink-Vorkommen, 33 unterschiedliche Ziele, in 26 Destillaten** (frontmatter
  `links:`-Feld). Zwei Fehlerklassen:
  - **Fehlender/falscher Jahres-Suffix** (Ziel existiert unter anderem Namen): `[[sia-118]]`
    → `sia-118-1991.md`; `[[sia-112]]` → `sia-112-2014.md`; `[[sia-262-2013]]` →
    `sia-262-2003.md`; `[[sia-267-2013]]` → `sia-267-2003.md`; `[[sia-272-2009]]` →
    `sia-272-1980.md`; `[[sia-102-2003]]` → `sia-102-2014.md`/`sia-102-2020.md`;
    `[[sia-380-1]]`/`[[sia-380-1-energie]]` → `sia-380-1-2016.md`; `[[din-105-100-...]]` →
    `din-105-100-2012.md`; `[[din-1053-1-...]]` → `din-1053-1-1996.md`; `[[vkf-bsr-16-15]]`
    (Tippfehler BSR/BRL) → `vkf-brl-16-15-flucht-rettungswege.md`;
    `[[vkf-brl-14-15-verwendung-baustoffe]]` → `vkf-brl-verwendung-baustoffe.md`;
    `[[sia-d-0165]]` → `sia-d0165-2000-kennzahlen-immobilienmanagement.md`;
    `[[sia-451-datenaustausch]]`/`[[sia-102-honorar]]`/`[[sia-118-bauarbeiten]]` →
    `sia-451-1992.md`/`sia-honorar-hilfsmittel.md`/`sia-118-1991.md` (Fundort:
    `destillate/sia-450-1993.md`).
  - **Ziel existiert gar nicht** (kein Destillat vorhanden): `[[sia-160]]`,
    `[[sia-160-einwirkungen]]`, `[[sia-162]]`, `[[sia-162-betonbauten]]`, `[[sia-180]]`
    (nur `sia-180-2014.md`, `sia-180-081/082-2017.md` vorhanden — Basisversion fehlt),
    `[[sia-190-kanalisationen]]`, `[[sia-198]]` (existiert als `sia-198-2004.md`, aber der
    Link hat kein Jahr und trifft daher nicht), `[[sia-2024]]`, `[[sia-2028]]`, `[[sia-2032]]`,
    `[[sia-2039]]`, `[[sia-2047]]`, `[[sia-215]]`, `[[sia-382-2]]`, `[[sia-380-4]]`,
    `[[sia-423]]` (existiert als `sia-423-2006.md`), `[[din-1961-2012]]`. Mehrere davon
    (SIA 2024, 2028, 2032, 2039, 2047 — die 2000er-Merkblattserie) sind bereits als offene
    Bring-Schuld in QUESTIONS.md geführt (Merkblatt-Serie SIA 2001-2027 «neu im Inventar,
    noch nicht destilliert») — die toten Links sind das direkte Symptom davon, hier nur als
    Backlink-Fund ergänzt.
  - Separat: `[[bkp-2017]]` in `destillate/sia-450-1993.md` zeigt auf eine Datei ausserhalb
    dieser KB (`references/bkp-2017/BKP-2017-Liste.md`, existiert dort). Kein Bruch, aber
    unüblich (Backlink-Konvention ist KB-intern) — als Hinweis, nicht als Fehler gezählt.
- **25 Destillate existieren, sind aber nicht in `destillate/INDEX.md` registriert:**
  `de-vstaettvo-niedersachsen-2004.md`, `de-baunvo-1990.md`, `de-arbstaettv-2004.md`,
  `sia-108-2003.md`, `sia-142-1998.md`, `sia-181-2006.md`, `sia-180-082-2017.md`,
  `sia-180-081-2017.md`, `sia-179-1998.md`, `sia-125-2017.md`, `sia-1695-4-2018.md`,
  `sia-144-2013.md`, `sia-150-2018.md`, `sia-121-2003.md`, `sia-162-152-2001.md`,
  `sia-166-2004.md`, `sia-270-1992.md`, `sia-414-1980.md`, `sia-343-1990.md`,
  `sia-342-1988.md`, `sia-430-1993.md`, `sia-273-1998.md`, `sia-331-1988.md`,
  `sia-318-1988.md`, `sia-423-2006.md`, `sia-180-2014.md`. Auffällig: mehrere davon sind
  bewusst geführte Altausgaben (z.B. `sia-108-2003.md`, `sia-142-1998.md` — laut
  `training/norm-inventar.md` «ersetzt durch neuere Ausgabe, übersprungen», daher ohne
  Destillat und korrekt nicht im INDEX). Die übrigen (SIA 125/144/150/1695-4/179/181/121/
  162-152/166/270/414/343/342/430/273/331/318/423/180) sind aber echte, eigenständige
  Destillate ohne INDEX-Eintrag — reine Registrier-Lücke, keine inhaltliche Lücke.
- **Positiv-Befund:** Keine Datei wird in `destillate/INDEX.md` referenziert, ohne dass die
  Datei existiert (241 Erst-Spalten-Einträge geprüft, 0 tote Zeilen) — der Verdacht auf eine
  stehen gebliebene Zeile zum gemergten VKF-Brandmauern-Duplikat hat sich beim Gegenlesen
  als korrekt dokumentierter Merge-Vermerk erwiesen (`vkf-brl-100-15-brandmauern.md`, Zeile
  117: «Duplikat `vkf-brl-brandmauern-100-15.md` gemerged und gelöscht 260713» — Datei
  existiert nur noch einmal, INDEX ist sauber).

### C. Unbelegte Claims

**Methodik:** Stichprobe von drei P1-Kernnormen (`sia-102-2020.md`, `vkf-brandschutznorm-2015.md`,
`din-en-12101-2-2003.md`) auf Zitierdichte geprüft (Ziffer-/Artikel-/Seitenverweise je Aussage);
zusätzlich alle 6 `status: speculative`-Destillate auf Quellenqualität geprüft (Audit-C/G-
Überschneidung, da Status direkt von der Beleglage abhängt).

- Die Stichprobe zeigt eine ungewöhnlich hohe Zitierdichte (34-98 Ziffer-/Seitenverweise je
  Destillat) — die adversariale Verifikationskultur des Trainings-Loops (Rule
  `auto-verbesserungen` 260712) wirkt sichtbar; kein unbelegter Claim in der Stichprobe
  gefunden.
- **1 Fund zur Quellenqualität:** `destillate/sia-vertragsunterschiede-2023.md` beruht auf
  `230529_Vertragsunterschiede.pdf`, im Frontmatter selbst als «Inhalt ausdrücklich als
  ChatGPT-Antwort gekennzeichnet» ausgewiesen. Das Destillat markiert dies korrekt als
  `speculative` und warnt im Text — sauber gehandhabt. Trotzdem als Finding festgehalten:
  ein KI-generiertes Dokument als Quelle in einer Normen-Wissensbasis zu führen, ist ein
  Sonderfall, der beim nächsten Health-Check erneut geprüft werden sollte (Risiko: falls das
  `speculative`-Flag später versehentlich fällt, würde eine ungeprüfte KI-Aussage als
  Norm-Wissen zitierfähig).

### D. RAW-/Inventar-Coverage-Luecken

**Methodik:** `raw/` ist für diese KB bewusst leer (`raw/_INGESTED.md`: 0 Einträge, siehe
KB-Schema) — Norm-PDFs bleiben auf SharePoint. Die Coverage-Prüfung wurde daher gegen
`training/norm-inventar.md` (Arbeitsliste, Stand 689 Zeilen) geführt: jede Zeile mit Status
`[x]`/`[~]` gegen ein tatsächlich existierendes Destillat geprüft, plus Zählung offener `[ ]`-
Positionen.

- **0 offene `[ ]`-Positionen** in der gesamten Inventar-Tabelle (SIA/VKF/DIN/VSS/RAL) —
  bestätigt die im CHANGELOG mehrfach gemeldete «Inventar komplett»-Aussage.
- Alle im Inventar als destilliert vermerkten Dateinamen wurden gegen `destillate/` und
  `outputs/` aufgelöst — 0 echte Lücken (die 4 anfänglich als «MISSING» markierten
  Lauf-Report-Referenzen lagen korrekt unter `outputs/`, kein Fehler).
- **Kein neuer Coverage-Befund.** Die einzige bekannte Lücke (`Lignum/`-Ordner leer, 0
  Dateien) ist bereits in Mini-Run 32 dokumentiert und kein Fehler.

### E. Veraltete Artikel

**Methodik:** `last_updated`/`datenstand` aller Destillate gegen das 90-Tage-Kriterium
geprüft.

- **0 Funde** — die KB wurde am 11.07.2026 angelegt, älteste Destillate sind 9 Tage alt.
  Das 90-Tage-Kriterium kann in dieser KB frühestens Anfang Oktober 2026 greifen.
- Zur Einordnung (kein Audit-E-Fund, sondern Verweis auf bereits getrackte Fälle): die
  KB-eigene Variante von «Veralterung» — eine im Bestand liegende neuere Norm-Ausgabe, die
  das REGISTER noch nicht abbildet — ist bereits mehrfach in `wiki/QUESTIONS.md` offen
  geführt (SIA 105 Register 2007 vs. Bestand 2020, SIA 380/1 Register 2009 vs. Bestand 2016,
  SIA 181 Register 2006 vs. energie-KB-Nutzung 2020) und wird hier nicht doppelt gezählt.

### F. Schreibregel-Verstoesse

**Methodik:** Rule `umlaute-konvention` (ß-Verbot), dekorative Symbole (Rule
`dokument-layout-standard`, sinngemäss auf KB-Text übertragen) und die KB-eigenen
Pflichtfelder aus `destillate/INDEX.md` («quelle, herausgeber, ausgabe, ersetzt_durch/ersetzt,
gelesen, datenstand, status, last_updated») gegen alle 270 Destillate geprüft.

- **11 Destillate mit «ß»** statt «ss» (Rule `umlaute-konvention`, gilt laut Rule auch für
  Wissens-Layer-Texte): `din-1054-2010.md`, `din-18040-1-2010.md`, `din-1356-6-2006.md`,
  `din-18065-2000.md`, `din-1946-6-2009.md`, `din-4102-1-1998.md`, `din-5034-3-2007.md`,
  `din-5034-2-1985.md`, `din-planungsgrundlagen-hoai-vorschriften-2004.md`,
  `din-v-105-100-2005.md`, `vds-2234-1999-brand-komplextrennwaende.md`. Nachvollziehbar, da
  deutsche Normtexte oft mit deutscher Rechtschreibung paraphrasiert wurden — Rule macht aber
  keine Ausnahme für zitierte Fremdnormen.
- **1 dekoratives Symbol:** `sia-380-1-2016.md` Zeile 17 nutzt «⚠️» als Warnkasten-Marker
  (bewusst als Sicherheitshinweis auf den Auszugs-Charakter der Norm gesetzt, nicht als
  Dekoration) — niedrige Schwere, da funktional statt schmückend, aber technisch ein Verstoss
  gegen das «keine Deko-Symbole»-Prinzip.
- **4 Destillate ohne Pflichtfeld `last_updated`/`datenstand`:** `sia-1001-2-2020.md` (fehlt
  `datenstand`), `en-179-1125-2009-panikbeschlaege-gege.md`, `vkf-brl-aenderungen-2017.md`,
  `vkf-bsv2015-vernehmlassungsbericht.md` (fehlt `last_updated`) — die letzten beiden sind
  Teil des bereits in QUESTIONS.md getrackten Duplikat-Bereinigungs-Rückstaus (VKF-Merges,
  destruktiv, Rückfrage ausstehend) und daher vermutlich ältere, nicht nachgeführte Stände.
- **127 von 270 Destillaten (47 %) führen das Pflichtfeld `ersetzt`/`ersetzt_durch` gar
  nicht**, obwohl `destillate/INDEX.md` es explizit als Pflichtfeld nennt und andere Destillate
  es korrekt (auch mit leerem Wert `ersetzt: ""`) führen. Niedrige fachliche Schwere (das
  Fehlen des Feldes ist bei einer aktuell gültigen Norm ohne Nachfolgeausgabe inhaltlich
  gleichbedeutend mit einem leeren Feld), aber eine strukturelle Inkonsistenz gegenüber dem
  selbst definierten Schema — für den nächsten Grunddestillations-Lauf als
  Formatvereinheitlichung vormerkbar.
- **Nachrichtlich (kein Zählfund):** Das `status`-Feld weicht in ca. 40 % der Destillate vom
  reinen Drei-Werte-Schema (`speculative`/`emerging`/`established`) aus `wissen/WISSEN-CLAUDE.md`
  ab (z.B. `status: established (verifiziert 260714, Volltextabgleich)`) — dies ist im
  Kontext dieser KB eine bewusste, wertvolle Praxis (Verifikations-Herkunft direkt im Feld),
  keine Verletzung im Sinne von Auslassung, daher nicht in der Zählung, aber der Vollständigkeit
  halber vermerkt. Auffällig zudem: die Stufe `emerging` wird in der gesamten KB nirgends
  verwendet (nur `speculative`/`established`) — vermutlich Absicht der zweistufigen
  Verifikationskultur (Rule 260712), kein Fehler.

### G. Promotion-Kandidaten

**Methodik:** Alle 6 Destillate mit `status: speculative` einzeln auf Beleglage und
Promotions-Reife geprüft.

- `sia-112-leistungsmodell.md`, `sia-112-bereichs-phasenmatrix.md`,
  `sia-112-tabelle-infrastruktur.md`: Drittquellen ohne SIA-Impressum (Kundert Planer AG,
  Lernskript 2007, Kursunterlage) — korrekt `speculative`, keine Promotion möglich (keine
  amtliche Herkunft, kann auch mit mehr Belegen nicht «established» werden).
- `sia-271-wegleitung.md`: 2-Seiten-Auszug einer SIA-Wegleitung — Volltext-Bring-Schuld
  bereits in QUESTIONS.md geführt, korrekt zurückgehalten.
- `sia-380-1-2016.md`: 6-von-60-Seiten-Vorschau — Volltext-Bring-Schuld bereits in
  QUESTIONS.md als P1 geführt, korrekt zurückgehalten.
- `sia-vertragsunterschiede-2023.md`: KI-generierte Quelle (siehe Audit C) — korrekt
  `speculative`, sollte es nie zu `established` schaffen.
- **Ergebnis: 0 Promotion-Kandidaten.** Die KB behandelt den `speculative`-Status damit
  diszipliniert (kein Fall von «länger überfällig, Beleg wäre inzwischen vorhanden»).

## Einordnung

Für eine KB mit 270 Fachdestillaten, die seit 9 Tagen im Intensivbetrieb mit paralleler
Retro-Verifikation läuft, ist der Befund insgesamt positiv: keine neuen inhaltlichen
Sachfehler gefunden (die adversariale Verifikationskultur des Trainings-Loops fängt diese
bereits selbst ab, siehe CHANGELOG-Historie), die gefundenen Probleme sind mechanisch/
strukturell (Backlinks, Registrierung, Rechtschreib-Konvention, Frontmatter-Vollständigkeit)
und mit Phase 2 (interaktiv) in überschaubarem Aufwand behebbar. Einzige Ausnahme mit realem
Fachrisiko ist Audit-A-Fund 1 (SIA-112-Berufszuordnung) — dieser sollte vorgezogen werden.
