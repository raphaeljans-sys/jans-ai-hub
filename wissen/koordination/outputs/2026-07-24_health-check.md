# Wissens-Health-Check: koordination — 2026-07-24

**Kontext:** Nachtschicht Mac Mini, 05:47. Phase 1, unbeaufsichtigt. Zweiter Wissenscheck
dieser KB (Erst-Audit 2026-07-20), seither vier weitere Wissens-Chef-Laeufe (10-13) sowie
heute frueh drei intensive Trainingslaeufe der Mac-Mini-KBs (energie Run 86, planungsgrundlagen
Run 58, normen Run 19). Diese Meta-KB hat kein raw/wiki/-Schema (bewusst, siehe CLAUDE.md);
die sieben Standard-Audits sind daher auf ihre tatsaechlichen Register angewendet:
QUERBEZUEGE.md (707 Zeilen), SYNERGIE-REGISTER.md (12 Eintraege), CHANGELOG.md (Runs 1-13).

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widerspruch/unverifizierte Vollstaendigkeitsbehauptung | 1 |
| B Kaputte Verweise/Orphans | 0 |
| C Unbelegte Claims | 0 (Stichprobe bestanden) |
| D Coverage-Luecken | n/a (kein raw/) |
| E Veraltetes | 0 |
| F Schreibregel-Verstoesse | 1 (bekannt, nicht neu) |
| G Promotion-/Rotations-Pflege | 0 (sauber gefuehrt) |

## Top-3 (Raphaels Aufmerksamkeit)

1. **normen-Run-19-Meilenstein ("SIA/VKF komplett") widerspricht dem eigenen offenen
   Bring-Schuld-Posten SIA 181:2020.** Noch nicht durch einen Wissens-Chef-Lauf geprueft
   (Run 13 war vor Run 19) — siehe Audit A.
2. Umlaut-Konvention in QUERBEZUEGE.md durchgehend als ASCII-Ersatzschreibung (ae/oe/ue) —
   bekannter, bereits getrackter Cross-KB-Bug (Run 12/13), keine neue Handlung noetig.
3. Register selbst (QUERBEZUEGE, SYNERGIE-REGISTER, CHANGELOG) ist diszipliniert, luecken-
   los datiert und stichprobenartig faktentreu — kein struktureller Mangel.

## Details je Audit

### A. Widerspruch / unverifizierte Vollstaendigkeitsbehauptung

**Fund:** Die KB `normen` meldet im CHANGELOG vom 2026-07-24 (Run 19, MacBook Pro) einen
Meilenstein: *"SIA/VKF auf allen vier Vertiefungsstufen (a Grunddestillation+Anhaenge,
b Retro-Verifikation, c Q&A-Selbstbefragung, d Querschnitts-Synthesen) komplett"* mit der
Empfehlung, den Scheduled Task `normen-training-nacht` zu pausieren/umzustellen.

Gleichzeitig fuehrt `normen/wiki/QUESTIONS.md` (Zeile 74-75) weiterhin unveraendert offen:
*"SIA 181:2020 re-destillieren (Wissens-Chef Run 3, 2026-07-13): Register fuehrt bislang
2006 ..., KB energie arbeitet bereits mit SIA 181:2020."* Dieser Bring-Schuld-Posten wurde
in QUERBEZUEGE.md selbst dreimal ueber Cross-KB-Laeufe hinweg bestaetigt und weitergefuehrt
(Run 11 "Bring-Schuld normen", Run 12 "Bring-Schuld SIA 181:2020 Re-Destillat bleibt
(normen-Loop)") — also kein Alt-Fund, sondern ein von der Koordinationsinstanz selbst
mehrfach anerkanntes offenes Element. `norm-inventar.md` fuehrt weiterhin nur
`181_2006_d.pdf` als destilliert (Zeile 74); keine 2020-Fassung im Bestand destilliert.

**Einordnung:** Kein Fakten-Widerspruch im engeren Sinn (Run 19 bezieht den Meilenstein
vermutlich auf die urspruenglich geplanten Vertiefungsstufen des Bestands, nicht auf jede
offene Fassungs-Nachfuehrung) — aber die Formulierung "komplett" ist geeignet, in einem
Briefing (hub-chef) oder bei Raphaels Entscheid ueber die Pause des Trainings-Takts
unkritisch uebernommen zu werden, waehrend ein bekannter Bring-Schuld-Posten offen bleibt.
**Da Run 19 NACH dem letzten Wissens-Chef-Lauf (Run 13, 23.07.) geschah, wurde dieser
Widerspruch bisher von keiner Instanz gegengeprueft** — reine Zeitluecke, kein Versagen
des Registers.

**Vorschlag (kein autonomer Eingriff, Cross-KB-Praezisierung ist Wissens-Chef-Domaene):**
Naechster Wissens-Chef-Lauf (Run 14) sollte den Run-19-Meilenstein gegen `QUESTIONS.md`
abgleichen und entweder (a) den SIA-181:2020-Punkt explizit aus dem "komplett"-Anspruch
ausnehmen (z.B. "komplett fuer alle destillierten Ausgaben; 1 Fassungs-Nachfuehrung SIA 181
bleibt Bring-Schuld") oder (b) falls tatsaechlich vollstaendig, den QUESTIONS-Eintrag als
erledigt schliessen. Betrifft auch die Pause-Empfehlung fuer `normen-training-nacht` —
sollte diesen offenen Punkt nicht stillschweigend mit-pausieren.

### B. Kaputte Verweise / Orphans

0 Funde. Stichprobe: `wissen/spec/outputs/2026-07-20_syn-02-typologischer-entwurfsprozess_spec.md`
existiert (SYN-02-Beleg); alle Run-13-Dateireferenzen (energie-, normen-, baurecht-, pg-Artikel)
liessen sich in den jeweiligen KBs auffinden. Kein SYN-02-MVP-Report seit dem 20.07.-Spec
vorhanden — konsistent mit dem SYNERGIE-REGISTER-Status "MVP-Bau ... startet auf Freigabe"
(noch keine Freigabe erteilt, kein Widerspruch).

### C. Unbelegte Claims

Stichprobe von 3 Run-13-Befunden gegen die referenzierten Quell-KBs (Indach-+60%-Korrektur,
SN-640-066-Ausgabe-Divergenz, EN-520/projekt-lessons) bestanden — alle mit konkreter Datei-/
Ziffer-Angabe, keine freischwebende Behauptung gefunden.

### D. RAW-Coverage

Nicht anwendbar — die KB hat kein `raw/`-Verzeichnis (Register-KB-Klasse, in CLAUDE.md
dokumentiert, analog `architekten-synobsis`).

### E. Veraltete Artikel

0 Funde. Die "Rotation kuenftige Laeufe"-Liste (QUERBEZUEGE.md, Fussbereich) ist aktuell:
alle seit dem letzten Audit gepruepften Paare wurden korrekt ausgetragen (Run 10-13 Paare
erscheinen alle unter "Gepruefte Paare", nicht mehr in der Rotationsliste). Verbleibend
offen: kunde-bopp↔machbarkeit/stockwerkeigentum/ankaufspruefung, architekten-synobsis↔
entwurfs-referenzen, grobkosten↔immobilienbewertung↔kostenschaetzung-Ref (stabil, nur
Delta-Check bei neuem Fall) — alle drei legitim unpriorisiert, kein Alterungsmangel.

### F. Schreibregel-Verstoesse

QUERBEZUEGE.md verwendet durchgaengig die ASCII-Ersatzschreibung (ae/oe/ue statt ä/ö/ü) statt
echter Umlaute (Rule `umlaute-konvention.md`). **Nicht neu:** dies ist der seit dem 19.07.
bekannte "Minimum-Viable-Model"-Subagenten-Bug (Haiku/Sonnet-Delegation gibt die Umlaut-Regel
nicht weiter), inzwischen in mindestens 7 KBs bestaetigt (u.a. architekten-synobsis, energie,
baurecht, immobilienbewertung, spec, grobkosten und nun auch koordination selbst). Config-
Fix ist Whitelist-verboten (Infrastruktur-Aenderung) — bleibt fuer hub-chef/Raphael zur
Entscheidung, hier nur bestaetigt, keine Doppelmeldung noetig.

### G. Promotion-/Rotations-Kandidaten

Keine neuen Promotion-Kandidaten in den Registern selbst. SYNERGIE-REGISTER: 11 von 12
Eintraegen unveraendert seit dem letzten Audit (6 offen als echte Entscheids-/Bau-Pendenzen,
kein Hygiene-Mangel, korrekt nicht doppelt getrackt); SYN-12 weiterhin sauber als "erledigt"
(parkiert) gefuehrt.

**Zahlenbild:** 1 operativer Befund (normen-Vollstaendigkeitsanspruch vs. eigene offene
Bring-Schuld, zur Klaerung im naechsten Wissens-Chef-Lauf) · 1 bekannter, bereits getrackter
Schreibregel-Verstoss · 0 strukturelle Maengel · Register bleibt diszipliniert gepflegt.
