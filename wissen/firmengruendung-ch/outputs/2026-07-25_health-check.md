# Wissens-Health-Check — Firmengründung Schweiz

Datum: 2026-07-25 · KB: `firmengruendung-ch` · Phase 1 (Audit + Report), unbeaufsichtigt
(Nachtschicht-Zyklus Mac Mini). Umfang: 13 Wiki-Artikel + INDEX + QUESTIONS, 6 raw/-Quellen,
3 Outputs. Dritter Health-Check dieser KB (vorherige: 2026-07-01, 2026-07-21). Seit dem
letzten Check sind 4 neue Artikel dazugekommen (`gmbh-gruendungsablauf` 21.07.,
`nachgruendung-anmeldungen` 22.07., `holding-struktur` + `steuern-bei-gruendung` 24.07.).

## Zusammenfassung

| Audit | Thema | Ampel | Befund (Kurz) |
|---|---|---|---|
| A | Widersprüche | Grün | Keine neuen internen Widersprüche; der 01.07.-Firmenname-Blocker ist seit 21.07. eingearbeitet (Top-Fund des letzten Checks — erledigt). |
| B | Backlinks / Orphans / INDEX | Gelb | `steuern-bei-gruendung` ist wie zuvor `steuern-ag-inhaber` ein Orphan (nur INDEX/QUESTIONS-Links); `gmbh-gruendungsablauf` wird trotz expliziter Selbstbezeichnung als „Pendant" nicht von `ag-gruendungsablauf` zurückverlinkt. Der 21.07. behobene `steuern-ag-inhaber`-Orphan bleibt weiterhin sauber verlinkt. |
| C | Unbelegte Claims | Gelb | Unverändert: HR-Gebühren-Richtwerte (~120/~240/~600) ohne GebV-HReg-Tarifquelle — jetzt in 3 statt 1 Artikel wiederholt (`rechtsform-vergleich`, `kosten-und-zeit`, neu auch `gmbh-gruendungsablauf`), keine Verifikation seit 01.07. nachgezogen. Die 4 neuen Artikel selbst sind überdurchschnittlich gut belegt (DBG-/StG-ZH-/OR-Zitate, teils Fedlex-Volltext direkt gelesen). |
| D | RAW-Coverage | Grün | Alle 6 raw/-Quellen weiterhin zitiert. Die 4 neuen Artikel ziehen ihre Quellen wie bereits bei `steuern-ag-inhaber` aus Web-/Fedlex-Primärquellen statt aus `raw/` — `_INGESTED.md` registriert das strukturell nicht (unverändert kein echtes Defizit, nur eine wachsende Konvention-Abweichung: 4 von 13 Artikeln jetzt ausserhalb des raw/-Registers). |
| E | Veraltete Artikel | Gelb | Aktienrecht-Revision 2023 bleibt seit 20.06. (35 Tage) unverändert nur als needs-verification markiert, in `statuten-ag` + `kapital-und-liberierung`. Die 8 Ursprungsartikel stehen weiterhin unverändert auf `last_updated: 2026-06-02` (53 Tage), während die KB drumherum aktiv wächst — noch nicht formal "veraltet", aber wachsender Abstand. |
| F | Schreibregeln | Gelb | Ein neuer, kleiner Verstoss: `holding-struktur.md` Frontmatter-Feld `herkunft` enthält „QUESTIONS-**Luecke**" statt „Lücke" (ASCII-Ersatzschreibung, Rule `umlaute-konvention`) — Metadatenfeld, nicht Fliesstext, aber ein echter Verstoss. Alle 4 neuen Artikel sonst sauber (echte Umlaute im Fliesstext, kein ß, vollständiges Frontmatter, kein Deko-Symbol). |
| G | Promotion / QUESTIONS | Grün | QUESTIONS.md sauber geführt: 4 neue Archiv-Einträge korrekt mit Datum/Fundort protokolliert, Backlog auf 2 echte Lücken geschrumpft (VR-Artikel, 1e-Kaderplan-Erhebung — beide unverändert seit 01.07., keine neue Recherchegrundlage). Keine unbearbeiteten Promotion-Kandidaten (alle 4 neuen Artikel direkt als `established` angelegt). |

## Top-3 (Raphaels Aufmerksamkeit)

1. **Orphan-Muster wiederholt sich: `steuern-bei-gruendung` ist der zweite Artikel in Folge
   ohne Content-Backlink.** Wie beim 21.07.-Fund zu `steuern-ag-inhaber` deklariert der Artikel
   im Frontmatter `links: [[ag-gruendungsablauf]], [[gmbh-gruendungsablauf]],
   [[kapital-und-liberierung]], …`, aber keiner dieser Zielartikel verlinkt zurück — nur
   INDEX.md/QUESTIONS.md (strukturell) tun das. Zusätzlich verweist `gmbh-gruendungsablauf`
   selbst im Fliesstext auf „Pendant zu [[ag-gruendungsablauf]]", aber `ag-gruendungsablauf.md`
   (unverändert seit 02.06.) erwähnt weder `gmbh-gruendungsablauf` noch `steuern-bei-gruendung`.
   Der 21.07.-Fix des `steuern-ag-inhaber`-Orphans zeigt, dass das Muster lösbar ist (dort
   wurde offenbar nachgezogen) — hier fehlt der Rückverweis-Schritt bislang. Kleiner Fix:
   in `ag-gruendungsablauf.md` (Schritt-Ende) und `kapital-und-liberierung.md` je einen
   `[[gmbh-gruendungsablauf]]`- bzw. `[[steuern-bei-gruendung]]`-Verweis ergänzen.
2. **Aktienrecht-Revision 2023 jetzt 35 Tage unverändert offen** (`statuten-ag`,
   `kapital-und-liberierung`, needs-verification seit 20.06.) — am längsten offene
   Wissenslücke der KB, reiner Recherche-Task, kein Widerspruch. Blieb auch über den
   21.07.-Check hinweg unbearbeitet, obwohl die KB in derselben Zeit vier neue Artikel bekam.
3. **`holding-struktur.md`: „Luecke" statt „Lücke" im Frontmatter-Feld `herkunft`.** Einzeiliger
   Fix, aber ein echter Regelverstoss (Rule `umlaute-konvention`) an einer Stelle, die von
   automatisierten Nachtschicht-Läufen selbst geschrieben wurde — Hinweis, dass die
   Umlaut-Disziplin bei Subagenten-generierten Frontmatter-Feldern (nicht nur Fliesstext)
   mitgeprüft werden sollte (deckt sich mit dem bekannten, KB-übergreifenden Umlaut-Bug bei
   Haiku/Sonnet-Subagenten, siehe `architekten-synobsis`-CHANGELOG 22.07.).

## Details je Audit

### A. Widersprüche
- Kernbeträge (Kapital CHF 100'000/50'000 AG, CHF 20'000 GmbH, Emissionsabgabe-Freibetrag
  CHF 1 Mio.) bleiben konsistent über alle 13 Artikel.
- Die neuen Steuer-Artikel (`steuern-bei-gruendung`, `holding-struktur`) widersprechen sich
  nicht und grenzen sich sauber ab: Gründungssteuern (Kapital-/Gewinn-/Verrechnungssteuer)
  vs. laufende Besteuerung (`steuern-ag-inhaber`) vs. Holding-Einbringung (Transponierung).
- **Der 01.07.-Firmenname-Blocker (Top-Fund des 21.07.-Checks) ist erledigt:** seit 21.07.
  in `ag-gruendungsablauf.md` Schritt 2 eingearbeitet (EHRA-Weisung Ziff. IV, Zefix-«frei»
  ≠ Freigabe) — laut QUESTIONS.md-Archiv „Dauerschicht-Zyklus 36".

### B. Backlinks & Orphans & INDEX
- Keine toten `[[…]]`-Links (deterministisch gegen alle Wiki-Dateien geprüft, 0 Treffer).
- **Zwei Lücken-Fälle:** `steuern-bei-gruendung` (voller Orphan, nur INDEX/QUESTIONS) und
  `gmbh-gruendungsablauf` (kein Rückverweis von seinem erklärten Pendant `ag-gruendungsablauf`,
  obwohl von zwei anderen Artikeln — `nachgruendung-anmeldungen`, `steuern-bei-gruendung` —
  bereits referenziert, also kein voller Orphan).
- `holding-struktur` und `nachgruendung-anmeldungen` sind sauber cross-verlinkt (je 2–4
  eingehende Content-Links).
- INDEX.md korrekt nachgeführt (12 Artikel Stand 24.07. laut Statistik-Zeile — jetzt 13,
  Statistik-Zeile also einen Artikelstand hinter dem tatsächlichen Wiki, kleiner Pflegepunkt).

### C. Unbelegte Claims
- Rechtlich/registerrelevante Aussagen weiterhin durchgehend mit Artikelverweis belegt.
- HR-Gebühren-Richtwerte unverändert ohne GebV-HReg-Primärquelle — Reichweite des Problems
  wächst leicht (jetzt auch in `gmbh-gruendungsablauf` wiederholt, nicht nur `rechtsform-
  vergleich`/`kosten-und-zeit`).
- Die 4 neuen Artikel selbst: `holding-struktur` und `steuern-bei-gruendung` mit direktem
  Fedlex-Volltextabgleich (überdurchschnittlich belegt); `gmbh-gruendungsablauf` und
  `nachgruendung-anmeldungen` explizit als needs-verification markiert (Sekundärquellen,
  kein Fedlex-Abgleich) — sauber selbstdeklariert, kein verstecktes Defizit.

### D. RAW-Coverage
- Alle 6 raw/-Quellen weiterhin im Wiki zitiert, keine verwaiste Quelle.
- `_INGESTED.md` unverändert bei 6 Zeilen (Stand 02.06.) — die 4 neuen Artikel (Web-/
  Fedlex-Primärquellen) sind dort nicht registriert. Zulässig laut Compounding-Loop-Regel
  (Quellen im Frontmatter zitiert), aber die Lücke zwischen „was `_INGESTED.md` zeigt" und
  „was die KB tatsächlich an Quellen nutzt" wächst (jetzt 4 von 13 Artikeln ausserhalb).

### E. Veraltete Artikel
- Die 4 neuen Artikel sind naturgemäss aktuell (21.–24.07.).
- Die 8 Ursprungsartikel stehen weiterhin auf `last_updated: 2026-06-02` — formal noch nicht
  über eine definierte Frist "veraltet", aber der Abstand zum aktiven Wachstum der KB nimmt zu.
- Aktienrecht-Revision 2023 bleibt der einzige echte Aktualitäts-Vorbehalt (siehe Top-Fund 2).

### F. Schreibregel-Verstösse
- **Neu:** `holding-struktur.md` Frontmatter `herkunft:` „QUESTIONS-Luecke" statt „Lücke"
  (siehe Top-Fund 3).
- Deterministischer Scan (typische ae/oe/ue-Ersatzwörter: fuer/ueber/moeglich/koennen/
  muessen/waehrend/gruenden/gruendung/erlaeutert/zusaetzlich/natuerlich/…) über alle 13
  Artikel: 0 echte Treffer im Fliesstext (die zwei Rohtreffer waren Dateinamen-Slug-
  Bestandteile in Link-Syntax, kein Fliesstext-Fehler).
- Kein ß in der gesamten KB. Vollständiges Frontmatter in allen 4 neuen Artikeln (inkl.
  korrekt gequotetem `title:` bei Doppelpunkt).

### G. Promotion-Kandidaten & beantwortete QUESTIONS
- Alle 4 neuen Artikel wurden direkt als `established` angelegt (bzw. mit präzisem
  needs-verification-Zusatz) — keine offenen `emerging`-Promotion-Kandidaten.
- QUESTIONS.md-Archiv sauber protokolliert (4 neue Einträge mit Datum/Dispatch-Run/Kernbefund).
- Backlog auf 2 Punkte geschrumpft (VR-Artikel, 1e-Kaderplan) — beide unverändert seit 01.07.,
  ohne neue Recherchegrundlage; kein Fortschritt, aber auch kein neuer Rückstand.

---
Phase 2 (Ausführen der Vorschläge) nur interaktiv. Dieser Report ändert nur CHANGELOG.md +
diese Datei.
