# Wissens-Health-Check — Firmengründung Schweiz

Datum: 2026-07-21 · KB: `firmengruendung-ch` · Phase 1 (Audit + Report), unbeaufsichtigt
(Nachtschicht-Zyklus Mac Mini). Umfang: 9 Wiki-Artikel + INDEX + QUESTIONS, 6 raw/-Quellen,
3 Outputs. Zweiter Health-Check dieser KB (erster: 2026-07-01).

## Zusammenfassung

| Audit | Thema | Ampel | Befund (Kurz) |
|---|---|---|---|
| A | Widersprüche | Gelb | Kein neuer interner Widerspruch; der am 01.07. gemeldete Firmenname-Blocker (KB↔Realität) ist unverändert nicht eingearbeitet. |
| B | Backlinks / Orphans / INDEX | Gelb | Alle 10 Backlink-Ziele existieren; neuer Artikel `steuern-ag-inhaber` ist ein Orphan (nur INDEX/QUESTIONS verlinken darauf, kein Content-Artikel). |
| C | Unbelegte Claims | Gelb | Unverändert: HR-/Kostenzahlen ohne Tarifquelle (needs-verification-Hinweis vorhanden, aber keine belastbare Quelle nachgezogen). |
| D | RAW-Coverage | Grün | Weiterhin alle 6 raw/-Quellen zitiert; `steuern-ag-inhaber` stützt sich auf extern zitierte Quellen im Frontmatter statt auf raw/ — kein Defizit, aber Register-Konvention leicht abweichend. |
| E | Veraltete Artikel | Gelb | Aktienrecht-Revision 2023 seit dem 01.07.-Check unverändert offen (3 Artikel, needs-verification seit 20.06.). |
| F | Schreibregeln | Grün | Echte Umlaute, kein ß, keine Deko, Frontmatter vollständig (auch bei `steuern-ag-inhaber`). |
| G | Promotion / QUESTIONS | Gelb | Eine Promotion seit letztem Check erfolgreich vollzogen (`steuern-ag-inhaber`, 20.07.); die höher priorisierte Firmenname-Blocker-Lesson blieb dagegen unbearbeitet. |

## Top-3 (Raphaels Aufmerksamkeit)

1. **Firmenname-Blocker-Lesson ist 20 Tage nach der Meldung immer noch nicht in der KB.**
   Der am 01.07. als „höchster Compounding-Wert dieses Checks" markierte Befund (JANS AG
   durch bestehende JANS GmbH blockiert, EHRA-Weisung Ziff. IV — gleicher Firmenkern + nur
   Rechtsform-Zusatz genügt nicht) ist unverändert nirgends im Wiki oder in `QUESTIONS.md`
   nachgetragen, obwohl im selben Zeitraum eine andere Promotion (`steuern-ag-inhaber`) sehr
   wohl durchgeführt wurde. Das ist im laufenden Fall selbst gelöst (Voranfrage lief), aber die
   *Lesson fürs nächste Mal* — der eigentliche Zweck dieser KB laut `CLAUDE.md` — fehlt weiter.
   Deckt sich mit dem unabhängigen Befund des heutigen 07:30-Zyklus in `auflagebereinigung`
   (dort: ein Gewerk-Widerspruch 20 Tage unkorrigiert trotz zwischenzeitlicher Artikel-Edits):
   **drittes Beispiel in derselben Nacht, dass Health-Check-Funde ohne explizite interaktive
   Phase-2-Session folgenlos bleiben**, selbst wenn die KB in der Zwischenzeit aktiv gepflegt
   wird. Vorschlag unverändert: Ergänzung in `ag-gruendungsablauf.md` Schritt 2 oder eigener
   Kurzartikel `firmenname-distinktivitaet.md`.
2. **Neuer Orphan `steuern-ag-inhaber`.** Der am 20.07. promovierte Artikel deklariert selbst
   Backlinks zu `rechtsform-vergleich`, `kapital-und-liberierung`, `revision-und-opting-out` (im
   Footer „Backlinks:"), aber keiner dieser drei Artikel verlinkt umgekehrt auf ihn — nur
   `INDEX.md` und `QUESTIONS.md` (strukturell, nicht inhaltlich) tun das. Kein Fehler im Inhalt,
   aber eine Lücke gegenüber der KB-eigenen Praxis „Verknüpfen statt sammeln" (`CLAUDE.md`).
   Kleiner Fix: in den drei Zielartikeln je einen `[[steuern-ag-inhaber]]`-Verweis ergänzen.
3. **Aktienrecht-Revision 2023 seit 31 Tagen (seit Aufbau) bzw. 20 Tagen (seit letztem Check)
   unverändert nur als needs-verification markiert**, in drei Artikeln (`statuten-ag`,
   `kapital-und-liberierung`, `revision-und-opting-out`). Kernbeträge sind unverändert korrekt;
   offen bleiben Kapitalband, Fremdwährungskapital, aktuelle Revisions-Schwellen (Art. 727 OR).
   Reiner Recherche-Task (kein Widerspruch), aber am längsten offen von allen needs-verification-
   Punkten dieser KB.

## Details je Audit

### A. Widersprüche
- Beträge weiterhin konsistent über `rechtsform-vergleich`, `statuten-ag`,
  `kapital-und-liberierung`, `kosten-und-zeit` (CHF 100'000 Kapital / 50'000 Liberierung /
  20 % je Aktie / Emissionsabgabe-Freibetrag CHF 1'000'000).
- Der neue Artikel `steuern-ag-inhaber` widerspricht keinem bestehenden Artikel; er ergänzt
  das Rechtsformkapitel um die laufende (nicht die Gründungs-)Besteuerung — Abgrenzung ist im
  Artikel selbst und in `QUESTIONS.md` sauber vermerkt.
- **KB↔Realität-Lücke unverändert offen** (siehe Top-Fund 1) — 20 Tage ohne Fortschritt trotz
  aktiver Pflege der KB im selben Zeitraum.

### B. Backlinks & Orphans & INDEX
- Alle 10 `[[…]]`-Linkziele (9 Artikel + `QUESTIONS`) existieren, keine toten Links.
- **Neuer Orphan:** `steuern-ag-inhaber` hat keine eingehenden Links von einem Content-Artikel
  (nur INDEX/QUESTIONS) — siehe Top-Fund 2.
- INDEX vollständig und mit neuer Sektion „Steuern (laufend)" korrekt nachgeführt (Statistik-
  Zeile allerdings noch auf Stand 2026-07-02, nicht auf 07-20/07-21 aktualisiert — kleiner
  Pflegepunkt, kein Fehler).

### C. Unbelegte Claims
- Weiterhin gut belegt bei rechtlich/registerrelevanten Aussagen (OR-/HRegV-Zitate durchgehend).
- Unverändert offen: HR-Gebühren-Richtwerte (~120/~240/~600), Beratungs-/Notariatsbänder ohne
  exakte Tarifquelle (GebV-HReg nicht zitiert) — seit 01.07. keine Verifikation nachgezogen.
- `steuern-ag-inhaber` ist demgegenüber vorbildlich belegt (DBG-/StG-ZH-/BVG-Artikel plus
  datierte externe Quellen im Frontmatter) — deutlich über dem KB-Durchschnitt.

### D. RAW-Coverage
- Alle 6 raw/-Quellen weiterhin im Wiki zitiert, keine verwaiste Quelle.
- `steuern-ag-inhaber` zieht seine Quellen nicht aus `raw/`, sondern aus einem bereits
  `established` Output (`outputs/2026-07-02_steuern-sparen-ag-inhaber.md`) plus im Frontmatter
  zitierten externen Web-Quellen — zulässig laut Compounding-Loop-Regel, aber `_INGESTED.md`
  registriert das nicht. Kein echtes Defizit (Output ist referenziert), nur ein
  Konsistenz-Hinweis, falls die KB später strikt „alles über `_INGESTED.md`" nachhalten will.

### E. Veraltete Artikel
- Alle 9 Artikel `last_updated` innerhalb der letzten 50 Tage, formal nicht veraltet.
- Aktienrecht-Revision 2023 bleibt der einzige echte Aktualitäts-Vorbehalt, unverändert seit
  dem 01.07.-Check (siehe Top-Fund 3).

### F. Schreibregel-Verstösse
- Keine Verstösse: echte Umlaute, kein ß, keine Deko-Symbole, vollständiges Frontmatter auch
  im neuen Artikel `steuern-ag-inhaber` (inkl. YAML-Sonderfall mit gequotetem `title:` wegen
  Doppelpunkt — korrekt escaped).

### G. Promotion-Kandidaten & beantwortete QUESTIONS
- **Eine Promotion erfolgreich vollzogen:** `steuern-ag-inhaber` (established, 20.07., aus
  Output 02.07.) — sauber im CHANGELOG und QUESTIONS-Archiv dokumentiert.
- **Firmenname-Blocker-Lesson weiterhin nicht promoviert**, obwohl am 01.07. als höchster
  Compounding-Kandidat markiert — bleibt Top-Fund 1.
- Übriger QUESTIONS-Backlog (Holding, GmbH-Ablauf, Nach-Gründung-Detail, VR-Artikel) unverändert
  offen, keine neue Recherchegrundlage seit 01.07.

---
Phase 2 (Ausführen der Vorschläge) nur interaktiv. Dieser Report ändert nur CHANGELOG.md + diese
Datei.
