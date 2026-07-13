# Normen-Training Mini-Run 15 (Mac Mini) — 13.07.2026

## Ausgangslage

DIN/VSS/RAL-Basisinventar ist seit Run 5/12 vollstaendig (alle 90 Positionen destilliert
oder als Nicht-Norm uebersprungen). Deepening-Stufe (b) Retro-Verifikation lief bereits in
Run 13 (din-1946-6) und Run 14 (6 Destillate). Dieser Lauf setzt sie fort: Fokus auf die
letzten noch unverifizierten vollstaendigen DIN/VSS/RAL-Destillate.

## Durchgefuehrt (8 parallele Verifikations-Agenten, adversarial gegen Original-PDF)

| Destillat | Aussagen geprueft | Fehler/Ergaenzungen | Neuer Status |
|---|---|---|---|
| din-1054-2010 (Baugrund/Eurocode 7) | 45+ | 1 Praezisierung (Tab. A 8.1 Ankerpruefpflicht) | established |
| din-1053-4-2011 (Mauerwerk-Fertigbauteile) | 42 | 0 | established |
| din-105-100-2012 (Mauerziegel) | 48 | 0 | established |
| din-1055-2-2010 (Bodenkenngroessen) | 24 | 2 Fehler (Tabellen-Seitenangaben) | established |
| din-276-4-2009 (Kosten Ingenieurbau) | 62 | 0 Fehler, 2 Ergaenzungen | established |
| din-1960-2010 (VOB Teil A) | 28 | 5 Fehler (Fundstellen) + 3 inhaltliche Ergaenzungen | established |
| ral-gz638-2008 (Gitterroste) | 46 | 6 Ergaenzungen (Begriffe/Kernziffern fehlten) | established |
| sn-640105a-2000 (Fahrbahnverbreiterung Kurven) | 40 | 2 Fehler (Falschzitat + Formelfehler mit Faktor-p-Doppelanwendung) | established |

Insgesamt ca. 335 Einzelaussagen geprueft, 15 Fehler korrigiert, 11 substanzielle
Ergaenzungen nachgetragen. Groesster fachlicher Fund: sn-640105a-2000 hatte einen
Formelfehler, der den Reduktionsfaktor p doppelt angewandt haette (sicherheitsrelevant fuer
Fahrbahnverbreiterung in Kurven).

## Nachgefuehrt

- `destillate/INDEX.md` — 8 Zeilen auf `established (verifiziert 260713 Mini-Run 15, ...)`.
- `training/norm-inventar.md` — 8 Bemerkungs-Zeilen ergaenzt.
- Alle 8 Destillat-Dateien: Frontmatter `status`/`last_updated` aktualisiert.

## Bilanz: DIN/VSS/RAL-Retro-Verifikation

Nach Run 13/14/15 sind nun alle vollstaendig gelesenen DIN/VSS/RAL-Kern-Destillate mit
JANS-Relevanz adversarial retro-verifiziert. Verbleibend unverifiziert (niedrige Prioritaet,
naechster Lauf):
- Teil-Destillate mit noch offenen Seiten (din-1053-1/-2/-3/-4-Serie teils schon verifiziert;
  vstaettvo-niedersachsen-2004 nur 20/31 S. gelesen; sia-... gehoert MacBook Pro).
- Register-/Verzeichnis-Dokumente (din-inhaltsverzeichnis-normensammlung-2012,
  baupreisindizes) — geringe fachliche Fehlerrelevanz, niedrige Prioritaet.
- VKF-Duplikat-Merges aus Run 14 (Rueckfrage noetig, destruktiv) — weiterhin offen in
  `wiki/QUESTIONS.md`.

## Plan naechster Lauf

Falls DIN/VSS/RAL-Retro-Verifikation als abgeschlossen gilt: Wechsel auf Stufe (c)
Q&A-Selbstbefragung (15-20 Pruefungsfragen je JANS-relevanter Kernnorm, z.B. DIN 1946-4/-6,
DIN 4102-1, DIN 1054) oder Stufe (d) Querschnitts-Synthese fuer die Fach-Skills
(`brandschutz`, `kostenschaetzung`, `ausschreibung`/`werkvertrag` — DIN 1960/1961 VOB-Bezug).
