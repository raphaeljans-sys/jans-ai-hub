---
title: Grobkosten-Kennwerte (CHF/m³ GV, BKP 1–5)
status: emerging
last_updated: 2026-08-17 (Run 16)
sources: [skills/kostenschaetzung/referenzen/20260607-Wuest-Kostenbenchmarks-Wohnen-CHF-m2.md, wissen/immobilienbewertung/wiki/realwert-sachwert, wissen/immobilienbewertung/wiki/investorenmarkt-makro, raw/2414-thalwil.md, raw/2518-grubenackerstrasse.md, raw/2515-wartstrasse.md, raw/2202-ackersteinstrasse.md, raw/2304-reckholdern.md, raw/kennwerte-jans-referenzdokument.md, raw/8155-niederhasli-seestrasse64.md, raw/2001-haus-deuber-thalwil.md, raw/2411-wald-haselstudstrasse.md, raw/2412-ebmatingen-grossacher.md, raw/2305-waedenswil-precheck.md, raw/2620-albertstrasse.md, raw/zuercher-index-wohnbaukosten-1939-2025.md, raw/zuercher-index-wohnbaupreise-2025-10-update.md, raw/2025-wueest-lignum-massiv-vs-holzbau-erstellungskosten.md, raw/2304-waedenswil-residualwert-zwei-varianten.md]
links: [wissen/immobilienbewertung/wiki/realwert-sachwert, wissen/immobilienbewertung/wiki/investorenmarkt-makro, wissen/immobilienbewertung/wiki/flaechendefinitionen-sia, wissen/immobilienbewertung/wiki/wissensluecken]
---

# Grobkosten-Kennwerte (CHF/m³ GV, BKP 1–5)

Quelle der Wahrheit für den Skill `grobkosten-onepager` und den Agenten `grobkosten-rechner`.

> **Abnehmer dieser Kennwerte — bei jeder Bandänderung mitziehen** [gesetzt Wissens-Chef Run 17,
> 27.07.2026; zuvor null Treffer für «entwurfs-referenzen», «parameter-set» und «wettbewerbs-dna»
> im ganzen Wiki dieser KB]:
> - `wissen/entwurfs-referenzen/wiki/parameter-sets/wohnen-mfh-urban.json` (v2.0 seit 27.07.2026)
>   zeigt im Feld `quelle_kb` auf diese KB — für den **Wohnbau** ist das korrekt, hier ist
>   `grobkosten` führend.
> - `wissen/wettbewerbs-dna/wiki/muster/kennwerte-wohnungsbau.md` (Etappe-3-Baustein B5).
>
> **Abgrenzung, die nicht verwischt werden darf:** Für **Healthcare** ist diese KB ausdrücklich
> **nicht** führend — dort gilt `wissen/immobilienbewertung/wiki/realwert-sachwert.md`
> (826–1'420 CHF/m³ GV, Median ~1'100; das oft zitierte Teilband 1'053–1'420 betrifft nur die sechs
> Neubauten ab 2019).
>
> **Zwei Qualifizierungen, die beim Zitieren zwingend mitgehen** (nachgetragen Cross-KB-Lauf Run 27,
> 06.08.2026 — der Healthcare-Abschnitt weiter unten auf dieser Seite führte sie bereits, der
> Kopfblock nicht; damit widersprach sich die Seite an der Stelle, an der zitiert wird):
> 1. **Scope.** Die dortigen Bänder sind auf **BKP 2 (Gebäude)** bezogen und **nicht direkt mit den
>    BKP-1–5-Werten dieser Seite vergleichbar** (die BKP-1–5-Deklaration steht unmittelbar darunter).
> 2. **Oberer Endpunkt.** Der Wert **1'420** (Averecura) ist quellenintern **nicht reproduzierbar**
>    (recompute 1'285), ebenso die Vella-Zeile (1'021 statt 845); die übrigen sechs Zeilen
>    reproduzieren exakt. Der **reproduzierbare Rohband** liegt bei **826–1'285 CHF/m³ GV** — als
>    reproduzierbarer ROHBAND zu lesen, **nicht** als neuer geltender Band. Der Entscheid hängt an
>    der Bereinigung des JANS-Original-Blatts und liegt bei Raphael (Verifikationsnotiz Run 18 im
>    führenden Artikel, `wissen/immobilienbewertung/wiki/wissensluecken.md` D10).
>
> Für **CHF/m² HNF** führt ebenfalls `immobilienbewertung` (Wüest-Ausbaustandard-
> Tabelle), für den **Wüest-Benchmark** (Median/Quantile) `skills/kostenschaetzung/referenzen/`.
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
`IMMO - 01 Projekte`, `IMMO - 02 Standort INFO`/`IMMO - 03 KNOW-HOW`/`IMMO - 05 Bodenpreise`, zweite
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
| Hoher Ausbaustandard / Nachhaltigkeit (Minergie-P) | + 5–15 % | je nach Zielbild, weiterhin unbelegter Seed |
| Kleines Volumen (< 1'000 m³) | + 5–10 % | Fixkostendegression fehlt |

**Bauweise Holz vs. Massivbau (kalibriert, Run 30.07.2026):** aus der Zuschlagszeile "Holz"
oben herausgelöst, weil jetzt eigenständig belegt (bisher unbelegter Seed vermischte Bauweise
und Ausbaustandard). Quelle: Wüest Partner/Lignum/BAFU, «Massiv- vs. Holzbau: Erstellungskosten
…», 25.09.2025 (`raw/2025-wueest-lignum-massiv-vs-holzbau-erstellungskosten.md`), Diagramm-
Ablesung (Folie 5, keine Originalzahlen im Textlayer, ca.-Werte), auf 01.04.2025 normalisiert:

| Bauweise | Zuschlag ggü. Massivbau | Hinweis |
|---|---|---|
| Holzbau, unteres Preissegment | ≈ 0 % (Parität) | Median ≈975 vs. Massivbau ≈995 CHF/m³ GV |
| Holzbau, oberes Preissegment | ≈ +13 % | Median ≈1'120 vs. Massivbau ≈995 CHF/m³ GV |

**Verhältnis zur HNF-Quelle (korrigiert 30.07.2026 Run 21, präzisiert 31.07.2026 Run 22):** Das
HNF-Referenzblatt `skills/kostenschaetzung/referenzen/20260607-Wuest-Kostenbenchmarks-Wohnen-CHF-m2.md`,
Abschnitt 3, führt seit dem 31.07.2026 die **exakten Quantile** der Primärquelle statt der früheren
Diagramm-Ablesung: Massivbau-Median 4'492, Holzbau unteres Segment 4'980 (+10.9 %), oberes Segment
6'506 (**+44.8 %**, nicht +38 %) CHF/m² HNF. **Neu belegt und zu korrigieren:** die beiden Reihen
stammen aus **derselben Wüest-Studie mit derselben Stichprobe** (17 Holzbauten / knapp 50
Massivbau-Referenzen, Indexstand April 2023) — HNF auf S. 18/36, GV auf S. 34. Die frühere
Aussage «verschiedene Stichproben und beidseitige Diagramm-Ableseunschärfe» ist damit **widerlegt**.
Als Erklärung der Spreizung bleibt allein die **Bezugsgrösse** (HNF nur oberirdisch gegen GV
Gesamtvolumen). Der Grund für die Grössenordnung der Spreizung ist weiterhin ungeklärt;
der hier geführte GV-Zuschlag gilt ausschliesslich für die CHF/m³-GV-Kennwerte dieser KB. Ein
bestätigender Quervergleich mit der HNF-Quelle wird ausdrücklich NICHT behauptet. Belastbarer
Konsistenz-Beleg des neuen Kennwerts bleibt allein der zweite Check: Massivbau-Median ≈995 CHF/m³
GV innerhalb des eigenen MFH-gehoben-Seed-Bands 850–1'050
(`raw/2025-wueest-lignum-massiv-vs-holzbau-erstellungskosten.md`).

**Anwendungsgrenze (Datenlage):** Die Stichprobe hinter diesem Zuschlag (17 Holz-Neubauten
2019–2022, 10+ Wohnungen, BKP 1–5 5–150 Mio.,
`raw/2025-wueest-lignum-massiv-vs-holzbau-erstellungskosten.md`) weist keine
Gebäudehöhenkategorie und keine Brandschutzanforderung je Objekt aus. Ob und wie stark eine
RF1-/Kapselungsanforderung den Aufpreis verschiebt, ist aus dieser Quelle nicht ableitbar; der
Zuschlag ist deshalb bei brandschutztechnisch erhöhten Anforderungen (zusätzliche Bauteilstärken
und Bekleidungsflächen in BKP 214/271) als untere Näherung zu lesen. Ob eine solche Anforderung
im konkreten Fall besteht, führt nicht diese KB: massgebend sind die VKF-Brandschutzvorschriften
2015 bzw. die Arbeitshilfen (`wissen/normen/destillate/vkf-brandschutznorm-2015.md`,
`.../vkf-ah-1001-15-wohnbauten.md`); die konstruktiven Kennwerte dazu in
`.../lignum-4-1-decken-waende-bekleidungen-feuerwiderstand.md` und
`.../lignum-4-2-anschluesse-feuerwiderstand.md` (Rule `normen-referenz`).

Ersetzt die pauschale "Holz +5–15 %"-Zeile für die Bauweisen-Frage; der Ausbaustandard-Zuschlag
(Minergie-P) bleibt unabhängig davon offen/unbelegt.

**Brandschutz-Mehraufwand RF1, Mengen erfasst, CHF-Kennwert noch offen (Bring-Schuld aus
`normen` Run 30–33/38 teilweise eingelöst, 31.07.2026):** Die beiden Lignum-Tabellen aus der
Anwendungsgrenze oben liefern unterschiedlich weit tragfähige Grössen:

- **Tab. 522-1 (Kap. 5.2.2) — mengenmässig konkret:** Decken RF1 verlangen zusätzlich zur
  Brandschutzbekleidung (K30-RF1 bzw. K60-RF1) einen dickeren Estrich als bei der
  freien, nicht-RF1-Materialwahl — **+30 mm bei K30-RF1, +50 mm bei K60-RF1**
  (`wissen/normen/destillate/lignum-4-1-decken-waende-bekleidungen-feuerwiderstand.md`,
  Kap. 5.3). Das ist eine belegte Mehrmenge Zementestrich pro m² Deckenfläche gegenüber dem
  Standard-Kennwert dieser KB, aber **kein CHF-Betrag**: diese KB führt keinen CHF/m²/cm-Satz
  für Zementestrich und keinen CHF/m²-Satz für K30-RF1/K60-RF1-Bekleidungen (Recherche in
  `wissen/bauprodukte/` und `skills/kostenschaetzung/referenzen/` ohne Treffer, 31.07.2026).
- **Tab. 340-1 (Kap. 3.4) — voraussichtlich kostenneutral:** Die dort verlangten
  Mindestfestigkeitsklassen/-rohdichten (Vollholz/Brettstapel C24, Brettschichtholz GL24k,
  OSB ρk ≥ 550 kg/m³ usw.) entsprechen den im Holzbau ohnehin marktüblichen Standardgüten
  — kein erkennbarer eigener Kostentreiber gegenüber dem bereits kalibrierten
  Holzbau-Zuschlag oben. Nicht abschliessend geprüft, ob eine Bauaufgabe eine höhere Güte
  verlangt, als ohnehin verbaut würde.
- **Offen bleibt** ein CHF/m²-Kennwert für zwei getrennt zu buchende Positionen (BKP-Codes
  richtiggestellt 31.07.2026, Wissens-Chef Run 22, gegen `references/bkp-2017/BKP-2017-Liste.md`):
  - **Mehrestrich → BKP 281.0 «Estriche (Unterlagsböden)»**, nicht 214 oder 271. Gebraucht wird
    ein Einheitspreis Zementestrich (CHF/m²/cm).
  - **RF1-Bekleidung → BKP 271.1 «Trockenbauarbeiten (EI-Wände, Brandschutz)»** bzw., wo als
    reine Brandschutzbekleidung ausgeschrieben, **BKP 225.4 «Brandschutzbekleidungen und dgl.»**.
    Gebraucht wird ein Einheitspreis K30-RF1/K60-RF1 (CHF/m², z. B. Gipsplatten-Systemwand).

  Beide Einheitspreise liegen in keiner Hub-Quelle vor. **Nicht bei `bauprodukte` erwarten:**
  jene KB führt laut Führungsmatrix ausdrücklich keine Kalkulations-Kennwerte, und ihr Korpus
  (`/Volumes/daten/03 Bauprodukte_BKP`) enthält Produktunterlagen, keine Devis oder
  Unternehmerofferten. Nächster Schritt ist deshalb ein reales Devis aus dem
  `ausschreibung`-/`offertenpruefung`-Bestand, statt einen Satz zu schätzen.
  *(Die Zuordnung «BKP 214/271» weiter oben für zusätzliche **Bauteilstärken und
  Bekleidungsflächen im Holzbau** bleibt richtig — 214.1/214.3 Montagebau in Holz, 271.1
  Trockenbau; nur der Estrich war dort falsch einsortiert.)*

## Healthcare / Spezialnutzung

Für Spital, Klinik, Alters-/Pflegeheim, Reha, Praxis NICHT diese m³-Werte verwenden. Diese KB
führt für Healthcare bewusst **keine** Kennwerte (Führungsmatrix `wissen/koordination/QUERBEZUEGE.md`;
siehe auch den Kopfblock dieser Seite).

- **CHF/m³ GV und CHF je Pflegeplatz** führt `wissen/immobilienbewertung/wiki/realwert-sachwert.md`
  — dort im Original nachschlagen, nie von hier zitieren. Achtung: die dortigen Bänder sind auf
  **BKP 2 (Gebäude)** bezogen und deshalb nicht direkt mit den BKP-1-5-Werten dieser Seite
  vergleichbar; der obere Endpunkt trägt einen Vorbehalt.
- **CHF/m² NF** (Neubau und Umbau) führt der Skill `kostenschaetzung`
  (`referenzen/20260302-Kostenkennwerte-Healthcare-Neubau-Umbauten.pdf`).
- Für die Wirtschaftlichkeitsrechnung: Skill `healthcare-wirtschaftlichkeit`.

*(Zeiger auf die führende KB ergänzt 31.07.2026, Wissens-Chef Run 22 — der Abschnitt nannte bisher
nur den Skill und damit nicht die laut Matrix führende Quelle.)*

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

> **Nachtrag Run 16 (17.08.2026):** Primärquelle (Stadt Zürich, nicht mehr nur die HEV-SZ-Kopie)
> direkt geprüft — neuster amtlicher Stand ist jetzt **01.10.2025 = 116.1 Punkte (Basis
> April 2020=100)**, +0.3 % ggü. 01.04.2025. Rechnerisch auf Basis 1939=100 umgelegt (Kettenfaktor
> 10.4525, siehe Roh-Beleg) ≈ **1'213.5** — eine Verschiebung des Ankers um nur **+0.26 %**
> gegenüber dem bisherigen 01.04.2025-Stand. Bewusst NICHT auf die Einzelfälle in Run 9 unten
> angewendet (Effekt liegt unter der Rundungsgenauigkeit der KB, z.B. Niederhasli 1'032 → ≈1'033);
> Anker hier nur vermerkt, damit er beim nächsten grösseren Publikationssprung (z.B. April-2026-
> Stand) als Zwischenstützstelle zur Verfügung steht. Details: `raw/zuercher-index-wohnbaupreise-
> 2025-10-update.md`. Ein kolportierter 01.04.2026-Stand (aus einer KI-Suchzusammenfassung, nicht
> aus der Primärquelle direkt bestätigt) wurde bewusst **nicht** übernommen — offener Punkt für
> einen künftigen Lauf, siehe `wiki/QUESTIONS.md`.

**Anwendung (ab sofort möglich, in diesem Lauf noch nicht auf alle Einzelfälle angewendet):**
Die in dieser KB geführten Einzelfälle mit Preisstand vor 2025 (z.B. Reckholdern 12/2023,
Haus Deuber 10/2020, Wald/Niederhasli 07/2025) können mit obiger Tabelle auf einen
gemeinsamen Stichtag (z.B. 01.04.2025 oder laufender Preisstand) normalisiert werden, sobald
eine Median-Bildung ansteht — bisher unterbleibt die Normalisierung, weil die Median-Bildung
selbst noch an anderen offenen Fragen hängt (Standard-Klassifikation, BKP-1-9-vs-1-5, siehe
`wiki/QUESTIONS.md`).

## Run 9 (27.07.2026) — Teuerungs-Normalisierung auf die vier belastbarsten Einzelfälle angewendet

Gemäss Empfehlung aus `wiki/QUESTIONS.md` (Run 8, Option a): die in Run 8 gefundenen
Baupreisindex-Faktoren (Abschnitt "Baupreisindex ZH" oben) auf die vier Einzelfälle mit
sauberem GV+BKP-1-5-Tripel angewendet, um sie auf einen gemeinsamen Stichtag (01.04.2025,
neuster verfügbarer Indexanker) zu bringen. **Methode:** liegt der Preisstand eines Falls
zwischen zwei publizierten Jahres-Stützstellen des Zürcher Index, wird linear zwischen den
beiden bekannten Werten interpoliert (Standardverfahren der Bauteuerungs-Indexierung, keine
Schätzung eines unbekannten Werts — beide Stützpunkte sind belegt). Liegt der Preisstand
NACH dem neusten verfügbaren Anker (01.04.2025), wird NICHT extrapoliert (Rule «Kennwerte nie
raten») — der Fall gilt als bereits aktuell und bleibt unverändert.

| Projekt | Kennwert (Original) | Preisstand | Nächste Index-Stützstellen | Interpolierter Index | Faktor auf 01.04.2025 | Kennwert (normalisiert, 01.04.2025) |
|---|---|---|---|---|---|---|
| 2001 Haus Deuber, Thalwil | 1'086 CHF/m³ | 10/2020 | 01.04.2020 = 1045.6 · 01.04.2021 = 1057.7 | 1045.6 + 6/12·(1057.7−1045.6) = 1051.65 | 1210.4 / 1051.65 = 1.1510 (+15.1 %) | **≈ 1'250 CHF/m³** |
| 2304 Reckholdern 20 | 1'735 CHF/m³ | 12/2023 | 01.04.2023 = 1190.8 · 01.04.2024 = 1197.2 | 1190.8 + 8/12·(1197.2−1190.8) = 1195.07 | 1210.4 / 1195.07 = 1.0128 (+1.3 %) | **≈ 1'757 CHF/m³** |
| 8155 Niederhasli, Seestrasse 64 | 1'032 CHF/m³ | 07/2025 | liegt NACH dem letzten Anker 01.04.2025 | — (keine Extrapolation) | ≈ 1.00 | 1'032 CHF/m³ (unverändert, bereits aktuell) |
| 2620 Albertstrasse 7 (Umbau) | 2'500 CHF/m³ | 07.03.2026 | liegt NACH dem letzten Anker 01.04.2025 | — (keine Extrapolation) | ≈ 1.00 | 2'500 CHF/m³ (unverändert, bereits aktuell) |

**Einordnung:** Diese Normalisierung löst NUR die Preisstand-Dimension. Sie hebt **keinen**
Kennwert auf "belegt (n=…)" und löst **nicht** die in `wiki/QUESTIONS.md` weiterhin offenen
strukturellen Fragen (Frage 1: BKP-1-9-vs-1-5-Bezeichnung bei den Pre-Check-Tool-Fällen;
Frage 2: Standard-Klassifikation "norm, eloquent" mutmasslich Vorlagentext). Selbst nach
Normalisierung liegen Haus Deuber (≈1'250, MFH) und Niederhasli (1'032, MFH) noch spürbar
auseinander — eine MFH-Median-Bildung bleibt daher weiterhin bewusst zurückgestellt, bis
diese beiden Fragen geklärt sind. 2414 Thalwil und 2518 Grubenackerstrasse (Run 2) wurden
NICHT normalisiert: sie sind bereits aus anderen Gründen (Teilvolumen statt Gesamt-GV bzw.
unverifiziertes Volumen) von einer Kennwert-Verwendung ausgeschlossen — eine Preisstand-
Korrektur würde daran nichts ändern.

## Run 12 (01.08.2026, Mac Mini Nachtschicht) — historischer Cross-Check aus Schätzungsanleitung Kap. 5

Letzter offener Kandidat aus `IMMO - 03 KNOW-HOW` (`training/quellen-inventar.md`, Run 6)
extrahiert: `raw/schaetzungsanleitung-kap5-neuwert-richtwerte-bauklassen.md`, Tabelle «Richtwerte
für die Bestimmung des Neuwertes», Stand 2003, Bauklassen I–VI nach SIA-Ordnung 102.

**Auf 01.04.2025 teuerungsnormalisiert** (Faktor 1210.4/907.6 = 1.334, Stützpunkt 01.04.2004 —
Vorbehalt Preisstand-Interpretation siehe Roh-Beleg):

| Bauklasse | Baubeschrieb | EFH CHF/m³ (2025) | MFH CHF/m³ (2025) |
|---|---|---|---|
| I | Einfachste ländliche Bauweise | 567 | 467 |
| II | Einfache Konstruktion, bescheidener Ausbau | 634 | 534 |
| III | Durchschnittliche Qualität, einfacher Innenausbau | 700 | 600 |
| IV | Einwandfreie Qualität, durchschnittlicher Innenausbau | 767 | 667 |
| V | Überdurchschnittliche Qualität, komfortabler Ausbau | 900 | 734 |
| VI | Vornehm, beste Qualität, hoher Komfort | 1'000 | 834 |

> **⚠ Vorbehalt und Doppelführung — Wissens-Chef Run 25, verifiziert 04.08.2026.**
> Dieselbe Fremdtabelle (Schätzungsanleitung Kap. 5, Tab. 2 «Richtwerte für die Bestimmung des
> Neuwertes», Stand 2003) wird **derzeit in zwei KBs materiell geführt**: hier und in
> `wissen/immobilienbewertung/wiki/realwert-sachwert.md` (Abschnitt «Neuwert-Richtwerte CHF/m3,
> Stand 2003 aufindexiert auf 2025»). Die beiden Stände weichen zweifach voneinander ab, und
> **keiner der beiden wird ohne Entscheid Raphaels überschrieben**:
> 1. **Bandbreite.** Die Tabelle oben gibt je Bauklasse **nur die Banduntergrenze** wieder,
>    `immobilienbewertung` das **ganze Band** (Bauklasse V EFH dort 909-1'077 statt 900 hier).
>    Am Original-PDF nachgeprüft (`schaetzungsanleitung_kap5.pdf`, layouttreu extrahiert mit
>    `pdftotext -layout`, 04.08.2026): unter EFH wie unter MFH stehen je Bauklasse **zwei**
>    Zahlen, also Bandunter- und Bandobergrenze. Die im Roh-Beleg
>    (`raw/schaetzungsanleitung-kap5-neuwert-richtwerte-bauklassen.md`) festgehaltene Deutung
>    «PDF-Layout-Artefakt, zwei Unterspalten je Bauklasse, nicht vier Werte» ist damit am
>    Original widerlegt. Gegenprobe aus derselben Tabelle: der Block «Grossgewerbe und
>    Industrie» schreibt seine Bänder einzeilig als «100 - 200», «150 - 250», «200 - 325»,
>    «275 - 375».
> 2. **Teuerungsfaktor.** Hier 1.334 (Stützpunkt 01.04.2004 = 907.6), dort 1.346 (Stützpunkt
>    01.04.2003 = 899.2) — rund **1 % Abweichung**. Beide Ankerwerte stehen in Tab. 4 desselben
>    Kapitels und sind am Original verifiziert.
>
> **Lesart bis zum Entscheid:** Die Werte oben bleiben unverändert stehen, sind aber als
> **Banduntergrenzen, hochgerechnet mit Faktor 1.334** zu lesen, nicht als Punktwerte. Der
> Entscheid über den Anker (1.334 vs. 1.346) und darüber, ob die Doppelführung durch einen
> reinen Verweis ersetzt wird, liegt bei Raphael und ist als offener Punkt in
> `wiki/QUESTIONS.md` eingetragen.
>
> **Folge für den Cross-Check-Schluss im nächsten Absatz:** Mit den echten Bändern reicht MFH
> von 471 bis 1'010 CHF/m3 (Bauklasse V 740-909, VI 841-1'010, Faktor 1.346) und **überlappt**
> das MFH-gehoben-Seed-Band 850-1'050. Die Aussage «liegt unterhalb» ist damit falsifiziert und
> die daraus gezogene Konsistenz-Aussage unbelegt. Die offene Frage zum BKP-Scope selbst bleibt
> **gültig** — die Primärquelle nennt tatsächlich nur «Baukosten je m3 umbauter Raum
> (SIA-Norm 116)» ohne BKP-Angabe; es fällt ein Argument dafür, nicht die Frage.

**Nicht promoviert zu einem führenden Kennwert, bewusst als Cross-Check geführt:** die
Primärquelle bezeichnet die Werte nur als «Baukosten je m³ umbauter Raum (SIA-Norm 116)» ohne
expliziten BKP-Scope. Die unmittelbar auf derselben Quellseite stehende Tabelle 3 (Prozentanteile,
siehe Roh-Beleg) zeigt, dass BKP 2 allein nur 90.63 ‰ resp. 100 % einer eigenen Teilsumme bildet
— ob die Neuwert-Richtwerte BKP 2 allein oder BKP 1–9 meinen, ist nicht eindeutig belegt. Eine
Gleichsetzung mit den oben geführten BKP-1–5-Einzelfällen ohne diese Klärung wäre Raten, nicht
Belegen (KB-Regel). Offene Frage dazu in `wiki/QUESTIONS.md`.

> **Nachtrag 06.08.2026 (Mac Mini Nachtschicht).** Der in der Run-12-Notiz vorgeschlagene
> nächste Schritt («ein anderes Kapitel derselben Schätzungsanleitung könnte den Scope
> definieren») ist geprüft und **archivseitig eine Sackgasse**: das vorliegende PDF ist laut
> eigenem Deckblatt nur «Kapitel 5: Tabellen» von «Teil III» der Schätzungsanleitung; die
> Kapitel 1–4 (dort läge eine Begriffsdefinition) liegen nicht im Hub-Bestand. Dazu ein
> zweites, unabhängiges Plausibilitätsargument (kein Beleg) für die bestehende Annahme «BKP 2
> allein»: Tab. 2 und Tab. 3 («Prozentanteile an den Gebäudekosten BKP 2») stehen unmittelbar
> aufeinanderfolgend auf derselben Doppelseite ohne Zwischenthema — Tab. 3 liefert exakt den
> Umrechnungsfaktor BKP 2 → Gesamtkosten (906.3 ‰), die naheliegende Dramaturgie ist «erst der
> m³-Preis des Gebäudes, dann das Werkzeug zur Hochrechnung». Details und Einordnung als
> Plausibilitätsargument statt Beleg: `wiki/QUESTIONS.md`, Eintrag 06.08.2026. Frage 1 bleibt
> formal offen.
>
> **Rückmeldung des Abnehmers (Cross-KB-Lauf Run 27, 06.08.2026).** Dieselbe Fremdtabelle wird in
> `wissen/immobilienbewertung/wiki/realwert-sachwert.md` geführt und trug dort bisher **keinen**
> Scope-Vorbehalt; er ist jetzt unmittelbar unter der Tabellen-Überschrift gesetzt, und die Frage
> ist auf der Abnehmerseite als eigene Lücke **D13** registriert (jene KB hat keine `QUESTIONS.md`,
> ihr Register ist `wiki/wissensluecken.md`). Am Bestand nachgeprüft: die Werte werden dort
> **nicht als führender Gebäude-Neuwert** verwendet, sondern ausdrücklich zur
> **Sachwert-Plausibilisierung** und zur Einordnung der Bauqualität (Bauklasse I–VI); führender
> Neuwert-Pfad sind dort die **CHF/m²-HNF-Benchmarks**. Zusatzbefund von dort, der auch diese
> Frage berührt: die Realwert-Formel jenes Artikels addiert Aussenanlagen und Baunebenkosten
> bereits separat — unter der Lesart BKP 1–9 drohte dort Doppelzählung.

**Als Cross-Check trotzdem aufschlussreich:** MFH Bauklasse IV/V (667–734 CHF/m³, 2025) liegt
unterhalb des in dieser KB geführten MFH-gehoben-Seed-Bands (850–1'050 CHF/m³) — konsistent mit
der Annahme, dass die Neuwert-Richtwerte BKP 2 allein abbilden (ein BKP-1–5-Wert läge über einem
reinen BKP-2-Wert). Stützt die bestehende Seed-Bandbreite eher, als ihr zu widersprechen; hebt
aber keinen Wert auf `belegt`.

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
- Run 9 (27.07.2026): die Run-8-Faktoren auf die vier belastbarsten Einzelfälle angewendet
  (lineare Interpolation zwischen den nächsten belegten Index-Stützstellen, keine Extrapolation
  über den letzten Anker 01.04.2025 hinaus). Haus Deuber (+15.1 % → ≈1'250 CHF/m³) und
  Reckholdern (+1.3 % → ≈1'757 CHF/m³) normalisiert; Niederhasli und Albertstrasse liegen
  bereits nach dem letzten Anker und bleiben unverändert. Löst nur die Preisstand-Dimension —
  Frage 1 (BKP-1-9-vs-1-5) und Frage 2 (Standard-Klassifikation) bleiben der Blocker für eine
  MFH-Median-Bildung. Details: Abschnitt "Run 9" oben, kein neuer `raw/`-Beleg (reine
  Ableitung aus bereits vorliegenden Quellen).
- Run 11 (27.07.2026): letzte offene `AR`-Bibliothek (`AR - 06 Referenzen`) geprüft — auf
  dieser Station leer. Brassel-Archiv-Nebenfund aus Run 10 abschliessend als Fremdmandat
  geklärt (Brassel Architekten ist Architekt des Projekts, nicht JANS) und zusätzlich als
  Fitout-Modul ausserhalb des GV-Scopes. Kein neuer Kennwert. Damit sind alle bekannten
  SharePoint-Bibliotheken gesichtet — Frage 1 und Frage 2 (`wiki/QUESTIONS.md`) bleiben die
  einzigen verbleibenden Blocker für eine MFH-Median-Bildung, nicht mehr Materialmangel.
  Details: `training/quellen-inventar.md` Abschnitt "Run 11", kein neuer `raw/`-Beleg.
- Run 15 (11.08.2026): letzter offener Kandidat «2304 Wädenswil Residualwert-Tool» (Run 6,
  seit Run 13 durch OneDrive-Blockade unzugänglich) über Weg 2 (Graph/CLI statt Mount)
  erfolgreich gelesen — Inhalt aber `[-]` untauglich: Kostensumme eindeutig "BKP 1-9", keine
  BKP-1-5-Teilsumme. Kein neuer Kennwert, Fall abschliessend geschlossen. Details:
  `raw/2304-waedenswil-residualwert-zwei-varianten.md`.
- Run 16 (17.08.2026): Endbedingung (Empfehlung QUESTIONS.md 13.08.2026) erneut geprüft, bevor
  gearbeitet wurde — `training/quellen-inventar.md` weiterhin ohne offene `[ ]`-Zeile, SharePoint
  (`AR - 01/03`, `IMMO - 01/03/06`) auf Dateien neuer als der letzte Rohbeleg (12.08.2026)
  durchsucht: keine neuen Funde ausserhalb des laufenden, hier bewusst ausgeklammerten
  KISPI-Healthcare-Mandats. Statt Leerlauf (`training/PROGRAMM.md`) die Primärquelle des
  Baupreisindex direkt geprüft (bisher nur über die HEV-SZ-Kopie bekannt): neuer amtlicher
  Stand 01.10.2025 gefunden und dokumentiert (Abschnitt "Baupreisindex ZH" oben), Effekt auf
  bestehende Einzelfälle unter der Darstellungsgenauigkeit (~+0.26 %), bewusst nicht in die
  Tabellen zurückgerechnet. Details: `raw/zuercher-index-wohnbaupreise-2025-10-update.md`,
  `training/quellen-inventar.md` Abschnitt "Run 16", `outputs/2026-08-17_grobkosten-run16.md`.
