# Output: Einreich-Aufstellung (Formulare/Eingaben) Auflagebereinigung 2619-KISPI

- **Datum:** 2026-06-13
- **Projekt:** 2619-KISPI «Neue Psychosomatische Therapiestation für Jugendliche»,
  Universitäts-Kinderspital Zürich, Eleonorenstiftung, Lenggstrasse 30, 8008 Zürich
- **Grundlage:** definitiver Bauentscheid **BE 1171/26 vom 08.06.2026** (Versand 09.06.2026),
  Amt für Baubewilligungen Stadt Zürich, Kreisarchitektin J. Palermo · Geschäfts-Nr.
  **B26-00705.01**, Code 08303 · Grundstück Kat.-Nr. **RI5416**, Zürich 8 – Weinegg ·
  kant. Verfügung BVV 26-1211 (18.05.2026, kant. Betrieb, ohne Auflagen)

## Auftrag

Eigenständige **Einreich-Aufstellung** als Gegenstück zur Plan-/Dokumentenliste (04.06.):
nicht nach Planer, sondern nach **Eingabe-Adressat (Amt/Stelle)** gegliedert, mit der
definierenden Spalte **Bezugsquelle/Plattform** (wo bekomme ich das amtliche Formular).

## Ergebnis

XLSX + PDF (JANS-Layout, A4 quer), **25 Eingaben/Formulare** in 7 Amts-Gruppen:
UGZ Energie (5) · Feuerpolizei Brandschutz (7) · GVZ BMA/SPA (2) · AfB Sammelbestätigungen
+ Meldungen (4) · SRZ Schutzraum (1) · Bauinstallation/öffentl. Grund (4) · Baustelle-Umwelt (2).
Spalten: Nr. · Eingabe an · Amtliches Formular/Unterlage · Auflage (Ziff.) · Frist ·
Bezugsquelle/Plattform (klickbar) · Status.

Generator: `tools/build_einreichaufstellung.py`. Ablage (doppelt):
- Projekt: `…/3_Dokumente Auflagebereinigung/00_Checklisten … Komplette Auflagen Insgesamt/`
- AI-Hub: `…/30 JANS AI HUB OUTPUT/auflagebereinigung/2619-KISPI/`
- Dateiname `260613-Einreich-Aufstellung-Formulare-Auflagebereinigung-2619-KISPI.xlsx` (+ .pdf)

## Diff Vorabzug → definitiver Entscheid

Der rechtskräftige BE 1171/26 **bestätigt den Vorabzug**: gleiche Struktur (Vorbemerkungen
Ziff. II.1–3, Auflagen II.4–33), Energie-Zuordnung II.8 a) Hauptformular EN-ZH /
b) Lüftung / c) Kühlung-Befeuchtung **wörtlich** identisch. Keine materiellen
Auflagenänderungen festgestellt (Ziffern-Schnellabgleich). Die Plan-/Dokumentenliste vom
04.06. bleibt damit gültig.

## Belegte Bezugsquellen (live geprüft 13.06.2026)

- **EN-110-ZH:** direktes PDF auf zh.ch (HTTP 200, Pfad `…/energienachweis/projektkontrolle/en_110_zh.pdf`).
- **EN-ZH / EN-105:** kein Einzel-PDF mehr (404) — seit **01.01.2026 verbindlich über EVEN**
  (energievollzug.ch). UGZ-Eingabekanal `stadt-zuerich.ch/ugz-baubewilligung` (200).
- **Brandschutz-Zusatzformular 3** und **Baumfällung-Gesuch:** verifizierte Direkt-URLs aus
  der Connector-Registry `behoerden-zh.registry.json` (stadt-zuerich.ch AEM-DAM).
- **GVZ** (BMA/SPA-Weisungen) gvz.ch · **VKF** (QSS, Übereinstimmungserklärung) praever.ch,
  Register bsronline.ch · **Baustellen-Luft** stadt-zuerich.ch/baustellen-luft (200).

## Erkenntnisse → Wiki

- Einreich-/Formularsicht (je Amt, mit Bezugsquelle) ist ein **zweites Deliverable** neben der
  planerorientierten Plan-/Dokumentenliste → Vorgehen `[[vorgehen-auflagebereinigung]]` ergänzen.
- Energienachweis Kt. ZH läuft seit 01.01.2026 über **EVEN**; EN-110-ZH zusätzlich als PDF.
  Querverweis KB `[[energienachweis-zh]]` (KB energie).
- Behörden-Formulare sind login-frei als AEM-DAM-Assets beziehbar (Connector `behoerden-zh.mjs`).

## Offene Punkte (→ QUESTIONS)

- **Private Kontrolle Energie** (qualifizierte Fachperson EN-105/EN-110-ZH) noch zu bestimmen.
- **EVEN-Konto** JANS noch nicht registriert (Account-Erstellung durch Raphael selbst).
- **Adress-Hinweis:** BE nennt Zustelladresse «Raphael Jans – Architekten ETC / SIA,
  Saumstrasse 21, 8003 Zürich»; aktuell richtig Grubenstrasse 37, 8045 Zürich (und «ETH») —
  beim AfB korrigieren lassen.
- Schutzraumpflicht (SRZ, Ziff. II.1b) noch in Abklärung.
