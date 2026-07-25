---
name: unternehmerkontrolle
description: Unternehmerkontroll-Agent fuer die JANS-Bauleitung (SIA-102-Phase H, Realisierung). Begleitet ein vergebenes Gewerk durch die Ausfuehrung: Ausmass pruefen, Akontorechnungen gegen Leistungsstand freigeben, Nachtraege (NT) bewerten und beauftragen, Regierapporte pruefen, Abnahme mit Maengelaufnahme durchfuehren, Garantieschein/Buergschaft einholen und Garantieverfalldaten fuehren. Diesen Skill verwenden wenn der Benutzer fragt: "Ausmass pruefen", "Akontorechnung freigeben", "Nachtrag bewerten", "Regierapport pruefen", "Abnahme machen", "Abnahmeprotokoll", "Maengelprotokoll", "Maengelliste Bau", "Garantieschein einholen", "Garantieverfalldaten", "Unternehmerkontrolle", "Bauausfuehrung kontrollieren", "Schlussrechnung pruefen Gewerk". Die Stufe NACH dem Skill werkvertrag (Phase G) und parallel zur Kostenkontrolle (Skill kostenkontrolle, Phase I). Teil des Bauleitungs-Harness-Back-Ends G/H/I.
---

# JANS Unternehmerkontroll-Agent (Phase H — Realisierung)

## Contract

- **Trigger:** Greift, sobald ein vergebenes Gewerk durch die Ausführung begleitet wird — Ausmass prüfen, Akonto freigeben, Nachtrag (NT) bewerten, Regierapport prüfen, Abnahme mit Mängelaufnahme, Garantieschein einholen, Garantieverfalldaten führen. Phase H, nach `werkvertrag` (G), Hand in Hand mit `kostenkontrolle` (I).
- **Inputs:** Werkvertrag (aus Phase G) inkl. Termine/Regieansätze/Garantievorgaben, LV/Ausmass, Akonto-/Schlussrechnung des Unternehmers, NT-/Regierapporte, Abnahmebefund. Vorlagen: `templates/abnahmeprotokoll.md`, `maengelprotokoll.md`, `garantieschein.md`, `nachtrag-formular.md`, `regierapport.md`.
- **Output-Ablage:** Protokolle/Formulare (Abnahme, Mängel, Garantie, NT, Regie) DOCX+PDF, DOPPELT — Projekt-Versandordner (gewerkspezifischer Phasen-Ordner) und AI-Hub-Output `~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken-JANS/AD - 01 Geschaeftsfuerung/JANS AI/30 JANS AI HUB OUTPUT/submission/<projektnr>-<projekt>-<gewerk>/`. Namensschema YYMMDD.
- **Abhaengige Rules:** dokument-layout-standard, mail-formatierung, umlaute-konvention, dateinamen-konvention, bkp-2017-referenz, identifikatoren-verifizieren (Projektnr./Adresse/Termin/Fristen), auftrags-dekomposition (mehrere Gewerke/Vorgänge) + Korrektur-Pflicht (jedes Texterzeugnis vor Ausgabe durch Skill `korrektur`).
- **Vorgelagert:** werkvertrag
- **Nachgelagert:** kostenkontrolle

## Deine Aufgabe

Du fuehrst ein vergebenes Gewerk durch die **Ausfuehrungsphase**: von der ersten
Akontorechnung bis zur Abnahme und Garantie. Du bist die Qualitaets-, Mengen- und
Kostenkontrolle gegenueber dem Unternehmer — auf Basis des Werkvertrags (Phase G)
und der SIA Norm 118.

Du bist **Phase H** im Bauleitungs-Harness — nach `werkvertrag` (G), Hand in Hand
mit `kostenkontrolle` (I). Lebenszyklus:
`ausschreibung/wissensbasis/11_lebenszyklus-reifegrad.md`.

## Wissensbasis (ZUERST LESEN)

```
/Volumes/daten/jans-ai-hub/skills/ausschreibung/wissensbasis/
  07_werkvertrag-unternehmerkontrolle.md  ← Ablauf Phase H (Ausmass→NT→Regie→Abnahme→SR→Garantie)
  10_dokumente-standard.md                ← PFLICHT-Dokumentstandard
  06_glossar.md                           ← Fachbegriffe (Ausmass, NT, Regie, OVG, Rueckbehalt)
  wissensluecken.md                       ← bei Unsicherheit eintragen (Mecano)
```

Verwandte Skills: `protokoll` (Sitzungs-/Abnahmestruktur, Personen-Legende),
`pendenzenliste` (offene Maengel als Pendenzen), `offertenpruefung` (NT-Bewertung),
`terminplanung` (Termine), `kostenkontrolle` (Baubuchhaltung).

Vorlagen in diesem Skill (`templates/`):
```
abnahmeprotokoll.md   ← Abnahme nach Art. 157 ff. SIA 118 (L02)
maengelprotokoll.md   ← Maengelaufnahme mit Behebungsfristen (L05)
garantieschein.md     ← Garantie/Buergschaft 10 % Art. 181 SIA 118 (L03)
nachtrag-formular.md  ← Nachtrag (NT) bewerten + beauftragen (L04)
regierapport.md       ← Regie-Stundenrapport pruefen (L04)
```

## Ablauf je Gewerk (7 Schritte)

1. **Ausmass** — tatsaechliche Mengen gegen LV pruefen; im Zweifel nur wirklich
   ausgefuehrte Arbeiten ohne Zuschlaege (Ziff. 8 WV / SIA-Messvorschriften).
2. **Akontorechnung** — Teilzahlungsgesuch mit ueberpruefbarer Leistungsaufstellung
   gegen Leistungsstand pruefen + freigeben; Rueckbehalt 10 % beachten.
3. **Nachtrag (NT)** — Zusatzleistung schriftlich, VOR Ausfuehrung, zu
   Vertragskonditionen bewerten und beauftragen (`nachtrag-formular.md`). Ohne
   schriftliche Genehmigung Verguetung grundsaetzlich abgelehnt (Ziff. 2 WV).
4. **Regie** — nur im Auftrag von Bauherr/Bauleitung; Rapporte innert 4
   Arbeitstagen kalkuliert; gegen Regieansaetze im WV pruefen (`regierapport.md`).
5. **Abnahme** — gemeinsame Pruefung, Maengel aufnehmen, Behebungsfristen setzen
   (`abnahmeprotokoll.md` + `maengelprotokoll.md`). Abnahme startet Garantie- und
   Verjaehrungsfristen.
6. **Schlussrechnung (SR)** — vollstaendig pruefen, gegen KV/Werkvertrag stellen;
   Schlusszahlung erst nach Unterzeichnung + Garantieschein-Deponierung
   (→ Skill `kostenkontrolle`).
7. **Garantie** — Garantieschein/Buergschaft 10 % einholen (`garantieschein.md`),
   **Garantieverfalldaten** erfassen und Liste fuehren (Garantiefrist 2 J.,
   Verjaehrung 5/10 J., Fristbeginn Abnahme).

## Regeln

- **Schriftlichkeit vor Ausfuehrung** bei NT und Regie — sonst kein Anspruch.
- **Rueckbehalt/Garantie 10 %** (Art. 181 SIA 118) konsequent fuehren.
- Maengel als **Pendenzen** spiegeln (Skill `pendenzenliste`) und Termine im
  Skill `terminplanung` nachfuehren.
- **MWST 8,1 %**, JANS-Dokumentstandard (`10_dokumente-standard.md`), doppelte Ablage.
- H-Vorlagen sind aus SIA 118 + Werkvertrag + Protokoll-Skill abgeleitet (R2) —
  **Benutzer-Muster zur Validierung** einholen, dann R5. Fehlt etwas →
  `wissensluecken.md`.
