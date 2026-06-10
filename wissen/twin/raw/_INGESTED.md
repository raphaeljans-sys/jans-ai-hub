# raw/ — Ingest-Register (KB twin)

Was liegt in `raw/` und wurde es ins `wiki/` eingearbeitet?

| Datei | Inhalt | Gewichtung | eingearbeitet |
|---|---|---|---|
| `260607-seed-korpus-mails.md` | 2 vor-Claude-Mails im Volltext (Investor-Du, vertrauter-Planer-Du) | authentisch | ja (alle 6 Facetten) |
| `260607-kispi-korpus.md` | KISPI 2619 Projektmails 2026 (Albin Spahic u.a.); Belege zu allen 6 Fragen | authentisch (vom Benutzer bestaetigt) | ja (beziehungsregister, stimme, haltung, arbeitsweise) |
| `260607-behoerden-korpus.md` | Behörden-Korrespondenz Stadt ZH (AfB/Hottinger, Lärmschutz, Geodaten); formelles Register + Vorabklärung | authentisch (vom Benutzer bestaetigt) | ja (beziehungsregister, stimme, denken) |
| `260609-mailbatch-01.md` | Sent Items rj@ systematisch, **2025-07-04 bis 2025-07-08** (15 Mails gesichtet, 5 neu destilliert, 7 MS-Support ignoriert, 2 = Seed) | authentisch (klar vor-Claude) | ja (alle 6 Facetten) |

**Sequentieller Mail-Sweep (Sent Items rj@, älteste zuerst):** abgedeckt bis
**2025-07-08** einschliesslich (Offset 0–14 von 1'026). Nächster Lauf: ab 2025-07-09
bzw. Offset 15.

Hinweis: Mail-Volltexte werden NICHT dauerhaft als Klartext gehortet. Der Seed dient der
ersten Kalibrierung; künftige Läufe (`twin-mail-training`) legen nur destillierte Marker +
anonymisierte Schnipsel ab.
