# QUESTIONS — offene Fragen / Wissensluecken Kunde Bopp

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
- **Romanshorn Hafenstrasse 46 (Schlossberg), Projektordner-Fehlversuch aufgelöst** —
  beantwortet 2026-09-15 (Nachtschicht Mac Mini): Der Fehlversuch vom 24.08.2026 («kein
  Projektordner, keine Volltexttreffer auf SharePoint») war eine Aussage über das Werkzeug,
  nicht über die Faktenlage — SharePoint-Volltextsuche allein deckt keine private
  Apple-Mail-Korrespondenz ab. **Direkte Volltextsuche in den lokalen `.emlx`-Dateien**
  (`grep -rl` je Account-Unterordner unter `~/Library/Mail/V10/`, nicht `mdfind`/Spotlight —
  dessen Index über Mail war zum Suchzeitpunkt nicht aufgebaut, `mdutil -s` meldete «unknown
  indexing state», Sanity-Check mit dem sicher vorhandenen Begriff «KISPI» lieferte
  ebenfalls 0 Treffer) fand sechs Treffer auf dem Exchange-Konto `rj@raphaeljans.ch`.
  **Befund:** Ein Mail-Thread «STWEG Schlossberg Romanshorn Hafenstrasse 46; OG4_Koordination»
  vom **22.–24.09.2025**, Betreff Koordination der Steigleitungen zwischen 4. OG (Familie
  Gantner) und 5. OG (Astrid Bischof) im Rahmen einer Sanierung/eines Umbaus durch den TU
  unter Federführung Nova Property (Christoph Bopp). Beteiligte neben Bopp: **Bettina
  Ostertag** (`b.ostertag@gmx.ch`, mutmasslich STWEG-Verwaltung, stellt das
  Zirkularbeschluss-Formular zu), **Carlo Wyrsch** (`carlo.wyrsch@ggbm.ch`), **Michael
  Budliger** (`michael.budliger@gbk-l…`, separate Mail vom 27.10.2025 an
  `christoph.bopp@woma-maur.ch`, cc rj@ — anderes Bopp-Konto als der September-Thread).
  **Zur offenen Frage «kein Projektordner» selbst:** Raphael fragte am 22.09.2025 explizit
  bei Bopp nach, ob eine der Mails «für mich gedacht» sei — Bopps Antwort: **«Bitte löschen,
  danke.»** Das spricht dafür, dass JANS hier **kein eigenständiges Mandat** hatte, sondern
  nur als Cc auf einer internen STWEG-/TU-Koordination stand (in einer der Mails ist Raphael
  aber auch direkt als «Raphael Jans - Architekt ETH» adressiert, nicht nur cc — die genaue
  Rolle bleibt damit nicht vollständig eindeutig). Das erklärt zwanglos, warum kein
  JANS-Projektordner existiert: es gibt wahrscheinlich keinen JANS-Studienauftrag zu diesem
  Objekt. **Für künftige Recherchen dieser Art:** `mdfind`/Spotlight über `~/Library/Mail`
  ist auf dieser Station kein verlässlicher Weg (Index fehlt); der direkte `grep` über die
  `.emlx`-Dateien je Account-Unterordner funktioniert, MUSS aber pro Unterordner einzeln
  laufen — ein rekursiver `grep` über den gesamten `~/Library/Mail/V10/`-Baum in einem
  einzigen Aufruf lieferte still 0 Treffer (auch für sicher vorhandene Begriffe), vermutlich
  wegen eines Berechtigungs-/Abbruchproblems auf einem der Account-Ordner. Nicht als Beleg für
  «nicht vorhanden» werten, ohne die Unterordner-Iteration versucht zu haben. In
  [[profil-christoph-bopp]] nachgetragen. Quelle: `.emlx`-Volltext, Account-Unterordner
  `3BB49493-D2D7-4CD8-BEF1-FA0E788CCE26` (Posteingang/Gesendete/Gelöschte Elemente).
- **Ebmatingen Zürichstrasse 113/115, STWEG-Stand** — beantwortet 2026-08-24: Notariatstermin
  15.12.2025 wie vermerkt; drei Tage später, am **18.12.2025**, erfolgte im Projektordner
  `2412 Ebmatingen/02_KORR BOP/Bopp Christoph/251218 Schlusslieferung/` die Schlusslieferung
  der Teilungspläne für **beide** Liegenschaften (113 und 115: Situation/UG/EG/1.OG/2.OG/DG,
  je mit Übersicht STWEG-Flächen und Wertquotenberechnung als DWG) sowie die zugehörige
  Honorarschlussrechnung (`re-00078.pdf`). Die STWEG-Begründung ist damit nach Aktenlage
  abgeschlossen. Ein Architekturplan im Unterordner `01_Plaene/.../01 MACHBARKEITSSTUDIE/`
  (`EBMATINGEN 01 Zuerichstrasse.pln`) wurde danach nochmals am **20.02.2026** bearbeitet —
  Inhalt nicht geprüft (ArchiCAD-Binärformat, keine Volltextsuche möglich); könnte auf eine
  separate, spätere Folgearbeit hindeuten. Quelle: Dateisystem-Verifikation Projektordner
  `AR - 03 Studien/2412 Ebmatingen` (Zeitstempel, nicht Inhalt der DWG/PDF-Dateien selbst
  gelesen — reine Ablage-/Datumsprüfung). In [[profil-christoph-bopp]] eingearbeitet.
- **Baar Zugerstrasse 49, TDD-Ausgang** — Teilbeantwortung 2026-08-24: Der frühere
  OneDrive-Zugriffsblocker (`EDEADLK`, 24.07.2026) besteht nicht mehr, die Dateien sind lokal
  lesbar. Inhaltlich verfügbar ist die fachliche Zustandsanalyse (`_Zusammenfassung/250626
  Massnahmen Zusammenfassung.pdf`, als TDD-vertraulich gekennzeichnet): kein Hochhaus (Gebäude
  mittlerer Höhe 11-30 m), mittelfristig (10 J) nur lokale Fassaden-Ausbesserungen und kleine
  Anpassungen nötig, langfristig (20-40 J) vollständige Fassadensanierung nach Energie-/Komfort-/
  Brandschutznormen, Steigzonensanierung und ein möglicher Wärmeverbundnetz-Anschluss. **Der
  eigentliche Kaufentscheid von Nova Property ist im JANS-Projektordner nicht dokumentiert:**
  die letzte Aktivität im Ordner ist die Honorarschlussrechnung `2513 HO GP_JANS_Baar.pdf` vom
  08.07.2025, danach keine weitere Datei — was dafürspricht, dass der JANS-Auftrag mit der
  TDD-Lieferung endete, unabhängig vom weiteren Verlauf des Kaufgeschäfts bei Nova selbst.
  **Neu aufgefallene Diskrepanz, ungeklärt:** Die Massnahmenkataloge der Fachplaner (Schmitter
  Brandschutz, 38Grad) im Unterordner `09_Dokumente/10 Jahres Massnahmen/` sind auf
  **«Zugerstrasse 46»** betitelt, während Auftrag, Honorarofferte und die Zusammenfassung
  durchgehend **«Zugerstrasse 49»** nennen — vor einer Verwendung als Referenzfall abklären,
  ob es sich um dieselbe Liegenschaft (Adress-Tippfehler eines Fachplaners) oder zwei
  benachbarte Objekte handelt; nicht geraten. Der Ausgang der Ankaufsentscheidung selbst
  bleibt offen (kein Beleg im JANS-Archiv, in JANS-eigenen Unterlagen grundsätzlich auch nicht
  zu erwarten). In [[profil-christoph-bopp]] eingearbeitet.
  ⚠ **Klärungsversuch 11.09.2026 (Nachtschicht Mac Mini) ergebnislos — technischer Blocker, keine
  neue Erkenntnis.** Die betroffenen Dateien (`250627_Massnahmenkatalog_Zugerstrasse 46.pdf`,
  `.xlsx`, sowie `Zusammenfassung Bauamt Baar.docx`) sind auf **beiden** Spiegel-Pfaden
  (`AR - 03 Studien/2513 BAAR/…` und `IMMO - 01 Projekte/03 TDD PROJEKTE/2513 BAAR/…`) lokal
  nicht lesbar (`head`/`pdftotext`/`textutil` scheitern übereinstimmend, u.a. mit einem
  EDEADLK-artigen Fehler) — anders als aktuell bearbeitete OneDrive-Dateien in anderen
  Projekten (z.B. 2619 KISPI), die anstandslos lesbar sind. Der Befund ist damit isoliert auf
  das seit 26.01.2026 unveränderte Projekt 2513 BAAR beschränkt, kein allgemeiner
  OneDrive-Ausfall — Materialisierung/Eviction ist gemäss Rule `auto-verbesserungen` 260814 ein
  Schritt für Raphael selbst (Finder: Rechtsklick → «Jetzt herunterladen» auf dem
  2513-BAAR-Ordner), danach ist die Adressfrage in einem der nächsten Läufe direkt lösbar.
- **Giebelweg 12, 8135 Langnau a/A** — beantwortet 2026-07-24: Machbarkeitsstudie (Juni 2026)
  loeste den Baumasse-Konflikt (+176 m³) ueber den Hangschnitt-Nachweis massgebendes Terrain
  (volle Attika budgetkonform, Reserve 8 m³). Auf dieser Grundlage hat Christoph am 30.06.2026
  im Namen seiner Mutter (Eigentuemerin, Vollmacht 22.06.) formell Einwendung gegen die
  Baulinien-Festsetzung an die Gemeinde Langnau a/A eingereicht. **Antwort der Gemeinde stand
  per 24.07.2026 noch aus, und war auch bei erneuter Prüfung am 24.08.2026 weiterhin nicht
  eingetroffen** (kein neuer Ordner/keine neue Datei im Korrespondenzordner seit 30.06.2026).
  Details in [[projekt-giebelweg12]], Report `outputs/2026-07-24_giebelweg12-projektstand.md`.
  ⚠ **Korrektur 24.08.2026 (Wissens-Chef Run 42).** Die oben genannte Zahl «volle Attika
  budgetkonform, Reserve 8 m³» ist der am 12.06.2026 **verworfene** Zwischenstand über ein
  **ausgemitteltes** massgebendes Terrain; eine Ausmittelung über den Fussabdruck ist unzulässig,
  weil sie die talseitigen Ecken schönt. Geltend ist der Endstand vom 13.06.2026 (Nachweis
  Version 3): Attika regelkonform **128.9 m²**, **1'162 m³ anrechenbar, Reserve 105 m³** — siehe
  [[projekt-giebelweg12]] Z. 18-24 und die Projekt-Wahrheit `AR - 03 Studien/2621 Giebelweg 12/
  09_Dokumente/CLAUDE/Berichtsskelett UND PROJEKT-STAND/PROJEKT-STAND.md` (Z. 56, 95-96) gemäss
  Rule `projekt-ablage-stand`. Der Eintrag oben bleibt als Historie stehen. Die Nachführung vom
  30.07.2026 (CHANGELOG, Run 21) hatte nur `wiki/projekt-giebelweg12.md` und den Output erfasst,
  diese Datei nicht — die falsche Zahl stand seither in der «beantwortet»-Sektion, also genau
  dort, wo ein späterer Lauf sie als gesicherte Antwort zitiert. Relevanz: die Reserve ist die
  Kernzahl der Machbarkeitsstudie und der Grundlage der Einwendung vom 30.06.2026 an die
  Gemeinde Langnau a/A; 8 m³ statt 105 m³ ist der Unterschied zwischen «am Anschlag» und
  «belastbarer Spielraum».
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
