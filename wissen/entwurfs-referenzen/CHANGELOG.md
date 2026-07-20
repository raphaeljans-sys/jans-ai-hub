# CHANGELOG — Entwurfs-Referenzen

## 2026-07-20 (2. Eintrag, Phase-2-Fixes aus dem Erst-Audit, Dauerschicht-Zyklus 25)
- [index] Haupt-INDEX: wohnen-mfh-urban ergaenzt, [[...]]-Links auf JSONs durch relative
  Links ersetzt (Konvention), Ankuendigung schule-volksschule-ch.json aus wettbewerbs-dna B5.
- [questions] Seed-Import-Sektion als UEBERHOLT geschlossen (architekten-synobsis deckt
  die Quelle; Abfrage-Workflow dokumentiert); NEU: Koordinationspunkt Namens-Abstimmung
  Schulhaus-Set (B5 liefert schule-volksschule-ch.json statt bildung-schulhaus.json).
- [entscheid] Schulhaus-Set NICHT hier gebaut — Doppelarbeit-Guard: wettbewerbs-dna B5
  (naechster Lauf des dedizierten Tasks) leitet es selbst aus kennwerte-schulbauten ab;
  diese KB validiert es beim Eintreffen gegen das Schema.

## 2026-07-20
- Erst-Wissenscheck Phase 1 (Dauerschicht-Zyklus 24): Geruest sauber (Schema-Validierung
  beider Parameter-Sets OK), aber KB schlafend seit Anlage. Befunde: INDEX-Luecke
  (wohnen-mfh-urban fehlt im Haupt-INDEX), [[...]]-Konvention auf JSON, **Seed-Import
  aus 05_Architekten_Synobsis ist UEBERHOLT** (KB architekten-synobsis deckt das mit
  Katalog+Vektorindex+Themenregister ab → Abfrage-Workflow statt Roh-Import),
  Compounding-Kandidat bildung-schulhaus.json aus wettbewerbs-dna-Benchmark
  kennwerte-schulbauten (heute established). Voller Report:
  outputs/2026-07-20_health-check.md

## 2026-06-18
- KB angelegt: Ordnerstruktur, CLAUDE.md, JSON-Schema, Beispiel-Parameter-Set
- Seed-Import steht aus (NAS-Ordner 05_Architekten_Synobsis → raw/)
