# Vertiefungslauf entwurfs-referenzen — Schema-Deckung, Preisstand, Verdrahtungs-Befund

**Datum:** 23.08.2026 · **Station:** Revendo · **Auftrag:** Raphael — Wissens-Bibliothekar im
Dauerbetrieb, KB 4 von 4: JSON-Parameter-Sets prüfen und ausbauen.

**Vorlauf gelesen:** CHANGELOG-Kopf (Eintrag 23.08.2026, sechs Fragen beantwortet,
`synobsis_slug` ergänzt), `wiki/QUESTIONS.md` vollständig, alle drei Parameter-Sets, das Schema,
`parameter-schema/validate.py`.

**Arbeitsweise:** erst messen, dann ergänzen. Jeder Schreibvorgang mit `validate.py --all`
gegengelesen und semantisch gegen die Vorversion auf **rein additiv** geprüft (JSON-Baumvergleich,
nicht nur Zeilen-Diff — bei JSON verschiebt schon eine Reformatierung den Zeilen-Diff).

---

## Fünf Befunde

### 1 · Das Schema deckte nur einen Teil dessen ab, was die Sets führen

Feldweiser Abgleich ergab **sieben benutzte, aber nicht deklarierte Felder**: `scope_hinweis`,
`flaechen.hinweis`, `kosten_referenz.chf_m2_hnf_band`, `.chf_m2_hnf_bkp_scope`, `.hinweis`,
`.quelle_kb_m2_nf`, `.quelle_kb_nicht_anwendbar`. Sie validierten nur, weil das Schema kein
`additionalProperties: false` setzt — ein konsumierendes Werkzeug hatte für sie keinen Vertrag,
obwohl sie inhaltlich tragend sind. `quelle_kb_nicht_anwendbar` etwa hält im Healthcare-Set fest,
dass `wissen/grobkosten/` für Healthcare **nicht** als Kostenquelle verwendet werden darf; ohne
Deklaration ist das ein Kommentar, mit Deklaration ein Vertrag.

Alle sieben sind nachträglich deklariert. **`additionalProperties` bleibt bewusst offen** — ein
Umstellen auf `false` würde künftige, noch unbekannte Belegfelder blockieren. Die Deckungslücke
wird stattdessen bei jedem Lauf neu gemessen.

### 2 · Das einzige deklarierte Kostenfeld ist genau das, was die Quellen nicht hergeben

`kosten_referenz.chf_m3_gv_band` ist deklariert und in **keinem** Set gesetzt. Der Grund steht
dreimal unabhängig belegt in den Sets: **kein Jurybericht nennt ein Gebäudevolumen** — derselbe
Befund für Healthcare, Schulbau, Wohnungsbau. Das faktisch benutzte Feld (`chf_m2_hnf_band`) war
dagegen undeklariert.

Das Schema war am CHF/m³-Denken von `volumen_generator.py` gebaut; die Quellenlage liefert
m²- und Einheitswerte. Neu deklariert und in Gebrauch: **`chf_m2_gf_einzelwert`** (bewusst
getrennt vom Band, damit ein Einzelfall nicht als Band gelesen wird) und **`chf_je_einheit`**
(Kosten je Klassenzimmer/Pflegeplatz/Wohnung). `chf_m3_gv_band` bleibt deklariert und leer;
führend dafür ist `wissen/grobkosten/`.

### 3 · Geschlossen: es gab keinen maschinenlesbaren Preisstand

Alle Kostenangaben trugen ihren Preisstand nur in Prosa. Ein Werkzeug, das
`chf_m2_hnf_band: [3500, 3900]` liest, konnte nicht wissen, dass das Zürcher Geld von 2018/2019
ist — für eine KB, deren ganzer Zweck maschinenlesbare Parameter sind, ein echter Defekt.

Neu: **`kosten_referenz.preisstand`** mit `jahr`, optional `stichtag`, `teuerungsanker`,
`hinweis` und optionalem Block `indexiert`. In allen drei Sets befüllt:

| Set | Preisstand | Teuerungsanker | Indexiert |
|---|---|---|---|
| wohnen-mfh-urban | **2018/2019** (Koch-Areal Zürich) | ZIW — regional passend | ja: Faktor 1.167–1.178 → rund **4'090–4'600 CHF/m² HNF** auf 01.04.2026 |
| healthcare-neubau-zh | **2011–2025, gemischt** | **keiner pauschal** | nein — Doppelindexierungs-Gefahr |
| schule-volksschule-ch | **2021** (m²-Wert) · 2012–2026 (Einheitswerte) | **offen gelassen** | nein — regional unpassend |

**Zur Wohnen-Indexierung:** Stützstellen aus der amtlichen ZIW-Reihe (Basis 1939 = 100):
01.04.2018 = 1036.8 · 01.04.2019 = 1046.3 · 01.04.2025 = 1210.4; 01.04.2026 ≈ 1221.3, verkettet
über die publizierte Jahresteuerung +0.9 %. Alle Werte sind im selben Lauf an den Primärquellen
verifiziert worden (siehe `wissen/grobkosten/wiki/kennwerte.md`, Abschnitt «Baupreisindex ZH»).
Das **Rohband bleibt unverändert** auf 3'500–3'900 stehen; der indexierte Wert steht separat im
Block `indexiert` und ist ausdrücklich als **gekennzeichnete Ableitung** markiert, nicht als
neuer Kennwert.

**Zum Schul-Set — warum bewusst nicht indexiert:** das Objekt (Kantonsschule Wattwil) liegt im
Kanton St. Gallen. Der in den Hub-KBs verifizierte Bauteuerungsanker ist der Zürcher ZIW (regional
unpassend), und für den BFS-Baupreisindex ist hier nur die Basis Oktober 2025 = 100 mit dem Stand
April 2026 belegt — keine bis 2021 zurückreichende verkettete Reihe. Eine Umrechnung wäre geraten.

**Zum Healthcare-Set:** der wichtigste Befund ist hier nicht eine Zahl, sondern dass das Band
über 14 Jahre spannt und der führende Artikel die Objekte bereits teuerungsbereinigt führt
(Index-Stand ~115). Wer aufindexiert, ohne vorher zu entscheiden, ob er vom Roh- oder vom
bereinigten Band ausgeht, indexiert doppelt. Genau das steht jetzt im `teuerungsanker`-Feld.

### 4 · Der Kostenblock des Schul-Sets war leer — obwohl die eigene Quelle Werte führt

`schule-volksschule-ch.json` trug in `kosten_referenz` nur `bkp_schwerpunkte` und `quelle_kb`,
obwohl die im eigenen `quellen`-Feld bereits zitierte Quelle
`wissen/wettbewerbs-dna/wiki/muster/kennwerte-schulbauten.md` (established, 25 Quellen,
refuter-bestätigt) zwei abgeleitete Orientierungsgrössen führt. Nachgetragen:

- **`chf_m2_gf_einzelwert: 4250`** — Kantonsschule Wattwil, max. 60 Mio. CHF Anlagekosten inkl.
  Umgebung exkl. MWST / 14'100 m² GF. Abgeleiteter **Einzelwert aus einem Kostenziel**, kein
  Ist-Kostenwert und kein Band; der einzige Fall des Korpus, in dem Kosten und GF aus derselben
  Quelle stammen. Preisstand-Nebenbefund: der Bericht des Preisgerichts datiert **29.04.2021**
  (genehmigt 30.04.2021) — der Ordnername «2025» im Referenzarchiv täuscht ein jüngeres Datum vor.
- **`chf_je_einheit`** — Klassenzimmer **1.6–1.8 Mio. CHF**, Regelschul-Neubau, **Gesamtanlage**
  je Klassenzimmer (nicht der Raum); Sonderschule rund 2.5 Mio. (Einzelfall). Sanierungs-/
  Erweiterungsfälle bewusst nicht umgerechnet.

Die zehn Kostendach-/Zielkostenwerte des Korpus sind **nicht** als Rohtabelle übernommen — sie
haben unterschiedlichen BKP-Umfang und MwSt-Status und sind untereinander nicht vergleichbar.

### 5 · Die Verdrahtung zum Generator ist beidseitig leer

Der Eintrag vom selben Tag hält fest, `machbarkeit`/`machbarkeit-studio` referenzierten die Sets
mit 0 Treffern — «die Verdrahtung fehlt im aufrufenden Skill, nicht im Generator». Die Feldmessung
präzisiert das: **sie fehlt auf beiden Seiten.**

`volumen_generator.py` kennt vier Schlüssel (`grenzabstand`, `geschosse`, `geschosshoehe`,
`hoehe`); das Schema könnte zwei davon bedienen. Tatsächlicher Bestand:

| Set | `geschosse_min/max` | `geschosshoehe_m` | weitere Geometrie |
|---|---|---|---|
| healthcare-neubau-zh | — | — | keine — `gebaeude` enthält **nur** `orientierung_regeln` |
| wohnen-mfh-urban | — | — | keine — `gebaeude` enthält **nur** `orientierung_regeln` |
| schule-volksschule-ch | 1 / 5 | — | `erschliessung: atrium` |

**`geschosshoehe_m` ist in keinem Set gesetzt** — genau das Feld, das die Brücke bilden müsste.
Selbst wenn `machbarkeit` die Sets morgen läse, käme in zwei von drei Fällen kein einziger
Geometriewert beim Generator an.

**Warum in diesem Lauf nicht gefüllt — Belegdisziplin, nicht Nachlässigkeit:**

- **Schule:** belegt ist eine **lichte Raumhöhe Klassenzimmer ≥ 3.00 m** (2206 Schöntal). Neu als
  `gebaeude.lichte_raumhoehe_m` eingetragen, mit ausdrücklichem Vermerk, dass daraus **kein**
  `geschosshoehe_m` abgeleitet wird — dazwischen liegen Decken- und Bodenaufbau, und keine Quelle
  des Korpus nennt eine Schul-Geschosshöhe. Dafür ist das Feld neu im Schema deklariert.
- **Healthcare:** `kennwerte-healthcare.md` führt breit belegte Tragwerksraster (7.5 / 8.0 / 8.1 /
  8.4 / 10.8 m) und Geschosshöhen (3.60 m Soll, 3.00 m Minimum) — aber **alle aus Akutspital
  (KSA Aarau, LUKS Sursee) und Psychiatrie (ipw Winterthur, KJPK Basel)**. Dieses Set ist
  ausdrücklich auf Pflegeheim/Alterszentrum begrenzt, und B6 verbietet die Quer-Übertragung
  zwischen Subtypen. Nichts übernommen.
- **Wohnen:** ein einziger Rasterwert im Korpus (3.20 m Holzbau, Walkeweg, «kein Vergleichswert»
  laut Quelle). Ein Einzelfall taugt nicht als typologisches `fassaden_raster_m`.

## Entscheidfrage an Raphael

Die Geometriefelder lassen sich aus den Wettbewerbs-Quellen **nicht seriös füllen** —
Juryberichte belegen Regeln und Kosten, nicht Regelgeometrie. Wenn die Brücke zum Generator
geschlossen werden soll, braucht es entweder

**(a)** eigene JANS-Projektgeometrie als Quelle (Geschosshöhen aus abgerechneten Projekten), oder
**(b)** den Entscheid, dass die Sets bewusst **keine** Geometrie liefern und
`volumen_generator.py` seine Geometrie weiterhin ausschliesslich aus dem Baufeld rechnet — dann
gehörte `geschosshoehe_m` aus dem Schema gestrichen statt leer mitgeführt.

Beides ist ein Entscheid, keine Recherche.

## Geänderte Dateien

- `parameter-schema/entwurfs-parameter.schema.json` — **12 neue Felddeklarationen**
  (`scope_hinweis`, `gebaeude.lichte_raumhoehe_m`, `gebaeude.hinweis`, `flaechen.hinweis`,
  `kosten_referenz.preisstand` inkl. `indexiert`, `.chf_m2_hnf_band`, `.chf_m2_hnf_bkp_scope`,
  `.chf_m2_gf_einzelwert`, `.chf_je_einheit`, `.quelle_kb_m2_nf`, `.quelle_kb_nicht_anwendbar`,
  `.hinweis`). Semantisch gegen die Vorversion geprüft: **rein additiv, kein Feld verloren, kein
  Wert geändert.**
- `wiki/parameter-sets/wohnen-mfh-urban.json` — `preisstand` inkl. `indexiert`.
- `wiki/parameter-sets/healthcare-neubau-zh.json` — `preisstand` (gemischte Stände, kein Anker).
- `wiki/parameter-sets/schule-volksschule-ch.json` — Kostenblock gefüllt, `preisstand`,
  `gebaeude.lichte_raumhoehe_m` + `gebaeude.hinweis`.
- `wiki/parameter-sets/INDEX.md`, `wiki/QUESTIONS.md`, `CHANGELOG.md`.

Alle drei Sets nach jedem Schritt `validate.py --all`: **OK**. Ein Zwischenstand mit
`stichtag: null` wurde vom Validator korrekt abgewiesen und auf «Feld weglassen» korrigiert —
eine Lücke wird nicht als `null` geschrieben.

## Quellen

- `wissen/wettbewerbs-dna/wiki/muster/kennwerte-schulbauten.md` (established, 20.07.2026) —
  CHF/m² GF, CHF je Klassenzimmer, lichte Raumhöhe. **Nur gelesen**, nicht verändert (die KB wird
  parallel auf einer anderen Station bearbeitet).
- `wissen/wettbewerbs-dna/wiki/extern/jurybericht-kantonsschule-wattwil.md` — Berichtsdatum
  29.04.2021, 60 Mio./14'100 m² GF. Nur gelesen.
- `wissen/wettbewerbs-dna/wiki/muster/kennwerte-healthcare.md` — Raster/Geschosshöhen, geprüft und
  wegen der Subtyp-Sperre bewusst **nicht** übernommen. Nur gelesen.
- ZIW-Stützstellen und Jahresteuerung: im selben Lauf primärverifiziert, siehe
  `wissen/grobkosten/wiki/kennwerte.md`, Abschnitt «Baupreisindex ZH».
- `skills/volumenstudie/tools/volumen_generator.py` — Variantenschlüssel.
