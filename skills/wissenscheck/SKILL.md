---
description: "Wissens-Health-Check fuer die JANS-Wissensbasen (Wissens-Layer unter wissen/). Auditiert einen KB auf Widersprueche, kaputte Backlinks, unbelegte Claims, RAW-Coverage, veraltete Artikel, Schreibregel-Verstoesse und Promotion-Kandidaten; schreibt einen Report und protokolliert im CHANGELOG. Schwester von heartbeat (System-Health), hier fuer Wissens-Gesundheit. Verwenden wenn: 'Wissenscheck', 'Wissens-Health-Check', 'KB pruefen', 'Wissensbasis auditieren', 'Baurecht-Wiki pruefen', 'Health-Check Wissen', 'monatlicher Wissens-Check', oder als Scheduled Task. Laeuft in zwei Phasen: Phase 1 (Audit + Report) immer, Phase 2 (Aktionen ausfuehren) nur interaktiv."
---

# JANS Wissens-Health-Check (`wissenscheck`)

## Contract

- **Trigger:** Periodische Wartung einer Wissensbasis unter `wissen/<kb>/` ("Wissenscheck",
  "KB pruefen", "Wissensbasis auditieren") oder als monatlicher Scheduled Task.
- **Inputs:** Name des KB (z.B. `baurecht`). Ohne Angabe: nachfragen oder alle KBs auflisten.
- **Output-Ablage:** `wissen/<kb>/outputs/JJJJ-MM-TT_health-check.md` (voller Report) +
  1-Zeilen-Summary in `wissen/<kb>/CHANGELOG.md`. Chat: nur Kurzfassung.
- **Abhaengige Rules:** wissens-bibliothekar, identifikatoren-verifizieren, umlaute-konvention,
  dokument-layout-standard, antwort-formatierung, sync-kanonische-quelle.
- **Vorgelagert:** —  **Nachgelagert:** Skill `korrektur` (fuer Audit F, Schreibregeln).

## Zweck

`heartbeat` prueft die **System**-Gesundheit des Hub (NAS, Git, M365). `wissenscheck`
prueft die **Wissens**-Gesundheit einer KB: findet Widersprueche, Luecken, kaputte
Verlinkung und Veraltetes — und haelt die Wissensbasis sauber, statt sie verrotten zu
lassen. Folgt der Bibliothekar-Rolle (Rule `wissens-bibliothekar.md`).

## Die zwei Phasen

Der Skill laeuft in zwei Phasen. **Phase 1 laeuft immer** (auch unbeaufsichtigt als
Scheduled Task). **Phase 2 nur in interaktiven Sessions** — der Scheduled Task stoppt
am Ende von Phase 1.

### Phase 1 — Audit und ablegen (immer)

1. **Regeln lesen.** `wissen/WISSEN-CLAUDE.md` (Meta-Schema) + `wissen/<kb>/CLAUDE.md`
   (KB-Schema mit KB-spezifischen Schreibregeln).
2. **State-Files lesen.** `<kb>/CHANGELOG.md` (letzter Check + was seither geschah),
   `<kb>/wiki/QUESTIONS.md` (schon geflaggte Luecken — nicht doppelt flaggen),
   `<kb>/raw/_INGESTED.md` (Register, was in raw/ liegt).
3. **Alles im Scope lesen.** Jeden Artikel in `<kb>/wiki/`, jede Datei in `<kb>/raw/`
   (mindestens Frontmatter + Titel — Volltext nur beim Verifizieren eines konkreten
   Claims), jeden Output in `<kb>/outputs/` seit dem letzten Health-Check.
4. **Die sieben Audits ausfuehren** (siehe unten).
5. **Vollen Report schreiben** nach `<kb>/outputs/JJJJ-MM-TT_health-check.md`.
6. **1-Zeilen-Summary** zuoberst ins `<kb>/CHANGELOG.md` anhaengen.
7. **Chat-Kurzfassung ausgeben** — nur Zahlen je Audit + die 3 wichtigsten Findings +
   Link zum vollen Report. **Nicht** den ganzen Report in den Chat dumpen.

### Phase 2 — Fragen und handeln (nur interaktiv)

8. **Fragen, was angepackt wird.** `AskUserQuestion` (multi-select) mit den Kategorien,
   die tatsaechlich Findings haben. Kategorien ohne Findings weglassen.
9. **Freigegebene Aktionen ausfuehren.** Pro angetickter Kategorie die Aktion umsetzen
   (Backlink fixen, Artikel zusammenfuehren nach Rueckfrage, Lueckenartikel anlegen,
   Schreibregeln via Skill `korrektur` korrigieren, …).
10. **Jede Aktion loggen** — eigene Zeile im CHANGELOG unter demselben datierten Eintrag.
11. **In Chat bestaetigen.** Eine kurze Summary: was getan, was uebersprungen, was noch
    Raphaels Entscheidung braucht.

## Die sieben Audits

**A. Widersprueche zwischen Artikeln.** Fuer jedes Artikelpaar mit ueberlappendem Thema:
direkte Widersprueche und ungeloeste Spannungen. Zaehlt als Widerspruch, wenn beide eine
Aussage zur selben Frage machen, in entgegengesetzte Richtung zeigen, und keiner den
anderen anerkennt. Bereits in QUESTIONS.md notierte Spannungen separat fuehren (geloest seit letztem Mal? neue dazugekommen?).

**B. Kaputte Backlinks & Orphans.** Jeder `[[artikel-name]]`-Link muss auf eine
existierende Wiki-Datei zeigen — jeden toten Link mit Fundort listen. Zusaetzlich:
Artikel, auf die niemand verlinkt (Orphans), und Artikel, die nicht im INDEX.md stehen.

**C. Unbelegte Claims.** Bis zu drei zentrale Aussagen pro Artikel pruefen, ob sie eine
Quelle in `sources` haben (Vollpruefung jedes Claims ist monatlich zu teuer). Im Baurecht
verschaerft: jede rechtliche Aussage braucht §-Grundlage. Artikel mit `status: speculative`
markieren, ob sie inzwischen Beleg gefunden haben (Promotion zu `emerging`/`established`).

**D. RAW-Coverage.** Fuer jeden Eintrag in `_INGESTED.md` pruefen, ob mindestens ein
Wiki-Artikel ihn zitiert. Nicht eingearbeitete raw/-Quellen sind entweder
**Coverage-Luecke** (Wiki sollte den Inhalt aufnehmen) oder **out-of-scope** (gehoert
nicht in diesen KB → fuer Verschiebung/Entfernung flaggen).

**E. Veraltete Artikel.** Artikel, deren `last_updated` aelter als 90 Tage ist **und**
fuer die seither eine neuere raw/-Quelle existiert, die sie auffrischen sollte. Reines
Alter ist kein Problem — Veralterung zaehlt nur, wenn neuere Evidenz existiert.

**F. Schreibregel-Verstoesse.** Frontmatter vollstaendig? Schweizer Hochdeutsch, echte
Umlaute ä/ö/ü, kein ß, keine dekorativen Symbole? KB-spezifische Regeln eingehalten?
Fuer die Textpruefung den Skill `korrektur` (Agenten `rechtschreibung` + `layout`) nutzen.

**G. Promotion-Kandidaten.** Artikel/Abschnitte, die durch neue Belege oder mehrfache
Bestaetigung reif sind, ihren `status` zu erhoehen (speculative → emerging → established),
oder QUESTIONS-Eintraege, die inzwischen beantwortet sind und ins Wiki gehoeren.

## Report-Format (`outputs/JJJJ-MM-TT_health-check.md`)

```markdown
# Wissens-Health-Check: <KB> — JJJJ-MM-TT

## Zusammenfassung
| Audit | Findings |
|---|---|
| A Widersprueche | n |
| B Kaputte Backlinks/Orphans | n |
| C Unbelegte Claims | n |
| D RAW-Coverage-Luecken | n |
| E Veraltete Artikel | n |
| F Schreibregel-Verstoesse | n |
| G Promotion-Kandidaten | n |

## Top-3 (Raphaels Aufmerksamkeit)
1. …  2. …  3. …

## Details je Audit
### A. Widersprueche
- …
(usw. fuer B–G; jeder Finding mit Artikel/Datei + konkretem Befund + Vorschlag)
```

## Chat-Kurzfassung (Phase 1, Ende)

Kurz halten: pro Audit nur die Zahl, dann die 3 wichtigsten Findings, dann der Pfad zum
vollen Report. Beispiel:

```
Wissens-Health-Check baurecht (JJJJ-MM-TT)
A0 · B1 · C2 · D1 · E0 · F0 · G1
Top: (1) raw/…praxisfaelle nie eingearbeitet (Coverage)  (2) Backlink [[gewaesserabstand]] tot in baubewilligungsverfahren  (3) zonenkonformitaet reif fuer Detaillierung
Voller Report: wissen/baurecht/outputs/JJJJ-MM-TT_health-check.md
```

## Als Scheduled Task

Monatlich, unbeaufsichtigt (stoppt nach Phase 1):
- Name: `wissenscheck-baurecht-monatlich`
- Prompt: `Fuehre den Wissens-Health-Check fuer den KB baurecht aus (nur Phase 1). Report ablegen und Kurzfassung berichten.`
- Frequenz: monatlich, z.B. 1. des Monats 07:00.
- Pro KB ein eigener Task, oder ein Sammeltask, der alle KBs unter wissen/ nacheinander auditiert.

## Verwandte

- Rule `wissens-bibliothekar.md` (Rolle/Autonomie), `wissen/WISSEN-CLAUDE.md` (Schema)
- Skill `korrektur` (Audit F), Skill `heartbeat` (System- statt Wissens-Health)
- Skill `baurecht` (nutzt die KB als schnelle Referenz + durchsucht SharePoint)
