# Konversations-Destillat 17.07.2026

Abdeckung: MacBook Pro 20 Sessions · Mac Mini 14 Sessions · Cloud/Dispatch 7 Dispatch-Logs (0 remote-tasks) — Fenster 26h (16.07. 04:15 → 17.07. 06:15). Echte Gespräche mit Raphael: 6 (alle Mac Mini bis auf eines).

## Bohlweg 3, Thalwil — Antwort-Entwurf zur Projektänderung liegt versandbereit (Mac Mini, 16.07.2026 18:46)

Projekt 2414 Thalwil / Bauherr S. Tschopp, Parz. 6289. Raphael legte die Eingangsmail «Re: Bohlweg 3, 8800 Thalwil: Plangrundlagen Eingabe Projektänderung» vor und gab seine eigene Lösungsidee mit; Auftrag war ein Antwortvorschlag, der die Wünsche der Bauherrschaft und die rechtlichen Bestimmungen zugleich erfüllt.

- **Kern/Entscheide:**
  - Raphaels Stossrichtung trägt: die zwei Rasengitter-Parkplätze als Grünfläche bringen rund 25 m2 und schliessen die 50-%-Vorgabe im Wegabstandsbereich fast allein (8 + 25 = 33 von 35 m2, Rest über die entsiegelte Aussenküche).
  - Stärkster Hebel ist die Pergola statt Betondach: ohne Dach ist die Aussenküche kein Gebäude mehr, was den 7-%-Nachweis der besonderen Gebäude entlastet und den wunden Punkt entschärft, dass im ursprünglichen Entscheid der Schopf-Verzicht als Argument diente.
  - Höhenreserve Schopf belegt: § 273 PBG (übergangsrechtlich, Thalwil wendet die IVHB erst mit der revBZO an) erlaubt grösste Höhe 4 m, mit geneigtem Dach ab 10° Neigung 5 m.
  - Bewusster Gegenhalt im Entwurf: Tschopp unterschätzt die Hochbaukommission («äussert ja nur ihre Sicht») — deren Beurteilung nach § 238 PBG ist Bewilligungsvoraussetzung. Die U-Mauer wird als «minimal und partiell» zulässiger Mauer-Anteil verkauft, im Tausch gegen Hecken beim Rest.
  - Der Entwurf ist durch `korrektur` gelaufen (Rechtschreibung + Layout grün) und liegt in Apple Mail unter Entwürfe: An fam_tschopp@greenmail.ch, Absender rj@raphaeljans.ch, Aptos 12 pt. **Nichts versendet** — Versand liegt bei Raphael.
- **Offene Punkte / Folgeaktionen:** Entwurf prüfen und abschicken. Alternative Grill-Verschiebung zur Nachbargrenze (Platane) ist im Entwurf mitbehandelt.
- **Radar-relevant: JA** — betrifft die Register-Punkte «Thalwil 2414 / Tschopp» (Näherbaurecht + reduzierte Ausschreibung); neuer offener Deliverable-Status: fertiger Entwurf wartet auf Versand.

## KISPI — Architekten-DWG zum Grundriss 1. OG auf der Truninger-Plattform gefunden (Mac Mini, 16.07.2026 11:16)

Projekt 2619 KISPI. Raphael legte den PDF-Ausführungsplan S-ARC_1341_GR-01_41_GRUNDR-OG1-41.pdf (Sektor 41, 1:50) vor und fragte nach dem zugehörigen Architekten-DWG.

- **Kern/Entscheide:** Herzog & de Meuron publiziert das CAD nicht sektorweise, sondern je Geschoss als eine Datei mit Sektor-Kürzel XX; Sektor 41 ist darin vollständig enthalten. Gefunden und geladen: `S-ARC_1015_GR-01_XX_GRUNDR-OG1.dwg` (29 MB, AutoCAD 2010/2011/2012), doppelt abgelegt (externe KISPI-Site als Plattform-Spiegel + interne Projekt-Site) plus Arbeitskopie auf dem Desktop. Nebenbei wurde eine Korrektur am Truninger-DS3-Connector gesichert (Raw-Link-Ermittlung über die Eigenschaften-Seite).
- **Offene Punkte / Folgeaktionen:** keine aus dem Gespräch selbst.
- **Radar-relevant: nein**, aber sachlogisch verbunden mit dem offenen Register-Punkt «aktualisiertes DWG ST1/ST2 an J. Ziegel» (RJ zeichnet die Türen selbst in den Austauschplan ein — dieses Geschoss-DWG ist die passende CAD-Grundlage dafür).

## ArchiCAD-Flaschenhals und die Frage nach dem neuen Rechner (Mac Mini, 16.07.2026 15:58)

- **Kern/Entscheide:** Beim Zerlegen eines PDF in 2D-Elemente steht der Rechner an **einem einzigen CPU-Kern** an, nicht am Arbeitsspeicher und nicht an der GPU: ArchiCAD lief mit 120–125 % CPU von möglichen 1200 % (M2 Pro, 12 Kerne), von rund 460 Threads rechnete praktisch nur der Hauptthread; RAM 31 von 32 GB belegt, aber ohne Swap. Recherche zur Investitionsfrage: 2D- und 3D-Geometrieoperationen sind in ArchiCAD laut Graphisofts eigener Dokumentation grundsätzlich single-threaded und auch in 27/28 nicht gelöst; Revit hat dasselbe Problem. Konsequenz für eine Hardware-Investition: nicht in viele Kerne investieren, sondern in die höchste Single-Core-Leistung.
- **Offene Punkte / Folgeaktionen:** keine Zusage, kein Entscheid — Wissensfrage. Latent bleibt die Rechner-Investition.
- **Radar-relevant: nein** (keine Frist, keine Pendenz).

## Schnell-Renderings aus DWG / 3DS / FBX (Mac Mini, 16.07.2026 18:56 + 19:05)

- **Kern/Entscheide:** Drei Ad-hoc-Renderings geliefert. `test.dwg` (AutoCAD 2018, 3D-Polyface-Mesh) über Rhino 8 im Arctic-Modus, weil LibreDWG bei reinen 3D-Meshes ein leeres Bild liefert; `test.3ds` und eine endungslose FBX über die Render-Weiche auf dem Mac Mini (C4D headless via c4dpy). Zwei Erkenntnisse für die Pipeline: 3DS nutzt Z als Hochachse (Modell muss aufgerichtet werden), die FBX kam ohne brauchbares Material und renderte zuerst schwarz.
- **Offene Punkte / Folgeaktionen:** Claude hat angeboten, das Render-Skript als festes Tool `render_datei.py` im Skill `volumenstudie` abzulegen — **Antwort Raphaels steht aus**.
- **Radar-relevant: nein** (Verbesserungsvorschlag ohne Frist).

## Massstab eines KISPI-Wandtypenblatts hergeleitet (Mac Mini, 16.07.2026 19:32)

- **Kern/Entscheide:** Zu `G-ARC_5641_W320-00.pdf` (Auflagebereinigung, II.1b SRZ FP Detailpläne) ist kein Massstab angeschrieben. Aus der Masskette 25/75/25 = 125 mm hergeleitet: **1:10** (Segmentabstände je 14.2 pt = 5.0 mm Papier für real 50 mm, Faktor 9.98; zwei unabhängige Teilstrecken bestätigen). Passt zur üblichen Praxis bei Wandtypen-/Systemblättern.
- **Offene Punkte / Folgeaktionen:** keine.
- **Radar-relevant: nein.**

## Super-Brain — Rückfrage zur Mac-Mini-Integration (MacBook Pro, 16.07.2026 09:20)

- **Kern/Entscheide:** Raphael fragte, ob der Mac Mini nach der Einrichtung vom MacBook Pro aus initialisiert werden muss. Antwort: nein — der Task `konversations-log` holt die Mini-Sessions täglich um 06:10 selbst per SSH ab, das Extraktions-Script liegt auf dem NAS, auf dem Mini läuft nichts Eigenes und es kostet dort keine Tokens (reines Bash/jq). Raphael bestätigte («super danke»).
- **Offene Punkte / Folgeaktionen:** Justierung des Destillat-Rasters auf Zuruf, falls Tiefe oder Auswahl nicht passen.
- **Radar-relevant: nein** (Layer ist ab heute produktiv — dieses Destillat ist der erste automatische Lauf).

## Routine-Läufe (keine Gesprächsthemen)

Rund 28 Trainings-, Monitor- und Radar-Läufe auf beiden Stationen (energie 73/74/75, normen SIA/VKF 13/14 + DIN/VSS/RAL Mini 31/32, baurecht 47, immobewertung 36, twin-mail 55, twin-fidelity, spec, wissens-chef 5/6, planungsgrundlagen 50, synobsis-Batch, heartbeat, bexio-Hygiene, AG-Gründungs-Monitor, Logbuch-Radar, Hub-Chef, VOLLGAS-Schoner-Radar). Drossel-Regime (Rule 260714) läuft unverändert, kein Runner-Prozess.

Vier Besonderheiten, die den Radar berühren:

- **Energie-FAQ F87 (Holzfeuerung) enthielt zwei beratungsgefährliche Fehler**, gestern in Run 74 erzeugt und heute in Run 75 korrigiert: «alle 4 Jahre kontrolliert» — im Kanton ZH sind es 2 Jahre (LRV-Regelvorbehalt, ZH-Massnahmenplan-Verordnung verschärft); und «Klimaprämie CHF 360 pro kW» — der Satz ist 18 Rp./kWh, die 360 sind eine Faustregel, und die Klimaprämie ist eine **Alternative** zum kantonalen Programm, keine Ergänzung (Doppelförderung ausgeschlossen). Ursache: Run 74 stützte sich auf Sekundärquellen. **Falls auf dieser Basis bereits jemand beraten wurde, wäre das zu korrigieren.**
- **Normen-Inventar hatte eine echte Lücke:** der Scan vom 11.07. erfasste nur `SIA_Normen/alle` und übersah die Ordner `SIA_Vertraege` und `SIA_Merkblaetter` — darunter SIA 1001-1/2/3:2020 und SIA 1023, also die Grundlagen der Skills `werkvertrag` und `honorarberechnung-sia102`, sowie SIA 380/1:2016 (zentrale Energienachweis-Norm) und SIA 385/1:2011.
- **Zwei Läufe wurden abgeschnitten:** energie Run 74 (Budget erschöpft vor dem Commit, Inhalte lagen aber auf der Platte) und ein Normen-Mini-Lauf um 05:30 (Wochenlimit). Kein Datenverlust — der native NAS-Selfcommit hat die Schreibvorgänge eingefangen.
- **Zwei Loops stillgelegt:** `normen-training-mini` am 17.07. (Inventar DIN/VSS/RAL dreimal als komplett bestätigt; deaktiviert statt gelöscht) und `wettbewerbs-dna-training` (deaktiviert seit 13.07., Prompt und Takt korrigiert, **scharf geschaltet erst Mo 20.07. 12:30 nach dem Wochen-Reset**).
