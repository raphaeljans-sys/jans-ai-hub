# Wissens-Health-Check: immobilienbewertung — 2026-08-22

Kontext: Nachtschicht-Zyklus Mac Mini (Prioritaet 6), letzter Health-Check war der
Sammellauf vom 2026-08-03 (19 Tage). Nur Phase 1 (Audit + Report), unbeaufsichtigt —
Phase 2 (Aktionen) nicht durchgefuehrt.

**Vorbemerkung zur Zielwahl:** Diese KB steht seit 26.07.2026 auf Ereignis-Trigger statt
Zeittakt (kein eigener Scheduled Task ausser dem One-Time-Marktpuls 01.09.2026), wurde aber
entgegen der ersten Einschaetzung dieses Laufs **nicht** vernachlaessigt — Wissens-Chef-
Cross-KB-Laeufe haben sie zuletzt am 19.08., 18.08., 17.08., 13.08., 08.08. und 07.08.2026
angefasst. Der letzte **systematische** 7-Audit-Check war dennoch der vom 03.08., darum
bleibt die Wahl sinnvoll — nur die Begruendung "am wenigsten Pflege" stimmt nicht.

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 1 (bekannt, weiter offen) |
| B Kaputte Backlinks/Orphans | 0 (3 Verdachtsfaelle geprueft, alle falsch-positiv) |
| C Unbelegte Claims | 0 (stichprobenartig; KB fuehrt Quellenpflicht sehr konsequent) |
| D RAW-Coverage-Luecken | 3 (alle bereits selbst gefuehrt, keine neue) |
| E Veraltete Artikel | 1 (bekannt, weiter offen: UBS-FS-Stichtage teils >18 Mt.) |
| F Schreibregel-Verstoesse | 2 (1 bekannt/gross: Umlaut-Ersatzschreibung; 1 neu/klein: fehlendes `last_updated`) |
| G Promotion-Kandidaten | 1 neu (D1-Teilerledigung Langnau nicht nachgezogen) |

## Top-3 (Raphaels Aufmerksamkeit)

1. **D1 ist teilweise erledigt, aber nicht nachgezogen:** `wiki/wissensluecken.md` Zeile 11
   behauptet weiterhin "Langnau am Albis ganz fehlend" — der Fact-Sheet-Artikel
   `wiki/marktdaten-gemeinden/zh-langnau-am-albis-8135.md` (UBS 12/2025, `status: established`)
   existiert jedoch bereits, ist in `INDEX.md` registriert und von `marktdaten-gemeinden/README.md`
   verlinkt. Reine Registerpflege, aber sie haelt eine erledigte Teilaufgabe faelschlich offen.
2. **T-Umlaut bleibt der groesste unerledigte Befund der KB** (seit Health-Check 23.07.2026
   bekannt: >2'000 Vorkommen ueber ~26 Wiki-Dateien, `residualwertmethode.md` mit 0 echten
   Umlauten). Dieser Lauf bestaetigt den Umfang erneut und lokalisiert ihn zusaetzlich in
   `ertragswert-dcf.md` (56 Belege wie "fuer"/"ueber" statt "für"/"über") und `realwert-sachwert.md`
   (31 Belege). Bewusst nicht per Massenersatz behoben (Rule `wissensluecken.md` T-Umlaut:
   braucht woerterbuchbewussten, review-pflichtigen Phase-2-Lauf, sonst Kollateralschaeden wie
   "Raphael"→"Raphäl").
3. **T-Regelgeschoss (HNF/GF 0.70 vs. 0.75) bleibt der einzige echte Audit-A-Befund** — seit
   25.07.2026 als `needs-decision`-Box in `realwert-sachwert.md` gefuehrt, Fachentscheid
   Raphael aussteht, von keiner Seite eigenmaechtig geloest. Kein neuer Zustand, nur bestaetigt.

## Details je Audit

### A. Widersprueche
- **T-Regelgeschoss** (`wiki/wissensluecken.md` Abschnitt B): HNF/GF-Faktor 0.70 (Hub-Entscheid
  12.07.2026) vs. 0.75 (belegt in `flaechendefinitionen-sia.md:84`, Flaechenkonzeption Wohnen
  20.10.2024). Weiterhin offen, `needs-decision`-Box in `realwert-sachwert.md` aktiv, keine der
  beiden Stellen wurde still umgestellt — Sperrklausel eingehalten. Keine Handlung noetig ausser
  Raphaels Fachentscheid.
- Keine weiteren direkten Widersprueche zwischen Artikelpaaren gefunden (Stichprobe:
  realwert-sachwert ↔ ertragswert-dcf ↔ vergleichswert-hedonisch ↔ residualwertmethode auf
  ueberlappende Aussagen zu Diskontsatz, Flaechenfaktoren, Zinssaetzen — konsistent).

### B. Kaputte Backlinks & Orphans
Ein erster mechanischer Pass (Subagent) meldete 3 Kategorien von Verdachtsfaellen; alle drei
wurden manuell gegengeprueft und als falsch-positiv verworfen:
- `[[marktdaten-gemeinden/README]]` (21 Vorkommen in 15 Dateien) — Datei existiert
  (`wiki/marktdaten-gemeinden/README.md`), der mechanische Check hat nur `wiki/README.md`
  (flach) statt den Unterordner-Pfad gesucht. Kein toter Link.
- `[[sia-416-1-2007]]` (in `flaechendefinitionen-sia.md`) — bewusster Cross-KB-Link auf
  `wissen/normen/destillate/sia-416-1-2007.md` (Wissens-Chef Run 36, 18.08.2026 gesetzt).
  Kein toter Link innerhalb dieser KB.
- `zh-langnau-am-albis-8135.md` als "Orphan" gemeldet — tatsaechlich verlinkt von `INDEX.md:32`
  und `marktdaten-gemeinden/README.md:26`. Kein Orphan.
- Alle 27 Wiki-Artikel stehen in `INDEX.md` (mechanischer Abgleich bestaetigt, keine Ausnahme).

**Lehre fuer kuenftige Wissenschecks dieser KB:** ein reiner Dateiname-Match auf `[[link]]`
erzeugt hier viele falsch-positive Treffer wegen Unterordner-Pfaden (`marktdaten-gemeinden/`)
und bewusster Cross-KB-Referenzen. Vor dem Melden immer den Zielpfad rekursiv suchen.

### C. Unbelegte Claims
Stichprobe (statt Vollpruefung, Aufwand-Nutzen gemaess Audit-Vorgabe): zentrale Zahlenaussagen
in `realwert-sachwert.md`, `ertragswert-dcf.md` und `vergleichswert-hedonisch.md` tragen
durchgehend Quellenangaben mit Datum/Fundstelle (z.B. ZIW-Index-Stuetzstellen mit Publikations-
datum, SREBI/IMPI mit Publikationsdatum und `status: emerging`, wo die Primaerquelle nicht frei
zugaenglich war). Kein unbelegter Kernclaim gefunden. Die KB markiert unklare Herkunft aktiv
selbst (z.B. D10/D13 in `wissensluecken.md`: quellinterne Inkonsistenzen offen benannt statt
stillschweigend uebernommen) — genau das Verhalten, das dieser Audit einfordert.

### D. RAW-Coverage-Luecken
Aus `raw/_INGESTED.md`, Status "teilweise" (nicht "eingearbeitet"):
- **Marktpreis-Quellen** (`04 Marktpreise/`, 12 Quellen) → datenquellen-registry
- **Bodenpreise** (`05 Bodenpreise/`, Screenshots) → datenquellen-registry, lageklasse-landwertanteil
- **Kennwerte** (`06 Kennwerte/`, diverse) → datenquellen-registry

Alle drei sind bereits identisch in `wissensluecken.md` als D2/D7/D9 gefuehrt (Bring-Schulden
Raphael: Bodenpreis-Statistik-Zugang bzw. weitere Kennwert-Quellen). Keine neue Coverage-Luecke.

### E. Veraltete Artikel
- **UBS Fact Sheets mehrerer Gemeinden > 90 Tage alt UND neuere Evidenz vorhanden:**
  Waedenswil (Stand 2022), Einsiedeln/Regensdorf/Wald (12/2023) — teils >30 Monate. Dieselbe
  KB fuehrt selbst neuere Reihen mit spaeterem Publikationsstand (SREBI Q2-2026, IMPI Q2-2026),
  die zeigen, dass sich das Marktumfeld seither veraendert hat (SREBI dritter Anstieg in Folge,
  IMPI +3.5 % YoY) — die Evidenzbasis fuer eine Aktualisierung ist also da. Bereits bekannt und
  mit hoher Prioritaet in `wissensluecken.md` D1 gefuehrt (Bring-Schuld Raphael: neue Fact Sheets
  bestellen). Keine neue Erkenntnis, nur Bestaetigung des Alters.
- Alle anderen Verfahrensartikel (ertragswert-dcf, vergleichswert-hedonisch, realwert-sachwert)
  wurden zuletzt am 13.08.2026 aktiv gegen neue Marktdaten geprueft — nicht veraltet.

### F. Schreibregel-Verstoesse
- **T-Umlaut (bekannt, gross):** ae/oe/ue-Ersatzschreibung statt echter Umlaute, KB-weit seit
  23.07.2026 als T-Aufgabe gefuehrt. Dieser Lauf lokalisiert zusaetzlich (mechanischer Subagent-
  Scan, stichprobenartig verifiziert): `ertragswert-dcf.md` 56 Belege ("fuer", "ueber"),
  `realwert-sachwert.md` 31, `residualwertmethode.md` 14, `projektstruktur-deliverables.md` 15,
  `investorenmarkt-makro.md` 11, `vergleichswert-hedonisch.md` 11, `flaechendefinitionen-sia.md`
  10, `nutzungskonzepte.md` 8, `erfolgsfaktoren-wettbewerb.md` 5, `bewertungsverfahren-ueberblick.md`
  3, 5 Gemeinde-Fact-Sheets zusammen 8, Rest 5 — insgesamt konsistent mit dem 2'000+-Befund vom
  23.07. Nicht behoben (Sperrklausel: nur review-pflichtiger Phase-2-Lauf, kein Massenersatz).
- **Neu, klein:** 11 der 12 `marktdaten-gemeinden/*.md`-Dateien fuehren kein Feld `last_updated`
  im Frontmatter (Standard-Schema nennt `title, status, last_updated, sources, links`). Diese
  Dateien tragen stattdessen ein KB-eigenes Schema (`gemeinde, kanton, bfs, plz, ms_region,
  stand, sources`) mit dem Feld `stand` als De-facto-Aequivalent (Datenstand, z.B. "2025-12")
  — sachlich vorhanden, nur unter anderem Feldnamen. Niedrige Prioritaet: das KB-eigene Schema
  ist nirgends in `CLAUDE.md` explizit dokumentiert (nur `wissensluecken.md` als Abweichung von
  `QUESTIONS.md` ist dokumentiert, das Gemeinde-Frontmatter-Schema nicht). Vorschlag: bei
  Gelegenheit einen Satz dazu in `CLAUDE.md` ergaenzen, damit kuenftige Health-Checks das nicht
  wieder als Luecke lesen.
- `wissensluecken.md` traegt kein Frontmatter — das ist dokumentierte Abweichung
  (`CLAUDE.md` Zeile 67: "Schema-Abweichung: dieses KB nutzt `wissensluecken.md` statt
  `QUESTIONS.md`"), kein Verstoss.
- Keine ß-Vorkommen (Schweizer-Hochdeutsch-Konvention eingehalten).

### G. Promotion-Kandidaten
- **D1 (Langnau-Teilaspekt) ist erledigt und sollte nachgezogen werden:** siehe Top-1 oben.
  Empfehlung: die Klausel "(zudem Langnau am Albis ganz fehlend)" aus `wissensluecken.md`
  Zeile 11 streichen bzw. durch einen Erledigt-Vermerk ersetzen; die uebrigen Teile von D1
  (Waedenswil/Einsiedeln/Regensdorf/Wald veraltet) bleiben offen. Nicht selbst ausgefuehrt
  (Phase 2 laeuft in dieser Session nicht).
- **SREBI/IMPI-Werte (`status: emerging`, gesetzt 13.08.2026):** Primaerquelle (PDF) war zum
  Laufdatum nicht frei abrufbar, Medienberichterstattung gegengelesen. Promotion zu
  `established` erst nach direktem PDF-Zugriff — kein automatischer Kandidat, aber als
  Wiedervorlage vermerkt fuer den naechsten Marktpuls-Lauf (naechster Stichtag turnusgemaess,
  ausserhalb dieses Health-Checks).

## Nicht durchgefuehrt (Phase 2, gemaess Auftrag unbeaufsichtigt)

Keine Datei wurde veraendert. Die einzige empfohlene Aktion (D1-Registerpflege, siehe G) ist
trivial und risikofrei, wurde aber bewusst nicht ausgefuehrt, weil dieser Lauf unbeaufsichtigt
laeuft und Phase 2 laut Skill-Vertrag nur interaktiv stattfindet.
