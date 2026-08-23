# QUESTIONS-Abarbeitung 23.08.2026 — drei offene Fragen geschlossen

- **Auftrag Raphael:** weitere offene Fragen in `wissen/normen/wiki/QUESTIONS.md` abarbeiten;
  Fundstelle je Aussage mit Norm, Ausgabe und Ziffer; Verifikationsstatus des Destillats vor
  Zitat lesen (nur `established` ohne Gegenlesen zitierfähig, Rule `normen-referenz`); zuerst
  CHANGELOG und den letzten Laufbericht lesen und dort weitermachen. Rule `wissens-bibliothekar`
  beachten, jede Aussage belegen, nichts raten, nach jedem Schreiben `git diff --numstat`
  prüfen. Hinweis: ein `claude`-Prozess mit demselben Lauf-Namen ist der eigene, kein Konkurrent.
- **Vorlauf gelesen:** `CHANGELOG.md` (Top-Eintrag: Cross-KB-Nachtrag aus `energie`, 23.08.2026)
  und `outputs/2026-08-23_sia-sweep-fortsetzung3.md` (letzter SIA-Sweep-Lauf desselben Tages,
  drei N-SIASWEEP-Fragen bereits dreifach vertieft — bewusst nicht erneut angefasst, um
  Doppelarbeit zu vermeiden).

## Infrastruktur-Befund: SharePoint-Zugang auf dieser Station

Die in `wissen/normen/CLAUDE.md` als Quelle genannten Pfade (`PL - 02_Recht_Norm/02_Normen/…`,
`PL - 03 Brandschutz/…`) waren über den Finder-Mount `OneDrive-FreigegebeneBibliotheken–JANS`
auf dieser Station (Mac Mini, `hostname` = `Macmini.local`) **nicht erreichbar** — die Bibliothek
erscheint dort nicht (`ls`/`find` liefern nichts bis Tiefe 3), ein per Spotlight gefundener
Duplikat-Pfad unter `~/Library/Group Containers/…noindex/…` hängt uninterruptibel (`ls` → Timeout).
Das deckt sich mit der bereits bekannten Feedback-Memory
`feedback_projektablage_onedrive_pfad` (divergente Zweitwurzeln bei OneDrive-Mounts).

**Ausweg, ohne Sync-Einstellungen anzufassen** (Rule `interaktive-eingriffe.md` Klasse 2 bleibt
unberührt — kein Eingriff, nur Lesen): der bereits vorhandene, zertifikatsauthentifizierte
Connector `connectors/m365-graph.mjs` erreicht dieselben Dateien unabhängig vom lokalen
Sync-Zustand direkt über die Graph-API:

1. `--get "/sites?search=JANS"` → Site **PL** (`raphaeljans.sharepoint.com/sites/PL`) identifiziert.
2. `--get "/sites/{siteId}/drives"` → Drives `02_Recht_Norm` und `03 Brandschutz` (unter anderen)
   mit ihrer Graph-Drive-ID gefunden.
3. `--get "/drives/{driveId}/root/search(q='<Dateiname/Norm-Nummer>')"` → findet die Zieldatei
   ohne die Ordnerhierarchie manuell durchsteigen zu müssen.
4. Der Connector selbst lädt keine Binärdaten herunter (nur JSON-`--get`). Für `/content`-Downloads
   wurde ein Wegwerf-Hilfsscript `/tmp/normen-dl.mjs` erstellt, das dieselbe
   Zertifikats-Auth-Logik dupliziert (nicht ins Repo übernommen, reine Session-Hilfe) und
   `GET /drives/{driveId}/items/{itemId}/content` binär speichert.
5. Für den VKG-Publikationsportal-Weg (`BSPUB-1394520214-<NR>`, aus früheren Läufen bekannt)
   genügt weiterhin `curl -sL -A "Mozilla/5.0" "https://services.vkg.ch/rest/public/georg/bs/
   publikation/documents/BSPUB-1394520214-<NR>.pdf/content"`.

**Empfehlung für künftige Läufe auf dieser Station:** wenn der Finder-Mount für `PL - …`-Pfade
nicht erreichbar ist, diesen Weg nutzen statt die Aufgabe als blockiert zurückzugeben (Rule
`wege-und-vollmachten.md`). Nicht ins `connectors/README.md`/`WEGE.md` eingetragen — das wäre ein
eigener, über diese Aufgabe hinausgehender Schritt und in diesem Lauf nicht geleistet.

## 1. QUESTIONS 260807 — E_vm-Divergenz SIA 2056 Tab. 42 gegen SIA 387/4 Tab. 4 (KB-intern)

**Frage:** Beide Destillate führen eine Grösse namens **E_vm**, mit unterschiedlichem Zahlenwert
für dieselbe Nutzung (Bettenzimmer): SIA 2056 Tab. 42 = 300 lx, SIA 387/4 Tab. 4 = 100 lx (bei
E_0 = 300 über k_0 = 3). Risiko: Faktor-3-Fehler bei unreflektierter Übernahme.

**Vorgehen:** Beide Originale via M365-Graph-Connector beschafft
(`SIA_Norm/SIA_Normen/alle/592056.pdf`, `.../387_4_2017.pdf`). SIA 2056 ist reiner Scan ohne
Textlayer (130 Seiten, `pdftotext` liefert 0 Zeilen) — S. 38 (Kap. 5.1, Tab. 42) als 150-dpi-PNG
gerendert und gelesen. SIA 387/4 hat Textlayer, per `pdftotext -layout` durchsucht.

**Ergebnis:** kein Rechenfehler-Risiko im Sinne einer falschen Zahl, sondern zwei Normen belegen
denselben Formelbuchstaben mit unterschiedlichem Inhalt.

- SIA 2056, Formel (18), Ziff. 5.1.1, S. 38: p_L = E_vm/(η_v,Lo·η_R·MF) — **ohne** k_0-Term.
- SIA 387/4:2017, Formel (2), Ziff. 3.2.1, S. 17: p_L = E_0/(MF·η_v,Lo·η_R), mit E_0 = k_0·E_vm
  (Ziff. 1.1.2.2, S. 7-8: E_0 = Referenzbeleuchtungsstärke = Wartungswert E_vm mal
  nutzungsspezifischem Faktor k_0).

Das SIA-2056-«E_vm» besetzt strukturell also die Zählerposition, die SIA 387/4 «E_0» nennt — nicht
die Position, die SIA 387/4 selbst «E_vm» nennt. Numerischer Beleg am Bettenzimmer: SIA 2056
Tab. 42 E_vm = 300 lx (S. 38, Zeile «Mehrzweckhallen, Lagerhallen, Werkstätten (grobe Arbeiten),
Restaurants, Hotel- und Bettenzimmer») = SIA 387/4 Tab. 4 E_0 = k_0·E_vm = 3 × 100 lx = 300 lx
(Nutzung 8.1 Bettenzimmer, S. 18-19, bereits in einer früheren Runde per Rendering
zellenweise verifiziert). SIA 387/4s eigenes E_vm (100 lx) ist eine kleinere, vorgelagerte Grösse
(Wartungswert der Beleuchtungsstärke nach SN EN 12464-1, Ziff. 1.1.2.2), aus der E_0 erst über den
nutzungsspezifischen Faktor k_0 (hier 3, «trägt Akzent-/Zusatzbeleuchtung Rechnung») abgeleitet
wird.

**Praktische Folge für JANS:** für das vereinfachte Verfahren SIA 2056 (Vorprojekt, Anschluss-
leistung) ist ausschliesslich dessen eigene Tab. 42 zu verwenden (300 lx für Bettenzimmer); die
Zahl 100 lx aus SIA 387/4 Tab. 4 gehört zum detaillierten Verfahren jener Norm (Ausführungsphase,
Energiebedarfsnachweis) und darf nicht in Formel (18) eingesetzt werden.

**Nachtrag:** gegenseitig verlinkte Klärungsboxen in `destillate/sia-592-056.md` (Abschnitt
«Tab. 42-45») und `destillate/sia-387-4-2017.md` (bei «Referenzbeleuchtungsstärke E_0»). Kein
Umbenennen/Zusammenlegen von Artikeln nötig (Rule `wissens-bibliothekar` Ziff. 4 nicht einschlägig
— reine Ergänzung, nichts Destruktives). Der cross-KB-Bezugsgrössen-Vorbehalt vom 07.08.2026
(Koordinations-Register, ausserhalb dieser KB) kann mit Verweis auf `wiki/QUESTIONS.md` 260807
aufgelöst werden — dort nicht selbst editiert, da fremdes Register.

## 2. QUESTIONS 260823 (BRL 17-15 Teil 2) — Begriff «Technikraum Sicherheitsstromversorgung»

**Frage:** BRL 17-15 verlangt seit Fassung 01.01.2017 im Anhang zu Ziff. 3.3.2 einen
Brandabschnitt «Technikraum Sicherheitsstromversorgung», ohne ihn selbst zu definieren — ist der
Begriff im Glossar BRL 10-15 geführt?

**Vorgehen:** BRL 10-15 «Begriffe und Definitionen» via M365-Graph-Connector beschafft
(SharePoint Site PL, Drive `02_Recht_Norm`, `VKF_Norm/02_Brandschutzrichtlinien 2015/
Begriffe & Definitionen.pdf`, Fassung 01.01.2015, Textlayer vorhanden). Vollständig mit
`pdftotext -layout` durchsucht (`grep -i "technikraum"`, `grep -i "sicherheitsstrom"`).

**Ergebnis:** Kein Treffer auf «Technikraum». Das Glossar definiert unter «S» ausschliesslich
**«Sicherheitsstromversorgung»** allein (S. 31: «Die Sicherheitsstromversorgung … muss bei einer
Störung der allgemeinen Stromversorgung jederzeit wirksam sein und die erforderliche
Versorgungsdauer gewährleisten.»), keinen zusammengesetzten Raumbegriff. Zur Absicherung auch die
bereits im Haus destillierte Fassungs-Delta-Kette bis 01.01.2019 geprüft
(`destillate/vkf-brl-10-15-fassung-2019-delta.md`, Quelle VKG-Publikationsportal
BSPUB-1394520214-2768 gegen Hausbestand): sie listet erschöpfend alle elf durch die Beschlüsse
IOTH 22.09.2016 und 20.09.2018 neu gefassten oder neu eingeführten Begriffe (Dachkonstruktionen,
Einliegerwohnung, Galerie, Raum, Ueberhohe Raeume, Verkaufsraeume, Bedachung, Gesamthoehe,
Kindertagesstaetten, Nutzungseinheit, Uebereinstimmungserklaerung) — «Technikraum» ist nicht
darunter.

**Praktische Folge:** der Begriff ist in keiner in der KB dokumentierten Fassung von BRL 10-15
(2015 bis 2019) definiert. Planer können sich für die Anforderungen an diesen Raum nicht auf eine
BRL-10-15-Definition berufen, sondern müssen sie aus dem Zweck (Schutz der
Niederspannungs-Anschlussleitung EW bis zur klassifizierten Raumhülle) selbst herleiten.

**Nachtrag:** `wiki/QUESTIONS.md` (BRL-17-15-Eintrag, Teil 2 geschlossen) und
`destillate/vkf-brl-17-15-fassung-2017-delta.md` (eigener offener Punkt geschlossen).

## 3. QUESTIONS N59-3 — Kap. 2.17 «Gefährliche Stoffe» im Verzeichnis 40-15, nur Textlayer geprüft

**Frage:** Der Delta-Vergleich 2015 → 2025 des Verzeichnisses 40-15 «Weitere Bestimmungen» wurde
für Kap. 2.17 (den am stärksten umgebauten Abschnitt) nur per Textlayer erstellt, nicht am
Rendering gegengelesen (Methodik-Pflicht 8) — die «neu»- und «entfallen»-Positionen sind vor
verbindlicher Verwendung zu bestätigen.

**Vorgehen:** Beide Fassungen unabhängig neu beschafft — 2015er-Hausbestand via
M365-Graph-Connector (SharePoint Site PL, Drive `03 Brandschutz`,
`40-15_Weitere Bestimmungen.pdf`), 2025er-Fassung direkt vom VKG-Publikationsportal
(`BSPUB-1394520214-137.pdf`, derselbe URL-Zugangsweg wie in früheren Läufen dokumentiert) — und
mit einer frischen `pdftotext -layout`-Extraktion **unabhängig von der ursprünglichen
Destillation** geprüft (zweite, unabhängige Extraktion derselben Quelle, nicht dieselbe
Text-Grundlage zweimal gelesen).

**Ergebnis:** Alle in `destillate/vkf-verz-40-15-fassung-2025-delta.md` unter «Was neu
hinzugekommen ist» und «Was entfallen ist» geführten 2.17-Positionen bestätigt:

- **Neu**, per Volltextsuche im frischen 2025er-Extrakt gefunden: SUVA-Merkblätter 66122
  (Gasflaschen – Lager, Rampen, Gasverteilsysteme) und 67068 (Checkliste Gasflaschen), das
  SUVA-Merkblatt «Einsatz von Flammendurchschlagsicherungen bei Tankstellen …», BAFU
  «Störfallvorsorge bei Lager für ammoniumnitrathaltige Dünger», «Lagerung gefährlicher Stoffe,
  Leitfaden für die Praxis» (Umweltfachstellen AG/BE/BL/BS/SO/TG/ZH + GVZ), CARBURA-Richtlinien
  Teil F «Brandschutz und Löschwesen».
- **Entfallen**, per Null-Treffer im vollständigen 2025er-Extrakt bestätigt: Sicherheitsdokument
  1501-00 «Klassierung von Stoffen und Waren», VKF-Brandschutzrichtlinien Nr. 27-03 und 28-03
  (alte Nummerierung), CARBURA-Richtlinien für Tankanlagen (Ausgabe 1974, Änderungen 1992),
  EKAS-Richtlinie Nr. 2387 «Destillationsanlagen für brennbare Flüssigkeiten».

Zusätzlich S. 18 der 2025er-Fassung (Textanfang Kap. 2.17) als 150-dpi-PNG gerendert und gegen den
Textlayer gelesen: deckungsgleich, kein OCR-/Layout-Artefakt.

**Nachtrag:** Prüfstand-Tabelle in `destillate/vkf-verz-40-15-fassung-2025-delta.md` (Zeile
Kap. 2.17 von «nur Textlayer» auf «belegt» gehoben) und `wiki/QUESTIONS.md` (N59-3-Eintrag,
Kap. 2.17 geschlossen). **Weiterhin offen** bleiben Kap. 2.7 bis 2.12, 2.15/2.16, 2.18/2.19 und
3.1 bis 3.5 des Verzeichnisses 40-15 — schwächerer, nicht einzeln nachgezogener Vorbehalt (nicht
Gegenstand dieses Laufs).

## Verifikation

Nach jedem Schreibvorgang `git diff --numstat` und bei den QUESTIONS.md-Edits zusätzlich der
volle `git diff` geprüft: alle entfernten Zeilen sind ausschliesslich die eigenen ersetzten
Textblöcke, keine fremden Ergänzungen (weder aus dem VKF-Fassungssweep noch aus dem SIA-Sweep
desselben Tages) betroffen. Änderungen: `wiki/QUESTIONS.md` +129/-18 (drei Fragen ersetzt/
geschlossen, reine Textersetzung an eigenen Abschnitten), `destillate/sia-592-056.md` +17/-0,
`destillate/sia-387-4-2017.md` +5/-0, `destillate/vkf-brl-17-15-fassung-2017-delta.md` +5/-2,
`destillate/vkf-verz-40-15-fassung-2025-delta.md` +1/-1, `CHANGELOG.md` +65/-0. Commit über
`nas-commit-now.sh` (nativ auf der Synology), nicht per direktem `git` über den SMB-Mount.

## Nicht geleistet / offene Bring-Schulden

- Die drei N-SIASWEEP-Fragen (SIA 422, SIA 2025/2021, GEO405-Familie) wurden **nicht** erneut
  bearbeitet — sie sind am selben Tag bereits dreifach von Vorläufer-Sessionen vertieft worden
  (siehe `outputs/2026-08-23_sia-sweep-fortsetzung3.md`); ein weiterer Durchlauf mit denselben
  frei zugänglichen Quellen hätte keinen Mehrwert versprochen.
- N60-1 (Doppel-Destillat AFC-Synopse 2017) und N60-2 (Vorschlag Methodik-Pflicht 14) sind
  ausdrücklich als «Entscheid/Freigabe Raphael nötig» markiert und wurden bewusst **nicht**
  selbständig entschieden.
- Der neue SharePoint-Zugangsweg (M365-Graph-Connector statt Finder-Mount) ist in diesem Lauf nur
  angewendet, nicht in `connectors/README.md`/`connectors/WEGE.md` dokumentiert — das wäre ein
  eigener, über den Auftrag hinausgehender Schritt.
- N59-2 (Wasserzeichen «in Überarbeitung» im 40-15-Hausbestand), N59-4 (Zwischenausgaben von
  40-15/108-15?), Kap. 2.7-2.12/2.15/2.16/2.18/2.19/3.1-3.5 des Verzeichnisses 40-15 sowie die
  NIN-Frage (260731) bleiben offen — in diesem Lauf nicht bearbeitet.
