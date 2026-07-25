# Wissens-Health-Check — KB Spec (2026-07-23)

Phase-1-Audit (Skill `wissenscheck`, unbeaufsichtigt, Mac Mini Nachtschicht). Aeltestes
Audit-Datum aller KBs (letzter Check 2026-07-01, zusammen mit `immobilienbewertung` — 22
Tage, hier gewaehlt wegen kleinerem Umfang/Budget-Disziplin der Nachtschicht). Auditiert:
alle 5 Wiki-Artikel, INDEX, QUESTIONS (307 Zeilen), CLAUDE.md, `raw/_INGESTED.md`,
`training/PROGRAMM.md`. Volltext-Claim-Pruefung nur exemplarisch (Audit C/G), Environment-
Zaehlstand unabhaengig nachgezaehlt. Nur Audit + Ablage; keine Phase-2-Aktionen ausgefuehrt.

## Zusammenfassung

| Audit | Thema | Ampel | Befund (kurz) |
|---|---|---|---|
| A | Widersprueche / QUESTIONS | gruen | Keine inhaltlichen Widersprueche zwischen den 5 Artikeln; QUESTIONS konsistent mit CHANGELOG (26 Trainingslaeufe sauber nachgefuehrt). |
| B | Backlinks / Orphans / INDEX | gelb | Alle 5 Backlink-Ziele aufloesbar, keine Orphans, INDEX vollstaendig. Die am 01.07. gefundene Selbst-Zitat-Anomalie in `the-spec.md` besteht **unveraendert seit 22 Tagen**. |
| C | Unbelegte Claims / Status | gruen | Cherny-«2-3x»-Claim (Top-Finding vom 01.07.) ist seit 03.07. mit Primaerquelle belegt — **behoben**. Environment-Zaehlstand (16 KBs/49 Skills/22 Rules/19 @-importiert) unabhaengig nachgezaehlt und **exakt bestaetigt**. |
| D | RAW-Coverage | gelb | Einzige RAW-Datei weiter voll eingearbeitet. Aber `raw/_INGESTED.md` fuehrt Karpathy-Post, Cherny-Thread und Anthropic-Plan-Mode-Doku weiterhin unter «offen einzuholen», obwohl alle drei laut `wiki/QUESTIONS.md` F4/F5 **seit 27.06./03.07. eingeloest** sind (URLs bereits in `the-spec.md`/`verifier.md` zitiert). Register-Drift. |
| E | Veraltete Artikel / Metadaten | rot | **Kernbefund vom 01.07. unveraendert offen (22 Tage):** `the-spec.md` traegt weiterhin `last_updated: 2026-06-21`, obwohl der F5-Plan-Mode-Beleg laut CHANGELOG am 27.06. ergaenzt wurde. `verifier.md` hingegen wurde seither korrekt auf 22.07. nachgezogen — das juengere Muster (E) ist also gelernt, nur bei `the-spec.md` nie nachgetragen. |
| F | Schreibregel-Verstoesse | **rot (neu, gravierend)** | Die **gesamte KB verstoesst gegen ihre eigene, explizite Schreibregel** («echte Umlaute», `CLAUDE.md` Z. 20) UND gegen die hub-weite Rule `umlaute-konvention.md`: 968 ae/oe/ue-ASCII-Ersatzschreibungen gegen **1 einzigen** echten Umlaut in allen 6 Wiki-/Register-Dateien. Der 01.07.-Check bewertete Audit F faelschlich **gruen** («echte Umlaute durchgehend») — das war unzutreffend, vermutlich eine oberflaechliche Pruefung. |
| G | Promotion-Kandidaten | gruen | Keine `speculative`-Artikel (alle 5 `established`). QUESTIONS F1-F3 sind bewusst laufende Sammel-Fragen (kein Promotion-Bedarf), F4-F7 bereits eingeloest/umgesetzt und korrekt als solche markiert. |

## Top-3 (Raphaels Aufmerksamkeit)

1. **Umlaut-Regel-Verstoss KB-weit (Audit F, neu):** Alle 5 Wiki-Artikel + `QUESTIONS.md`
   schreiben durchgehend "ae/oe/ue" statt ä/ö/ü — 968 Ersatzschreibungen gegen 1 echten
   Umlaut in der ganzen KB. Das widerspricht der KB-eigenen Schreibregel (`CLAUDE.md`:
   "Schweizer Hochdeutsch, echte Umlaute, kein ß") und der hub-weiten Rule
   `umlaute-konvention.md`. Selbst der heutige Eintrag (Lauf 26, `QUESTIONS.md` Z. 217)
   ist inkonsistent: Ueberschrift "Hält-Check" (echt), Fliesstext direkt danach "haelt"
   (ASCII) — derselbe Trainingslauf mischt beide Schreibweisen im selben Satzblock. Der
   01.07.-Health-Check hat diesen fundamentalen Verstoss **nicht erkannt** (Audit F wurde
   faelschlich gruen bewertet). Passt zeitlich zum am 22.07. cross-KB bestaetigten
   "Umlaut-Bug" (Sonnet/Haiku-Subagenten geben die Umlaut-Regel nicht weiter), reicht in
   dieser KB aber bis zum Seed-Artikel 21.06. zurueck — also aelter als der am 19.07.
   verortete Bug-Beginn. Vorschlag: **kompletter Umlaut-Korrekturdurchlauf** ueber alle
   6 Dateien (Skill `korrektur`, Agent `rechtschreibung`), danach als Regel fuer jeden
   kuenftigen Trainingslauf-Output verankern (Verifikation direkt im Loop, nicht erst im
   naechsten Health-Check).
2. **Metadaten-Drift `the-spec.md` haelt seit 22 Tagen an (Audit E):** unveraendert seit
   dem 01.07.-Fund. `verifier.md` wurde im selben Zeitraum korrekt nachgezogen (22.07.),
   `the-spec.md` nie. Fix: `last_updated` auf 2026-06-27 heben (Datum der F5-Ergaenzung).
3. **Register-Drift `_INGESTED.md` (Audit D, neu):** Die Liste "Offen einzuholen" nennt
   weiterhin 3 Quellen, die laut `QUESTIONS.md` F4/F5 seit 27.06./03.07. bereits mit
   URL/Primaerquelle eingeloest sind. Ein Bibliothekar, der nur `_INGESTED.md` liest,
   wuerde faelschlich annehmen, die Quellen fehlten noch. Fix: die drei Zeilen aktualisieren
   (Karpathy/Cherny/Plan-Mode auf "eingeloest, siehe [[the-spec]]/[[verifier]]" setzen),
   nur die Screenshot-Kopie-Frage bleibt offen.

## Details je Audit

### A — Widersprueche & QUESTIONS
- Kein inhaltlicher Widerspruch zwischen den 5 Artikeln. Die Kernlektionen (Verifier-
  Rangordnung, lebende Spec, Falsch-Signal-Familie) sind in `verifier.md`/`anwendung-jans.md`
  deckungsgleich referenziert, nie gegensaetzlich dargestellt.
- QUESTIONS.md ist ueber 26 Trainingslaeufe hinweg sauber datiert nachgefuehrt (Stand-Zeilen,
  Reue-Pruefungen, Korrekturen wie "Lauf 21 korrigiert Lauf 20"). Keine als geloest markierte
  Frage widerspricht dem Wiki-Inhalt. **Ampel gruen**, unveraendert seit 01.07.

### B — Backlinks / Orphans / INDEX
- Alle Ziele `[[the-spec]] [[3-schritte-spec]] [[verifier]] [[environment-jans-hub]]
  [[anwendung-jans]]` als `.md` vorhanden, alle im INDEX gelistet, keine Orphans.
- **Unveraendert offen (22 Tage):** `the-spec.md` Z. 15 zitiert weiterhin sich selbst als
  Quelle: "(Quelle: [[the-spec]] RAW-Transkript Marchese)". Der 01.07.-Vorschlag (Verweis
  auf die RAW-Datei statt auf den eigenen Artikel-Slug) wurde nie umgesetzt.

### C — Unbelegte Claims / Status
- **Top-Finding vom 01.07. behoben:** der Cherny-"2-3x"-Claim in `verifier.md` traegt seit
  03.07. die Primaerquelle (x.com/bcherny/status/2007179861115511237, im Text zitiert).
  Kein unbelegter Kernclaim mehr gefunden.
- Environment-Zaehlstand (`environment-jans-hub.md`, Stand 23.07.): 16 KBs, 49 Skills, 22
  Rule-Dateien (19 @-importiert) — unabhaengig gegengezaehlt (`find`/`grep` gegen
  Dateisystem und `CLAUDE.md`): **alle vier Zahlen exakt bestaetigt**, keine Abweichung.
- Uebrige Methodik-Aussagen weiterhin belegt: Plan-Mode → Anthropic-Doku (URL), Karpathy-
  Gist/X-Post (URL), Rangordnungs-Tabelle in `verifier.md` mit je einem realen Beleg-Fall
  pro Zeile. Kein `speculative`-Artikel gefunden.

### D — RAW-Coverage
- Einzige RAW-Datei (`260616_marchese_the-spec_karpathy-method_transkript.md`) bleibt in
  `_INGESTED.md` korrekt als eingearbeitet gefuehrt, von allen 5 Wiki-Artikeln zitiert.
- **Neuer Befund:** `_INGESTED.md` Abschnitt "Offen einzuholen" nennt weiterhin Karpathy-
  Post, Cherny-Thread und Anthropic-Plan-Mode-Doku als offen — obwohl `QUESTIONS.md` F4
  ("vollstaendig eingeloest", 03.07.) und F5 ("EINGELOEST", 27.06.) beide als erledigt
  fuehren, mit im Wiki zitierter URL. Nur der vierte Punkt ("34 Original-Screenshots aus
  OneDrive kopieren") ist tatsaechlich noch offen. Reine Register-Pflege-Luecke, kein
  inhaltlicher Fehler.

### E — Veraltete Artikel / Metadaten
- **Kernbefund vom 01.07. haelt unveraendert an:** `the-spec.md` `last_updated: 2026-06-21`,
  obwohl die F5-Primaerquelle (Anthropic Plan Mode) laut CHANGELOG am 27.06. ergaenzt wurde.
  22 Tage und ein Health-Check spaeter immer noch nicht nachgezogen.
- **Gegenprobe (positiv):** `verifier.md` war beim 01.07.-Check der schlimmste Fall (Inhalt
  bis 30.06., Datum 21.06.) — ist seither korrekt fortlaufend nachgezogen (zuletzt 22.07.,
  deckt Lauf 25 ab). Das Muster "Datum bei jeder inhaltlichen Aenderung mitziehen" wurde also
  gelernt und wird bei `verifier.md`/`anwendung-jans.md`/`environment-jans-hub.md` befolgt —
  nur `the-spec.md` und `3-schritte-spec.md` (seit Seed unveraendert, daher unkritisch) wurden
  nie wieder anfasst.
- `3-schritte-spec.md`: `2026-06-21`, seit Seed inhaltlich unveraendert — korrekt.

### F — Schreibregel-Verstoesse
- **Kein ß**, keine Emoji-Dekoration in den Artikeln (nur 3 harmlose ✓-Haken in
  `QUESTIONS.md`, Arbeitsdatei, wie bereits am 01.07. toleriert).
- **Neuer, gravierender Befund:** systemischer Verstoss gegen die echte-Umlaute-Regel.
  Zaehlung ueber `wiki/*.md`: **968** Treffer fuer `ae|oe|ue` gegen **1** echten Umlaut
  (ä/ö/ü) in der gesamten KB. Der eine Treffer steht in `QUESTIONS.md` Z. 217
  ("Hält-Check", Ueberschrift von **Lauf 26, heute**) — im selben Absatz schreibt derselbe
  Lauf drei Woerter weiter wieder "haelt" (ASCII). Der Verstoss ist also nicht auf alte
  Laeufe beschraenkt, sondern reicht bis in den heutigen Output.
  Frontmatter-Schema (title/status/last_updated/sources/links) ist bei allen 5 Artikeln
  vollstaendig — nur der reine Text verstoesst gegen die Umlaut-Regel.

### G — Promotion-Kandidaten / beantwortete QUESTIONS
- Keine `speculative`→`emerging`-Promotion offen (kein Artikel traegt `speculative`).
- F1-F3 sind bewusst dauerhaft laufende Sammel-Fragen (Schwelle/Interview-Laenge/Verifier-
  Zuordnung je Domaene) — korrekt nicht als "erledigt" markiert, wachsen mit jeder realen
  Spec weiter.
- F4-F7 sind seit Wochen korrekt als eingeloest/umgesetzt gefuehrt (Primaerquellen, Template
  `spec-vorlage.md`, Goldstandard-Specs) — keine Nacharbeit noetig.

## Nicht bearbeitet (Phase 1, keine Aktion)
Alle sechs Funde bleiben Phase-2-Aktionen (Raphael/naechster interaktiver Lauf oder naechster
Trainingslauf): Umlaut-Korrekturdurchlauf (F), `the-spec.md`-Datum + Selbst-Zitat (B/E),
`_INGESTED.md`-Register-Nachzug (D). Keine davon ist eine Whitelist-Aktion der Nachtschicht.
