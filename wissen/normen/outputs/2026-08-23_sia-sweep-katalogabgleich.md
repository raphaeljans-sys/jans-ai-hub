# SIA-Sweep, vierte Fortsetzung — systematischer Katalog-Abgleich aller 56 Blindzone-Zeilen

- **Datum:** 23.08.2026
- **Auftrag Raphael:** den SIA-Sweep der KB `wissen/normen` fortsetzen — die im Register
  geführten SIA-Zeilen ohne Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis
  beschaffen, Register nachführen, Destillate anlegen. Rule `normen-referenz`
  (Fundstellenpflicht) und `wissens-bibliothekar` beachten. Hinweis: ein `claude`-Prozess
  mit demselben Lauf-Namen ist der eigene, kein Konkurrent.
- **Vorlauf gelesen:** CHANGELOG (vier SIA-Sweep-Einträge desselben Tages) und der Report
  `outputs/2026-08-23_sia-sweep-fortsetzung3.md`.

## Befund vor der eigenen Arbeit

Die Blindzone (Abschnitt A) war laut den drei Vorläufen bereits vollständig geschlossen (alle
259 Zeilen mit gefüllter Bestand-Abgleich-Spalte). Von den 187 aktiven Zeilen tragen 131 echten
Volltext im Haus, 56 stützen sich nur auf die Shop-Produktseite (keine Volltext-Beschaffung
möglich, kein Kauf getätigt). Die drei offenen N-SIASWEEP-Fragen (SIA 422, SIA 2025/2021,
GEO405-Konsolidierung) waren bereits über drei Anläufe hinweg ausführlich, aber ohne
abschliessenden Erfolg bearbeitet — ein vierter Anlauf über denselben Web-Suchweg schien wenig
aussichtsreich.

**Wichtige Einschränkung dieser Station:** Die SharePoint-Bibliothek `PL - 02_Recht_Norm/02_Normen/`
(die eigentliche SIA-Norm-Originalablage) ist auf dieser Station **nicht** unter
`~/Library/CloudStorage/` gemountet/synchronisiert — geprüft über `find`/`mdfind` auf allen
OneDrive-, SharePoint- und Google-Drive-Mounts. Damit war in dieser Session **keine** Lektüre
neuer Original-PDFs möglich, nur Web-Recherche und die Arbeit an bereits im NAS-Repo
vorhandenen Destillaten/Registerinhalten. Dieser Befund ist neu und noch nicht in
`connectors/WEGE.md` vermerkt (siehe „Nicht geleistet" unten).

Der von Fortsetzung 3 vorgeschlagene nächste Schritt liess sich davon unabhängig ausführen: die
zwei amtlichen SIA-Publikationsverzeichnisse sind Web-Funde, kein SharePoint-Zugriff nötig.

## Systematischer Katalog-Abgleich (neue Arbeit dieses Laufs)

Beide amtlichen PDF-Kataloge erneut heruntergeladen (`curl`) und mit `pdftotext -layout`
(`/opt/homebrew/bin/pdftotext`, nicht im PATH dieser Station) extrahiert:

- `https://cms.sia.ch/sites/default/files/2024-04/SIA-Publikationen.pdf` (Stand 27.10.2023)
- `https://cms.sia.ch/sites/default/files/2024-05/Inhaltsverzeichnis_Normenwerk.pdf` (Stand 03.01.2024)

Alle **56** SIA-Nummern der «Kein Volltext im Haus»-Zeilen aus Abschnitt A wurden gezielt gegen
beide Kataloge geprüft (`grep -E` auf «Nummer + Jahr», da beide Kataloge im Format
«SIA Nr. · Jahr · Titel» gelistet sind). Für jede Nummer wurde geprüft: ist sie an beiden
Stichtagen gelistet, und mit welchem Ausgabejahr — passt das zum bereits über shop.sia.ch
belegten Stand?

### Ergebnis

**55 von 56 Zeilen bestätigt, keine Änderung nötig.** Das gelistete Ausgabejahr an beiden
Stichtagen deckt sich in jedem Fall mit dem bereits recherchierten Archivierungs-/
Gültigkeitsstand:

- Norm noch **aktiv** laut Register → in beiden Katalogen mit dem erwarteten Ausgabejahr
  gelistet (z.B. SIA 113:2010, SIA 124:2013, SIA 269/1:2011, SIA 2028:2010).
- Norm bereits **archiviert vor** dem 27.10.2023 laut shop.sia.ch → beide Kataloge zeigen
  bereits die NEUE Ausgabe (z.B. SIA 118/329 zeigt 2020 statt 2008, SIA 123 zeigt 2021 statt
  1970er-Kette, SIA 2031 zeigt 2016 statt 2009) — konsistent, keine neue Information, aber
  eine unabhängige Zweitbestätigung des bereits bekannten Standes.
- Norm bereits **archiviert und in einer anderen Nummer aufgegangen** (Umnummerierung) → in
  keinem Katalog mehr unter der alten Nummer auffindbar (SIA 215, 284, 381/3, 2027, 2035,
  2036, 2044) — konsistent mit den bereits im Register dokumentierten Umnummerierungs-Ketten
  (215→242.002, 284→274, 381/3→2028/C1, 2027→103, 2035/2036→4013, 2044→380/2).
- SIA 422 weiterhin in beiden Katalogen gelistet (bekannt aus Fortsetzung 3, keine neue
  Information, reine Konsistenzprobe).

**Eine echte Korrektur: SIA 2001.** Die Nummer fehlt in beiden Katalogen vollständig — auch
unter keinem neueren Jahr. Die Ursache lag bereits unverlinkt im eigenen Bestand: Das
Destillat `destillate/sia-279-2018.md` (Status `established`) trägt im Frontmatter
`ersetzt: "SIA 279:2011 und SIA 2001:2015"`. Die 2013-gültige Ausgabe SIA 2001:2011 (in
Abschnitt A geführt) wurde demnach nach 2013 noch mindestens einmal auf 2015 revidiert und ist
dann vollständig in **SIA 279:2018 „Wärmedämmende Baustoffe"** aufgegangen — die Nummer 2001
ist seit 2018 endgültig retiriert, keine offene Beschaffungslücke mehr. SIA 279:2018 liegt
bereits als Volltext-Destillat im Haus.

Diese Verknüpfung war zuvor nicht sichtbar, weil Abschnitt A (SIA 2001, «Kein Volltext im
Haus») und die Merkblatt-Tabelle Run 16 (`sia-mb-2001-2005.md`, eine noch frühere
Merkblatt-Vorstufe 2005) zwei getrennte Stellen im selben REGISTER.md sind, ohne
Querverweis — dieselbe Fehlerklasse, die bei SIA 2016/2027 bereits einmal aufgetreten und
korrigiert war (Vermerk „siehe Merkblatt-Tabelle Run 16 unten").

## Register nachgeführt

`wiki/REGISTER.md`: (1) neuer Absatz im Blindzone-Abschnitt, der den systematischen Abgleich
und sein Ergebnis zusammenfasst; (2) SIA-2001-Zeile in Abschnitt A um die Klärung ergänzt
(reine Ergänzung, alter Text unverändert); (3) neue Zeile in der «FRISCH GEMELDET»-Tabelle am
Kopf der Datei.

## Keine neuen Destillate

Wie in allen vier SIA-Sweep-Läufen dieses Tages: kein neuer Volltext im Haus (SharePoint auf
dieser Station nicht erreichbar, siehe oben), also nichts zu destillieren. Der einzige inhaltliche
Fortschritt ist die Erkenntnis, dass SIA 2001 bereits durch ein vorhandenes Destillat
(SIA 279:2018) abgedeckt ist — kein neues Destillat nötig, nur die Verlinkung fehlte.

## Verifikation

Nach jedem Schreibvorgang `git diff` (nicht nur `--numstat`) geprüft: drei Edits an
`wiki/REGISTER.md`, alle rein additiv (1/1, dann 17/1, dann 18/1 kumulativ — die vereinzelten
„Deletions" sind Diff-Artefakte durch das Verschieben der unveränderten Ankerzeile
„**Verbindliche Regel …**", kein Textverlust, per `git diff` ohne `--numstat` am vollen Patch
bestätigt). Keine parallele Session an dieser Datei während der eigenen Edits beobachtet.
Commit über `nas-commit-now.sh` (nativ auf der Synology), nicht per direktem `git` über den
SMB-Mount.

## Nicht geleistet / offene Bring-Schulden

- Kein Normtext gekauft oder gelesen; SharePoint-Bibliothek `PL - 02_Recht_Norm` auf dieser
  Station über den Finder-Mount nicht erreichbar. ⚠ **Nachtrag noch während dieses Laufs:**
  eine parallele Session (Mac Mini) hat im selben Zeitfenster denselben Zugangsengpass gelöst
  — `connectors/m365-graph.mjs` (Zertifikats-Auth) findet jede Datei der SharePoint-Site „PL"
  unabhängig vom lokalen Sync-Zustand (`--get "/sites/{id}/drives"` +
  `/drives/{id}/root/search(q='…')`), siehe CHANGELOG-Eintrag „QUESTIONS-Abarbeitung … neuer
  Zugangsweg SharePoint-Originale via M365-Graph-Connector" (23.08.2026, nach dieser Session
  entstanden). Für einen künftigen Lauf ist der lokale Mount damit keine Sackgasse mehr — noch
  nicht in `connectors/WEGE.md` nachgetragen, das bleibt Bring-Schuld.
- Die drei N-SIASWEEP-Fragen (-2 SIA 422 Nachfolger, -3 SIA 2025/2021 Begründung, -4 GEO405
  Ablösungsformel) bleiben unverändert offen — kein vierter Web-Recherche-Anlauf unternommen,
  da die letzten drei Anläufe keine neuen Primärquellen fanden.
- Die übrigen 55 der 56 «Kein Volltext im Haus»-Zeilen bleiben ohne Volltext — der Katalog-
  Abgleich bestätigt nur die Metadaten, ersetzt aber keine Beschaffung.
- Naheliegender nächster Schritt für einen künftigen Lauf: prüfen, ob unter den **131** Zeilen
  mit echtem Volltext im Haus ähnliche unverlinkte Cross-Referenzen wie bei SIA 2001 bestehen
  (Norm X in Abschnitt A auf altem Stand, während ein bereits vorhandenes Destillat einer
  anderen Nummer sie längst als Vorgängerin/Nachfolgerin nennt) — dafür bräuchte es einen
  Abgleich aller `ersetzt:`-Frontmatter-Felder gegen die Abschnitt-A-Zeilen, nicht mehr die
  Kataloge.
