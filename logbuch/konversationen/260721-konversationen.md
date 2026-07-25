# Konversations-Destillat 21.07.2026

MacBook Pro 1 Session · Mac Mini 16 Sessions · Cloud/Dispatch 0 — Fenster 26h

Zaehlweise: nur Sessions mit echten, von Raphael getippten Eingaben zaehlen als Gespraech.
Automatisierte Loop-/Nachtschicht-Anstoesse, reine Login-Proben und Stop-Hook-Korrekturen
sind nicht mitgezaehlt. Zusaetzlich ~27 Routine-/Trainingslaeufe MacBook Pro und ~13 Nachtschicht-Zyklen
plus Trainingslaeufe (Energie, Planungsgrundlagen, Normen, Wissenscheck) auf dem Mac Mini —
durchweg ohne Besonderheiten ausser den unten aufgefuehrten. Dispatch-Logs 20./21.07. reine
Routine-Checks (stuendlich), keine Auftraege.

---

## 1. Neuer Skill `pdf2dwg` gebaut und produktiv (Mac Mini, 20.07. ca. 21:30–22:00)

Kern & Entscheide: Raphael wollte einen sauberen PDF-zu-DWG-Konverter fuer KISPI-Werkplaene
(Los 274.01 Innere Verglasungen JEGEN sowie BIK Innenwandkonstruktionstypen), der keine tausenden
Einzelstriche aus zerlegten Schraffuren erzeugt. Claude hat den Skill `pdf2dwg` gebaut und dauerhaft
eingerichtet (Script `skills/pdf2dwg/tools/pdf2dwg.py` auf dem NAS, venv `~/.venvs/pdf2dwg`,
DWG via LibreDWG). Beispiel: 240'414 Rohstriche auf ~14'500 saubere Entities reduziert. Ein
ArchiCAD-Importfehler wurde behoben: LibreDWG schrieb korrupte MATERIAL-/MLEADERSTYLE-Objekte,
die das Script jetzt vor der DWG-Erzeugung strippt (Validierungsfehler von 47 auf 1 gesenkt);
DXF liegt immer als Fallback daneben.

Offene Punkte & Folgeaktionen: produktiv nutzbar. Grenzen dokumentiert (Rasterbilder werden
nicht uebernommen, DWG-Writer bleibt experimentell).

Radar-relevant: nein.

## 2. KISPI Bauleitungspendenzen — Uebersichtsliste erstellt (Mac Mini, 20.07. 10:03–12:06)

Kern & Entscheide: Aus dem letzten Logbuch-Radar wurde eine A4-Uebersichtsliste aller offenen
KISPI-Pendenzen erstellt (13 Punkte, gruppiert nach Los/Gewerk), abgelegt unter
`.../02_Korrespondenz/1_Bauherrschaft/TEC Leiter Technischer Dienst Spahic Albin/_Bauleitungspendenzen/260720-Uebersichtsliste-Pendenzen-Bauleitung-KISPI/`
(MD/DOCX/PDF). Auf Wunsch zusaetzlich eine gefilterte Fassung ohne Architektenpendenzen im
JANS-Look (`260720-Bauleitungspendenzen-KISPI-ohne-Architektenpendenzen/`). Selbst gesetzte
Termine aus der gefilterten Liste:
- Los 231.10 Tuerfachplanung: bereinigtes Angebot TeKoSi (Basis 32 statt 42 Tueren) einholen, Frist umgehend (L. Hiltmann / R. Jans).
- Los 274.01 Innere Verglasungen: definitive Offerte Jegen anfordern und KISPI zur Freigabe vorlegen, Frist 24.07.2026 (R. Jans).
- Los 273.35 Therapiekueche: Verhandlungs-/Bestellentscheid Roethlisberger gemaess Pruefbericht 17.07. (empfohlene Reduktion CHF 5'000–8'000), Frist 31.07.2026 (A. Spahic / R. Jans).
- Los 273.35 Therapiekueche: Installationsplaene Roethlisberger nachfassen, Frist 24.07.2026 (R. Jans).

Offene Punkte & Folgeaktionen: weitere Positionen (Schiebetueren, Brandschutz-Auflagenbereinigung,
Lueftung/Energienachweis) im Transkript nicht vollstaendig lesbar — bei Bedarf Originaldatei.

Radar-relevant: ja — betrifft die bestehenden Register-Punkte Jegen 274.01, Roethlisberger 273.35
und TeKoSi 231.10; neu sind die selbst gesetzten Zwischentermine 24.07. und 31.07.

## 3. LBW-Legenden-Fachfrage dreimal unbeantwortet (Mac Mini, 20.07. 09:22)

Kern & Entscheide: Raphael fragte dreimal nach Legende/Konstruktion/Oberflaeche einer
Leichtbauwand (Putz Abrieb vs. direkt gestrichene Gipskartonplatte, KISPI-Trockenbau) — alle drei
Versuche scheiterten mit «Usage credits are required for this model». Keine inhaltliche Antwort.
Setzt die bereits im Register (Eintrag 18.07.) fuer den 20.07. zur Wiedervorlage vermerkte
Fachfrage fort — sie ist weiterhin unbeantwortet.

Offene Punkte & Folgeaktionen: nachholen, sobald das Modell wieder verfuegbar ist.

Radar-relevant: ja — offene fachliche Pendenz ohne Antwort.

## 4. Spec SYN-02 «typologischer KI-Entwurfsprozess» — Interview abgeschlossen (Mac Mini, 20.07. ca. 16:21)

Kern & Entscheide: Auf Zuruf «Spec SYN-02 starten» wurde das vorbereitete Interview (Vorbereitung
15.07.) durchgefuehrt. Alle neun Entscheide E1–E9 bestaetigt; zwei weichen vom Vorschlag ab:
E2 — Wettbewerbs-Fabrik statt Bauherren-Variantenstudie wird das MVP-Ziel; E3 — nur ein
Human-Gate (das Parti bleibt bei Raphael, der Rest inkl. vollem programm-pruefer-Durchlauf laeuft
im MVP automatisch bis zum gerenderten Variantenkatalog). Spec abgelegt unter
`wissen/spec/outputs/2026-07-20_syn-02-typologischer-entwurfsprozess_spec.md`, Synergie-Register
auf «Spec bestaetigt 20.07.2026» aktualisiert.

Offene Punkte & Folgeaktionen: Umsetzung steht aus — `volumen_generator.py` liest bislang nur
CLI-Variantenflags statt Parameter-Sets.

Radar-relevant: nein (strategische Pendenz, kein Termin/Geldbetrag).

## 5. Truninger-Plattform-Recherchen (Mac Mini, 20.07. 16:22–19:49, drei Sessions)

Kern & Entscheide: (a) Ordnerstruktur zweier Detailblaetter (G-ARC_5640_B334-H/B338-H) auf der
Truninger-DS3-Plattform gefunden (Projektraum → 53 Revisionsplaene → 00_Gesamt → HdM-Architekt →
5640_BTK_Boden). (b) Massstab eines Bodendetails rechnerisch als 1:10 verifiziert (150 mm =
14.97 mm auf Papier). (c) Zwei Plaene (S-ARC_6700/6701 «Wandanschluss an Innenfenster») aus dem
Submissionsdossier 271.13/271.11 lokal in die gespiegelte Ablage geladen.

Offene Punkte & Folgeaktionen: keine.

Radar-relevant: nein.

## 6. BKP-Nummer Unterlagsboden KISPI (Mac Mini, 20.07. 12:23)

Kern & Entscheide: BKP 281.0 (Estriche/Unterlagsboeden) bestaetigt, Beleg aus der Unternehmerliste
(`260528 KV KISPI PPTS.xlsx`): Marrer Unterlagsboeden AG (Fueg Kilian), Angebot CHF 28'720.75.

Offene Punkte & Folgeaktionen: Umbenennung des Los-Ordners «LOS_ UB» auf «LOS_281.0 Unterlagsboden
MARRER» vorgeschlagen — Rueckmeldung Raphael offen.

Radar-relevant: nein.

## 7. Rechner-/Netzwerk-Performance (Mac Mini, 20.07. 12:06–12:24)

Kern & Entscheide: «Alles extrem langsam» — Ursache beide Male lokal: der Dienst `fileproviderd`
lief nach Neustart auf Volllast (ca. 14 OneDrive-/SharePoint-Bibliotheken plus Dropbox plus vier
Google-Drive-Konten neu abgeglichen), kein Server-/Netzproblem. Aktiv behoben: Dienst neu gestartet,
Dropbox/Google Drive temporaer beendet, Testdatei-Downloadzeit von 77 s auf 1.6 s.

Offene Punkte & Folgeaktionen: Empfehlung, entbehrliche Google-Drive-Konten abzumelden — offen.

Radar-relevant: nein.

## 8. ArchiCAD oeffnet KISPI-Projektdatei nicht (Mac Mini, 20.07. 10:24)

Kern & Entscheide: kein ArchiCAD-Defekt — die 816-MB-Datei `2619_KINDERSPITAL.pln` lag nur als
OneDrive-Cloud-Platzhalter vor; Download angestossen, Datei geoeffnet. Nebenbefund: beschaedigte
Code-Signatur des ArchiCAD-Bundles (koennte nach macOS-Update von Gatekeeper blockiert werden).

Offene Punkte & Folgeaktionen: Empfehlung «Immer auf diesem Geraet behalten» fuer CAD-Ordner,
ArchiCAD-Neuinstallation bei Gelegenheit.

Radar-relevant: nein.

## 9. Dauerschicht-Loop-Konzept MacBook Pro (MacBook Pro, 21.07. 05:19)

Kern & Entscheide: Raphael will das ungenutzte MacBook Pro fuer ein permanentes Multi-Agenten-Loop-System
nutzen (Buero voranbringen statt Tokens verbrennen); der Mac Mini soll neu 18:00–09:00 als
Nachtschicht arbeiten. Dynamischer `/loop`-Prompt mit fester Prioritaetenliste und harten Grenzen
(nur AKTIONS-WHITELIST.md, nie Mails/Buchungen/Loeschungen/Einkaeufe) entworfen. Bereits im Register
gefuehrt (Eintrag 20.07.).

Radar-relevant: nein.

## 10. Routine-Befunde mit Geldbetraegen (bexio/Mahnwesen, beide Stationen, 20.07.)

Einzeiler aus Routine-Laeufen: KISPI-Rechnung RE-00087 (Universitaets-Kinderspital Zuerich,
Eleonorenstiftung), CHF 15'000.00, seit 16.04.2026 faellig, ~95 Tage ueberfaellig, Mahnung 2
abgelaufen (Frist war 15.07.) — Vorschlag Stufe 4 / Mahnung 3, nicht automatisch versendet
(Phase 2 interaktiv). Bereits im Register gefuehrt. bexio-Hygiene unveraendert
(Phantom-Kandidaten 19 / CHF 81'364.70, Duplikate 107 → 102).

Radar-relevant: ja — bereits als Register-Punkt RE-00087 gefuehrt, hier nur bestaetigt.
