# SIA-Sweep, fünfundzwanzigste Fortsetzung — SIA-Abo-Weg geprüft und geschlossen

- **Datum:** 23.08.2026
- **Auftrag Raphael:** SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte SIA-Zeilen
  ohne Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register
  nachführen, Destillate anlegen. Rule `normen-referenz`, Fundstellenpflicht.
- **Vorlauf gelesen:** `CHANGELOG.md`-Kopf und
  `outputs/2026-08-23_sia-sweep-vierundzwanzigste-fortsetzung.md`.

## Ausgangslage

Die 24. Fortsetzung hatte die systematische Section-A-Blindzone-Sweep für abgeschlossen erklärt:
alle 59 Register-geführten SIA-Zeilen ohne Volltext im Haus tragen ein Produktdatenblatt
(Ausgabejahr, gültig-ab/gültig-bis, Archiv-/Nachfolgestatus). Die verbleibenden Punkte sind reine
Bring-Schulden (kostenpflichtige Volltext-Beschaffung), nach Praxisrelevanz in eine
Einkaufsliste P1–P4 sortiert.

**Eigene Prüfung vor Beginn:** `training/norm-inventar.md` bestätigt 0 offene `[ ]`-Positionen.
`wiki/QUESTIONS.md` gegen die 47 offenen Checkbox-Punkte durchsucht — drei P1-Bring-Schuld-Einträge
(SIA 380/1:2016, SIA 385/1:2011, SIA 266/1:2015) enthalten jeweils den Hinweis, im Haus liege ein
SIA-Normen-Abo mit Zugangsdaten (`SIA_Abo/Korrespondenz/`), dessen **Aktualität ungeprüft** sei —
das ist die einzige innerhalb des Auftrags noch nicht ausgeschöpfte Beschaffungsoption (Rule
`wege-und-vollmachten`: erst wenn jeder gelistete Weg nachweislich versagt hat, gilt eine Aufgabe
als blockiert).

## Durchgeführt

1. **SharePoint-Ordner `SIA_Abo/` per M365-Graph-Connector strukturell geprüft** (Site PL, Drive
   `02_Recht_Norm`, Pfad `02_Normen/SIA_Norm/SIA_Abo/`): drei Unterordner (`Korrespondenz`,
   `Lizenzen_und_Vorlagen_2013`, `SIA_Ordner_Physisch_Schrank`), alle zuletzt geändert am
   18.03.2025 — Datum der SharePoint-Migration, kein Hinweis auf aktive Pflege danach.
2. **Datei `Korrespondenz/180208_INorm-Abo_2018_Login.pdf` geladen** (Graph-Connector, Token-Weg
   `node connectors/m365-graph.mjs --token graph` + `curl` auf `/content`, siehe
   `connectors/WEGE.md` Weg 2) und visuell gelesen (Bild-PDF ohne Textlayer, `pdftoppm` +
   Bildbetrachtung statt OCR, da kein deutsches Tesseract-Sprachpaket installiert).
3. **Befund: Das Dokument ist NICHT auf JANS ausgestellt.** Adressat ist «Meili, Peter & Partner
   Architekten AG, Herr Patrick Rinderknecht, Gartenhofstrasse 15, 8004 Zürich», Kundennummer
   236540, Abonnement SIA 909.110 «iNorm SIA Architekt» (Lizenz Standard), Bestellung vom
   08.02.2018, Lizenzvertrag ce1bb314, handschriftlich ergänztes Passwort. Eine fremde Firma —
   vermutlich ein bei der SharePoint-Migration fehlabgelegtes Dokument (Herkunft/Grund nicht
   ermittelbar, ausserhalb des heutigen Auftrags).
4. **Konsequenz: Credentials NICHT verwendet.** Kein Login-Versuch gegen ein fremdes,
   möglicherweise noch aktives Abonnement; keine Zugangsdaten (auch nicht das Kürzel) in diese KB
   übernommen — nur die Tatsache «Dokument gehört Meili, Peter & Partner» ist als Sperrgrund
   dokumentiert.
5. **Zusätzliche Absicherung — Volltextsuche über den gesamten Drive:** `search(q='380_1')`,
   `search(q='385_1')`, `search(q='266_1')` über `/drives/{id}/root/search(q=...)` (deckt den
   ganzen Drive ab, nicht nur den lokal gemounteten Ordner). Ergebnis: keine bisher unentdeckten
   Volltexte — nur die bereits bekannten Vorschau-PDFs (`i380-1_2016_d.pdf`, 46 KB;
   `i385-1_2011_d.pdf`, 45 KB), Altfassungen (`380_1_d_2001.pdf`, `266_1_d.pdf` = SIA 266/1:2003)
   und Sprachvarianten (`_f`/`_i`/`_e`).

## Ergebnis

Die drei P1-Bring-Schulden (SIA 380/1:2016, SIA 385/1:2011, SIA 266/1:2015) sind damit
**endgültige** Bring-Schulden — jede kostenlose Beschaffungsoption ist ausgeschöpft, offen bleibt
nur ein eigener, aktueller SIA-Normen-Kauf durch Raphael. Damit ist der SIA-Sweep, wie in Auftrag
gegeben (Register-geführte SIA-Zeilen ohne Datei im Haus, Produktdatenblätter beschaffen), **ohne
weitere offene, kostenlos lösbare Punkte**. Zwei vorgeschlagene Erweiterungen bleiben ausserhalb
des heutigen, auf SIA begrenzten Mandats: (1) dieselbe Methode auf Abschnitt D (DIN/VSS/RAL)
ausweiten, (2) die priorisierten P1-Bring-Schulden nach Raphaels Entscheid kaufen.

## Nachgeführt

- `wiki/QUESTIONS.md`: die drei P1-Bring-Schuld-Einträge um den geprüften SIA-Abo-Befund ergänzt
  (additiv, Checkbox-Status unverändert `[ ]`, da die Bring-Schuld selbst nicht geschlossen ist —
  nur der Lösungsweg «Abo» ist jetzt als Sackgasse markiert statt ungeprüft).
- `wiki/REGISTER.md`: ein additiver Absatz im Blindzone-Abschnitt (nach dem Verweis der 24.
  Fortsetzung), der auf diesen Report verweist.
- `CHANGELOG.md`: eigener Eintrag oberhalb des bisherigen Kopfs.

## Verifikation

`git diff --numstat` nach jedem Schreibvorgang geprüft (Rule `auto-verbesserungen` 260811):

| Datei | Befund |
|---|---|
| `wiki/QUESTIONS.md` | additiv (15 Einfügungen/4 Löschungen vor dem Auto-Commit; die 4 Löschungen sind reine Ersetzungen der ursprünglichen Sätze an derselben Stelle, keine fremde Löschung) — zwischenzeitlich vom 15-Minuten-`nas-selfcommit`-Cron bereits committet (Commit `771e4f56`), Inhalt gegen den Commit-Diff verifiziert: identisch mit der eigenen Bearbeitung |
| `wiki/REGISTER.md` | additiv, ein neuer Absatz eingefügt |

Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt. Keine Zugangsdaten Dritter in eine Datei
dieser KB geschrieben oder verwendet (Grenzen User-CLAUDE.md: «Passwoerter, Zertifikate und
Tokens nie in Dateien schreiben, nie committen»).

## Nicht geleistet / weiterhin offen

- Kein Volltext wurde gekauft — bleibt Bring-Schuld Raphael für alle P1–P4-Zeilen der 24.
  Fortsetzung.
- N-SIASWEEP-2 (SIA 422) und N-SIASWEEP-3 (SIA 2025/2021) weiterhin ungeklärt, in diesem Lauf
  nicht erneut versucht (bereits erschöpft laut Fortsetzungen 6–8).
- Abschnitt D (DIN/VSS/RAL) nicht geprüft — ausserhalb des heutigen, auf SIA begrenzten Auftrags.
- **Hinweis ausserhalb des KB-Mandats:** Das fehlabgelegte Fremddokument (Meili, Peter & Partner
  Architekten AG) liegt weiterhin unverändert im SharePoint-Ordner `SIA_Abo/Korrespondenz/` —
  ob es dort bleiben oder entfernt werden soll, ist eine Ablage-/Governance-Frage ausserhalb
  dieser KB und wird Raphael im Chat mitgeteilt, nicht selbständig entschieden oder gelöscht.
