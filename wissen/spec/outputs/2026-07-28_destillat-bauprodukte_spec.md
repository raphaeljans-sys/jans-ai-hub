---
title: Korpus-Spec `bauprodukte`
status: established
last_updated: 2026-07-28
sources: [wissen/bauprodukte/CLAUDE.md, skills/wissens-destillat/KORPUS-QUEUE.md, skills/wissens-destillat/training/bauprodukte-sektionen.md, wissen/normen/wiki/en-520-gipsplattentypen.md (Goldstandard)]
links: [[bkp-2017-referenz]], [[normen-referenz]], [[wissens-bibliothekar]]
---

# Korpus-Spec `bauprodukte`

Erstellt: 2026-07-28 · Methode: Skill `spec` (Karpathy/Marchese), angewendet gemäss
Skill `wissens-destillat` Abschnitt «Die Spec-Stufe» · Faktenbasis: `wissen/bauprodukte/CLAUDE.md`
(bereits vom Skelett-Lauf verfasst, hier zur bindenden Spec verdichtet) + `KORPUS-QUEUE.md`.

Unbeaufsichtigter Nachtschicht-Lauf (Mac Mini, 28.07.2026, 01:30-Fenster) — keine
`AskUserQuestion`-Rückfrage möglich. Die Schlüsselentscheide unten sind aus der bereits von
Raphael/vorherigen Läufen gesetzten KB-CLAUDE.md und den Hub-Rules abgeleitet, nicht neu
erfunden. Wo eine echte offene Wahl bestand, steht sie in `wiki/QUESTIONS.md` statt hier
stillschweigend entschieden zu werden.

## Ziel (1 Satz)

Zu jedem der 37 BKP-gegliederten Gewerke im Archiv `/Volumes/daten/03 Bauprodukte_BKP`
soll JANS in einem Jahr ohne erneutes Suchen beantworten können: welche Systeme/Produktgattungen
sind in diesem Gewerk üblich, mit welchen belegten Kennwerten/Klassifizierungen, an welchen
Schnittstellen zu Nachbargewerken treten welche wiederkehrenden Fehlerbilder auf — Wissen,
das direkt in LV-Texte (`ausschreibung`), Plausibilitätsprüfung (`offertenpruefung`) und
Klassifizierungs-Fragen (`brandschutz`) einfliesst, statt bei jedem Projekt neu recherchiert
oder geraten zu werden.

## Abgrenzung (was NICHT dazugehört)

- **Keine Projektdokumentation.** Ein konkretes Bauvorhaben, das im Archiv nur als Beispiel
  liegt (z.B. eine Devis-Kopie), speist einen Artikel, wird aber nicht selbst zum Artikel —
  das ist die Domäne von `wissen/projekt-lessons` (Korpus 2 der Queue).
- **Kein Hersteller-Marketing/keine Superlative** (bereits in CLAUDE.md Regel 4 festgelegt).
- **Keine Preisangaben ohne Datumsstempel** (CLAUDE.md Regel 1) — auch keine Umrechnung
  aktuell wirkender Preise aus alten Datenblättern; das wäre eine erfundene Aktualität.
- **Keine Norm-Volltexte im Wortlaut** — nur Fundstellen + sinngemässe Kernaussage
  (Rule `normen-referenz`, wie im Goldstandard EN-520-Artikel vorgemacht).
- **Kein eigenständiges BKP-Sektion-0-Kostenwissen** («0 nach BKP Nr», die erste inventarisierte
  Sektion): dieser Ordner enthält laut Stichprobe Kostenplanungs-Schulungsunterlagen (CRB,
  SIA 451, Kostenschätzungstools), keine Bauprodukte. Gehört fachlich zu `wissen/grobkosten`
  bzw. `wissen/normen` (SIA 451), nicht zu `bauprodukte`. Wird beim Destillat-Lauf als eigene
  Sektion markiert und an die passende KB weitergereicht statt hier künstlich einen
  Produkt-Artikel daraus zu pressen — Einzelfunde mit echtem Produktbezug (falls vorhanden)
  bleiben die Ausnahme.
- **Personal-/Vertragsvorlagen** ohne Produktbezug (z.B. reine Ausschreibungs-Musterbriefe
  ohne technische Aussage) werden im Inventar als `[-]` übersprungen mit Begründung.

## Artikelschnitt

Wie in `CLAUDE.md` festgelegt, ein Artikel je **Sache**, nicht je Quelldatei:

1. **Gewerk-Übersichtsartikel** (`bkp-<code>-<gewerk>.md`), einer pro BKP-Sektion mit
   Substanz — was gehört dazu, übliche Systeme, Schnittstellen zu Nachbargewerken,
   wiederkehrende Fehlerbilder. Nur anlegen, wenn die Sektion genug eigenständigen
   Inhalt trägt (nicht jede der 37 Sektionen braucht zwingend einen Übersichtsartikel,
   wenn sie z.B. nur zwei dünne Datenblätter enthält — dann direkt einen
   Produktgattungs-Artikel).
2. **Produktgattungs-Artikel** (`<produktgattung>.md`, z.B. `gipsfaserplatte.md`,
   `indach-pv.md`) — Aufbau, Kennwerte, Klassifizierung (VKF/EN/DIN wo einschlägig),
   Einsatzgrenzen, Datumsstempel je Angabe.
3. **Fehlerbild-/Praxisfall-Artikel**, wo ein Problem im Archiv mehrfach dokumentiert ist
   (z.B. wiederkehrende Reklamation, Montagefehler) — mit Verweis auf `projekt-lessons`,
   falls dort bereits ein Lesson-Artikel zum selben Fall existiert (Backlink, kein Duplikat).

Faustregel Artikelgrösse: lieber 3 knappe, gut belegte Artikel als 1 langer Sammelartikel
ohne klaren Suchbegriff (orientiert am Goldstandard, s.u. — 66 Zeilen, eine Frage, eine Antwort).

## Bewertungskriterien (vorab)

Ein erstklassiger `bauprodukte`-Artikel:

1. Jede nicht-triviale Aussage trägt eine Fundstelle (Dateiname + Pfad im Archiv, wo möglich
   Ziffer/Seite im Dokument) im Frontmatter `sources:` oder inline.
2. Jede Preis-, Kennwert- oder Zulassungsangabe trägt den Stand des Quelldokuments
   («Stand gemäss Datenblatt 03/2018»); ohne Datum keine Aufnahme.
3. BKP-Code gegen `references/bkp-2017/BKP-2017-Liste.md` verifiziert, nicht aus dem
   Ordnernamen übernommen (Ordnernamen im Archiv sind teils ungenau/veraltet geschrieben).
4. Norm-/VKF-Klassifizierungen mit Fundstelle aus `wissen/normen/` bzw. gegen den Skill
   `brandschutz`; kein Norm-Zitat im Wortlaut.
5. Herstellerneutral formuliert, Produktnamen als **Beispiel** gekennzeichnet
   («z.B. Rigips Duraline Vario»), nie als Vorgabe — analog zum Goldstandard-Muster
   («Praxisregeln» statt Produktempfehlung).
6. `status: emerging` beim ersten Beleg; `established` erst bei unabhängiger
   Zweitbelegung (zweites Datenblatt, Norm, oder eigener JANS-Projektbeleg) — nie vorschnell.
7. Wo ein Artikel eine offene Frage aufwirft (z.B. unklare Norm-Fundstelle, widersprüchliche
   Datenblätter), landet das in `wiki/QUESTIONS.md`, nicht als stillschweigende Lücke.

## Goldstandard

`wissen/normen/wiki/en-520-gipsplattentypen.md` — Formatvorlage für einen
**Produktgattungs-Artikel**: kompakte Klassifizierungstabelle, Wortlaut-Fundstelle mit
Beschaffungsstand vermerkt (Norm nicht im Bestand, Beleg über zwei unabhängige
Sekundärquellen + Produktdatenblätter), «Praxisregeln»-Abschnitt mit LV-Bezug, «Angewandter
Fall»-Verweis auf ein echtes JANS-Projekt (`projekt-lessons`), «Offene Punkte» ehrlich benannt
statt verschwiegen. Länge (~65 Zeilen) ist die Zielgrösse für einen Produktgattungs-Artikel;
ein Gewerk-Übersichtsartikel darf länger sein, wenn die Sektion das trägt.

## Verifier

- **Norm-/VKF-Klassifizierungen:** gegen `wissen/normen/` (Rule `normen-referenz`) und den
  Skill `brandschutz`; bei Widerspruch zwischen Datenblatt und Norm-KB: beide Stellen markieren,
  nach `QUESTIONS.md`, nicht stillschweigend überschreiben (wie im Goldstandard bei EN 520
  Ziffer 4.13 vorgemacht: Fundstelle bestätigt, Zahlenwert bleibt sekundärquellen-gestützt).
- **BKP-Codes:** gegen `references/bkp-2017/BKP-2017-Liste.md` (Rule `bkp-2017-referenz`).
- **Autoritative Instanz bei Zweifel an einem Kennwert:** die Leistungserklärung/das
  VKF-Anerkennungsdokument selbst, nicht das Sekundär-Datenblatt.
- **Zweite Textinstanz:** entfällt für reine Wiki-Artikel (kein Versand); bei einem Report,
  der in ein Ausschreibungs-LV übernommen wird, gilt `korrektur`.
- **Stufe 3 (Kurator, Opus, gemäss `wissens-destillat` SKILL.md Schritt 4):** prüft in jedem
  Lauf jede nicht-triviale Aussage gegen die im Frontmatter genannte Quelle, bevor der Report
  geschrieben wird — diese Prüfung wird nie übersprungen.

## Faktenbasis

- `wissen/bauprodukte/CLAUDE.md` (Skelett-Lauf 28.07.2026, Schreibregeln bereits vollständig
  formuliert und hier übernommen statt dupliziert).
- `skills/wissens-destillat/KORPUS-QUEUE.md` (Priorisierungs-Begründung).
- `skills/wissens-destillat/training/bauprodukte-sektionen.md` (37 Gewerke-Sektionen,
  Inventarstand: 2/37 erfasst).
- Stichprobe Sektion «0 nach BKP Nr» (Inventar-Auszug, 30 von ~40 Dateien): bestätigt die
  Abgrenzung oben — Kostenplanungs-/CRB-/SIA-451-Schulungsunterlagen, kein Produktwissen.

## Plan (nächste Läufe)

- [ ] Inventar Phase 0 fortsetzen (35 von 37 Sektionen offen) → Checkpoint: alle Sektionen
      in `bauprodukte-sektionen.md` auf `[x]` (inventarisiert, nicht destilliert).
- [ ] Triage Phase 1 (Haiku) je inventarisierter Sektion.
- [ ] Erster Destillat-Lauf Phase 2 (Sonnet) auf der ergiebigsten bereits inventarisierten
      Sektion mit echtem Produktbezug.
- [ ] Kurator-Stufe (Opus, diese Sitzung) je Lauf gemäss SKILL.md Schritt 4.

Diese Spec ist bindend für alle Folgeläufe des Korpus `bauprodukte`, bis ein Entscheid
Raphaels sie ändert (KORPUS-QUEUE.md: «Änderungen an dieser Reihenfolge/Spec sind ein
Entscheid Raphaels, kein Loop-Entscheid» — sinngemäss auch für die Spec selbst).
