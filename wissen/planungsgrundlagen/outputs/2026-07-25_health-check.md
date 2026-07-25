# Wissens-Health-Check: planungsgrundlagen — 2026-07-25 (Nachtschicht Mac Mini, 05:30-Zyklus)

Kontext: letzter Health-Check 2026-07-21 (`2026-07-21_health-check.md`). Seither vier weitere
Trainingslaeufe (Run 55b-59) sowie diverse Registerpflege-Eintraege. Dieser Check ist deterministisch
per grep/Skript gefahren (Kontext-Diaet, Rule 260719) statt Volltext-Lektuere aller 40 Artikel —
Budget-Disziplin Nachtschicht.

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 0 (Stichprobe, keine exhaustive Paarpruefung) |
| B Kaputte Backlinks/Orphans | 2 echte Luecken + 6 unqualifizierte Cross-KB-Links (kein Fehler) |
| C Unbelegte Claims | 0 auffaellig (Frontmatter-`sources` durchgaengig gefuellt, ausser F1/F2) |
| D RAW-Coverage-Luecken | 0 (Register `_INGESTED.md` aktiv/laufend gepflegt) |
| E Veraltete Artikel | 0 (KB erst seit 05.06.2026, keine Artikel > 90 Tage) |
| F Schreibregel-Verstoesse | **2 Kategorien: 1 KB-weit, 2 Einzelfaelle** |
| G Promotion-Kandidaten | 10 `emerging` (keine `speculative`); QUESTIONS.md 91/92 Punkte geschlossen |

## Top-3 (Raphaels Aufmerksamkeit)

1. **KB-weiter Umlaut-Ersatzschreibungs-Befund** (Audit F): praktisch alle 40 Wiki-Artikel
   verwenden durchgaengig `ae/oe/ue` statt echter Umlaute ä/ö/ü — auch der juengste, heute Nacht
   verfasste Artikel (`energie-pv-eignung-typenwahl.md`, 97 Treffer). Widerspricht Rule
   `umlaute-konvention.md` flaechendeckend, nicht nur punktuell wie zuletzt bei `architekten-synobsis`
   festgestellt. Vermutlich Root Cause identisch (Locale-Bug im Trainings-/Dispatch-Runner), aber
   hier seit KB-Gruendung (05.06.) durchgehend, nicht erst seit einem bestimmten Datum — der am
   24.07. bestaetigte Root-Cause-Fix wirkt hier (noch) nicht sichtbar, da praktisch der gesamte
   Trainingsbetrieb dieser KB ueber den Dispatch-Runner laeuft. **Empfehlung:** kein Blind-Fix per
   `sed` (Risiko: legitime Doppelvokale/Zitate/Dateinamen mit ae/oe/ue wie z.B. reale PDF-Titel
   wuerden verfaelscht) — braucht einen dedizierten, beaufsichtigten Korrektur-Lauf (Skill
   `korrektur`, Agent `rechtschreibung`, Artikel-fuer-Artikel) statt eines Nachtschicht-Fixes.
2. **2 Artikel ohne YAML-Frontmatter** (Audit F): `kartenportale-naturgefahren-objektschutz.md`
   und `kartenportale-sharepoint-ablage.md` nutzen ein inline `**Status:** … · **Quelle:** …`-
   Format statt der im Meta-Schema (`wissen/WISSEN-CLAUDE.md`) vorgeschriebenen YAML-Frontmatter
   (`title/status/last_updated/sources/links`). Klein, aber mechanisch reparierbar (Phase-2-Kandidat).
3. **2 echte Coverage-Luecken** (Audit B): `[[muken-2025-anhang-4-5-daemmstaerken-leitungen]]`
   (referenziert in `energie-energienachweis-zh-formulare.md`) und
   `[[oelheizung-gasheizung-ersatzpflicht-zh-sz]]` (dieselbe Quelle) zeigen auf noch nicht
   geschriebene Artikel — echte Vorwaerts-Referenzen, kein Tippfehler. Kandidat fuer den naechsten
   Energie-Trainingslauf.

## Details je Audit

### A. Widersprueche
Keine Stichproben-Widersprueche zwischen thematisch ueberlappenden Artikeln gefunden (z.B.
`energie-uebersicht.md` vs. `energie-energienachweis-zh-formulare.md`, `recht-norm-quellenlandkarte.md`
vs. `recht-norm-baueingabe-verfahren-zh.md`). Keine exhaustive Paarpruefung aller 40×39 Kombinationen
durchgefuehrt (Budget) — Restrisiko bleibt.

### B. Kaputte Backlinks & Orphans
- Echte Luecken (Ziel existiert nirgends): `[[muken-2025-anhang-4-5-daemmstaerken-leitungen]]`,
  `[[oelheizung-gasheizung-ersatzpflicht-zh-sz]]` (beide nur in
  `energie-energienachweis-zh-formulare.md` referenziert).
- Unqualifizierte, aber **gueltige** Cross-KB-Links (Ziel existiert in einer anderen KB, nicht in
  dieser Wiki — laut `CLAUDE.md` gewollt, da Recht/Brandschutz/Energie-Tiefe dort fuehrend sind):
  `[[graue-energie]]`, `[[minergie-standards]]`, `[[u-werte-grenzwerte-ch]]` → existieren in
  `wissen/energie/wiki/`; `[[abstaende-und-hoehen]]` → existiert in `wissen/baurecht/wiki/`.
  `[[ankaufspruefung]]`, `[[auflagebereinigung]]`, `[[behoerden-vorabklaerung]]`,
  `[[grobkosten-onepager]]`, `[[healthcare-wirtschaftlichkeit]]`, `[[machbarkeit]]`,
  `[[massgebendes-terrain]]`, `[[oereb-schwyz]]`, `[[stockwerkeigentum]]`, `[[studien-generator]]`,
  `[[dateinamen-konvention]]` → Skill-/Rule-Namen, kein Wiki-Ziel erwartet (analog zur bestehenden
  Konvention "Skill-Verweis statt Duplikat").
- Orphans: 0 (jeder Artikel hat mind. einen eingehenden Link oder ist in INDEX/QUESTIONS verankert).

### C. Unbelegte Claims
Kein systematischer Volltext-Check (Budget). Stichprobe: `sources`-Feld in 38/40 Artikeln vorhanden
und nicht leer (Ausnahme: die zwei Frontmatter-losen Artikel aus Audit F, dort steht die Quelle
inline im Fliesstext, nicht strukturiert).

### D. RAW-Coverage
`_INGESTED.md` ist eine aktiv gepflegte, laufend erweiterte Tabelle (nicht nur eine Ingestions-
Liste) — jede Zeile verweist per `→ [[artikel]]` auf den verarbeitenden Wiki-Artikel. Keine
un-verlinkte Zeile in der Stichprobe gefunden. Kein Coverage-Audit-Fund.

### E. Veraltete Artikel
KB besteht seit 2026-06-05 (kein Artikel kann > 90 Tage alt sein). Audit E nicht anwendbar.

### F. Schreibregel-Verstoesse
1. **KB-weiter Umlaut-Befund** — siehe Top-Finding 1. Betroffen (grobe Trefferzahl je Datei,
   Stichwortmuster `gemaess/erlaeuter/waerme/flaeche/…`, keine Vollzaehlung): u.a.
   `brandschutz-pl03-wegweiser.md` (217), `energie-pv-eignung-typenwahl.md` (97),
   `kartenportale-naturgefahren-objektschutz.md` (89), `kartenportale-geoportale-uebersicht.md` (82),
   `recht-norm-ivhb-baubegriffe.md` (45) — praktisch jede Datei im KB betroffen (siehe volle Liste
   im Skript-Output dieses Laufs, nicht separat abgelegt).
2. **Fehlende YAML-Frontmatter** (2 Dateien) — siehe Top-Finding 2.
3. Kein `ß` in JANS-eigenem Fliesstext gefunden (einzige Treffer sind Original-Dateinamen
   deutscher Quell-PDFs, z.B. "Heizwärmebedarf_Berechnung" — korrekt als Quellenzitat, kein
   Verstoss).

### G. Promotion-Kandidaten
10 Artikel auf `status: emerging` (keine `speculative`): u.a.
`energie-betriebsenergie-pv-wirtschaftlichkeit.md`, `kartenportale-denkmalschutz-isos.md`,
`kartenportale-ebau-sz-baugesuch.md`, `kartenportale-historisches-terrain-vermessungsbuero.md`,
`kartenportale-werkleitungskataster.md`, `recht-norm-baurechtsanalysen-benchmarks.md`,
`recht-norm-pbg-revision-bauen-im-bestand.md`, `recht-norm-mehrwertrevers-grundbucheintragungen.md`,
`recht-norm-richtprojekt-ueberbauungsordnung.md`, `recht-norm-zivilschutz-bautechnik.md`. Keine
inhaltliche Einzelpruefung, ob sie reif fuer `established` waeren (Budget) — als Kandidatenliste
fuer den naechsten Trainingslauf markiert. `QUESTIONS.md`: 91 von 92 Punkten geschlossen (`[x]`),
nur 1 offen (Backlog praktisch ausgeschoepft — spricht fuer die hohe Trainingsfrequenz dieser KB).

## Nicht durchgefuehrt (Budget-Grenze)
- Keine Vollpruefung aller Artikelpaare auf Widersprueche (Audit A).
- Keine Volltext-Claim-Verifikation (Audit C).
- Kein Fix der Umlaut- oder Frontmatter-Befunde (Phase 1 = Audit only, unbeaufsichtigt).
