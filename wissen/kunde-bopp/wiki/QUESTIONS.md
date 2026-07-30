# QUESTIONS — offene Fragen / Wissensluecken Kunde Bopp

## Projekt-Detailartikel (aus Mail-Archiv zu vertiefen)
- **Ebmatingen Zuerichstrasse 113/115** — STWEG-Begruendung, Aufteilungsplan, Wertquoten,
  Reglement; Notariatstermin 15.12.2025. Welcher Stand heute? Dokumente in `raw/` ablegen.
- **Romanshorn Hafenstrasse 46 (Schlossberg)** — STWEG; Koordination Steigleitungen
  OG4/OG5 (Gantner/Bischof). Rolle Nova Property.
- **Baar Zugerstrasse 49** — Ankaufspruefung/TDD Hochhaus (06/2025), Angebot TDD. Ausgang?
  Als Referenzfall fuer Skill `ankaufspruefung` dokumentieren. **Versuch 24.07.2026
  gescheitert:** die relevanten Dateien im Projektordner (`_Zusammenfassung/`, `Bericht roh/`)
  sind nicht lokal materialisierte OneDrive-Cloud-Platzhalter, Lesezugriff liefert `EDEADLK`
  (deckt sich mit `feedback_background_agent_onedrive_stall`). Braucht entweder eine Session,
  in der die Dateien vorher lokal geoeffnet/heruntergeladen wurden, oder Raphael zieht den
  Ordner einmal manuell nach — dann neu versuchen.
  **Querverweis 30.07.2026:** Teilaspekt «Referenzfall fuer Skill `ankaufspruefung`» ist erledigt —
  `skills/ankaufspruefung/SKILL.md`, Abschnitt «JANS-Goldstandard-Methodik (Beleg: reale TDD 2513
  BAAR, Zugerstrasse 49)», Zeilen 78-109, bestehend seit 03.06.2026. Offen bleiben: (a) Projekt-
  Detailartikel im Wiki, (b) Ausgang der Ankaufsentscheidung Nova/Baar.

## Offene Faktenfragen
- Standard-Rechnungsadresse / Korrespondenzweg je Rolle (woma vs. nova vs. privat vs. Feag).
- **Hinweis (25.07.2026, Nachtschicht Mac Mini):** Versuch, Ebmatingen/Romanshorn/Rechnungsadresse
  ueber den M365-Connector zu klaeren, an der API-Grenze gescheitert, bevor recherchiert wurde —
  `m365 outlook message list` liefert nur Ordner+Zeitraum, **keinen Volltext-/Betreff-Suchfilter**.
  Fuer diese Fragen braucht es entweder Apple-Mail-Volltextsuche (osascript, wie beim urspruenglichen
  25-Mail-Archiv-Seed) oder einen gezielten Graph-`$search`-Aufruf ausserhalb der Connector-Kommandos
  — kein Nachtschicht-Standardfall, sondern ein dedizierter Lauf mit mehr Recherche-Budget.

## Prozess
- Sobald ein Bopp-Auftrag erledigt ist: Output nach `outputs/`, Profil/Projektartikel
  aktualisieren, CHANGELOG-Eintrag (Compounding-Loop).

## Beantwortet (Archiv)
- **Giebelweg 12, 8135 Langnau a/A** — beantwortet 2026-07-24: Machbarkeitsstudie (Juni 2026)
  loeste den Baumasse-Konflikt (+176 m³) ueber den Hangschnitt-Nachweis massgebendes Terrain
  (volle Attika budgetkonform, Reserve 8 m³). Auf dieser Grundlage hat Christoph am 30.06.2026
  im Namen seiner Mutter (Eigentuemerin, Vollmacht 22.06.) formell Einwendung gegen die
  Baulinien-Festsetzung an die Gemeinde Langnau a/A eingereicht. **Antwort der Gemeinde stand
  per 24.07.2026 noch aus.** Details in [[projekt-giebelweg12]], Report
  `outputs/2026-07-24_giebelweg12-projektstand.md`.
- **Drittes/viertes KMU-Vehikel** — beantwortet 2026-07-21: **Feag Facility Engineering AG**,
  Zürich (UID CHE-108.531.313), Familienunternehmen (Bauphysik/-akustik/Energie, Facility
  Management). Christoph Bopp seit Jan. 2003 im Vorstand (Wiedereintritt Juli 2010), seit
  März 2019 Präsident des Verwaltungsrats (Nachfolge Vater Walter Bopp). Quellen:
  moneyhouse.ch Personensuche, northdata.com Vorstands-Historie, business-monitor.ch
  aktuelle Organe. Details in [[profil-christoph-bopp]], Report
  `outputs/2026-07-21_drittes-kmu-mandat.md`.
- **Exakte Firmenrollen (Handelsregister/Zefix)** — beantwortet 2026-07-20: WOMA Maur ist
  eine **Genossenschaft** (nicht AG), UID CHE-103.976.168, Sitz Binz; Christoph ist seit 2013
  Vorstandsmitglied, Ressort «Liegenschaften» + Vizepraesident. Nova Property Fund Management AG,
  UID CHE-403.795.970, Sitz Freienbach/Pfaeffikon SZ; Christoph ist seit 2021 «Head Development &
  Construction» in der erweiterten Geschaeftsleitung (davor 2010-2021 Losinger Marazzi AG).
  Quellen: woma-maur.ch/organisation.php, novaproperty.ch/en/team/christoph-bopp,
  zh.chregister.ch (UID-Abfrage). Details in [[profil-christoph-bopp]].
