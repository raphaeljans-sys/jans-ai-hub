---
title: Grobkosten-Kennwerte (CHF/m³ GV, BKP 1–5)
status: emerging
last_updated: 2026-07-27
sources: [skills/kostenschaetzung/referenzen/20260607-Wuest-Kostenbenchmarks-Wohnen-CHF-m2.md, wissen/immobilienbewertung/wiki/realwert-sachwert, wissen/immobilienbewertung/wiki/investorenmarkt-makro, raw/2414-thalwil.md, raw/2518-grubenackerstrasse.md, raw/2515-wartstrasse.md, raw/2202-ackersteinstrasse.md, raw/2304-reckholdern.md, raw/kennwerte-jans-referenzdokument.md, raw/8155-niederhasli-seestrasse64.md, raw/2001-haus-deuber-thalwil.md, raw/2411-wald-haselstudstrasse.md, raw/2412-ebmatingen-grossacher.md, raw/2305-waedenswil-precheck.md, raw/2620-albertstrasse.md, raw/zuercher-index-wohnbaukosten-1939-2025.md]
links: []
---

# Grobkosten-Kennwerte (CHF/m³ GV, BKP 1–5)

Quelle der Wahrheit für den Skill `grobkosten-onepager` und den Agenten `grobkosten-rechner`.
Bezug: **Gebäudevolumen GV nach SIA 416** (inkl. Untergeschoss), **BKP 1–5** (Gebäude, Umgebung,
Baunebenkosten inkl. Planerhonorare), **exkl. Land (BKP 0) und Reserven/Finanzierung (BKP 6–9)**.
Region Zürich / Zentralschweiz. Preisstand 2026. Immer als Grobschätzung ±25 % verwenden.

> Status der Werte: **Seed, Wüest-kalibriert (07.06.2026)** — an die belegten Wüest-Kostenbenchmarks
> (m²) angekoppelt, aber noch NICHT mit realen JANS-Schlussabrechnungen (m³) verifiziert. Reife
> steigt mit jedem zurückgespeisten Realwert (siehe Compounding unten).
>
> **Ankopplung an die m²-Benchmarks (belegt):** Wüest 2022 / Stand 2023 ergibt für Wohnen MFH
> Neubau rund **CHF 4'800/m² HNF** (BKP 1–5, inkl. Teuerung). Mit GV/HNF ≈ 4.7 (HNF ≈ 0.70 × GF,
> GV ≈ 3.3 × GF) entspricht das **≈ CHF 1'020/m³ GV** — das bestätigt den hier geführten Band
> 850–1'050 (gehoben). Quelle: `skills/kostenschaetzung/referenzen/20260607-Wuest-Kostenbenchmarks-Wohnen-CHF-m2.md`.
>
> **Querbezug KB immobilienbewertung:** Der Realwert-Artikel `wissen/immobilienbewertung/wiki/realwert-sachwert`
> führt eine **andere** Wüest-Kennwerttabelle (aus «Immobilien entwickeln», S. 37, qualitäts-/
> lagegestuft, z.B. Wohnen normale Lage 5'300 / gehoben 7'000 CHF/m² HNF) sowie reale JANS-m³-GV-
> Werte (Ebmatingen ~855 CHF/m³ GV). Das ist **kein Widerspruch**: verschiedene Wüest-Produkte mit
> verschiedener Bezugsbasis (Dimensions-Median vs. Ausbaustandard-Tabelle). Beim Vergleich Basis beachten.
>
> **Entscheid Wissens-Chef (12.07.2026) — Flächeneffizienz-Faktor HNF/GF ist kontextabhängig
> (kanonisch):** Der oben verwendete Wert **HNF ≈ 0.70 × GF** gilt für das **Regelgeschoss**
> (effizientes Wohngeschoss). Für Umrechnungen über das **ganze Gebäude** (Gesamtkosten und GV
> decken auch Sockel, Attika und Untergeschoss mit tieferem HNF-Anteil) gilt der triangulierte
> **Gesamtgebäude-Faktor ≈ 0.60–0.61** aus `wissen/immobilienbewertung/wiki/realwert-sachwert`.
> Für die **m²↔m³-Kostenbrücke** (Gesamtkosten ↔ GV) ist daher der **Gesamtgebäude-Wert 0.60
> massgebend**, nicht 0.70. Die obige ≈ 1'020 CHF/m³-Ankopplung bleibt gültig, weil sie direkt
> auf dem GV/HNF-Verhältnis 4.7 (Gesamtgebäude) beruht; das 0.70 dient nur als Geschoss-Kennwert.
>
> ⚠ **needs-decision — Wissens-Chef Run 15 (25.07.2026), adversarial verifiziert (BESTAETIGT):**
> Der letzte Halbsatz hält nicht nach. Die 4.7 ist rechnerisch **3.3 / 0.70 = 4.71**, also
> **regelgeschoss-basiert** — sie ist nicht vom 0.70 unabhängig. Mit den Gesamtgebäude-Faktoren
> ergäbe sich GV/HNF ≈ 5.0 (über die belegten JANS-Flächenfaktoren 0.20/0.33 in
> `immobilienbewertung/wiki/flaechendefinitionen-sia`) bis ≈ 5.5 (3.3 / 0.60) und damit ein Anker
> von ~870–960 statt ~1'020 CHF/m³ GV. Der geführte Anker bleibt **bis zum Entscheid gültig** — er
> liegt am oberen Rand des eigenen Bands 850–1'050 und innerhalb der ±25-%-Grobschätzungsspanne.
> **Zweiter, gekoppelter Punkt:** der E1-Regelgeschoss-Wert **0.70** kollidiert mit dem belegten
> **0.75** (Band 0.73–0.80 je Wohnungstyp, Flächenkonzeption Wohnen R. Jans 20.10.2024) im
> führenden Flächen-Artikel `immobilienbewertung/wiki/flaechendefinitionen-sia:84`. Beides ist ein
> **Fachentscheid Raphael** (Korrektur eines früheren Wissens-Chef-Entscheids), nicht autonom
> änderbar — vorgelegt im Bericht `koordination/outputs/2026-07-25_wissens-chef-run15.md`.
>
> **Teuerungs-Check (12.07.2026):** Die Kalibrierung 2022/23 bleibt gültig — der BFS-Baupreisindex
> (Stand April 2026 = 100.6 auf neuer Basis Okt-2025, +1.0 % YoY, moderat) ergibt eine kumulierte
> Bauteuerung seit Kalibrierung von nur ~2–3 %, weit innerhalb der ±25 %-Grobschätzungsspanne.
> Aktueller Marktstand: `wissen/immobilienbewertung/wiki/investorenmarkt-makro`.

## Wohnbau Neubau (CHF/m³ GV, BKP 1–5)

| Nutzung | Standard | Kennwert | Band (low–high) | Reife |
|---|---|---|---|---|
| MFH (Mehrfamilienhaus) | einfach | 800 | 700–900 | Seed |
| MFH | mittel | 900 | 800–1'000 | Seed |
| MFH | gehoben | 950 | 850–1'050 | Seed |
| EFH (Einfamilienhaus) | mittel–gehoben | 1'000 | 850–1'200 | Seed |
| Reihen-/Doppeleinfamilienhaus | mittel | 900 | 800–1'050 | Seed |

## Erste reale Datenpunkte (Run 2, 25.07.2026) — Einzelfälle, noch nicht promotionsfähig

Erster Ingest aus `raw/` (SharePoint `AR - 01 Projekte`, aktive Mandate). Beide Fälle sind zu
dünn belegt für eine Median-Bildung mit dem Seed-Band (Reife bleibt **Seed**, siehe Stufe-3-
Regel in `training/PROGRAMM.md`: bei n=1 den Seed nicht überschreiben) — hier nur transparent
als Einzelfall mit vollem Kaveat geführt, damit sie beim nächsten Fall (n=2) sofort verdichtet
werden können.

| Projekt | Bezug | Kennwert | Kaveat | Reife |
|---|---|---|---|---|
| 2414 Thalwil (EFH-Umbau) | Aufstockung mit Terrasse, Neubauteil, 160 m³ | 1'600 CHF/m³ | Teilvolumen (nicht Gesamt-GV), JANS-Grobschätzung 03/2025, kein Ausführungsbeleg | Einzelfall n=1 |
| 2414 Thalwil (EFH-Umbau) | Velokeller/Terrasse, Neubauteil, 90 m³ | 800 CHF/m³ | Teilvolumen (nicht Gesamt-GV), JANS-Grobschätzung 03/2025, kein Ausführungsbeleg | Einzelfall n=1 |
| 2518 Grubenackerstrasse 7 | Gesamtvolumen 1'668 m³ (TG/ZG/UG/EG/OG) | 950–1'050 CHF/m³ | Volumen NICHT SIA-416-verifiziert (rohe Fläche×Höhe-Rechnung), Nutzung/Standard/Bauherrschaft unbekannt, keine BKP-Gliederung, Preisstand 04/2023 | Einzelfall n=1, unverifiziert |

Vollständige Extraktion inkl. BKP-Detailpositionen: `raw/2414-thalwil.md`,
`raw/2518-grubenackerstrasse.md`. Ebenfalls geprüft, aber ohne verwertbaren CHF/m³-Datenpunkt:
`raw/2515-wartstrasse.md` (Fassaden-Teilprojekt ohne GV-Bezug, CHF 25'200).

## Run 3 (25.07.2026) — zwei weitere Fälle geprüft, aber KEINER auch nur als Einzelfall führbar

Aus SharePoint `AR - 07 Archiv` (abgeschlossene Mandate): 2202 Ackersteinstrasse 67 (Umbau
REFH) und 2304 Reckholdern 20 (Ersatzneubau EFH) haben beide GV-Angaben und BKP-/eBKP-H-
Kostengliederungen gefunden — anders als bei den Run-2-Fällen liegt das Problem hier nicht im
Fehlen von Grössen, sondern in **widersprüchlichen Kostenständen innerhalb desselben
Projekts bzw. sogar innerhalb desselben Dokuments** (Ackersteinstrasse: vier Stände zwischen
CHF 480'000 und 1'219'133 auf 613–850 m³ ohne dokumentierten Grund; Reckholdern: dasselbe
Dokument nennt sowohl CHF 2'960'000 als auch CHF 1'800'000 für dieselben 1'715 m³, letzteres
erkennbar aus einer nicht angepassten Fremdprojekt-Vorlage). Keiner der beiden Fälle wird
hier geführt — auch nicht als Einzelfall n=1 mit Kaveat, da die Provenienzkette nicht nur dünn,
sondern in sich widersprüchlich ist. Details: `raw/2202-ackersteinstrasse.md`,
`raw/2304-reckholdern.md`; offene Klärungsfrage in `wiki/QUESTIONS.md`.

## Run 4 (26.07.2026) — Reckholdern doch verwertbar (späteres Dokument löst Run-3-Widerspruch auf); Ackersteinstrasse-Ursache geklärt

Ein fünftes, später gelesenes JANS-eigenes Dokument (`2304RE20_Marktwertanalyse_RJ.pdf`, Stand
31.12.2023) liefert für **2304 Reckholdern 20** GV und BKP-1–5-Kosten erstmals im selben
Dokument UND intern rechnerisch konsistent (Gegenprobe P/GF, P/HNF, P/GV stimmen alle exakt).
Der Wert deckt sich zudem mit dem unabhängig in Run 3 gefundenen KV Siworks (CHF 3'446'500).
Der ältere, widersprüchliche eBKP-H-Stand aus Run 3 (GV 1'715 m³) bleibt verworfen. Details und
volle Herleitung: `raw/2304-reckholdern.md` (Abschnitt "Run 4").

| Projekt | Bezug | Kennwert | Kaveat | Reife |
|---|---|---|---|---|
| 2304 Reckholdern 20 (Ersatzneubau EFH, Hanglage) | GV 1'986 m³ SIA 416, BKP 1–5 klassisch, KV "Aktuelle Pläne" | 1'735 CHF/m³ | Kostenvoranschlag (kein Ausführungsbeleg), Standard gehoben/Luxus (Pool/Erker/Dachreiter, laut Quelle "Startbereich Luxussegment"), Preisstand 12/2023, Kanton Schwyz | Einzelfall n=1, aber GV+BKP-1–5 im selben Dokument und intern konsistent geprüft |

Für **2202 Ackersteinstrasse 67** klärt Run 4 die Ursache der Run-3-Widersprüche: Das Mandat
endete nachweislich in der Baugesuchs-/Abänderungseingabe-Phase (letzte Rechnung 07.09.2023,
Plangrundlagen für Abänderungseingabe) und erreichte nie die Ausführung — die vier
GKS-Revisionen waren Zwischenstände eines nie abgeschlossenen Projekts, kein Dokumentationsfehler.
Eine Bauabrechnung wird für dieses Projekt mit an Sicherheit grenzender Wahrscheinlichkeit nie
existieren. Weiterhin nicht verwertbar; Details: `raw/2202-ackersteinstrasse.md` (Abschnitt "Run 4").

Der neue EFH-Wert (1'735 CHF/m³, gehoben/Luxus) liegt deutlich über dem bisherigen EFH-Seed-Band
(850–1'200, mittel–gehoben) — konsistent mit der im Quelldokument selbst benannten
Luxus-Einordnung (Pool, Erker, Dachreiter, exponierte Hanglage). Kein Widerspruch zum Seed,
sondern ein Beleg dafür, dass das bestehende Band den gehobenen/Luxus-Bereich nicht abdeckt;
bei einem zweiten vergleichbaren Fall (n=2, gehoben/Luxus-EFH) wäre eine eigene Standardstufe
"Luxus" mit eigenem Band zu erwägen (siehe `wiki/QUESTIONS.md`).

## Run 5 (26.07.2026) — neue Quelle SharePoint `IMMO - 06 Kennwerte`: eigenständiger m²-GF-Benchmark (parallel zur m³-Tabelle, nicht vermischt)

Neue, bisher ungeprüfte Quelle ausserhalb der Projektordner: JANS' eigenes Referenzblatt
`_Kennwerte Jans.docx` (Stand 25.03.2025). Liefert einen indexierten Erstellungskosten-
Benchmark für Wohnen Individuell (EFH/ZFH) — aber auf Bezugsgrösse **CHF/m² GF**, nicht
CHF/m³ GV. Da der GV/GF-Umrechnungsfaktor selbst als "needs-decision" geführt wird (siehe
oben, Wissens-Chef Run 15), wird hier **nicht** umgerechnet, sondern der Wert eigenständig
geführt:

| Nutzung | Bezugsjahr | Kennwert | Herleitung | Reife |
|---|---|---|---|---|
| Wohnen Individuell (EFH/ZFH), Medianwert | 2020 → 2025 (Index 100→116) | 4'485 CHF/m² GF (BKP 1-5) | BKP2-Medianwert 2'900 CHF/m² GF (2020) indexiert auf 3'365 (2025), BKP2 = 75 % von BKP1-5 | JANS-Referenzwert, Index-Herleitung nicht rückverfolgt |
| Tiefgarage (Zuschlag, separat) | — | 42'000 CHF/Parkplatz (BKP 1-5) | aus demselben Referenzblatt, Rechenbeispiel 8 SP | JANS-Referenzwert, Einzelbeleg |

Vollständige Herleitung inkl. Rechenbeispiel "Thalwil Bohlweg 1" (950 m² GF, CHF 4.6 Mio,
HNF-Kennwert CHF 7'350.-/HNF): `raw/kennwerte-jans-referenzdokument.md`. **Wichtig:** das
Rechenbeispiel bezieht sich mutmasslich NICHT auf das bereits in dieser KB geführte Projekt
"2414 THALWIL Bohlweg 3" (andere Hausnummer, ca. 10x grösseres Volumen) — nicht gleichgesetzt,
offene Frage in `wiki/QUESTIONS.md`.

Weitere in derselben Quelle geprüfte Dokumente (Link-Sammlung, Drittsoftware-Handbuch BBase
Grobkosten 2012, Büro-Marktmietanalyse hbre) liefern keine verwertbaren JANS-Kostendaten —
Details und Begründung in `raw/kennwerte-jans-referenzdokument.md`.

## Run 6 (27.07.2026) — zwei neue, stärker belegte Einzelfälle (BKP-Einzelgliederung + explizites GV im selben Dokument)

Vier bisher ungeprüfte SharePoint-Bibliotheken parallel gesichtet (`AR - 03 Studien`,
`IMMO - 01 Projekte`, `IMMO - 02 UBSFS`/`IMMO - 03 KNOW-HOW`/`IMMO - 05 Bodenpreise`, zweite
Bibliothek `...-RaphaelJans-ArchitektenETH`). Ergebnis: mehrere neue Kandidaten, aber nur zwei
mit sauber im selben Dokument ausgewiesenem GV UND nachvollziehbarer BKP-1-5-Basis — die übrigen
scheitern an offenen Scope-/Bezeichnungsfragen (siehe `wiki/QUESTIONS.md`) und werden bewusst
NICHT hier geführt.

| Projekt | Bezug | Kennwert | Kaveat | Reife |
|---|---|---|---|---|
| 8155 Niederhasli, Seestrasse 64 (MFH Eigentum, Neubau) | GV 3'843.8 m³ SIA 416 (ober+unter, je Geschoss ausgewiesen), BKP 1–5 einzeln aufgeschlüsselt (408'400 + 2'813'573 + 0 + 150'930 + 593'503) | 1'032 CHF/m³ | Machbarkeitsstudie/WKB (kein Ausführungsbeleg), Standard-Einordnung unklar (Kostenniveau liegt über beiden im Dokument genannten Referenzstufen "Standard"/"Edel"), Preisstand 07/2025 | Einzelfall n=1, aber stärkster bisheriger Beleg (explizite BKP-1-5-Einzelgliederung + explizites GV im selben Dokument) |
| 2001 Haus Deuber, Seehaldenstrasse 22/24, Thalwil (MFH, sistierte Baueingabe) | GV 2'725 m³ SIA 416, Anlagekosten B–Z (eBKP-H, funktional ≈ BKP 1-5) inkl. 7.7 % MwSt. CHF 2'960'000 | 1'086 CHF/m³ | eBKP-H- statt BKP-2017-Klassifikation (Näherung, keine 1:1-Übersetzung verifiziert), "norm, eloquent"-Standard-Label mutmasslich Vorlagentext (nicht projektspezifisch bewertet), Projekt nie zur Ausführung gekommen, Preisstand 10/2020 | Einzelfall n=1 |

**Bewusst NICHT hier geführt (Scope-/Bezeichnungsfragen offen):** 2411 Wald Haselstudstrasse
(GV explizit 5'921 m³, aber Kostentotal als uneinheitlich bezeichnetes "BKP 1-9" geführt —
Vorbehalt zu BKP9-Anteil und Faktor-Bezeichnung ungeklärt, `raw/2411-wald-haselstudstrasse.md`);
8123 Ebmatingen Im Grossacher 2, zweites Dokument (kein explizites GV, keine Rückrechnung
gemäss Leitplanke, `raw/2412-ebmatingen-grossacher.md`).

**Noch keine Median-Bildung ausgelöst:** Mit nun vier MFH-Einzelfällen (Grubenackerstrasse
950-1050 unverifiziert, Haus Deuber 1'086, Niederhasli 1'032, dazu der ausgeklammerte Wald-Wert
1'539-1'765 als obere Näherung) läge grundsätzlich n≥2 für "MFH" vor — die Standards sind aber
uneinheitlich benannt/unklar (siehe Kaveats) und die Datenqualität pro Fall unterschiedlich, ein
gemeinsamer Median würde Ungleiches vermischen. Bewusst konservativ: keine Stufe-3-Promotion in
diesem Lauf, stattdessen als offener Klärungsbedarf in `wiki/QUESTIONS.md` vermerkt (Standard-
Klassifikation vereinheitlichen, BKP-1-9-vs-1-5-Frage auflösen), bevor eine Median-Bildung
seriös möglich ist.

## Zuschläge (multiplikativ)

| Treiber | Zuschlag | Hinweis |
|---|---|---|
| Hanglage (Gefälle > 20 %) | + 5–15 % | Aushub, Hangsicherung, Baulogistik |
| Anspruchsvoller Baugrund / Altlasten | + 5–20 % | objektabhängig, separat abklären |
| Hoher Ausbaustandard / Nachhaltigkeit (Minergie-P, Holz) | + 5–15 % | je nach Zielbild |
| Kleines Volumen (< 1'000 m³) | + 5–10 % | Fixkostendegression fehlt |

## Healthcare / Spezialnutzung

Für Spital, Klinik, Alters-/Pflegeheim, Reha, Praxis NICHT diese m³-Werte verwenden —
stattdessen die belegten **m²-NF-Kennwerte (Wüest Partner)** aus dem Skill `kostenschaetzung`
(`referenzen/20260302-Kostenkennwerte-Healthcare-Neubau-Umbauten.pdf`).

## Umbau / Sanierung

Grobe Faustregel über Reduktionsfaktoren des Neubau-m³-Werts (Eingriffstiefe). Für belastbare
Umbau-Schätzungen den Skill `kostenschaetzung` (Reduktionsfaktoren) heranziehen.

**Erster realer Umbau-Einzelfall (Run 8, 27.07.2026):**

| Projekt | Bezug | Kennwert | Kaveat | Reife |
|---|---|---|---|---|
| 2620 Albertstrasse 7 (Umnutzung Bestand, Dachausbau-Variante) | Umbauvolumen 350 m³ (Maisonette-Umwandlung, gehobener Wohnstandard) | 2'500 CHF/m³ | GKS-Budget-Annahme Projektpflichtenheft (±25 %, keine Unternehmerofferten), GV-Herkunft nicht dokumentiert (nicht SIA-416-verifiziert), Preisstand 07.03.2026, Bauherrschaft Nova Property Fund Management AG | Einzelfall n=1 |

Deutlich über dem Neubau-Seed-Band, plausibel für eine Umbau-/Umnutzungsvariante (Dachausbau
mit Bestandes-Erschwernissen statt Neubau auf freiem Baufeld) — kein Widerspruch, sondern
erster Beleg dafür, dass Umbau/Sanierung eigene, höhere Kennwerte braucht statt eines simplen
Reduktionsfaktors auf den Neubau-Wert. Details: `raw/2620-albertstrasse.md` (Dokument 1,
Variante 3). Aus demselben Projekt zusätzlich eine reale, unternehmerofferten-gestützte
BKP-Einzelposition-Referenz (KV Direktvermietung light, CHF 386'021 exkl. MwSt., ohne
Bezugsgrösse) — nicht in Kennwerte-Tabelle übernommen, siehe `raw/2620-albertstrasse.md`
Dokument 2.

## Baupreisindex ZH (Teuerungs-Normalisierung, Stufe 4)

**Belegter, verketteter Index gefunden (Run 8, 27.07.2026):** Der «Zürcher Index der
Wohnbaukosten» (Stadt Zürich, Erhebung seit 1939) wird von mehreren Verbänden mit den
jeweiligen Rebasierungspunkten weitergeführt und publiziert. Die von `IMMO - 03 KNOW-HOW/06
Schaetzungen/schaetzungsanleitung_kap5.pdf` (Stand 2003, bricht bei 01.04.2004 ab) offen
gelassene Frage — lässt sich die Reihe auf einen aktuellen Stichtag verketten — ist damit
**gelöst**: eine bis 01.04.2025 fortgeführte Fassung derselben Quelle (Publisher HEV Kt.
Schwyz, Stand 01.01.2026, `raw/zuercher-index-wohnbaukosten-1939-2025.md`) schliesst nahtlos
an (identische Werte bis 2004: 907.6 auf Basis 1939=100) und führt die Reihe bis 01.04.2025
weiter, mit Rebasierungspunkten 1939/1966/1977/1988/1998/2005/2010/2017/2020/2021/2022/2023/2024.

**Kumulierte Bauteuerung (Zürcher Index Wohnbaukosten), fertig nutzbare Faktoren:**

| Von (Preisstand) | Bis 01.04.2025 | Faktor | Zuschlag |
|---|---|---|---|
| 01.04.2004 | 01.04.2025 | 1210.4 / 907.6 | +33.4 % |
| 01.04.2020 | 01.04.2025 | 115.8 / 100.0 | +15.8 % |
| 01.04.2022 | 01.04.2025 | 107.2 / 100.0 | +7.2 % |
| 01.04.2023 | 01.04.2025 | 101.6 / 100.0 | +1.6 % |
| 01.04.2024 | 01.04.2025 | 101.1 / 100.0 | +1.1 % |

Neuster in dieser Quelle enthaltener Stand ist 01.04.2025 (Publikation Juni/Juli, ein
01.04.2026-Wert lag zum Abrufzeitpunkt 27.07.2026 in dieser Quelle noch nicht vor). Für einen
Wert mit Preisstand X: Faktor = Index(01.04.2025) / Index(Preisstand X) auf derselben
Rebasierungs-Spalte ablesen (Details/volle Tabelle: `raw/zuercher-index-wohnbaukosten-1939-2025.md`).
Deckt sich grössenordnungsmässig mit dem bereits geführten BFS-Baupreisindex-Cross-Check
(12.07.2026, ~1 %/Jahr, moderat) — zwei unabhängige Quellen, kein Widerspruch.

**Anwendung (ab sofort möglich, in diesem Lauf noch nicht auf alle Einzelfälle angewendet):**
Die in dieser KB geführten Einzelfälle mit Preisstand vor 2025 (z.B. Reckholdern 12/2023,
Haus Deuber 10/2020, Wald/Niederhasli 07/2025) können mit obiger Tabelle auf einen
gemeinsamen Stichtag (z.B. 01.04.2025 oder laufender Preisstand) normalisiert werden, sobald
eine Median-Bildung ansteht — bisher unterbleibt die Normalisierung, weil die Median-Bildung
selbst noch an anderen offenen Fragen hängt (Standard-Klassifikation, BKP-1-9-vs-1-5, siehe
`wiki/QUESTIONS.md`).

## Umrechnung Baumasse → Gebäudevolumen

Die baurechtliche **Baumasse** (BMZ) zählt meist nur oberirdisch; das **GV SIA 416** schliesst das
Untergeschoss ein und ist grösser. Faustregel bei Wohnbau mit 1 UG: GV ≈ Baumasse × 1.25–1.45
(je nach UG-Anteil/Hang). Im Zweifel GV direkt aus der Kubatur des Vorprojekts nehmen.

## Compounding — wie diese Werte besser werden

1. Realwert fällt an (Schlussabrechnung via `kostenkontrolle`, geprüfte Unternehmer-Offerte,
   Benchmark) → als Rohdatei in `wissen/grobkosten/raw/` ablegen (Projekt, Nutzung, Standard,
   GV, Kosten BKP, Quelle, Datum).
2. KI-Bibliothekar (Rule `wissens-bibliothekar`) verdichtet die Rohwerte je
   Nutzung/Standard/Region zu Median + Band, aktualisiert die Tabelle, hebt die **Reife** von
   "Seed" auf "belegt (n=…)" und protokolliert im `CHANGELOG.md`.
3. Veraltete Werte (Preisstand) werden beim `wissenscheck` markiert und nachgeführt.

## Querbezug KB energie (Haustechnik-Detailkosten)

Wärmeerzeuger-, PV- und Fernwärme-**Komponentenkosten** (CHF/kWp, Anschlusskosten, Rp/kWh) werden
in der KB `wissen/energie` geführt (`destillate/pv-marktzahlen-kosten-ch-2025`,
`destillate/fernwaerme-anschlusskosten-zh`, `destillate/netzanschluss-netzverstaerkung-pv-emobilitaet-ch`).
Diese stecken als BKP-2-Unterpositionen (BKP 23/24/25) **bereits in den hier geführten CHF/m3-GV-Kennwerten
(BKP 1-5)** — nicht additiv daraufrechnen (Doppelzählungs-Gefahr). Führend für die m3-GV-Erstellungs-
kennwerte bleibt diese KB; energie liefert nur die Detail-/Betriebskosten (Wissens-Chef Run 4, 14.07.2026).

## Quellen / Provenienz

- Seed 07.06.2026: Marktannahme MFH/EFH Neubau Region ZH (Erfahrungswerte JANS), kalibriert an der
  Studie 2621 Giebelweg 12. Noch ohne Realabrechnung.
- Ziel: schrittweise Ablösung durch reale JANS-Daten (raw/) und publizierte Benchmarks.
- Run 2 (25.07.2026): erster raw/-Ingest aus SharePoint `AR - 01 Projekte` (aktive Mandate,
  Zweitquelle nach Nullbefund im NAS-Altarchiv `04_Buero/02_Projekte`, siehe
  `training/quellen-inventar.md`). Zwei dünne Einzelfälle (2414 Thalwil, 2518 Grubenacker-
  strasse) oben unter "Erste reale Datenpunkte" dokumentiert — Seed-Werte bewusst NICHT
  überschrieben (Provenienz zu schwach für n=1-Promotion).
- Run 3 (25.07.2026): Drittquelle SharePoint `AR - 07 Archiv` (abgeschlossene Mandate)
  vollständig geprüft. Zwei Projekte mit GV+BKP-Material gefunden (2202 Ackersteinstrasse,
  2304 Reckholdern), beide wegen interner Widersprüche in den Quelldokumenten nicht verwertbar
  — Seed-Werte unverändert. Damit sind beide bekannten SharePoint-Projektquellen
  (`AR - 01 Projekte`, `AR - 07 Archiv`) vollständig durchgeprüft.
- Run 4 (26.07.2026): gezielte Vertiefung der beiden Run-3-Kandidaten (Vorschlag aus
  `QUESTIONS.md`) statt neuer Projektordner. Reckholdern: ein fünftes, späteres JANS-Dokument
  (Marktwertanalyse 31.12.2023) löst den Run-3-Widerspruch auf und liefert den ersten
  Einzelfall n=1 mit GV+BKP-1–5 im selben, intern konsistent geprüften Dokument (1'735 CHF/m³,
  EFH gehoben/Luxus). Ackersteinstrasse: Rechnungsprüfung klärt, dass das Mandat nie zur
  Ausführung kam (letzte Rechnung Abänderungseingabe 09/2023) — bleibt nicht verwertbar, aber
  Ursache dokumentiert statt offen.
- Run 5 (26.07.2026): neue Quelle ausserhalb der Projektordner geprüft — SharePoint
  `IMMO - 06 Kennwerte` (kuratierte Kennwerte-Bibliothek, nicht projektgebunden). Liefert einen
  eigenständigen m²-GF-Benchmark aus JANS' eigenem Referenzblatt (4'485 CHF/m² GF BKP1-5,
  Wohnen Individuell EFH/ZFH, Index 2020→2025), bewusst NICHT in die m³-GV-Tabelle
  umgerechnet (ungeklärter GV/GF-Faktor). Details `raw/kennwerte-jans-referenzdokument.md`.
- Run 6 (27.07.2026): vier weitere SharePoint-Bibliotheken parallel gesichtet (`AR - 03
  Studien`, `IMMO - 01 Projekte`, `IMMO - 02/03/05`, zweite Bibliothek `...-RaphaelJans-
  ArchitektenETH`). Zwei neue Einzelfälle mit explizitem GV + nachvollziehbarer BKP-1-5-Basis
  im selben Dokument aufgenommen (Niederhasli 1'032 CHF/m³, Haus Deuber Thalwil 1'086 CHF/m³);
  zwei weitere Kandidaten (Wald Haselstudstrasse, zweites Ebmatingen-Dokument) wegen offener
  Scope-/Bezeichnungsfragen bewusst nicht promoviert. Details `raw/8155-niederhasli-
  seestrasse64.md`, `raw/2001-haus-deuber-thalwil.md`, `raw/2411-wald-haselstudstrasse.md`,
  `raw/2412-ebmatingen-grossacher.md`.
- Run 7 (27.07.2026): die drei in Run 6 identifizierten offenen Kandidaten vertieft (Excel-
  Einsicht via `openpyxl`, keine neuen Projektordner). Pre-Check-Tool 2305 Wädenswil liefert
  einen direkten Tool-internen Beleg für die ungelöste BKP-1-9-vs-1-5-Frage (dieselbe Zeile
  beschriftet denselben Faktor einmal als «BKP 2 → BKP 1-5», einmal als «Total BKP 1-9») —
  Kennwert (1'380–1'546 CHF/m³) bewusst NICHT promoviert. Zwei weitere Kandidaten (2304
  Waedenswil-Tool-Variante ohne Projektbezug, Langnau Giebelweg 12 nur Annahme-Kosten)
  abschliessend als nicht verwertbar geschlossen. Kein neuer Kennwert in dieser Tabelle.
  Details `raw/2305-waedenswil-precheck.md`, offene Klärung in `wiki/QUESTIONS.md`.
- Run 8 (27.07.2026): zwei Funde ohne neuen Projektordner. (1) Ein in Run 4 bereits
  extrahierter, aber nie registrierter Roh-Beleg (`raw/2620-albertstrasse.md`, SharePoint
  `AR - 03 Studien/2620 ALBERTSTRASSE 7/04 KT/Kosten/`) nachträglich vollständig integriert:
  erster realer Umbau-Einzelfall der KB (2'500 CHF/m³, Dachausbau-Umnutzung). (2) Der in Run 6
  als "möglicher Baustein für Stufe 4" identifizierte Zürcher Baukostenindex (der in der
  JANS-eigenen Quelle 2004 abbricht) wurde extern bis 01.04.2025 verkettet gefunden
  (`raw/zuercher-index-wohnbaukosten-1939-2025.md`) — die Stufe-4-Blockfrage aus
  `training/PROGRAMM.md` ("wenn ein belegter Baupreisindex … in der KB hinterlegt ist") ist
  damit erstmals mit fertig nutzbaren Umrechnungsfaktoren beantwortet, aber noch nicht auf
  die bestehenden Einzelfälle angewendet (Median-Bildung hängt weiterhin an anderen offenen
  Fragen). Details/Faktoren: Abschnitt "Baupreisindex ZH" oben.
