# Trainingslauf 27 — KB Spec (2026-07-24)

**Lauf-Typ:** Verifikationslauf mit substanzieller Phase-2-Aktion. Keine neue reale Spec seit
Lauf 24 (SYN-02, 20.07.); Laeufe 25/26 waren Verifikation. Der P1 (mail@-Blindstelle) hielt laut
Lauf 26 (am Artefakt verifiziert) — nicht erneut gesweept (waere redundant). Stattdessen die
groesste offene Phase-2-Aktion aus dem gestrigen Health-Check abgearbeitet.

## Ausgangslage
Der Health-Check vom 23.07. (Nachtschicht, nur Audit) fand **Audit F rot, neu und gravierend:**
die gesamte KB verstoesst gegen ihre eigene Schreibregel (echte Umlaute, `CLAUDE.md` Z. 17) und
gegen die hub-weite Rule `umlaute-konvention` — 968 ae/oe/ue-Ersatzschreibungen gegen 1 echten
Umlaut in `wiki/`. Der 01.07.-Check hatte Audit F faelschlich gruen bewertet. Die Nachtschicht
liess die Korrektur bewusst als Phase-2-Aktion offen (kein Whitelist-Recht). Dieser Lauf hat sie
ausgefuehrt.

## Ausgewertet / getan
1. **KB-weiter Umlaut-Korrekturdurchlauf (Audit F, behoben).** Alle 7 `wiki/`-Dateien (5 Artikel
   + QUESTIONS + INDEX) via `rechtschreibung`-Subagenten (Sonnet, Modell-Politik: mechanische
   Sprachstufe delegiert) in echte Umlaute gesetzt; ~640 Ersetzungen gesamt (verifier ~240,
   QUESTIONS ~230, anwendung-jans ~105, environment ~38, the-spec 10, 3-schritte 10, INDEX 7).
   Danach `CLAUDE.md` (6 Woerter) selbst korrigiert.
   - **Strikte Leitplanke an die Agenten:** nur echte deutsche Umlaut-Woerter; keine Grammatik-/
     Stil-/Umbruchaenderung; NIE englische Fachbegriffe, Eigennamen, URLs, `[[slugs]]`,
     Datei-/Task-Namen, Backtick-Identifikatoren, Frontmatter-IDs.
   - **Eigene Verifikation (Pflicht) sauber:** Umlaut in URL = 0, Umlaut in `[[slug]]` = 0,
     ASCII-Identifikatoren erhalten (`ag-gruendung-monitor` 13×, `flaechen-nachweis` 2×,
     `programm-pruefer` 7×, `syn02-spec-anstoss` 3×), keine korrumpierten Identifikator-Varianten,
     keine verbliebenen deutschen ASCII-Umlautwoerter. Ein Ortsname («Schoental»/«Schoental» =
     Wettbewerbsprojekt) bewusst unangetastet gelassen (Eigenname, gegen `wissen/wettbewerbs-dna`
     zu verifizieren — Grenzfall an die KB gemeldet).
2. **the-spec.md Selbst-Zitat (Audit B, 22 Tage offen).** Z. 15 «(Quelle: [[the-spec]] RAW-
   Transkript Marchese)» → verweist jetzt auf die RAW-Datei
   `260616_marchese_the-spec_karpathy-method_transkript.md` statt auf den eigenen Artikel-Slug.
3. **the-spec.md Metadaten-Drift (Audit E, 22 Tage offen).** `last_updated` 2026-06-21 →
   2026-07-24 (heute real geaendert). Ebenso 3-schritte-spec/environment/anwendung/verifier auf
   07-24 (alle heute inhaltlich beruehrt).
4. **_INGESTED.md Register-Drift (Audit D).** Die 3 laut F4/F5 laengst eingeloesten Quellen
   (Karpathy 30.06., Cherny 03.07., Plan-Mode 27.06.) von «offen einzuholen» auf «EINGELÖST» mit
   URL + Wiki-Verweis gesetzt; nur die 34 Original-Screenshots bleiben offen.
5. **Prozess-Verankerung.** Neue Leitplanke in `training/PROGRAMM.md`: Umlaut-Gegenpruefung vor
   jedem Commit (eigener Output + Wiki-Edit), damit der Verstoss nicht erst im naechsten
   Health-Check auffaellt (Health-Check-Empfehlung umgesetzt).

## Bewusst nicht getan
- **CHANGELOG.md nicht historisch umgeschrieben** (564 ae/oe/ue). Ausserhalb des Audit-F-Scopes
  («6 Wiki-/Register-Dateien», `wiki/*.md`); reiner Archiv-Log, hoechste Korruptionsdichte
  (englischlastig), geringster Wissenswert. Neue Eintraege ab heute in echten Umlauten
  (umlaute-konvention: unrevidierter Bestand bleibt). Als optionaler Folgesweep notiert.
- **Kein erfundenes Spec-Methodik-Refinement** ohne neuen Beleg (waere Gate-Ueberdehnung nach
  innen). Rule `spec-methode.md` unveraendert (F1-Ueberdehnungs-Gegentest bleibt unbelegt).
- Kein Mailversand, keine Task-/Rule-Verhaltensaenderung, keine `logbuch`-Reparatur.

## Offen / naechster Lauf
- SYN-02-MVP-Bau Block 1 (`typologie_zu_variante.py` noch nicht gebaut → naechster echter
  Auswertungslauf, sobald gebaut).
- F1-Ueberdehnungs-Gegentest (mittelgrosser, genervter Mittelfall) weiterhin unbelegt.
- F3 Marketing/Text = letzte offene Verifier-Domaenenzeile.
- Optionaler CHANGELOG-Historien-Umlautsweep (niedrige Prioritaet).
- Der neue Health-Check sollte Audit F beim naechsten Lauf gruen sehen (jetzt am Artefakt belegt,
  nicht oberflaechlich).
