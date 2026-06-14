# raw/ — Ingest-Register (KB twin)

Was liegt in `raw/` und wurde es ins `wiki/` eingearbeitet?

| Datei | Inhalt | Gewichtung | eingearbeitet |
|---|---|---|---|
| `260607-seed-korpus-mails.md` | 2 vor-Claude-Mails im Volltext (Investor-Du, vertrauter-Planer-Du) | authentisch | ja (alle 6 Facetten) |
| `260607-kispi-korpus.md` | KISPI 2619 Projektmails 2026 (Albin Spahic u.a.); Belege zu allen 6 Fragen | authentisch (vom Benutzer bestaetigt) | ja (beziehungsregister, stimme, haltung, arbeitsweise) |
| `260607-behoerden-korpus.md` | Behörden-Korrespondenz Stadt ZH (AfB/Hottinger, Lärmschutz, Geodaten); formelles Register + Vorabklärung | authentisch (vom Benutzer bestaetigt) | ja (beziehungsregister, stimme, denken) |
| `260609-mailbatch-01.md` | Sent Items rj@ systematisch, **2025-07-04 bis 2025-07-08** (15 Mails gesichtet, 5 neu destilliert, 7 MS-Support ignoriert, 2 = Seed) | authentisch (klar vor-Claude) | ja (alle 6 Facetten) |
| `260610-mailbatch-02.md` | Sent Items rj@ systematisch, **2025-07-09 bis 2025-07-14** (15 Mails gesichtet, 5 Volltexte destilliert, 4 MS-Support ignoriert; Projekt Wartstrasse 8: Baueingabe Balkontüre, Denkmalpflege/AfB/Notariat Stadt ZH) | authentisch (klar vor-Claude) | ja (stimme, beziehungsregister, arbeitsweise, fachsignatur, denken) |
| `260611-mailbatch-03.md` | Sent Items rj@ systematisch, **2025-07-14 bis 2025-07-31** (15 Mails gesichtet, 4 Volltexte gelesen; Projekt Wald/Averecura Nova + 3D-Freelancer-Onboarding ENGLISCH) | authentisch (klar vor-Claude) | ja (stimme, beziehungsregister, arbeitsweise; QUESTIONS Englisch beantwortet) |
| `260612-mailbatch-04.md` | Sent Items rj@ systematisch, **2025-08-04 bis 2025-08-08** (15 Mails gesichtet, 5 Volltexte destilliert, 3 MS-Support ignoriert; Projekt Wald/Averecura Nova: Studienlieferung/Rechnung + Niederhasli Kennwert/HNF) | authentisch (klar vor-Claude) | ja (beziehungsregister, stimme, denken, arbeitsweise, fachsignatur, haltung) |
| `260614-mailbatch-06.md` | Sent Items rj@ systematisch, **2025-08-09 bis 2025-08-18** (15 Mails gesichtet, 2 fachliche Volltexte destilliert; Rest operatives Rauschen: Teams-Links/Terminzusagen/Yorck-Setup. Projekt Niederhasli-Ankauf: Controlling/Sensitivität an Baumanagement + Forward an Wintec) | authentisch (klar vor-Claude) | ja (denken, arbeitsweise, beziehungsregister, stimme) |

**Sequentieller Mail-Sweep (Sent Items rj@, älteste zuerst):** abgedeckt bis
**2025-08-18** einschliesslich. Nächster Lauf: ab 2025-08-19.

Hinweis: «Batch 05»-Marker (11.08./14.08., «Hey» als lockerste Peer-Du-Stufe, «%» ohne
Leerschlag im Eil-Du) lagen bereits im Wiki (partieller Vorlauf); Batch 06 deckt den
Bereich 2025-08-09…08-18 nun lückenlos ab.

Hinweis: Mail-Volltexte werden NICHT dauerhaft als Klartext gehortet. Der Seed dient der
ersten Kalibrierung; künftige Läufe (`twin-mail-training`) legen nur destillierte Marker +
anonymisierte Schnipsel ab.
