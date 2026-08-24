# SIA-Sweep, 36. Fortsetzung — 24.08.2026

**Auftrag:** SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte SIA-Zeilen ohne
Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register nachführen,
Destillate anlegen. Rule `normen-referenz` (Fundstellenpflicht), Rule `wissens-bibliothekar`
(nichts raten, jede Aussage belegen, CHANGELOG-Pflicht). CHANGELOG-Kopf und Report des letzten
SIA-Sweep-Laufs (35. Fortsetzung) zuerst gelesen.

## Kollisionscheck

`ps aux` vor Arbeitsbeginn geprüft: eigener Prozess (PID 83753, exakt dieser Auftragstext,
`--max-budget-usd 25`) sowie mehrere fremde Claude-Prozesse (Desktop-App, Sync-Loops) ohne
Bezug zu dieser KB. Kein Sibling-Lauf mit demselben oder einem kollidierenden Auftragstext auf
`wissen/normen` gefunden — anders als in der 35. Fortsetzung kein `QUESTIONS.md`-Sibling
sichtbar, trotzdem `wiki/QUESTIONS.md` in diesem Lauf nicht angefasst (Bereichsdisziplin).

## Bestandsaufnahme: der wörtliche SIA-Teilauftrag bleibt gesättigt

Erneut geprüft (Grep `Kein Volltext im Haus` in `wiki/REGISTER.md` Abschnitt A, Grep `^\- \[ \]`
in `training/norm-inventar.md`): **0 offene `[ ]`-Zeilen**, alle 59 „Kein Volltext im
Haus"-Zeilen tragen bereits einen Verifikations- oder Bring-Schuld-Vermerk. Die 35. Fortsetzung
hatte das bereits so festgestellt und den sinnvollen Sweep-Fokus auf den Suva-/EKAS-Bring-
Schuld-Block verlagert (Abschnitt D). Diese Einschätzung wird hier bestätigt und fortgesetzt.

## Durchgeführt: vierteilige Suva-Reihe «Ortsfeste Leitern» (33102/33103/33104/67055.d)

Aus dem nach der 34. Fortsetzung verbliebenen Rest (12 Suva-Titel + 2 EKAS-Richtlinien,
`wiki/REGISTER.md` Abschnitt D) die thematisch geschlossene vierteilige Reihe **«Ortsfeste
Leitern»** bearbeitet — drei Ausführungs-Factsheets nach Einbauort (Schacht/Gebäude/Maschine)
plus eine konsolidierte Betriebs-Checkliste:

- **33102.d** «Ortsfeste Leitern in Schächten (Schachtleitern)», Ausgabe März 2026, Norm
  SN EN 14396. Leiterpflicht ab 100 cm Schachttiefe (BauAV Art. 15), Absturzsicherung ab 5 m
  (Suva-Empfehlung ab 3 m), Ein-/Ausstiegshilfe min. 100 cm (Altbestand vor 2005: 60 cm).
- **33103.d** «Ortsfeste Leitern an Gebäuden», Stand September 2023, Bemessungsanker
  **DIN 18799** (nicht SN EN 14396). Seit **1. Januar 2024** Durchgangssperre am oberen Zugang
  bei Rückenschutz-Leitern zwingend — Stichtags-relevant für laufende Ausschreibungen.
- **33104.d** «Ortsfeste Leitern an maschinellen Anlagen», Stand September 2024,
  Bemessungsanker **ISO 14122-4**. Durchgängig strengere Werte als bei Gebäude/Schacht:
  Absturzsicherung bereits ab 3 m (statt 5 m), Ausstiegssperre ab 0,5 m Absturzhöhe,
  Holmüberstand 1100 mm (statt 1000 mm).
- **67055.d** «Ortsfeste Leitern», Checkliste, Ausgabe Juli 2024. 21-Fragen-Kontrollraster,
  konsolidiert die Masstabellen aller drei Leitertypen in einer gemeinsamen Übersicht;
  Rundsprossen-Verbot bei Neuanlagen seit Oktober 2016 (Maschinen) bzw. Juni 2019 (bauliche
  Anlagen) — Bestandesschutz-relevant bei Sanierungen.

**Kernbefund:** Die drei Faktenblätter verwenden je nach Einbauort drei unterschiedliche
Bemessungsnormen mit unterschiedlichen Sicherheitsschwellen. Ein Konformitätsnachweis, der die
falsche Norm zitiert (z. B. DIN 18799 statt ISO 14122-4 an einer TGA-Dachanlage), ist formal
falsch, auch wenn die Masse selbst plausibel wirken.

### Beschaffungsweg

Alle vier über die Produktseite `www.suva.ch/waswo/<Nr>.d` (HTML) abgerufen und per Python/`re`
den «PDF Deutsch»-Dropdown-Link (`*.sitecorecontenthub.cloud/api/public/content/...`)
extrahiert — die in der 32./33. Fortsetzung etablierte Route. Bei diesen vier Titeln trat weder
die Sprachfalle (44078.d, 31. Fortsetzung) noch die HTML-statt-PDF-Falle (32./33. Fortsetzung)
auf: der direkte Download lieferte sofort ein valides deutsches PDF (per `file`, PDF-Metadaten-
Titel und Volltext-Lektüre verifiziert). Vollständige Lektüre mit `pymupdf` (`fitz`), alle
Seiten (2, 2, 2, 6) textlagenbasiert extrahiert, kein Scan.

### Neue Cross-Referenzen aus den Texten selbst

33102.d verweist auf 44062.d («Sicheres Einsteigen und Arbeiten in Schächten, Gruben und
Kanälen») und 67055.d verweist auf 88816.d («Acht lebenswichtige Regeln für das Arbeiten mit
Anseilschutz») — beide waren bereits im Bring-Schuld-Rest der 34. Fortsetzung geführt, keine
neue Zeile nötig, aber im Destillat-Text unter „Offene Punkte" nachvollziehbar verlinkt.

## Nachgeführt

- **4 neue Destillate** (`destillate/suva-33102-2026-ortsfeste-leitern-schaechte.md`,
  `suva-33103-2023-ortsfeste-leitern-gebaeude.md`,
  `suva-33104-2024-ortsfeste-leitern-maschinelle-anlagen.md`,
  `suva-67055-2024-checkliste-ortsfeste-leitern.md`), alle Status `established` (am Original
  gelesen, keine unabhängige Refuter-Runde).
- `wiki/REGISTER.md` Abschnitt D: 4 neue Tabellenzeilen + neuer ✅-Konsolidierungsvermerk +
  Bring-Schuld-Rest von 12 auf 8 Suva-Titel reduziert (Wortlaut angepasst, EKAS-Zeilen
  unverändert).
- `destillate/INDEX.md`: 4 neue Zeilen nach der bestehenden `suva-33070`-Zeile.
- `training/norm-inventar.md`: 1 neue additive `[x]`-Log-Zeile, Bring-Schuld-Rest fortgeschrieben.
- `CHANGELOG.md`: neuer Kopf-Eintrag oberhalb des vorherigen (chronologisch korrekt eingefügt).

## Offen für den nächsten Lauf

1. **Verbleibender Bring-Schuld-Rest (8 Suva-Titel + 2 EKAS-Richtlinien):** 33071.d (Sicher
   arbeiten auf Bäumen), 33072.d (Arbeiten auf der Leiter an Bäumen), 44062.d (Sicheres
   Einsteigen in Schächten/Gruben/Kanälen — jetzt zusätzlich von 33102.d referenziert),
   44095.d (Solaranlagen-Montage), 44096.d (Anschlageinrichtungen auf Dächern — thematisch
   direkt an 44066.d/44077.d anschliessend, für JANS-Dachprojekte relevant), 88816.d/84044.d
   (Acht lebenswichtige Regeln zum Anseilschutz, zwei Formate — jetzt zusätzlich von 67055.d
   referenziert), 67064/1.d + 67064/2.d (Checkliste Hubarbeitsbühnen, zweiteilig; Web-Titel-
   check 24.08.2026 bereits bestätigt: «Teil 1: Planung des Einsatzes» / «Teil 2: Kontrolle am
   Einsatzort»).
2. Die zwei EKAS-Richtlinien (2134 Forstarbeiten, 6512 Arbeitsmittel) sind noch nicht auf
   Kostenpflicht geprüft — nächster naheliegender Schritt vor einer weiteren Suva-Runde.
3. Bei Erschöpfung des Suva-/EKAS-Blocks: Rückfrage, ob der Sweep-Fokus über diesen Block
   hinaus (z. B. weitere PL-03-Merkblätter) fortgesetzt werden soll, da der wörtliche
   SIA-Teilauftrag bereits seit der 34. Fortsetzung erschöpft ist.

## Verifikation

`git diff --numstat` nach jedem Schreibvorgang geprüft (siehe Shell-Log dieses Laufs):
4 neue Destillate (je 1/0, reine Neuanlage), `wiki/REGISTER.md` additiv (neue Zeilen +
Textänderung im Bring-Schuld-Absatz, keine fremde Zeile berührt), `destillate/INDEX.md` additiv
(4/0), `training/norm-inventar.md` additiv (1/0), `CHANGELOG.md` additiv (neuer Kopf-Eintrag,
0 gelöschte Zeilen). Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt; Commit über den
15-Minuten-`nas-selfcommit`-Cron bzw. `scripts/nas-commit-now.sh`.
