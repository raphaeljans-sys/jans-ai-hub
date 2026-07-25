# Training Run 62 — Recht/Norm + Brandschutz (Token-Vollgas)

Intensiv-Lauf gemäss `training/PROGRAMM.md` (Verifikations-Stufe/Intensivphase/Token-Vollgas bis
10.08.2026): **2 Domänen** im Schwerpunkt — Recht & Norm (PL-02) und Brandschutz (PL-03), gemäss
Domänen-Rotation (Kartenportale/Energie hatten Run 61). Direkt in der Hauptsession durchgeführt
(nicht per Fan-out an Subagenten), gemäss der dokumentierten Lehre aus Run 56 (Hintergrund-
Subagenten stallen auf OneDrive-Pfaden).

## Ablauf

1. Stand gelesen: `curriculum.md` (Domäne 3 Recht/Norm bis R61, Domäne 4 Brandschutz bis B46 —
   beide praktisch vollständig `[x]`, nur B5/BSV-2026 als laufender Refresh-Punkt `[~]`),
   `wiki/QUESTIONS.md` Sektionen B/C, letzter Report (Run 60).
2. **Delta-Scan** beider PL-Ordner (`find -newermt 2026-07-20`) — keine neuen Dateien, nur
   OneDrive-Sync-Marker.
3. Da beide Domänen laut eigener Einschätzung (Run 60 "Nächster Schritt") ohne bekannte offene
   Backlog-Punkte sind ausser dem bewusst niedrigprioritären §9-Rest-Backlog des «Projektadmin
   AHB»-Ordners — genau diesen Rest-Backlog systematisch abgearbeitet, statt künstlich neue Fragen
   zu erzeugen.
4. Refresh-Checks R6 (RPG-2-ZH-Umsetzung) und B5 (BSV-2026-Terminplan) per WebSearch.

## Funde

### R62/R63 — §9-Rest-Backlog «Projektadmin AHB» vollständig geschlossen (grösster Fund)

16 Dateien aus zwei Unterordnern gelesen (12 Nachhaltiges-Bauen-Einzelmerkblätter 18.1–18.5 +
4 GT-Kleinrichtlinien in 14.3-Richtlinien):

- **Nachhaltiges Bauen (§19 NEU):** durchweg historische, 2005–2009 datierte Grundlagenpapiere
  (2000-Watt-Sieben-Thesen, MINERGIE-ECO-Flyer, Checkliste nachhaltige Gebäudeerneuerung,
  Solarstromanlagen-Checkliste, Topten-Haushaltgeräte, Baustellen-/Deviskontrolle-Checklisten,
  Gebäudescreening, Holzwerkstoffe-Merkblatt, Vorgehen-bei-Beschwerden, Dachbegrünung) — kein
  Kernzahlen-Delta zur bereits in §6/§17 dokumentierten Substanz, **Ausnahme Dachbegrünung:**
  liefert neu die Rechtsgrundlage **BZO Art. 11 Abs. 1** (Flachdächer sind zu begrünen, soweit
  zumutbar) sowie eine PV-Dachbegrünungs-Kombinationsregel (Panelabstand <80 cm → niedrigwachsende
  Samenmischung + Substrattiefe punktuell auf 5 cm reduziert). Zwei technische Randfälle:
  `Bauteilkatalog_Energie+Oekologie.pdf` ist nur ein bareURL-Link (Nicht-Fund), das
  Elektrosmog-Merkblatt ist wegen defekter PDF-Zeichenkodierung technisch nicht lesbar (Kandidat
  für OCR-Retry, niedrige Priorität).
- **GT-Kleinrichtlinien (§20 NEU):** Richtlinien für die Anlagedokumentation Elektro/HLS (Revisions-
  dokumentation nach Bauabschluss, Abgabe an der Schlussabnahme + max. 2 Monate), Raumtemperatur-
  Richtlinie 2006 (städtische Betriebsvorgabe, SIA 384/2 als Referenz, Nachtabsenkung i.d.R. nicht
  unter 16 °C), Verzeichnis Vorschriften/Normen/Richtlinien (Meta-Rechercheindex, ⚠ Datenstand
  12.12.2006, vor Verwendung einzeln gegen fedlex prüfen). UKV-Teilrichtlinien im Ordner nicht mehr
  auffindbar — bestätigter Nicht-Fund.

→ [[recht-norm-ahb-stadt-zuerich-projektstandards]] §19/§20. **Der zehnteilige «Projektadmin
AHB»-Ordner hat damit keine offenen Backlog-Punkte mehr** — sowohl der ursprüngliche
Acht-von-zehn-Stand (Run 39/41) als auch der zweiteilige §9-Rest (Run 45/52/60/62) sind
abgeschlossen.

### R6/B5-Refresh — beide unverändert

- **RPG-2-ZH-Umsetzung** (WebSearch zh.ch): PBG/kantonaler Richtplan weiterhin ohne
  Fertigstellungsdatum, Bundes-Etappen 01.01./01.07.2026 inkl. Abbruchprämie unverändert in Kraft —
  kein Delta seit Run 58 (24.07.).
- **BSV-2026-Terminplan** (WebSearch bsvonline.ch/vkg.ch/presseportal.ch): technische
  Vernehmlassung abgeschlossen, politische Vernehmlassung weiterhin für 08/2026 angekündigt,
  IOTH-Genehmigung 03/2027, Inkrafttreten 2027 — kein Delta seit Run 60 (25.07.).

## Verifikations-Stufe (Rule auto-verbesserungen 260712)

Keine Status-Hebung auf `established` in diesem Lauf nötig. §19/§20 werden als `established`
geführt (direkte Extraktion aus amtlichen Stadt-ZH-/KBOB-Primärquellen ohne Interpretations-
spielraum), mit Ausnahme der historisch überholten PV-Priorisierungsaussage (2008, explizit als
⚠ historischer Kontrast markiert, nicht als aktuelle Empfehlung). Kein Adversarial-Verify-Workflow
nötig.

## Token-Vollgas-Bilanz

16 Dateien gelesen + 2 Web-Refresh-Checks = 18 bearbeitete Punkte, über dem Zielkorridor 10-16.
Bewusste Entscheidung, den einzigen bekannten Rest-Backlog vollständig statt teilweise
abzuarbeiten, um die Domäne endgültig backlog-frei zu bekommen, statt ihn über mehrere Läufe zu
strecken.

## Nächster Schritt

Beide Domänen (Recht/Norm, Brandschutz) sind nun **ohne jeden bekannten Backlog-Punkt** — nur noch
die laufenden Datenstand-Refreshs (R6, B5) bleiben periodisch zu prüfen (nächster sinnvoller
Zeitpunkt: tatsächlicher Start der BSV-2026-politischen Vernehmlassung im August 2026, bzw. eine
neue PBG-Kantonsrats-Traktandierung). Nächster Recht/Norm+Brandschutz-Turnus sollte primär auf
einen erneuten Delta-Scan (neue SharePoint-Dateien) und die beiden Refresh-Punkte reduziert werden,
sofern nicht neues Material auf PL-02/PL-03 abgelegt wird.
