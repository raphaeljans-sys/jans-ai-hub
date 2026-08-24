---
quelle: "Eigene Recherche (WebSearch/WebFetch/curl+pdftotext, 29.07.2026) zum Zugang der
  prSWKI-VA106-01-Vernehmlassungs-PDF, ausgelöst durch den dreifachen HTTP-404 im Destillat
  `swki-va106-lueftung-hallenbaeder.md`. Geprüfte Quellen: die-planer.ch (jetzt vollständig
  301-Redirect auf swki.ch), swki.ch/de/vernehmlassungen und die Projektdetailseite
  swki.ch/de/vernehmlassungen/prswki-va106-01, swki.ch/de/shop (neue Shop-Struktur, ersetzt das
  alte shop.swki.ch), swki.ch/de/shop/swki-2004-1--sicc-2004-1 mit dem dort verlinkten
  Inhaltsverzeichnis-PDF (swki.ch/galerie/richtlinie/inhaltsverzeichnis/de_1749824218_
  inhaltsverzeichnis.pdf, per curl+pdftotext vollständig gelesen), connect.snv.ch/de/
  swki-2004-1-2005 (SNV-Verkaufsseite) mit Verweis auf public-viewer.snv.ch/product/274273/de
  (JS-Vorschau-Viewer, Inhalt nicht extrahierbar), sowie die Wayback-Machine-CDX-API
  (web.archive.org/cdx/search/cdx) für gezielte Verfügbarkeitsprüfungen."
herausgeber: "SWKI / DIE PLANER (Solothurnstrasse 13, CH-3322 Urtenen-Schönbühl); SNV
  Schweizerische Normen-Vereinigung (Betreiberin von connect.snv.ch und des Public Viewer) als
  Verkaufsplattform für publizierte SWKI-Richtlinien."
ausgabe: "Kein neuer Ausgabenstand gefunden. prSWKI VA106-01 bleibt Entwurf (Status weiterhin
  «In Bearbeitung»); zusätzlich neu geprüft: SWKI 2004-1 (Publikationsdatum 01.10.2005, aktuell
  gültige Fassung) — deren Inhaltsverzeichnis ist neu als PDF erreichbar, der Volltext bleibt
  kostenpflichtig (SNV-Shop)."
gelesen: "29.07.2026. Vernehmlassungs-PDF selbst (die-planer.ch/wp-content/uploads/2025/01/
  VA106-01-Raumlufttechnische-Anlagen-in-Hallenbaedern_Vernehmlassung.pdf): weiterhin HTTP 404
  (curl mit User-Agent, WebFetch), zusätzlich per Wayback-CDX-API geprüft — KEIN Snapshot
  jemals archiviert, weder für diese exakte URL noch für irgendeine URL mit „VA106“ auf
  die-planer.ch oder swki.ch (vollständige Domain-Suche, nicht nur Einzel-URL-Check wie beim
  ersten Versuch). NEU vollständig gelesen: Inhaltsverzeichnis-PDF von SWKI 2004-1 (2 Seiten,
  zweisprachig DE/FR, per curl+pdftotext). Projektdetailseite prswki-va106-01 per WebFetch
  gelesen (live und als Wayback-Snapshot vom 20.04.2026). public-viewer.snv.ch (SNV-Vorschau)
  NICHT lesbar — JavaScript-gerenderter Viewer ohne im Rohtext enthaltenen Inhalt."
datenstand: "Statusprüfung SWKI-Website 29.07.2026 (einen Tag nach der letzten Prüfung im
  Schwesterdestillat vom 28.07.2026); zusätzlich unabhängig bestätigt durch einen
  Wayback-Snapshot vom 20.04.2026, der denselben Status zeigt."
status: established
last_updated: "2026-08-24 (Audit-Korrektur A-P3 03.16: Status von Nicht-Skala-Freitext auf `established` normiert — nach KB-Konvention gilt ein vierfach gegengeprüfter, reproduzierbarer Negativbefund als established, analog anderer Negativbefund-Destillate der KB; voller Wortlaut des Rechercheergebnisses unveraendert im Artikeltext)"
---

# SWKI VA106-01 — zweiter Zugangsversuch zur Vernehmlassungs-PDF (29.07.2026)

## Das Wichtigste in 1 Satz

Der direkte Zugang zur prSWKI-VA106-01-Vernehmlassungs-PDF bleibt auch im vierten Versuch
verschlossen (jetzt zusätzlich durch eine vollständige Wayback-CDX-Suche bestätigt: es existiert
nirgends je ein archivierter Snapshot), doch die begleitende Suche hat einen bisher blockierten
Nebenzugang geöffnet — das Inhaltsverzeichnis der aktuell gültigen Vorgängerrichtlinie SWKI 2004-1
ist neu als PDF lesbar und bestätigt strukturell, dass auch die gültige Norm keine eigene
Therapiebad-Kategorie führt.

## Kernbegriffe und Zahlen (neu gegenüber dem Schwesterdestillat)

### Die Vernehmlassungs-PDF selbst: vierter Negativbefund, jetzt methodisch abgesichert

- **die-planer.ch existiert als eigenständige Domain praktisch nicht mehr** — der gesamte
  Domain-Root (`die-planer.ch/`) liefert einen 301-Redirect auf `swki.ch/de` (curl bestätigt,
  29.07.2026). Der 2025 dort abgelegte Vernehmlassungs-PDF-Pfad
  (`wp-content/uploads/2025/01/VA106-01-Raumlufttechnische-Anlagen-in-Hallenbaedern_
  Vernehmlassung.pdf`) ist damit strukturell verwaist, nicht nur zufällig verschoben.
- **Wayback-Machine-CDX-API (web.archive.org/cdx/search/cdx) statt nur Einzel-URL-Check:**
  drei Abfragen — (1) exakte PDF-URL, (2) Wildcard `die-planer.ch*VA106*`, (3) Wildcard
  `swki.ch*va106*` — liefern alle **ein leeres Resultat `[]`**. Das ist eine stärkere Aussage
  als der ursprüngliche `wayback/available`-Check im Schwesterdestillat: es wurde nie
  irgendeine VA106-Ressource auf einer der beiden Domains archiviert, nicht nur diese eine URL.
- **Direkter Shop-Slug-Versuch `swki.ch/de/shop/swki-va106-01` → HTTP 404.** Das ist konsistent:
  Solange die Richtlinie nicht publiziert ist, existiert für sie folgerichtig kein Shop-Eintrag
  (Shop führt nur publizierte Richtlinien, siehe unten SWKI 2004-1).
- **Projektdetailseite `swki.ch/de/vernehmlassungen/prswki-va106-01` neu vollständig gelesen**
  (live UND als Wayback-Snapshot vom 20.04.2026, beide inhaltlich identisch): Status weiterhin
  **«In Bearbeitung»**, Kategorie «Lüftungs- & Klimatechnik». Auf der Seite selbst ist **kein**
  PDF-Link eingebettet (rohe HTML-Analyse bestätigt: keine `.pdf`-hrefs vorhanden). Neu
  aufgefallenes, aber uneindeutiges Detail: die Seite trägt ein Feld **«Datum Veröffentlichung:
  08.06.2025»** trotz Status «In Bearbeitung» — vermutlich das Erstellungsdatum des
  Projekt-Eintrags auf der SWKI-Website (Vernehmlassungsstart oder Seitenpublikation), NICHT ein
  Hinweis auf eine tatsächliche Normpublikation. Diese Deutung ist eine eigene Einordnung, keine
  explizite Aussage der Quelle — im Zweifel bei SWKI direkt nachfragen (siehe Offene Punkte).

### Nebenfund: SWKI 2004-1 (aktuell gültige Richtlinie) — Inhaltsverzeichnis jetzt lesbar

- **Alte Shop-Struktur (`shop.swki.ch`) bestätigt endgültig unbrauchbar:** Der im
  Schwesterdestillat vermutete SSL-Zertifikatsfehler ist nicht die einzige Ursache — selbst mit
  deaktivierter Zertifikatsprüfung (`curl -k`) liefert `shop.swki.ch` einen **HTTP 500**
  (Server-Fehler). Die Domain scheint technisch abgekündigt, nicht nur zertifikatsseitig defekt.
- **Neue, funktionierende Shop-Struktur unter `swki.ch/de/shop/swki-2004-1--sicc-2004-1`**
  gefunden (die SWKI-Website wurde offenbar überarbeitet, alter Shop-Unterdomain-Pfad ersetzt).
  Diese Seite listet ein direkt herunterladbares **Inhaltsverzeichnis-PDF**:
  `https://swki.ch/galerie/richtlinie/inhaltsverzeichnis/de_1749824218_inhaltsverzeichnis.pdf`
  (HTTP 200, 1'076 KB, per curl+pdftotext vollständig gelesen, 2 Seiten, zweisprachig
  Deutsch/Französisch).
- **Gliederung von SWKI 2004-1 laut Inhaltsverzeichnis** (12 Hauptkapitel): 1 Geltungsbereich,
  2 Komfort (physiologisch/physikalisch), 3 Klimatechnische Daten (3.1 Aussenkonditionen,
  3.2 Raumkonditionen), 4 Beckenwassertemperaturen, 5 Lüftungsanlagen (mit Unterkapiteln je
  Raumtyp: 5.1 Schwimm-/Badehalle, 5.2 Garderoben, 5.3 Duschen, 5.4 Eingangsbereich, 5.5 Sauna,
  5.6 WC-Räume, 5.7 Bademeister-/Sanitätsraum, 5.8 Verpflegungsbereiche, 5.9 Fitnessbereiche,
  5.10 Technikräume, 5.11 Chemikalienräume, 5.12 Allgemeine Informationen), 6
  Wärmerückgewinnung, 7 Materialwahl, 8 Heizung, 9 Regelung und Steuerung, 10 Inbetriebsetzung/
  Abnahme/Garantie, 11 Instandhaltung, 12 Literaturhinweise.
- **Bestätigt die bereits im Schwesterdestillat vermutete Lücke aus einer zweiten, unabhängigen
  Quelle:** Auch die aktuell GÜLTIGE Richtlinie SWKI 2004-1 kennt in ihrer Gliederung **kein
  eigenes Kapitel für Therapiebad/Rehabad** — die Systematik nach Raumtyp (5.1–5.12) deckt
  Schwimmhalle, Garderoben, Sauna usw. ab, aber keine medizinische Nutzungskategorie. Das
  stützt den bereits im Schwesterdestillat dokumentierten Negativbefund zusätzlich: die Lücke
  ist nicht nur im Entwurf VA106-01 vorhanden, sondern strukturell bereits in der Vorgänger-
  richtlinie angelegt.
- **Der Volltext von SWKI 2004-1 bleibt kostenpflichtig und ungelesen.** Verkaufsseite
  `connect.snv.ch/de/swki-2004-1-2005` (SNV, Schweizerische Normen-Vereinigung) nennt konkrete
  Preise: **CHF 186.00** (Online + PDF), **CHF 160.00** (nur Online-Zugriff), **CHF 177.00**
  (Druckversion, Lieferzeit 5–10 Tage). Ein Vorschau-Link führt zu
  `public-viewer.snv.ch/product/274273/de` — dieser Viewer ist jedoch vollständig
  JavaScript-gerendert; der Seiteninhalt ist per WebFetch/curl nicht extrahierbar (nur der
  leere Seitentitel «Standards Viewer» sichtbar). Für eine echte Vorschau wäre ein
  Browser-Rendering (Screenshot) nötig — nicht Teil dieses Recherchelaufs.
- **Kleine, ungeklärte Namensdiskrepanz notiert:** Die SWKI-2004-1-Shop-Seite nennt als Obmann
  **«Bernd Kannewischer, Cham»**, während der im Schwesterdestillat ausgewertete Vortrag zu
  prSWKI VA106-01 von **«Harald Kannewischer»** (Kannewischer Ingenieurbüro AG) gehalten wurde.
  Es handelt sich vermutlich um zwei Personen desselben Ingenieurbüros (Vater/Sohn oder
  Geschäftspartner), nicht um einen Schreibfehler — dies ist jedoch nicht verifiziert und sollte
  bei einer direkten Anfrage ans Büro (info@kannewischer.ch) mitgeklärt werden.

## Bauherren-Transfer

- **Für die Projektpraxis ändert sich nichts an der bereits im Schwesterdestillat gegebenen
  Empfehlung:** SWKI 2004-1 bleibt die zu zitierende, formal gültige Fachgrundlage; VA106-01 ist
  weiterhin nur ein (nicht zitierfähiger) Entwurf. Neu ist lediglich, dass jetzt ein exakter
  Beschaffungsweg samt Preis für SWKI 2004-1 vorliegt, falls ein Projekt den Volltext wirklich
  braucht: **CHF 186.00 für Online-Zugriff + PDF via connect.snv.ch/de/swki-2004-1-2005** — ein
  überschaubarer Betrag, der sich bei einem Hallenbad- oder Therapiebad-Projekt mit
  lüftungstechnischer Tragweite lohnt, sobald die Fachplanung tatsächlich mit den
  Originalkennwerten (nicht nur der hier destillierten Sekundärquelle) rechnen muss.
- **Die neu gefundene Gliederung von SWKI 2004-1 bestätigt zusätzlich, unabhängig vom
  VA106-01-Entwurf:** Ein Therapiebad im Raumprogramm eines Pflegeheims/Spitals fällt lüftungs-
  technisch in keine der Schweizer Normen unter eine eigene, spezifisch bemessene Kategorie —
  weder in der gültigen SWKI 2004-1 noch im künftigen VA106-01-Entwurf. Der bereits empfohlene
  Analogieschluss über die «ruhigste» Kategorie (Schul-/Sportbad) bleibt damit der einzig
  verfügbare Ansatz, jetzt mit einem zweiten, unabhängigen Beleg (Gliederungsebene der gültigen
  Norm) gestützt.

## Offene Punkte

1. **Die eigentliche Vernehmlassungs-PDF von prSWKI VA106-01 bleibt unerreichbar — jetzt zum
   vierten Mal bestätigt, diesmal per vollständiger Wayback-CDX-Domainsuche statt nur
   Einzel-URL-Check.** Damit ist der Negativbefund methodisch stärker abgesichert als in den
   drei Vorversuchen. Ein fünfter Versuch sollte NICHT dieselben Pfade wiederholen (die-planer.ch
   ist domainweit redirected, kein Wayback-Snapshot existiert), sondern entweder (a) eine direkte
   Anfrage an SWKI/DIE PLANER (info@die-planer.ch, +41 31 852 13 00, oder direkt info@swki.ch) um
   Zusendung des aktuellen Entwurfsstands, oder (b) eine Anfrage an Harald bzw. Bernd
   Kannewischer (Kannewischer Ingenieurbüro AG, Cham, info@kannewischer.ch) versuchen.
2. **Das Feld «Datum Veröffentlichung: 08.06.2025» auf der Projektdetailseite
   swki.ch/de/vernehmlassungen/prswki-va106-01 ist inhaltlich ungeklärt** (Erstellungsdatum des
   Web-Eintrags oder Beginn einer nicht mehr sichtbaren Vernehmlassungsfrist?) — bei der oben
   vorgeschlagenen SWKI-Anfrage mitklären, ob damit ein konkreter Publikationstermin verbunden
   ist.
3. **SWKI 2004-1 im Volltext weiterhin nicht gelesen** — nur das Inhaltsverzeichnis liegt jetzt
   vor. Für eine belastbare Zahlenbasis der AKTUELL GÜLTIGEN Norm (Kapitel 3.2 Raumkonditionen,
   Kapitel 4 Beckenwassertemperaturen — genau die für Therapiebäder relevanten Abschnitte) müsste
   der Volltext für CHF 186.00 über connect.snv.ch/de/swki-2004-1-2005 erworben werden.
4. **public-viewer.snv.ch/product/274273/de (SNV-Vorschau) ist ein JavaScript-Viewer ohne
   extrahierbaren Text** — ein künftiger Versuch mit einem Browser-Rendering-Werkzeug
   (Screenshot statt Text-Fetch) könnte prüfen, ob dort tatsächlich Vorschauseiten mit
   Kennwerten sichtbar sind, bevor ein Kauf nötig wird.
5. **Namensdiskrepanz Bernd/Harald Kannewischer nicht verifiziert** — siehe oben, bei
   Gelegenheit einer direkten Anfrage mitklären, um beide Quellen (Vortrag 2023 vs. Shop-Eintrag
   SWKI 2004-1) korrekt derselben oder unterschiedlichen Personen zuzuordnen.

## Backlinks

[[therapiebad-hallenbad-energie-pflegeheim]]
