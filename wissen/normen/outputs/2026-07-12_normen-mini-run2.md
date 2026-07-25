# Normen-Training Mini-Run 2 (Mac Mini) — 12.07.2026

Stations-Split: DIN + VSS + RAL (SIA/VKF bleiben MacBook Pro).

## Ausgangslage

Beim Lesen des Standes fiel auf, dass 14 DIN/VSS-Destillate und eine RAL-Vervollständigung
bereits am NAS lagen (Datei-Zeitstempel 12.07.2026 19:01–19:05, gesichert via
`nas-selfcommit` um 20:00), aber weder im `training/norm-inventar.md` noch im
`destillate/INDEX.md` oder `wiki/REGISTER.md` erfasst waren. Vermutlich ein vorheriger
Lauf, der die Destillation abschloss, aber vor dem Bookkeeping-Schritt endete
(Budget/Zeit). Vor neuer Arbeit wurde das zuerst bereinigt.

## Teil 1 — Reconcile (kein neuer Norminhalt, nur Registrierung)

Inhalt stichprobenartig gegen den KB-Standard geprüft (DIN 4102-1, SN 640 060) —
Fundstellen sauber belegt, Frontmatter vollständig, keine erfundenen Kennwerte.
Nachgetragen in Inventar/INDEX/Register:

| Norm | Ausgabe | Status |
|---|---|---|
| DIN 18040-1 | 2010-10 | destilliert |
| DIN 18065 | 2000-01 | destilliert |
| DIN 18299 | 2010-04 | destilliert |
| DIN 1946-6 | 2009-05 | Teil-Destillat (S.1-20+27-37/125) |
| DIN 276-1 | 2008-12 | destilliert |
| DIN 276-4 | 2009-08 | destilliert |
| DIN 4102-1 | 1998-05 | Teil-Destillat (S.1-20+26-28/28) |
| DIN 5034-2 | 1985-02 | destilliert |
| DIN 5034-3 | 2007-02 | destilliert |
| DIN 5034-4 | 1994-09 | destilliert (Scan nur ungerade Seiten im Quell-PDF) |
| DIN 5034-6 | 1995-06 | destilliert |
| DIN EN 12101-2 | 2003-09 | destilliert (S.1-16+31-38/38) |
| SN 640 060 (VSS) | 1994 | destilliert |
| SN 640 066 (VSS) | 1996 | destilliert |
| RAL-GZ 638 | Sept. 2008 | destilliert vollständig (S.1-24) — war fälschlich noch als «Teil-Destillat S.1-10» geführt |

**RAL-Familie damit komplett** (1/1 Datei destilliert, vollständig).

## Teil 2 — 5 neue Destillate

Alle klein/mittel (3–12 Seiten), vollständig gelesen (kein Teil-Destillat):

1. **DIN 1249-11:1986** — Flachglas im Bauwesen, Glaskanten (Begriff/Kantenformen K-GK-FK-RK
   × Ausführung KG-KGS-KMG-KGN-KPO, kombinierbares Bezeichnungssystem). Relevanz: präzise
   LV-Positionen für Glasgeländer/Duschabtrennungen.
2. **DIN 68119:1996** — Holzschindeln (Arten, Güteklassen je Holzart, Reihenabstand/
   Schindelgrundbedarf-Tabelle für Mengenermittlung). Relevanz: Fassaden-/Dach-Devis bei
   Schindeldeckung.
3. **DIN 4426:2001** — Instandhaltung baulicher Anlagen, Arbeitsplätze/Verkehrswege Dach+
   Fassade. **Höchste Praxisrelevanz dieses Batches**: Sicherheitsdachhaken-Bestückungsregel
   (Reihenabstände nach DIN EN 517), Absturzsicherungs-Konzept flach/steil, und **Bemessung
   von Fassadengerüst-Verankerungen (2,25 kN/m rechtwinklig, 0,75 kN/m parallel zur Fassade,
   Verdoppelung an Gebäudekanten)** — direkt nutzbar bei der Detailplanung von
   Vorhangfassaden/Plattenfassaden mit künftigem Gerüstbedarf.
4. **DIN EN 12207:2000** — Fenster/Türen Luftdurchlässigkeit, Klassen 1–4 + Nationaler Anhang
   mit Korrelationstabelle zu den alten deutschen Beanspruchungsgruppen A/B/C. Relevanz:
   Produktdatenblätter Fenster-/Türenhersteller referenzieren diese Klassen direkt.
5. **DIN 1055-2:2010** — Bodenkenngrössen (Wichte/Scherfestigkeit nichtbindiger und bindiger
   Böden, Tabellen mit Erfahrungswerten). Anwendungsbereich eng (Geotechnische Kategorie 1,
   Gründungstiefe ≤ 3 m) — als Ordnungsrahmen für Vorprojekte nützlich, ersetzt kein
   Baugrundgutachten.

## Verifikation

Alle Angaben direkt aus dem Original-PDF mit Seiten-/Ziffernangabe (Modell D,
Volltextabgleich an der Quelle). Keine DRM-Barriere angetroffen (alle 5 PDFs textlesbar
via `pdftotext` oder sauber visuell lesbar).

## Register-/Inventar-Stand nach diesem Lauf

- `training/norm-inventar.md`: 19 DIN/VSS/RAL-Zeilen von `[ ]` auf `[x] 260712` gesetzt
  (14 Reconcile + 1 RAL-Korrektur + 5 neu... — RAL-Zeile selbst zählt in den 14).
  Netto: 15 Reconcile-Zeilen (inkl. RAL) + 4 wirklich neue Inventar-Häkchen (1249-11,
  68119, 4426, EN 12207) + 1 weitere (1055-2) = 20 Zeilen von `[ ]`/inkorrekt auf `[x]`.
- `destillate/INDEX.md`: 19 neue Zeilen (14 Reconcile + 5 neu), 1 Statuskorrektur (RAL).
- `wiki/REGISTER.md`: 2 neue Abschnitte («Mini-Run-2-Reconcile», «Mini-Run-2-Neu»).

## Offen für den nächsten Mac-Mini-Lauf

DIN-Reste (noch nicht destilliert, Auswahl nach Grösse):
- Klein/mittel: DIN 919-1 (12 S.), DIN 4844-2 (30,7 MB, gross), DIN 68800-2 (39 S.),
  DIN 277-3 (22 S.), DIN 4102-2 (10 S., Companion zu bereits destilliertem 4102-1),
  DIN 18040-2 (32 S., Companion zu bereits destilliertem 18040-1), DIN EN 12207-Serie
  Restnormen, DIN 1053-Serie (5 Teile Mauerwerk), DIN 1054, DIN 1076, DIN 1164-10,
  DIN 1356-1/-6, DIN 1627, DIN 18232-2, DIN 18560-2, DIN 1946-4/-7, DIN 1960/1961,
  DIN 272, DIN 4426-Folgenormen, DIN V 105-100/106/107, DIN_18041, kompletter
  «Sonstiges»-Ordner (17 Dateien, teils deutsches Baurecht ohne CH-Relevanz).
- VSS-Reste: VSS 640 065 (9,2 MB, gross), 640 281 Parkfelder (21 S., 8,2 MB),
  640 291a Parkieren Geometrie (20 MB, gross), 640 578 (15 MB, gross), 40 291
  Parkieren 2021 (32 S., 4,4 MB).
- Gemäss «Gross-Normen vorziehen» (Rule 260712c): DIN 18040-2 und DIN 4102-2 sind
  Companions zu bereits destillierten Teil-1-Normen — im nächsten Lauf priorisieren.

DIN/VSS/RAL sind damit noch NICHT komplett — «INVENTAR KOMPLETT» kann für diese
Stations-Familien noch nicht gemeldet werden.
