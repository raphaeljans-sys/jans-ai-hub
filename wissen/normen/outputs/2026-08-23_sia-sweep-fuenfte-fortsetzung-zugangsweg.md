# SIA-Sweep, fünfte Fortsetzung — Zugangsweg verifiziert und dokumentiert, Bestandslücke bestätigt

- **Datum:** 23.08.2026
- **Auftrag Raphael:** den SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte
  SIA-Zeilen ohne Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen,
  Register nachführen, Destillate anlegen. Rule `normen-referenz` (Fundstellenpflicht) und
  `wissens-bibliothekar` beachten. Hinweis: ein `claude`-Prozess mit demselben Lauf-Namen ist
  der eigene, kein Konkurrent.
- **Vorlauf gelesen:** CHANGELOG (fünf SIA-Sweep-/QUESTIONS-Einträge desselben Tages) und die
  Reports `outputs/2026-08-23_sia-sweep-katalogabgleich.md` und
  `outputs/2026-08-23_questions-abarbeitung2.md`.

## Ausgangslage

Vier Vorläufer-Läufe hatten am selben Tag die Blindzone (Abschnitt A, 259 Zeilen) vollständig
geschlossen: 131 der 187 aktiven SIA-Zeilen tragen echten Volltext im Haus, 55 (nach Klärung
SIA 2001) stützen sich nur auf die Shop-Produktseite. Drei Fragen (N-SIASWEEP-2/-3/-4: SIA 422,
SIA 2021/2025, GEO405-Familie) blieben trotz drei Web-Recherche-Anläufen offen. Der letzte Lauf
hatte zusätzlich festgestellt, dass die SharePoint-Bibliothek `PL - 02_Recht_Norm` auf seiner
Station nicht lokal gemountet war — ein **paralleler** Lauf (Mac Mini) hatte dafür im selben
Fenster einen Zugangsweg über `connectors/m365-graph.mjs` gefunden, aber nicht in
`connectors/WEGE.md` nachgetragen (offene Bring-Schuld, in beiden Vorläufer-Reports vermerkt).

## Eigene Arbeit dieses Laufs

**1. Zugangsweg verifiziert und dokumentiert.** Auf dieser Station (MacBook Pro) ist die Site
**PL** ebenfalls nicht unter `~/Library/CloudStorage/` sichtbar (geprüft über alle
OneDrive-/GoogleDrive-/Dropbox-Mounts). `connectors/m365-graph.mjs --selbsttest` lief sauber
(Token gültig). Site-ID der Site PL, Drive-ID der Bibliothek `02_Recht_Norm` sowie das
vollständige Listing-Pattern (`--get ".../children"`) und ein Download-Pattern per Token+`curl -L`
(der Connector selbst liefert bei `/content` nur eine 302-Weiterleitung, kein Binärdownload)
wurden ermittelt und **in `connectors/WEGE.md`, Abschnitt „Weg 2: Eigener Graph-Connector"**
nachgetragen, inklusive Beispiel-IDs, damit ein künftiger Lauf nicht neu suchen muss. Downloadtest
mit `416_2003_dfi.pdf` (SIA 416:2003, bereits im Haus) — 377 KB, PDF v1.4, 38 Seiten, vollständig
und unbeschädigt geladen.

**2. Vollständiges Dateilisting statt Katalog-Abgleich.** Mit dem funktionierenden Zugang wurde
`SIA_Norm/SIA_Normen/alle/` (140 Einträge) sowie die sieben norm-eigenen Unterordner (SIA 102,
SIA 112, SIA 118, SIA 282, SIA 380_1_2016, SIA 385_1, SIA 416, Gesamtverzeichnis) vollständig
aufgelistet und gegen alle 55 verbleibenden „Kein Volltext im Haus"-SIA-Nummern der Abschnitt-A-
Tabelle per Dateinamens-Muster geprüft (`SIA 118/262` → Muster `118_262_*`, etc.). **Ergebnis:
0 Treffer — keine der 55 Nummern hat eine Datei im Haus.** Das bestätigt (statt nur den
Katalog-Abgleich von Fortsetzung 4 zu wiederholen) direkt am Bestand: die Beschaffungslücke ist
real und kein Access- oder Scan-Artefakt der drei früheren, mount-losen Läufe.

**3. `ersetzt:`-Frontmatter-Audit (von Fortsetzung 4 vorgeschlagener nächster Schritt).** Alle
79 SIA-Destillate mit einem `ersetzt:`-Frontmatter-Feld gelesen und die genannten Vorgänger-
Normen gegen die Abschnitt-A-Liste geprüft — mit der Frage, ob ein weiterer „SIA 2001"-Fall
existiert (eine als fehlend geführte Nummer, die durch ein bereits vorhandenes Destillat
stillschweigend abgelöst wurde). **Kein weiterer Fall gefunden.** Die referenzierten
Vorgänger-Normen sind durchweg vor-2013er-Altausgaben (SIA 160/161/162/164/190-192/198/226/229/
238 etc.), die im Register bereits als abgelöst geführt werden, oder betreffen Nummern, die gar
nicht in Abschnitt A stehen. SIA 2001 bleibt der einzige Fall dieser Art.

**4. Cross-KB-Bring-Schulden im selben Zugang stichprobenartig geprüft.** Die zwei aus `baurecht`
übergebenen VSS-Bring-Schulden (SN 640 052 Kehrplatz, SN 641 400 ZH-Parkplatzberechnung) im
Ordner `02_Normen/VSS_Norm/` gesucht — beide weiterhin **nicht im Haus**, Bring-Schuld bleibt
unverändert bei Raphael (kostenpflichtiger Bezug).

## Register und QUESTIONS nachgeführt

- `wiki/REGISTER.md`: neue Zeile in der „FRISCH GEMELDET"-Tabelle (Zugangsweg + Negativ-
  Bestätigung), rein additiv.
- `wiki/QUESTIONS.md`: Nachtrag am Ende des N-SIASWEEP-Abschnitts — die drei offenen Fragen sind
  jetzt ausdrücklich als **Beschaffungslücke, nicht Zugangslücke** markiert, damit ein künftiger
  Lauf nicht erneut den SharePoint-Zugang debuggt.
- `connectors/WEGE.md`: neuer Unterabschnitt unter „Weg 2", inkl. Site-/Drive-ID-Tabelle für
  künftige Läufe.

## Keine neuen Destillate

Wie in allen fünf SIA-Sweep-Läufen dieses Tages: kein neuer Volltext im Haus für die
verbleibenden 55 Zeilen. Der Fortschritt dieses Laufs ist Infrastruktur (Zugangsweg dokumentiert)
und eine belastbare Negativ-Bestätigung (Bestandslücke real, keine weiteren versteckten
Ablösungen), keine neue Fachsubstanz.

## Verifikation

Nach jedem Schreibvorgang `git diff --numstat` geprüft: `connectors/WEGE.md` 46/0,
`wiki/QUESTIONS.md` 10/0, `wiki/REGISTER.md` 1/0 — alle rein additiv, keine gelöschten
Fremdzeilen. Testdownload (`416_2003_dfi.pdf`) nach Prüfung gelöscht (`/tmp`), keine Kopie eines
SIA-Originals ins Repo übernommen (Urheberrecht, Rule `normen-referenz` Punkt 5). Commit über
`nas-commit-now.sh` (nativ auf der Synology), kein direktes `git` über den SMB-Mount.

## Nicht geleistet / offene Bring-Schulden

- Kein Normtext gekauft; die drei N-SIASWEEP-Fragen und die zwei VSS-Cross-KB-Bring-Schulden
  bleiben offen — jetzt aber eindeutig als Kauf-, nicht Zugangsfrage eingeordnet.
- Der neue Zugangsweg wurde nur für die Site **PL** aufgelöst und dokumentiert; andere Sites
  (`kispi`, weitere) müssten bei Bedarf denselben Weg neu auflösen (Pattern ist in WEGE.md
  festgehalten, IDs nicht).
- Kein Versuch, den lokalen Finder-Mount für die PL-Bibliothek auf dieser Station zu reparieren
  (wäre Klasse „Cloud-Sync/FileProvider", Rule `interaktive-eingriffe.md` — Systemschalter
  bedient Raphael selbst, hier ohnehin nicht nötig, da der Graph-Weg trägt).
