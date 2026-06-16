# Curriculum — KB Planungsgrundlagen

Lektionen je Domaene, abgearbeitet im 2-Tages-Loop (Rotation siehe `PROGRAMM.md`).
Status: `[ ]` offen · `[~]` begonnen · `[x]` belegt eingearbeitet (mit Datum).

Jede Lektion ist als **Selbstfrage** formuliert — der Loop beantwortet sie belegt und schreibt
das Ergebnis in den passenden Wiki-Artikel.

## Domaene 1 — Kartenportale (PL-01)  · Prioritaet
- [x] K1 Wie kommt man von Adresse zu EGRID zu OEREB-PDF? (2026-06-05, validiert ZH)
- [x] K2 Wie bezieht man den Zonenplan/BZO-Ausschnitt einer ZH-Parzelle (Endpunkt/Format)? (2026-06-16 GELOEST: ZH-OGD-WFS `maps.zh.ch/wfs/OGDZHWFS` Datensatz 0156 `np_gn_zonenflaeche_f` als GeoJSON, login-frei — Zone+BMZ/AZ+Hoehen+VG+ES-Laerm 0154; Connector `--produkt zonenplan`; validiert Langnau Kat.3338 + Egg WG60 → [[kartenportale-zonenplan-zh]]. Bundes-Bauzonen `ch.are.bauzonen` PNG bleibt fuer Schnellblick.)
- [x] K3 Wie laedt man Hoehenmodell (swissALTI3D) + Orthofoto (SWISSIMAGE) je Parzelle? (2026-06-10, height + STAC swissimage-dop10/swissalti3d validiert → [[kartenportale-bund-geodaten]], Connector `--produkt`)
- [ ] K4 Situationsplan amtliche Vermessung — Bezug ueber geodienste.ch OGD, automatisierbar?
- [ ] K5 Baulinien/Abstandslinien — wo, und wie lesen sie sich in den OEREB?
- [ ] K6 Eigentumsabfrage ObjektwesenZH per EGRID — Ablauf, Datenschutz, Automatisierung?
- [x] K7 Nicht-ZH: OEREB-Service-Endpunkte (zuerst SZ) kartieren + in Connector hinterlegen. (SZ via geo-sz.mjs / Skill `oereb-schwyz` geloest; in geo-zh.mjs OEREB_SERVICE.sz hinterlegt)
- [ ] K8 Welche Geodaten-Formate (GeoPackage, Interlis, DXF, LandXML) wofuer — Kurzleitfaden?

## Domaene 2 — Energie (PL-04)  · Prioritaet
- [x] E1 PV-Typenwahl: Entscheidungsbaum (Indach/Ziegel/transparent/Fassade/Aufdach)? (2026-06-06, → [[energie-pv-eignung-typenwahl]])
- [x] E2 PV-Eignung/Ertrag grob bestimmen (uvek-gis, Sonnenstand, Verschattung)? (2026-06-06, sonnendach.ch + Solarrechner + ewzWHH-Benchmark)
- [x] E3 U-Wert-Grenzwerte SIA 380/1 als belegte Tabelle (Bauteil → max U). (2026-06-06, belegt in KB `wissen/energie/` → [[u-werte-grenzwerte-ch]]; hier verlinkt statt dupliziert)
- [x] E4 Energienachweis ZH: Massnahmenpaket vs. Einzelnachweis — wann was, welche Formulare? (2026-06-06 EN-ZH Hauptformular; 2026-06-12 vollstaendige Fachformular-Liste EN-101a…EN-141/S/LN + Detail EN-105/EN-110-ZH + EVEN-Umstellung 01.01.2026 belegt → [[energie-energienachweis-zh-formulare]])
- [~] E5 Aktuelle ZH-Energievorgaben (MuKEn-Umsetzung) mit Datenstand. (2026-06-06, Stand gesetzt: EnerG seit 1.9.2022/MuKEn 2014; MuKEn 2025 ZH-Umsetzung ausstehend)
- [ ] E6 Brandschutz bei Solaranlagen (VKF 2001-15) — Kernregeln (Verweis Skill brandschutz).

## Domaene 3 — Recht & Norm (PL-02)
- [x] R1 Quellenlandkarte PL-02 vervollstaendigen (welcher Erlass wo, Datenstand fedlex). (2026-06-08, 10 Ordner kartiert, SR→fedlex-Schema, → [[recht-norm-quellenlandkarte]])
- [~] R2 SZ vs. ZH: die haeufigsten Messweisen-Unterschiede (Hoehe, Abstand, Ausnuetzung). (2026-06-08, ZH=IVHB / SZ=PBG-Art. belegt verlinkt; Tiefe → `baurecht`)
- [~] R3 Dispensrecht: typische Faelle aus `05_Dispensrecht` als Muster (Verweis baurecht). (2026-06-08, BRKE-Beispiel verortet; Detail → `baurecht`)
- [x] R4 Reale JANS-Baurechtsanalysen (`08_`) als anonymisierte Benchmarks erschliessen. (2026-06-08, Fall-Index + Maur-Geruest, → [[recht-norm-baurechtsanalysen-benchmarks]])

## Domaene 4 — Brandschutz (PL-03)
- [ ] B1 Verhaeltnis zu Skill `brandschutz` festlegen (Verweis vs. eigene Grundlagen-Notizen).
- [ ] B2 Brandschutznachweis-Vorlagen (brandschutznachweis.ch) — wann braucht es welche?
- [ ] B3 VKF-Struktur 2015 (Norm/Richtlinien/Erlaeuterungen/Arbeitshilfen) als Wegweiser.

## Meta / Querschnitt
- [ ] M1 Grundlagen-Checkliste «neue Parzelle» (was holt man IMMER zuerst) als Standard-Output.
- [ ] M2 Anbindung an `machbarkeit`/`ankaufspruefung`/`behoerden-vorabklaerung` schaerfen.
