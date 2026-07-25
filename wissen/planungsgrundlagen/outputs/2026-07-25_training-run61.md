# Training Run 61 — Kartenportale + Energie (Token-Vollgas)

Intensiv-Lauf gemäss `training/PROGRAMM.md` (Verifikations-Stufe/Intensivphase/Token-Vollgas bis
10.08.2026): **2 Domänen** im Schwerpunkt — Kartenportale (PL-01) und Energie (PL-04), gemäss
Domänen-Rotation (Recht/Norm + Brandschutz hatten Run 60, Kartenportale/Energie haben Priorität
als die zwei echten Lücken). Direkt in der Hauptsession durchgeführt (nicht per Fan-out an
Subagenten), gemäss der dokumentierten Lehre, dass Hintergrund-Subagenten auf OneDrive-Pfaden
stallen.

## Ablauf

1. Stand gelesen: `curriculum.md` (Domäne 1 Kartenportale bis K46, Domäne 2 Energie bis E41 —
   beide praktisch vollständig, K46 hatte einen offenen OneDrive-Blocker aus Run 59), letzter
   Report (Run 60).
2. **Backlog-Check zuerst (Kartenportale):** die vier seit Run 59 durch einen systemischen
   OneDrive-`EDEADLK` zurückgestellten Fundstellen erneut versucht (`cadastre.ch`,
   `geoportal.ch/Einsiedeln`, `geodienste.ch/Maur`, `KtLU Luzern/Geodatenshop Kanton Luzern`) —
   Lock war aufgelöst, alle Dateien lesbar.
3. **Backlog-Check (Energie):** die seit Run 53 blockierten drei `.docx` (`_Private Kontrolle/
   https.docx`, `endk.ch/.../Auf dem.docx`, `.../Bauvorschriften Versickerung.docx`) ebenfalls
   erneut versucht — ebenfalls lesbar.
4. Delta-Scan `U Wert berechnung/`: drei bisher nie ausgewertete Restdateien identifiziert
   (SIA-Merkblatt 2001, JANS-Notiz Dämmstoffwahl, Enerhaus-Musterformular).
5. E5/E9-Turnus-Refresh (MuKEn-2025-ZH-Umsetzung) per WebSearch.

## Funde — Kartenportale (K46-Nachtrag, Backlog vollständig geschlossen)

- **cadastre.ch:** bestätigter Nicht-Fund — reiner Link auf `cadastre.ch/de`, Betreiber
  swisstopo (Abteilung Vermessung, Wabern).
- **geoportal.ch/Einsiedeln — zwei Funde:**
  1. Service-Desk-Kontaktdaten GEOINFO Applications AG (Jira-Ticketsystem, Tel. 058 580 40 60,
     Bürozeiten Mo-Fr 07.00-12.00/13.00-17.30).
  2. **Präzisierung/Korrektur** der bereits unter K27 dokumentierten «Infrastruktur»-Druckfunktion
     des Bezirks-GIS `gis.bezirkeinsiedeln.ch`: trägt den echten Produkttitel **«Leitungskataster
     Gde»** mit vollständiger 7-Sparten-Legende (Abwasser/Kabelkommunikation/Wasser/Gas/
     Elektrizität/Öffentliche Beleuchtung/Fernwärme) — korrigiert den früheren «kein Mehrwert»-
     Eindruck. Wichtiger Abgrenzungsfund: das `geoportal.ch`-Portal selbst führt laut
     Service-Desk-Antwort **keinen** Leitungskataster für Einsiedeln (Verweis auf EW Lachen AG) —
     Bezirks-GIS und `geoportal.ch` sind trotz gemeinsamer SharePoint-Ablage technisch getrennte
     Systeme.
- **geodienste.ch/Maur:** Bestätigungsmail einer realen ZH-DXF(GEOBAU)-Bestellung (Gemeinde Maur,
  2 EGRID) — bestätigt den bereits dokumentierten Bestellablauf (A4/K33) an einem weiteren
  Realfall, kein neuer Mechanismus.
- **KtLU Geodatenshop:** Portal-Kontakt gefunden — Betrieb **rawi Kt. Luzern**, Portal
  `daten.geo.lu.ch`, Fachkontakt Gumanan Thiyagalingam (`geodaten@lu.ch`, 041 228 59 62),
  Produkt-URL-Muster `daten.geo.lu.ch/produkt/<code>`.

→ [[kartenportale-geoportale-uebersicht]] (mehrere Abschnitte ergänzt/korrigiert),
[[kartenportale-werkleitungskataster]] §7 ergänzt.

## Funde — Energie

- **E42 (Run-53-Backlog geschlossen):** `https.docx` + `Bauvorschriften Versickerung.docx` sind
  bareURL-Links (bestätigte Nicht-Funde, Delta zu E8/E12); `Auf dem.docx` ist eine fragmentarische,
  abgebrochene JANS-Arbeitsnotiz — bewusst NICHT als Fakt übernommen (Rule
  `identifikatoren-verifizieren`).
- **E43:** drei letzte Restdateien in `U Wert berechnung/` ausgewertet — SIA-Merkblatt 2001
  Wärmedämmstoffe (⚠ Nennwerte nur bis 31.12.2006 bestätigt, historisch/nicht mehr zitierfähig,
  aber methodische Definitionen λ/ρ/μ/c + BKZ-Brandkennziffer-System bleiben gültig); JANS-eigene
  Notiz zur realen Dämmstoffwahl (Flumroc DUO/DUO-3/H105, 01.11.2023); Enerhaus-380/1-
  Anwenderkurs-Musterformular (fiktives Beispiel 2010, nützlich als vollständige
  SIA-380/1-Formularstruktur-Vorlage) → NEU §6 [[energie-heizwaermebedarf-waermeerzeugerleistung]].
  `U Wert berechnung/` damit vollständig ausgewertet.
- **E5/E9-Refresh:** MuKEn-2025-ZH-Umsetzung + Graue-Energie-ZH-Grenzwert erneut per WebSearch
  geprüft — unverändert bestätigt, keine ZH-spezifische Vernehmlassung/kein Termin auffindbar.

## Verifikations-Stufe (Rule auto-verbesserungen 260712)

Keine Status-Hebung auf `established` in diesem Lauf nötig. Die Leitungskataster-Präzisierung
(geoportal.ch vs. Bezirks-GIS) ist eine direkte Extraktion aus einer realen Service-Desk-Antwort
plus einem realen Druckprodukt-Export — kein Interpretationsspielraum, kein Adversarial-Verify
nötig. Das SIA-Merkblatt-2001-Historisch-Flag ist direkt aus der Quelle selbst belegt (Ziff. 0.7:
Gültigkeit bis 31.12.2006).

## Token-Vollgas-Bilanz

12 bearbeitete Fragen/Fundstellen über beide Domänen (5 Kartenportale K46-Nachtrag-Teilfunde,
7 Energie E42/E43/E5-E9-Refresh) — innerhalb des Zielkorridors 10-16. Schwerpunkt lag bewusst auf
dem Abarbeiten der beiden bekannten OneDrive-Backlog-Blocker (Run 59 Kartenportale, Run 53
Energie) statt künstlicher neuer Fragen, da beide Domänen nach 40+ vorangegangenen Läufen nahezu
vollständig erschlossen sind. Ergebnis: 1 echte Korrektur/Präzisierung (Leitungskataster Gde),
4 kleinere Neufunde (Service-Desk-Kontakt, KtLU-Kontakt, SIA-Merkblatt-Historisch-Flag, JANS-
Dämmstoff-Notiz), 5 bestätigte Nicht-Funde, 1 Datenstand-Refresh ohne Delta.

## Nächster Schritt

Kartenportale-K46-Backlog und Energie-Run-53-Backlog sind jetzt vollständig geschlossen; keine
bekannten offenen Blocker mehr in beiden Domänen. Nächster Kartenportale/Energie-Turnus:
reiner Delta-Scan (`find -newermt`) beider PL-Ordner auf neue Dateien, sonst auf Datenstand-
Refreshs (E5/E9 MuKEn, R6 RPG-2) zurückfallen — beide Domänen sind inhaltlich weitgehend
ausgereizt.
