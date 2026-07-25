# Training Run 21 — KB Planungsgrundlagen · 2026-07-13

**Schwerpunkt-Domaenen (Token-Vollgas, 2 Domaenen):** Recht & Norm (PL-02) + Brandschutz (PL-03).
Rotation gemaess PROGRAMM.md: Kartenportale → Energie (Run 20) → **Recht/Norm → Brandschutz**
(Run 21). Beide Domaenen hatten laut Run-20-Empfehlung keine offenen Restpunkte mehr aus den
letzten Laeufen — Schwerpunkt lag daher auf **neuen, bisher unerschlossenen PL-Ordnern**.
**Connector-Schritt: nein** (reine Recht-/Norm- + Brandschutz-Destillation, kein Geodaten-Endpunkt
betroffen).

## Ausgangslage / erkannte Luecke

Domaenen-Inventar geprueft (curriculum.md R1-R8 / B1-B8 fast vollstaendig `[x]`, nur B2 RPG-2-ZH-
Umsetzung und B5/C6 BSV-2026 sind extern blockiert bis Publikation). Statt einen bereits belegten
Punkt zu wiederholen, wurden die SharePoint-Ordner **PL-02/Tiefgarage** und **PL-03/05 Arbeitshilfen
Brandschutz 2015** auf unerschlossenes Material geprueft: der Ordner `Tiefgarage/` (VSS-Normen
640 050/281/291a, reale Rampenprofile, Wendehammer-Nachweis, ein reales Pruef-Aktennotiz-Beispiel)
war komplett unbearbeitet; die Brandschutz-Arbeitshilfe `1002-03d_Parkhaeuser.pdf` (Parkhaeuser/
Einstellraeume) ebenso — beide betreffen dieselbe reale Bauaufgabe (Tiefgarage bei Healthcare-/
Wohnbauten) aus zwei komplementaeren Perspektiven (Erschliessungsgeometrie vs. Brandschutz).

## Bearbeitete Fragen (Run 21)

**Recht & Norm — neue Lektion R9 (Tiefgarage-/Parkierungserschliessung):**
1. Welche Zufahrtstypen A/B/C regelt VSS 640 050 und wann gilt welcher? → Tab. 1/2 belegt
   (Breite/Radius/Neigung je Typ, abhaengig von Parkfeldzahl × Strassentyp).
2. Welche Geometriewerte (Parkfeld-/Fahrgassenmasse, lichte Hoehe, Rampenneigung) gelten je
   Komfortstufe A/B/C nach VSS 640 291a? → vollstaendige Tabellen 2-12 extrahiert und tabellarisch
   im Wiki abgelegt.
3. Deckt sich die reale ZH-Kantonspraxis (Rampenprofil-Beispiel) mit der VSS-Norm? → Ja,
   deckungsgleich (Neigungsknicke, max. ±5 % in den ersten 6 m, lichte Hoehe 2.30 m).
4. Was braucht ein Wendehammer-Nachweis fuer einen 12-m-Lastwagen? → Bezugsfahrzeug-Masse (VRV
   Art. 64/65/65a) + drei reale Geometrie-Beispiele (T/Y/Kreuz) belegt.
5. Bestaetigt ein reales Pruefdokument die Norm-Werte in der Praxis? → Ja (Aktennotiz Flurstrasse,
   Stuetzenabstand- und Ausfahrtsneigungs-Befund decken sich exakt mit den Norm-Minima).

**Brandschutz — neue Lektion B9/C10 (Parkhaeuser und Einstellraeume):**
6. Welche Tragwerksanforderungen gelten fuer Untergeschoss-Einstellraeume? → R 60 (nbb) Standard,
   R 30 bei eingeschossig/unterirdisch/nicht ueberbaut, Sprinkler-Reduktion moeglich.
7. Wie gross duerfen Brandabschnitte in Parkhaeusern sein? → 4'000/2'000/8'000 m² je nach
   Geschossverbindung, mit Sprinkler verdoppelbar.
8. Wie viele Treppenanlagen/Fluchtwege braucht ein grosses Tiefgaragen-Untergeschoss? →
   belegte Schwellen (600 m² BGF bei einer Treppenanlage, 900 m²/Treppenanlage bei mehreren,
   Gesamtfluchtweglaenge 35/50 m) — direkte Vorprojekt-Relevanz fuer Healthcare-Tiefgaragen.
9. Ab wann RWA-Pflicht bzw. Sprinklerpflicht? → Flaechenschwellen 600/1'200/2'400 m² (RWA) und
   4'000/2'000/8'000 m² bzw. > 50 Kompaktparkplaetze (Sprinkler) belegt.

## Was geaendert wurde

- **NEU [[recht-norm-tiefgarage-erschliessung]]:** vollstaendiger Artikel — Zufahrtstyp A/B/C,
  Parkfeld-/Fahrgassenmasse, lichte Hoehe, Rampenneigung 12-18 %, Kurvenverbreiterung,
  Kontrolleinrichtungs-Layout, Bedarfsermittlung (VSS 640 281, Abgrenzung zur Geometrie-Norm),
  Wendehammer-Nachweis 12-m-LKW, Praxis-Benchmark Flurstrasse. Alle Werte aus den Original-VSS-
  Normen (PDF direkt gelesen, kein Sekundaerzitat) + zwei unabhaengigen realen Referenzdokumenten.
- **[[brandschutz-pl03-wegweiser]]:** NEU §4c «Parkhaeuser und Einstellraeume fuer Motorfahrzeuge»
  (Tragwerk, Brandabschnittsbildung, Fluchtwege-Kernzahlen, RWA, Loescheinrichtungen,
  Sprinklerpflicht) mit explizitem ⚠-Datenstand-Vorbehalt (Arbeitshilfe 06.08.2003, vor der
  BSV-2015-Generation — Empfehlung: vor Anwendung in einem laufenden Nachweis gegen bsvonline.ch
  pruefen). Frontmatter (sources/links) erweitert, §5-Uebersicht ergaenzt.
- **Register:** curriculum (R9/B9 neu `[x]`), QUESTIONS (B-Sektion R9 neu, C-Sektion C10 neu),
  INDEX (neuer Recht/Norm-Eintrag + Brandschutz-Eintrag praezisiert), raw/_INGESTED (6 neue Zeilen
  + 2 Sammelzeilen-Updates), CHANGELOG.

## Verifikation

- **VSS-Normen (640 050/281/291a):** Original-PDF direkt gelesen (Modell-D-Volltextabgleich an der
  Quelle, keine Sekundaerzitate); alle Tabellenwerte 1:1 aus den amtlichen Tabellen 1-12
  uebernommen, keine Interpolation/Schaetzung.
- **Reale ZH-Kantonspraxis + Flurstrasse-Benchmark:** dienen als **unabhaengige Zweitquelle** — die
  Rampenprofil-Werte (IBV Huesler AG) und die Pruefnotiz-Befunde (Meili Peter/IBV) wurden explizit
  gegen die VSS-Norm-Tabellen abgeglichen und decken sich vollstaendig (kein Widerspruch gefunden).
  Damit erfuellt die Lektion R9 die Verifikations-Pflicht der Intensivphase ohne separaten
  Refuter-Agenten (Norm-Primaerquelle + zwei konvergierende Praxisbelege).
- **VKF-Arbeitshilfe Parkhaeuser (1002-03d):** Original-PDF direkt gelesen; **bewusst nicht** ohne
  Vorbehalt als aktuell gueltig eingestuft — Datenstand 2003 ist aelter als die BSV-2015-Generation,
  auf die sich der uebrige Wegweiser-Artikel stuetzt. Der Artikel selbst verweist auf bsvonline.ch
  als aktuelle Quelle. Dieser Vorbehalt ist explizit im Wiki-Text und in der Frontmatter vermerkt
  (ehrliche Luecke statt unbelegter Sicherheit).

## Naechster Lauf (Run 22)

Rotation → **Brandschutz** waere turnusgemaess nochmals dran, sinnvoller ist aber **Kartenportale**
(Prioritaet) oder eine dedizierte **Meta-Runde fuer M2** («Anbindung an `machbarkeit`/
`ankaufspruefung`/`behoerden-vorabklaerung` schaerfen» — bei Pruefung in Run 21 festgestellt: **keiner
der drei SKILL.md-Dateien referenziert `planungsgrundlagen` bisher**, echte offene Luecke, noch nicht
bearbeitet). Weitere Recht/Norm-Kandidaten fuer Folgelaeufe: kommunale Parkplatzverordnungen (Vorrang
vor VSS 640 281, noch nicht kartiert), SN 640 065/066 (leichter Zweiradverkehr, geringer Nutzen fuer
Tiefgaragen). Brandschutz-Rest (B5/C6 BSV 2026) bleibt blockiert bis 08/2026 — nicht vor Ablauf
erneut pruefen. Energie-Kandidat weiterhin D5 (PV-System-CHF/kWp, wartet auf reale Schlussabrechnung).
