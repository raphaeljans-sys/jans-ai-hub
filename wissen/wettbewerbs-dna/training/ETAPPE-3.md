# Etappe 3 — Externe Wettbewerbs-DNA je Ziel-Bauaufgabe

Entscheid Raphael (14.07.2026, schliesst den obersten QUESTIONS-Blocker): Prioritaeten
**1. Schulbau · 2. Healthcare · 3. Wohnungsbau**.

Erstlauf: interaktiver Ultra-Lauf (Schulbau, 14.07.2026) legt diese Infrastruktur an.
Folgelaeufe: Scheduled Task `wettbewerbs-dna-training` (VOLLGAS alle 2 Std., Station
MacBook Pro; nach Ruecktaktung 10.08.2026 Nachtfenster 22:00–06:00).

Ziel der Etappe: je Bauaufgabe eine belegte, verifizierte **typologische Wettbewerbs-DNA**
(Sieger-Typologien, Jury-Kriterien-Rangordnung, K.o.-Liste, Kennwert-Referenzband) plus
ein maschinenlesbares **Parameter-Set** fuer `volumenstudie`/`machbarkeit`/
`grobkosten-onepager` (typologischer KI-Entwurfsprozess).

## Bausteine je Bauaufgabe (B1–B6)

- **B1 Quellen-Sweep** — kuratierte Kandidatenliste `outputs/<datum>_etappe3-<aufgabe>-sweep.md`
  (Projekt/Ort/Kanton/Jahr/Auslober/PDF-URL/Zugang/Dedup-Befund). Ziel: >= 15 geprüfte
  Kandidaten, davon >= 8 frei zugängliche PDFs. Quellen: Hochbauaemter der Staedte/Kantone
  (frei), competitions.espazium.ch («Entschiedene Wettbewerbe» = Publikationsindikator),
  konkurado.ch (NUR als Verzeichnis/Index — Abo-Volltexte nie umgehen).
- **B2 Raw-Extrakte** — `raw/extern-jurybericht-<slug>.txt` (flach, bestehende Konvention),
  Kopf: `# Quelle: <URL> (Jurybericht <Monat Jahr>, <n> Seiten, abgerufen <datum>)` +
  `# Extrakt: pdftotext -layout, <n> Seiten, erstellt <datum>`. PDFs selbst werden NICHT
  versioniert (nur Text-Extrakte; Beleg-Kette = URL + Abrufdatum + Extrakt).
- **B3 Destillate** — `wiki/extern/jurybericht-<slug>.md` nach bestehendem Artikel-Schema
  (Frontmatter title/status/last_updated/sources/links; Sektionen Verfahren / Sieger-
  Typologie mit Seitenbelegen / wiederkehrende Jury-Argumente + K.o. / Lessons).
  Status `established` NUR nach Refuter (Volltextabgleich gegen raw-Extrakt).
- **B4 Muster-Synthese** — `wiki/muster/jury-argumente-<aufgabe>.md` (Schulbau: den
  bestehenden Artikel ERWEITERN, additiv, Basis-n heben; Healthcare/Wohnen: neu anlegen).
  Verifikation: 5 parallele Quellen-Shard-Refuter + Konsistenz-Refuter.
- **B5 Parameter-Set** — `wissen/entwurfs-referenzen/wiki/parameter-sets/
  <nutzung>-<subtyp>[-<kontext>].json`, schema-valide (`parameter-schema/validate.py`),
  Kennwerte NUR belegt (unbelegte Felder weglassen, Luecken in B6 dokumentieren).
- **B6 Kennwert-Benchmark** — `wiki/muster/kennwerte-<aufgabe>.md`: Referenzband
  (Flaeche/Volumen/Kosten je Einheit) mit Quelle + Seite je Zahl; speist B5 und die
  Agenten `flaechen-nachweis`/`grobkosten-rechner` (Massnahme M2).

## Stand (Folgelauf waehlt die oberste offene Zelle der hoechstprioren Aufgabe)

| Bauaufgabe | B1 Sweep | B2 Raw | B3 Destillate (est./Ziel) | B4 Muster | B5 Param-Set | B6 Kennwerte |
|---|---|---|---|---|---|---|
| Schulbau (Prio 1) — **ABGESCHLOSSEN** | erledigt (`outputs/2026-07-14_etappe3-schulbau-sweep.md`) | 23 Bestand | **23/23 established** | **established (23/23, Refuter-Welle bestanden)** | **established** (`entwurfs-referenzen/wiki/parameter-sets/schule-volksschule-ch.json`, schema-valide + refuter-BESTANDEN 21.07.) | **established** (`wiki/muster/kennwerte-schulbauten.md`, 25 Quellen, 431/436 refuter-bestaetigt) |
| Healthcare (Prio 2) | **erledigt** (`outputs/2026-07-23_etappe3-healthcare-sweep.md`: 48 Kandidaten, 42 frei-pdf verifiziert) | 3 Bestand (ksa · sihlsana · ipw-schlosstal) | **3/8 established** (Tranche 1: kantonsspital-aarau-ksa, alterszentrum-sihlsana-adliswil, ipw-klinik-schlosstal-winterthur; je Refuter-bestanden) | — | healthcare-neubau-zh.json v1.0 vorhanden (Revision nach B6) | ausstehend |
| Wohnungsbau (Prio 3) | ausstehend | — | 0/8 | — | wohnen-mfh-urban.json v1.0 vorhanden (Revision nach B6) | ausstehend |

## Endbedingung je Bauaufgabe

B3-Ziel erreicht (alle established) UND B4 established (Refuter-Welle bestanden) UND
B5 schema-validiert + zahlen-refutiert UND B6 established UND Bookkeeping (INDEX/
QUESTIONS/CHANGELOG beider KBs) nachgefuehrt. Sind alle drei Bauaufgaben komplett:
Endbedingung Etappe 3 in dieser Datei markieren und Raphael im Tagesbriefing die
naechste Etappe vorschlagen (weitere Bauaufgaben oder Vertiefung, Entscheid Raphael).

## Auftrag je Folgelauf (Scheduled Task)

1. Diese Stand-Tabelle lesen; oberste offene Zelle der hoechstprioren Aufgabe waehlen.
2. B1 offen → Quellen-Sweep als Workflow-Fan-out (6 Scouts, Dedup gegen wiki/extern/ +
   raw/ + eigene Teilnahmen; Dedup-Key: PDF-URL, dann Ort+Jahr±1+Projektname).
3. B2/B3 offen → max. 2–3 Kandidaten je Lauf aus der Sweep-Reserveliste beschaffen
   (curl → %PDF-Check → pdftotext -layout) + destillieren + je 1 Refuter (Pflicht).
   Fehlerpfade: Paywall → QUESTIONS (nie umgehen); OCR-Scan (< ~400 Zeichen/Seite,
   Retry ohne -layout) → QUESTIONS; Nur-HTML → WebFetch-Volltext, Abschnitts- statt
   Seitenbelege, im Frontmatter kennzeichnen; fetch-fail → Reserve rueckt nach.
4. B4–B6 offen (und B3-Ziel erreicht) → Synthese + Refuter-Welle wie im Ultra-Lauf.
5. Stand-Tabelle + Lauf-Log + Bookkeeping (INDEX/QUESTIONS/CHANGELOG) nachfuehren;
   NAS-Repo committen + pushen (`git push github main`).

## Lauf-Log

| Lauf | Datum | Inhalt | Status |
| Ultra-1 | 14.07.2026 | Infrastruktur angelegt (diese Datei, QUESTIONS-Blocker geschlossen, INDEX-Reconcile 15→17); Ultra-Workflow Schulbau gestartet: B1-Sweep (12 Kandidaten, alle frei-pdf) + B2/B3 fuer 6 neue Kandidaten destilliert | erledigt |
| Nachbrenner | 14.07.2026 | **B3-Ziel Schulbau erreicht:** 9 verbliebene Draft-Destillate (hinter-gaerten-riehen, kantonsschule-baden, niederrohrdorf, oberstufe-schoenau-steffisburg, ochsenmatt-4-menzingen, schulhaus-littau-luzern, schulhaus-muhen, tagesbetreuung-boppartshof-st-gallen, turnhalle-tagesschule-baetterkinden) je durch 1 unabhaengigen Refuter-Agenten gegen `raw/extern-jurybericht-*.txt` geprueft — diverse Seitenangaben-/Zuordnungsfehler direkt korrigiert, alle 9 auf established gehoben. Damit 23/23 Schulbau-Destillate established. Naechster Schritt: B4 (Muster-Erweiterung jury-argumente-schulbauten von Basis 11 auf 23), danach B5/B6 | erledigt |
| Nachtlauf | 20.07.2026 | **B6 Schulbau erledigt** (Kennwert-Benchmark `wiki/muster/kennwerte-schulbauten.md`). Workflow-Fan-out ueber 25 Quellen (19 extern + 6 eigene), je 1 Extraktions-Agent (Sonnet) + 1 unabhaengiger Refuter (Hauptmodell): 436 Kennzahlen geprueft, **431 bestaetigt, 5 verworfen**. Kernbefunde: HNF/GF **0.52–0.54** (zwei unabhaengige Quellen), Klassenzimmer 64–75 m2, 2 Klassen je Gruppenraum, **900-m2-GF-Schwelle** als Typologie-Treiber (2 Kantone), Neubau 1.6–1.8 Mio. CHF je Klassenzimmer, Vorpruefungs-Toleranz ±20 % bei Finalisten-Spreizung 16–24 % (quantitative Stuetze fuer die Kriterien-Rangordnung). **Strukturbefund: CHF/m3 GV aus Juryberichten nicht belegbar** (1 absoluter GV-Wert in 25 Quellen) → QUESTIONS + Entscheid Raphael. B5 bewusst NICHT mitgenommen (Takt-Regel 260714: ein Baustein je Lauf). **Naechste Zelle: B5 Parameter-Set Schulbau** | erledigt |
| Nachtlauf | 21.07.2026 | **B5 Schulbau erledigt — damit Schulbau (Prio 1) VOLLSTAENDIG abgeschlossen (B1–B6).** Parameter-Set `entwurfs-referenzen/wiki/parameter-sets/schule-volksschule-ch.json` (v1.0) rein aus den established Mustern B6 (`kennwerte-schulbauten`) + B4 (`jury-argumente-schulbauten`) abgeleitet, nur belegte Werte. Belegt gesetzt u.a.: `flaechen.nf_gf_faktor` 0.53 (HNF/GF-Band 0.52–0.54), `hnf_pro_einheit_m2` [64,75] Klassenzimmer, `erschliessung` atrium, `geschosse` 1–5 (Grossaffoltern eingeschossig … Sursee 5), plus 14 belegte Entwurfsregeln (900-m2-Schwelle, 2:1 Klassen:Gruppenraum, Cluster 3–4, Eck-Klassenzimmer zweiseitig, KG/Primar-Durchmischung, Glasanteil <50 %, Vorpruefungs-Korridor ±20 %). `chf_m3_gv_band` bewusst weggelassen (B6-Strukturbefund). Schema-valide (validate.py OK) + 1 unabhaengiger Refuter-Agent (Hauptmodell) Wert-fuer-Wert gegen die Quellen: **VERDIKT BESTANDEN**, 2 Praezisierungen eingearbeitet (geschosse_min 3→1; Regelklasse-Fundstelle). Bookkeeping beider KBs nachgefuehrt. **Naechste Zelle: Healthcare (Prio 2), B1 Quellen-Sweep** | erledigt |
| Nachtlauf | 23.07.2026 | **B1 Healthcare erledigt** (Quellen-Sweep `outputs/2026-07-23_etappe3-healthcare-sweep.md`). Workflow-Fan-out ueber 6 Scouts (espazium / zuerich / bern-basel / luzern-ostschweiz / weitere-kantone / konkurado-traeger), general-purpose-Agenten mit WebSearch + curl-Verifikation; 0 Fehler. **48 Kandidaten gemeldet, 42 mit HTTP-verifiziertem freiem Jurybericht-PDF** (Ziel >=15 / >=8 klar uebertroffen), 6 Zugang unklar/Viewer. Subtypen: 22 pflegeheim-alterszentrum, 11 spital-klinik, 6 psychiatrie, 2 alterswohnen, 3 gemischt. **Luecken: 0 rehabilitation, 0 reines gesundheitszentrum-aerztehaus** (→ QUESTIONS). Dedup: eigene 2101 KSSG H14 sauber ausgeschlossen; Cross-Scout-Dubletten (KSA Aarau, Bad Zurzach, St. Katharinen, Kaltbrunn, Aesch, Malters, ipw Schlosstal, Ried Biel) gemerged. Empfohlener B2/B3-Batch (9, subtyp-gespreizt) im Report markiert. **Naechste Zelle: Healthcare B2/B3** (2–3 Kandidaten je Lauf destillieren + refutieren) | erledigt |
| Nachtlauf | 24.07.2026 | **B2/B3 Healthcare Tranche 1 (3 Destillate, alle established).** Aus der B1-Reserveliste subtyp-gespreizt beschafft, je Refuter-Welle (Workflow-Pipeline, 1 Extraktions-Agent Sonnet → 1 Refuter Hauptmodell gegen `raw/extern-jurybericht-*.txt`; 6 Agenten, 0 Fehler): **kantonsspital-aarau-ksa** (spital-klinik, Sieger «Dreiklang»; Refuter korrigierte mehrere Seiten-Drifts inkl. zwei 1./2.-WBST-Verwechslungen), **alterszentrum-sihlsana-adliswil** (pflegeheim-alterszentrum, Sieger «SOPHIE»; ~8 Verfahrens-Seitenbelege korrigiert), **ipw-klinik-schlosstal-winterthur** (psychiatrie, Sieger «GrassGreen»; Refuter fand 0 Fehler). **Waldhaus Chur verworfen** (reines Scan-PDF, 3 Zeichen/Seite → QUESTIONS; ipw als Reserve nachgerueckt). Strukturbefund wie Schulbau: Juryberichte publizieren fast nie projektbezogene GF/GV/HNF/CHF-m3 (belegte Kennwerte je Refuter fuer B6 gesammelt). **Healthcare B3 nun 3/8. Naechste Zelle: Healthcare B2/B3 Tranche 2** | erledigt |
