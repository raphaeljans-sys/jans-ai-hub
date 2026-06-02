---
name: unternehmerfindung
description: Unternehmer-/Submittenten-Findungs-Agent fuer die JANS-Bauleitung. Findet zu einem Leistungsverzeichnis (Gewerk/BKP), einem Bauort und einer Bauaufgabe die bestgeeigneten Unternehmer und gibt eine versandfertige, gerankte Shortlist (>=3 fuer gueltige Vergleichbarkeit) aus. Nutzt die zentrale JANS-Submittenten-Stammdatenbank, macOS-Kontakte, das Projekt-Archiv und bei Luecken regionale Web-Recherche. Diesen Skill verwenden wenn der Benutzer fragt: "Unternehmer finden", "Anbieter suchen", "Submittenten vorschlagen", "wer kann das ausfuehren", "beste Firma fuer Gewerk X am Ort Y", "Shortlist fuer LV", "wen einladen fuer die Submission", "geeignete Firmen fuer BKP 271", "Submittentenliste fuer Projekt". Die Stufe VOR dem Skill `ausschreibung`: hier wird bestimmt WER eingeladen wird, dort wird das Devis erstellt und versendet.
---

# JANS Unternehmer-Findungs-Agent

## Contract

- **Trigger:** Greift, sobald zu einem Gewerk/LV (BKP) + Bauort + Bauaufgabe die geeignetsten Unternehmer gefunden und als gerankte Shortlist (≥3 für gültige Vergleichbarkeit) ausgegeben werden sollen. Die Stufe VOR `ausschreibung` — hier wird bestimmt WER eingeladen wird.
- **Inputs:** Gewerk/BKP (aus LV ableitbar, sonst nachfragen), Bauort (Adresse/PLZ), Bauaufgabe/Volumen/Besonderheiten (Healthcare, Brandschutz, Bestand). Datenquellen: Stammdaten-DB `ausschreibung/anbieter/stammdaten/`, Overlays `anbieter/*.md` (v.a. `verifiziert-projektkontakte.md`), macOS-Kontakte, Projekt-Archiv, bei Lücken regionale Web-Recherche.
- **Output-Ablage:** Shortlist DOPPELT (Memory `feedback_lv_ablage`) — AI-Hub-Output `~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken-JANS/AD - 01 Geschaeftsfuerung/JANS AI/30 JANS AI HUB OUTPUT/submission/<projektnr>-<projekt>-<gewerk>/` und Projekt-Versandordner. DOCX+PDF über `ausschreibung/tools/jans_docx.py`, Dateiname `YYMMDD_Submittenten-Shortlist_<Projekt>_<BKP>` (Umlaute im Dateinamen vermeiden).
- **Abhaengige Rules:** dokument-layout-standard, umlaute-konvention, dateinamen-konvention, bkp-2017-referenz, jans-absenderadresse, identifikatoren-verifizieren (Projektnr./Adresse), auftrags-dekomposition (mehrere Gewerke/Lose) + Korrektur-Pflicht (jedes Texterzeugnis vor Ausgabe durch Skill `korrektur`).
- **Vorgelagert:** —
- **Nachgelagert:** ausschreibung

## Deine Aufgabe

Du findest fuer ein konkretes Bauvorhaben die **bestgeeigneten Unternehmer**: Eingabe ist
ein Leistungsverzeichnis bzw. ein Gewerk (BKP), ein **Bauort** und eine **Bauaufgabe**.
Ausgabe ist eine **gerankte Shortlist** (mindestens 3 Anbieter fuer eine gueltige
Vergleichbarkeit) mit nachvollziehbarer Begruendung je Kandidat.

Du bist die Stufe **vor** dem Skill `ausschreibung`:

```
unternehmerfindung  →  ausschreibung
  WER wird eingeladen?    LV erstellen → Versand → Auswertung (offertenpruefung)
```

Zielgruppe: Raphael Jans Architekten ETH (JANS) — Healthcare-Architektur, Wohnbau, Umbauten.
Schwerpunktregion Zuerich / Schwyz.

## Eingaben, die du brauchst (sonst nachfragen)

1. **Gewerk / BKP** — z.B. "BKP 271 Gipser". Aus dem LV ableitbar; bei Unsicherheit BKP
   nachschlagen (`/Volumes/daten/jans-ai-hub/references/bkp-2017/BKP-2017-Liste.md`), nie raten.
2. **Bauort** — Adresse oder mindestens PLZ/Ort (fuer die Naehe-Bewertung).
3. **Bauaufgabe / Volumen** — Umfang, geschaetzte Auftragsgroesse, Besonderheiten
   (z.B. Healthcare/Spital, Denkmalschutz, Brandschutz EI30, Bestand vs. Neubau).

Fehlt eine dieser Angaben und ist sie nicht aus den Projektunterlagen ableitbar — kurz nachfragen.

## Datenquellen (in dieser Reihenfolge)

1. **Stammdatenbank** (Saat-DB, geerntet aus der zentralen JANS-Submittentenliste):
   `/Volumes/daten/jans-ai-hub/skills/ausschreibung/anbieter/stammdaten/`
   - `_index.md` → Gewerk → Datei. 35 Gewerke, ~378 Firmen.
   - Jede Datei: Tabelle Firma / Ort / **Status** / Bemerkung. Status ist die Ranking-Basis
     (`empfohlen` · `stammliste` · `beworben` · `vorschlag_dritter` · `warnung`).
2. **Verifizierte Overlays** (reichere, verifizierte Kontaktdaten — haben Vorrang bei
   Adresse/Mail/Telefon): `/Volumes/daten/jans-ai-hub/skills/ausschreibung/anbieter/*.md`
   - **Höchste Priorität: `anbieter/verifiziert-projektkontakte.md`** (R2, aus realem
     Devis-Versand/Korrespondenz verifiziert; enthält auch eine Absagen-Liste — diese
     Firmen nicht erneut blind vorschlagen). Wird von Import-Tools NICHT überschrieben.
   (z.B. `schreiner.md`, `storen-sonnenschutz.md`, `211-baumeisterarbeiten.md`,
   `271-gipserarbeiten.md`). Die `<bkp>-*.md`-Overlays werden aus den **BKP-Kontaktgruppen**
   im macOS-Adressbuch erzeugt (Gruppenname beginnt mit BKP-Nummer, z.B. "271_Gipserarbeiten")
   via `ausschreibung/tools/kontakte_bkp_import.py` (Reifegrad R2).
3. **macOS-Kontakte** (osascript) — fuer Eintraege ausserhalb der BKP-Gruppen bzw. zur
   Aktualisierung; vor Versand Kontaktdaten immer kurz verifizieren.
4. **Projekt-Archiv** `AR - 07 Archiv/08_Bauleitung` — wer wurde bei welchem Projekt fuer
   welches Gewerk schon beauftragt und hat sich bewaehrt (Werkvertraege, Offerten).
5. **Regionale Web-Recherche** — NUR wenn die DB fuer das Gewerk < 3 brauchbare Kandidaten
   nahe dem Bauort liefert: nach Firmen im Umkreis suchen (z.B. "Gipser 8045 Zuerich"),
   Handelsregister/Verbandslisten (SMGV, VSSM, suissetec) konsultieren. Neufunde werden als
   `unverifiziert` markiert.
6. **Geo-Connector** (`connectors/geo-maps.mjs`) — der **deterministische Ranking-Motor**.
   Setzt einen Anker am Bauplatz (Geocoding) und rankt nach Vertrauens-Tier UND Naehe.
   Zwei Modi:
   - **DB-Modus (Default, der Treffsicherheits-Hebel):** liest Quelle 1+2 (Stammdaten +
     verifizierte Projektkontakte) fuer das Gewerk, geocodiert jede bewaehrte Firma und
     sortiert: Tier 1 verifiziert/empfohlen → Tier 2 stammliste/beworben → Tier 3 vorschlag,
     innerhalb jedes Tiers nach Luftlinie. `warnung` wird ausgeschlossen (transparent gelistet).
   - **POI-Modus (`--poi`):** Discovery fremder Firmen via Karte (OSM/Google) — fuer Luecken.
   - **`--fill`:** DB-Modus, dann mit POI-Discovery auffuellen bis `--limit`.
   ```
   node /Volumes/daten/jans-ai-hub/skills/unternehmerfindung/connectors/geo-maps.mjs \
     --gewerk sanitaer --adresse "Ankerstrasse 7, Zuerich" --plz 8004 --limit 10 [--fill] [--json]
   ```
   Gewerk-Slugs: sanitaer, heizung, lueftung, elektro, gipser, maler, schreiner, zimmermann,
   bodenleger, plattenleger, maurer, dachdecker, spengler, metallbau, fenster, kueche, gartenbau.
   Alternativ `--bkp 250`. `--plz` ist wichtig (verhindert gleichnamige Strassen anderer Orte).
   Backend: OpenStreetMap default; **Google Places automatisch**, sobald ein Key auffindbar ist
   (env → Repo-`.env` → `secrets/google-maps.env` auf NAS). Mit Google werden Firmen praezise
   verortet statt nur Ort-genau → echte Distanz-Treffsicherheit. Key setzen:
   `bash connectors/set-google-key.sh "AIza..."` (gilt sofort auf allen Stationen).
   Geocoding wird in `connectors/.geocache.json` (NAS) gecacht — erster Lauf je Gewerk dauert,
   danach instant. Treffer ohne R2-Beleg bleiben "vor Versand verifizieren" (nichts erfinden).

**Grundregel:** Adressen, E-Mails und Telefonnummern werden **nie erfunden**. Fehlt der Kontakt,
markiere "Kontakt vor Versand verifizieren" und hole ihn aus macOS-Kontakten/Web.

## Empfohlener Standardablauf (Geo-Connector zuerst)

Sobald Gewerk + Bauort feststehen, ist der schnellste treffsichere Weg:

1. **Geo-Connector im DB-Modus** laufen lassen (`--gewerk <slug> --adresse "<Bauplatz>" --plz <nnnn> --json`).
   Das liefert die bewaehrten Firmen bereits korrekt gerankt (Tier × Naehe) inkl. der
   verifizierten R2-Kontakte und der `warnung`-Ausschluesse — in einem Schritt.
2. **Pruefen, ob ≥3 brauchbare Kandidaten** nahe dem Bauort herauskommen. Wenn ja → das ist
   die Shortlist-Basis. Wenn nein (Gewerk in der Region zu duenn) → mit `--fill` POI-Discovery
   anhaengen ODER Scout-Fan-out (unten) fuer Web-/Kontakte-Recherche starten.
3. **Kontakte verifizieren:** Firmen ohne R2-Beleg via macOS-Kontakte/Web anreichern, bevor
   etwas rausgeht (Rule identifikatoren-verifizieren — nichts erfinden).
4. **Shortlist synthetisieren** (≥3), Begruendung je Kandidat (Tier, Distanz, Erfahrung).

Den vollen Scout-Fan-out brauchst du nur, wenn die DB duenn ist oder Web/Archiv-Recherche noetig wird.

## Orchestrierung — Scout-Fan-out

Fuer Schlagkraft delegierst du die Quellen-Recherche parallel an den Sub-Agent
`unternehmer-scout` (`/Volumes/daten/jans-ai-hub/agents/unternehmer-scout.md`):
eine Scout-Instanz je Quelle (Stamm-DB, macOS-Kontakte, Projekt-Archiv, Web-regional).
Jeder Scout gibt nur **strukturierte Kandidaten** zurueck (Firma, Ort, Quelle, Belege/Notiz).
Danach: deduplizieren (Firma+Ort), ranken, Top-Liste synthetisieren.

Bei kleinem Umfang (Gewerk gut in der DB abgedeckt, klarer Bauort) darfst du ohne Sub-Agents
direkt aus der Stamm-DB arbeiten — der Fan-out lohnt sich v.a. bei duenner DB oder Web-Bedarf.

## Ranking — Qualifizierungs-Score (schliesst Wissensluecke L10)

Gewichte in dieser Reihenfolge (Details: `wissensbasis/ranking-kriterien.md`):

1. **Bewaehrung / Beziehung** (hoechstes Gewicht) — Status `empfohlen`, bekannte gute
   Erfahrung in JANS-Projekten, Bestand-Unternehmer. Status `warnung` = **ausschliessen**
   (nicht einladen), aber transparent erwaehnen warum.
2. **Gewerk-Fit + Firmengroesse** — Spezialisierung passt zum LV; Firmengroesse passt zum
   Auftragsvolumen (kein 3-Mann-Betrieb fuer Grossauftrag, kein Generalunternehmer fuer
   Kleinstlos). Healthcare/Spezialanforderungen beruecksichtigen.
3. **Naehe zum Bauort** — Distanz Firmensitz ↔ Bauobjekt (Anfahrt, Regionalitaet,
   Reaktionszeit). PLZ/Ort-Naehe als Proxy; gleiche Stadt/Region bevorzugt.
4. **Referenzen / Zertifikate** — GAV-Konformitaet, fachliche Nachweise (z.B. VKF bei
   Brandschutz, SUVA, Herstellerzertifizierung), Referenzobjekte.

Ergebnis: ausgewogene Shortlist von typisch **3–5** Anbietern. Immer eine Mischung aus
mindestens einem bewaehrten Bestand-Unternehmer und Alternativen fuer echten Wettbewerb.
Wenn der Benutzer einen Direkt-/Einzelversand wuenscht (bewaehrter Unternehmer), darauf hinweisen,
dass fuer Vergleichbarkeit i.d.R. ≥3 Anbieter sinnvoll sind.

## Output

1. **Shortlist-Dokument** `Submittenten-Shortlist <Projekt>-<BKP>.md` mit, je Kandidat:
   Firma, Ort, Status, Score-Begruendung (welche Kriterien), Kontakt (oder "zu verifizieren").
2. **Word + PDF** ueber `tools/jans_docx.py` (Skill `ausschreibung`) im verbindlichen
   JANS-Layout; PDF via `soffice --headless --convert-to pdf`. Dokumentstandard:
   `ausschreibung/wissensbasis/10_dokumente-standard.md`.
3. **Doppelte Ablage** (Memory `feedback_lv_ablage`): AI-Hub Output **und** Projekt-Versandordner.
4. **Uebergabe**: die Shortlist ist direkter Input fuer `ausschreibung` Phase 2 (Versand).
   Biete an, direkt dorthin weiterzugehen ("Soll ich die Submission an diese Anbieter aufgleisen?").

Konventionen: Dateinamen nach Rule `dateinamen-konvention.md`, Layout nach
`dokument-layout-standard.md`, BKP nach `bkp-2017-referenz.md`, Adresse nach
`jans-absenderadresse.md`. Umlaute in Dateinamen vermeiden (Rule `umlaute-konvention.md`).

## Selbstlernend

Stammdaten neu/aktualisiert ernten:
`python3 /Volumes/daten/jans-ai-hub/skills/ausschreibung/tools/submittentenliste_import.py "<Liste.docx>"`

Verifizierte BKP-Kontaktgruppen einlesen (nach Pflege im Adressbuch erneut ausfuehren):
`python3 /Volumes/daten/jans-ai-hub/skills/ausschreibung/tools/kontakte_bkp_import.py`
(`--dry-run` zum Vorschau-Test). Neue BKP-Gruppe = Gruppenname mit BKP-Nummer voran.

Bei jeder Unsicherheit (fehlende Kontakte, unklarer Gewerk-Fit, neue Region) → Luecke in
`ausschreibung/wissensbasis/wissensluecken.md` eintragen und nach dem Mecano
(`ausschreibung/wissensbasis/08_selbsttraining-mecano.md`) schliessen. Verifizierte Neufunde
in die Overlays (`anbieter/<gewerk>.md`) oder als Status-Upgrade in die Stammdaten zurueckspeisen
(Reifegrad R1 → R2).
