# Wissens-Chef Run 13 — Cross-KB-Konsistenz

**Datum:** 2026-07-23
**Modus:** 5 parallele Lese-Agenten (reguläres Agent-Tool, Hintergrund) + 2 adversariale Verifier.
Gedrosselter Lauf (Rule 260714), fokussiert auf frisches Material seit Run 12 (22.07.).

## Geprüfte Paare/Felder

| # | Paar/Feld | Frischer Anlass | Ergebnis |
|---|---|---|---|
| a | baurecht ↔ planungsgrundlagen | pg Run 57 Naturgefahren-GIS | 1 struktureller Befund (Dangling-Delegation) |
| b | normen ↔ baurecht | normen 23.07., SN-640-066-Nachlauf | 1 Widerspruch (CONFIRMED) + 4 niederprio. Links |
| c | energie ↔ planungsgrundlagen | energie Run 85/86 (F109/F110/PV) | 2 Cross-Links + 1 Widerspruch (CONFIRMED) |
| d | energie ↔ grobkosten ↔ immobilienbewertung | PV-Marktpreise BFE-2024 | Null-Ergebnis |
| e | projekt-lessons ↔ normen + graue-energie ↔ normen | neuer Artikel kispi-lbw-rohdichte-800 | 1 Cross-Link + 1 niederprio. Link |

## Bestätigte Widersprüche (2, beide adversarial CONFIRMED)

### W1 — «Indach +60 %» stale (energie-intern, Cross-KB relevant)
`energie/wiki/pv-solar-technologien.md` führte weiterhin «Indach ~+60 %» als aktuellen Marktwert (Stand 2025).
Widersprach der eigenen Run-86-Korrektur (`QUESTIONS.md` E-R86c: BFE-Preisbeobachtungsstudie 2024, kein
signifikanter Aufschlag mehr) und pg `energie-pv-eignung-typenwahl.md` (Standard-Indach Typ E ~2'000–3'200 CHF/kWp,
nahe Aufdach). Verifier: Registerkorrektur nicht in den Wiki-Body gespiegelt.
**Aufgelöst:** quellentreuer Vorbehalt statt Zahl; Solarziegel-«~doppelt» erhalten; kein Wert erfunden.

### W2 — SN 640 066 Ausgabe-Divergenz (normen ↔ baurecht)
baurecht: «VSS 40 066 (2011/2019), neuer Titel Parkieren; Projektierung». normen `vss-640066-1996`: nur Ausgabe
1996, `ersetzt_durch: nicht bekannt` — bei KB-interner Inkonsistenz, weil `vss-640065-2011` (Ziff. 2–3, S. 4) den
neuen Titel bereits zitiert. Verifier: echte Divergenz + interne Inkonsistenz, aber keine harte Faktenkontradiktion;
unbelegt bleibt allein baurechts «2011/2019»-Jahrgang.
**Aufgelöst ohne unbelegten Jahrgang:** normen `ersetzt_durch` mit Cross-Verweis auf [[vss-640065-2011]] + links +
Body-Nachtrag; baurecht Herkunfts-Vorbehalt (Titel belegt, Ausgabe-Jahr vor Zitierung bei der VSS gegenprüfen).

## Ausgeführte Aktionen (9 autonom, 4 KBs, keine Löschung)

- **energie:** (1) Indach-Korrektur W1; (2) `graue-energie.md` → normen `sia-2040-2017` (Norm-Rechenkette);
  (3) `BAUHERREN-FAQ.md` F110 → pg naturgefahren §6c/§8b (Erdwärme-Eignungslayer); (4) F109 → pg geoportale
  (ZH-Wärmerichtplan/LU-Portal).
- **normen:** (5) `vss-640066-1996.md` ersetzt_durch + links + Body (W2); (6) `sia-2040-2017.md` Rückverweis auf
  energie graue-energie (bidirektional zu (2)).
- **baurecht:** (7) `fahrzeugabstellplaetze-und-parkierung.md` SN-640-066-Vorbehalt (W2); (8) `INDEX.md`
  Naturgefahren/Gefahrenzonen-Backlog-Anker (macht die pg-Delegation als Bring-Schuld sichtbar).
- **planungsgrundlagen:** (9) `naturgefahren-objektschutz.md` §6c → energie F108/F110/F109 (reziprok zu (3)).

QUERBEZUEGE um 5 datierte Paar-Einträge ergänzt; je KB CHANGELOG protokolliert.

## Null-Ergebnisse (legitim)
- **energie ↔ grobkosten ↔ immobilienbewertung:** PV-Kennwerte sauber in energie gekapselt; beide Konsumenten-KBs
  deferieren per Link, keine Doppelspur, keine veralteten Spiegelwerte. Run-86-Update propagiert automatisch.
- **Naturgefahren (pg Run 57) ↔ energie:** energie deckt Objektschutz/Hochwasser nicht ab — kein Überschnitt.

## Offene Punkte (KEIN neuer Entscheid für Raphael)
1. **SN 640 066 Ausgabe-Jahr** nur mit amtlicher VSS-Quelle abschliessend verifizierbar — Vorbehalt gesetzt, so weit
   autonom lösbar erledigt.
2. **baurecht Naturgefahren/Gefahrenzonen-Destillat** (Rechtsstatus rote/blaue Zone) = Bring-Schuld/Loop-Arbeit;
   Anker gesetzt, Inhalt folgt in einem baurecht-Lauf.
3. **4 niederprioritäre baurecht→normen-Links** (SIA 380/1, 358, 414/10, 431) — illustrative Aufzählungen, keine
   Fundstellen-Pflicht; SIA 414/10 zusätzlich mit möglichem Ausgabe-Mismatch (414/10 vs. 414:1980) vor Verlinkung.
4. **Lesson → normen VKF-BRL 15** (EI30-mit-Löschanlage) additiv, aber niederprioritär (dichte-fokussierte Lesson);
   EN-520↔Lesson bereits inline verlinkt.
5. **Umlaut-Config-Bug** (ASCII ae/oe/ue in Subagenten-Outputs) nun zusätzlich in den Health-Checks von
   immobilienbewertung/spec/grobkosten (23.07.) bestätigt — seit Run 12 getrackt, Config-Sache (Whitelist-verboten),
   für hub-chef/Raphael. Hier nur registriert, keine Doppelmeldung.

**Keine bestätigten offenen Entscheide, keine substanziellen ungelösten Widersprüche.** Beide gefundenen
Widersprüche wurden autonom und quellentreu aufgelöst.
