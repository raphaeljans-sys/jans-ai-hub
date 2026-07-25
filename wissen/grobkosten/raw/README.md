# raw/ — reale Kostenwerte reinkippen (nie ordnen)

Hier kommen Roh-Belege fuer Grobkosten-Kennwerte rein — Claude liest sie, editiert sie nie.
Pro Eintrag (eine Datei oder ein Block) moeglichst:

- Projekt / Ort / Jahr
- Nutzung (MFH/EFH/...), Standard (einfach/mittel/gehoben), Neubau/Umbau
- Gebaeudevolumen GV (m3, SIA 416)
- Kosten je BKP (mind. BKP 1-5 total), CHF
- abgeleiteter Kennwert CHF/m3
- Quelle (Schlussabrechnung / gepruefte Offerte / Benchmark) + Datum

Der KI-Bibliothekar verdichtet diese Rohwerte in `../wiki/kennwerte.md` (Median + Band) und
hebt die Reife der betroffenen Zeile von "Seed" auf "belegt (n=…)".

Status 070626: noch leer — Seed-Kennwerte in Betrieb, warten auf erste Realwerte.
