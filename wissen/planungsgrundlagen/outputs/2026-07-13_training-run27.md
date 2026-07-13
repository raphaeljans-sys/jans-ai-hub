# Trainingslauf Planungsgrundlagen — Run 27 (2026-07-13)

Schwerpunkt-Domaenen laut Rotation nach Run 26 (Recht/Norm + Brandschutz): **Kartenportale
(PL-01)** + **Energie (PL-04)**, Token-Vollgas 2 Domaenen. Wie in den Vorlaeufen war der
Curriculum-/QUESTIONS-Rueckstand in beiden Domaenen praktisch vollstaendig abgearbeitet (fast alle
bisherigen K-/E-Punkte `[x]`) — dieser Lauf hat deshalb wieder den vollstaendigen PL-01/PL-04-
Ordnerbaum auf SharePoint nach bisher UNBEARBEITETEN Unterordnern durchsucht, statt bekannte
Luecken zu vertiefen. Die Tiefenrecherche der beiden Domaenen lief ueber zwei parallele
Fach-Agenten (Multi-Agent-Workflow, autorisiert durch Rule `auto-verbesserungen` 260712), der
Hauptlauf hat danach die gemeinsamen Register (`curriculum.md`, `QUESTIONS.md`, `INDEX.md`,
`_INGESTED.md`, `CHANGELOG.md`) zentral konsolidiert, eine vom Agenten offen gelassene Luecke
(Erdwaermenutzung SZ) selbst geschlossen und ein Beschriftungsversehen (Run-Nummer) korrigiert.

## Bearbeitete Fragen (6)

**Kartenportale — drei neue Themen aus bisher unbearbeiteten PL-01-Unterordnern:**

1. Wie unterscheidet sich die formelle, rechtsverbindliche Grundbuchauszug-Bestellung ZH von der
   bereits dokumentierten Selbstbedienungs-Eigentumsabfrage (K6/A5)?
   → Realer Notariats-Fall Hoengg-Zuerich ausgewertet: ZH kombiniert Notariat/Grundbuchamt/
   Konkursamt je Bezirk/Quartier, zustaendige Stelle ueber `notariate-zh.ch` finden, telefonische
   Terminvereinbarung ausser fuer Beglaubigungen → [[kartenportale-geoportale-uebersicht]]
   (emerging, Einzelfall-Beleg).
2. Was liefert der Willerzell-WebGIS-Batch SZ (derselbe Kartenexport wie die bereits
   dokumentierte Grundwasserkarte) an weiteren Planungsgrundlagen?
   → **Gewaesser-Oekomorphologie** (6-stufige Klassifizierung natuerlich→nicht bestimmt, Kt.-SZ-
   Entsprechung zur ZH-GSB-Karte fuer die Gewaesserraum-Bemessung) → [[recht-norm-abstandsvorschriften-wald-gewaesser]]
   + [[kartenportale-naturgefahren-objektschutz]] §6b. **Erdwaermenutzung** (Zulaessigkeitszonierung
   zulaessig/Abklaerung noetig/nicht zulaessig + Bestandeskataster Erdregister/Energiekorb/
   Energiepfahl/Erdwaermesonde inkl. Widerrufsstatus) → NEU [[kartenportale-naturgefahren-objektschutz]]
   §6c (vom Hauptlauf selbst nachgetragen, da der Kartenportale-Agent den Fund verifiziert, aber
   nicht mehr rechtzeitig in den Wiki-Artikel geschrieben hatte — ehrlich als Luecke gemeldet statt
   verschwiegen).
3. Wie unterscheidet sich der SZ-Geodatenbezug vom ZH-Geoshop, und wie laeuft ein realer
   Werkleitungsbezug bei einem SZ-Versorger ab?
   → **SZ-Geoshop** (Anbieter LISAG, Region Zentralschweiz UR/SZ/OW/NW/ZG): AV-Daten sind
   **gebuehrenfrei** ueber eine vorausgefuellte, login-freie URL erreichbar (Connector noch nicht
   gebaut). **geodatenshop.zh.ch** ist ein Web-UI-Doppel zum bereits dokumentierten Geoshop-API
   (`geoshop-zh.mjs`/`geoservices.zh.ch`) — kein neuer Artikel noetig. **EW Lachen AG** (Bezirk
   Einsiedeln, Wasser/Gas/Fernwaerme/Kanalisation) hat **kein Webportal**, Bestellung nur per
   E-Mail, plus reale Liegenschaftsentwaesserungs-/Anschlussgebuehr-Praxis (SN 592 000, SIA 416
   NGV Varianten A/B) → [[kartenportale-geoportale-uebersicht]] + NEU
   [[kartenportale-werkleitungskataster]] §7.

**Energie — drei neue Themen aus bisher unbearbeiteten PL-04-Unterordnern:**

4. Was zeigen die 15 Screenshots im Ordner `_Betriebsenergie/`?
   → Private "Facts & Figures"-Praesentation (Urheber unbekannt) zu einem realen Sanierungsfall
   EFH Baujahr 1957/120 m²: PV 14 kWp + Batterie + WP-Boiler (2019) + Dachdaemmung (2021),
   Gasbezug 28'613→19'073 kWh (2017-2021), Amortisationsrechnung 36'000 CHF Anlage − 15'000 CHF
   Pronovo-KLEIV+Steuern ≈ 7 Jahre → NEU Abschnitt "Betriebsenergie" in [[energie-uebersicht]],
   emerging (Drittquelle ohne bekannten Urheber, aber intern konsistente Zahlenreihe — brauchbar
   als Amortisations-Beispiel gegenueber Bauherren).
5. Lohnt sich ein eigener Artikel fuer das Minergie-Referenzprojekt «Maison Climat»?
   → Ja: reales Minergie-A-Projekt (20 Mietwohnungen, Holzbau-Ersatzneubau Seelandweg Biel,
   Buergi Schaerer Architekten AG/Beer Holzhaus AG, PV-integriert + Erdwaermesonde, kompakte
   Zeilentypologie mit Laubengang Nord/Balkone Sued) → NEU
   [[energie-minergie-referenzprojekt-maison-climat]], emerging (Typologie-/Konstruktionsbeispiel,
   keine uebertragbaren numerischen Kennwerte).
6. Ist forumenergie.ch ein aktiver Weiterbildungsanbieter fuer die Private-Kontrolle-Befugnis?
   → Ja: «Forum Energie Zuerich» ist real und aktiv; JANS selbst hat am 26.09.2023 den Kurs
   "Minergie-Nachweis: Tipps & Tricks" besucht (Beleg Rechnung 605559, CHF 450) →
   Weiterbildungs-Hinweis in [[energie-private-kontrolle-zh]] §5, mit Vermerk, dass das
   Kursprogramm Datenstand 2023 ist und vor Empfehlung aktualisiert geprueft werden sollte.
   `pronovo.ch`-Ordner bestaetigt leer (0 Dateien) — nichts zu tun.

## Neue/erweiterte Artikel

- **NEU [[energie-minergie-referenzprojekt-maison-climat]]** (emerging)
- **[[kartenportale-geoportale-uebersicht]] erweitert:** Grundbuchamt ZH, SZ-Geoshop lisag.ch,
  geodatenshop.zh.ch-Doppel-Klarstellung
- **[[kartenportale-naturgefahren-objektschutz]] erweitert:** neue §6b (Gewaesser-Oekomorphologie
  SZ) + §6c (Erdwaermenutzung SZ)
- **[[kartenportale-werkleitungskataster]] erweitert:** neue §7 (EW Lachen AG Einsiedeln)
- **[[recht-norm-abstandsvorschriften-wald-gewaesser]] ergaenzt:** SZ-Gewaesser-Oekomorphologie
- **[[energie-uebersicht]] erweitert:** neuer Abschnitt "Betriebsenergie"
- **[[energie-private-kontrolle-zh]] erweitert:** neue §5 (Weiterbildungs-Hinweis forumenergie.ch)

## Verifikations-Stufe (Modell-D-Volltextabgleich + Multi-Agent)

Alle neu ausgewerteten Quellen wurden **direkt im Original gelesen** (PDF/DOCX/Screenshot/eml) —
kein Sekundaerzitat. Keine Endpunkte/Kennwerte erfunden; Fundstellen mit duenner Beleglage
(Betriebsenergie-Drittquelle ohne Urheberangabe, Grundbuchamt-Einzelfall) sind ehrlich als
`emerging` markiert statt als `established` behauptet. Ein Prozessbefund aus diesem Lauf: beide
Fach-Agenten haben ihre neuen Wiki-Abschnitte versehentlich mit "Run 26" statt "Run 27"
beschriftet — der Hauptlauf hat das beim Konsolidieren in allen betroffenen Dateien korrigiert
(`sed`-Ersetzung nach Pruefung via `git show --stat`, dass ausschliesslich heutige Aenderungen
betroffen waren). Zudem hatte der Kartenportale-Agent einen Fund (Erdwaermenutzung) zwar
recherchiert und verifiziert, aber nicht mehr in den Wiki-Artikel geschrieben — dies wurde ehrlich
im Agenten-Rueckgabetext gemeldet und vom Hauptlauf direkt nachgetragen, statt die Luecke
stillschweigend offen zu lassen. Kein Verdikt "beanstandet".

## Was als naechstes

- **Naechste Domaenen laut Rotation:** Recht & Norm (PL-02) + Brandschutz (PL-03) fuer den
  naechsten Lauf (Methode: weiterhin `find`-Abgleich gegen `raw/_INGESTED.md`, da die "einfachen"
  Curriculum-Punkte in allen vier Domaenen weitgehend abgearbeitet sind).
- **Offen bleibt:** SZ-Geoshop lisag.ch noch nicht in einen Connector gegossen (Vorschlag:
  analog `geo-sz.mjs` ein Produkt `--produkt av-daten-lisag` ergaenzen, sobald ein realer
  Anwendungsfall ansteht); ZH-Naturgefahren-/Grundwasser-/Erdwaerme-Endpunkt weiterhin nicht
  kartiert (Discovery-Versuche bisher erfolglos dokumentiert); Betriebsenergie-Drittquelle-Urheber
  nicht ermittelt (bleibt `emerging`); Minergie-Referenzprojekt-Kennwerte (U-Werte, Energiekennzahl)
  nicht extrahiert, da die gelesenen Grundriss-PDFs keine Kennwerttabellen enthielten.
- **Methodik-Erkenntnis:** der Multi-Agent-Ansatz bewaehrt sich weiterhin fuer parallele
  Tiefenrecherche, ABER die Agenten-Prompts sollten die korrekte Run-Nummer explizit im
  Antworttext wiederholen lassen (nicht nur im Prompt-Kontext), um Beschriftungsfehler zu
  vermeiden — kuenftige Laeufe sollten den Konsolidierungsschritt routinemaessig mit einem
  `grep "Run <N-1>"` gegen die soeben geaenderten Dateien pruefen, bevor der Report geschrieben wird.
