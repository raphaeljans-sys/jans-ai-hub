# Beispiel: Submission Gastrokueche KISPI Therapiestation (Projekt 2619)

Vollstaendiger Submissions-Workflow als Referenz fuer kuenftige Submissionen.
Erstellt am 6. Mai 2026 auf Macbook Pro. Eingabefrist Fr 15.05.2026 17:00.

## Workflow-Phasen

### Phase 1 — LV + Anschreiben + Antwortformular
**Skript:** `build.js`

Erzeugt drei DOCX (Anschreiben generisch, LV mit leeren Preisspalten, Antwortformular):
- Output: `30 JANS AI HUB OUTPUT/submission/2619-kispi-gastrokueche/260506-versand/`
- LV-Datenstruktur: 6 Bereiche, 20 Positionen aus Gastro-Online-Erstofferte 26-122-01.3
- Status-Marker: `bestehend` (3x) und `bauseits` (2x) — keine Preise

**Run:**
```bash
cd /tmp/build_kispi && npm install docx  # einmalig
node build.js
soffice --headless --convert-to pdf --outdir <OUT> *.docx
```

### Phase 2 — Versand-Pakete pro Anbieter
**Skript:** `build_phase2.js` + `create_mail_drafts.sh`

`build_phase2.js`:
- Erzeugt 6 personalisierte Anschreiben (mit Empfaenger-Block pro Anbieter)
- Legt Anbieter-Ordner unter `KISPI/02_Korrespondenz/.../Submission/260506-Versand-Gastrokueche/<slug>/`
- Kopiert LV + Antwortformular + 3 Plangrundlagen pro Anbieter
- 6 Anbieter: Pius-Nadler-AG, RAMETALL-AG, Schmocker-AG, Hauser-Gastro-AG, Hugentobler-AG, Resta-AG

`create_mail_drafts.sh`:
- Erstellt 6 Apple Mail Drafts via osascript
- **WICHTIG:** Nutzt `application id "com.apple.mail"` (Bundle-ID), weil auf macOS Tahoe `application "Mail"` auf MailQuickLookExtension zeigt. Siehe Rule `osascript-apple-apps.md`.
- Body aus `mail_body.txt`, Subject ASCII-only

### Phase 3 — Auswertung (noch zu bauen)
Greift auf Skill `offertenpruefung` zurueck, sobald Offerten eingegangen sind (nach 15.05.2026).

## Anonymisierung Plangrundlagen

**Skript:** `anonymize_seite1.py`

Saubere Bauleitung-Variante: Logo + Adressblock von Gastro-Online entfernt, kurzer Bauleitungs-Stempel JANS, Sachbearbeiter-Feld leer (Plan urheber-neutral). Die Massdifferenzen-Sentence wurde umformuliert mit Bauleitungs-Bezug.

Output ist eine 1-Seiten-Cover-Datei. Die Folgeseiten 2-6 (technischer Inhalt) bleiben unmodifiziert beim User.

**Cover-Page neu erstellt:** `build_cover.js` baut eine 2-seitige A4-Querformat-Cover-Page mit Projekt-Stammdaten, Bauleitungs-Stempel, "Nicht Bestandteil" und "Allgemeine Angaben" (in JANS-Formulierung). Diese wird mit den 5 anonymisierten Folgeseiten via macOS Preview manuell gemerged.

## Apple Calendar

Termin "Eingabefrist Submission Gastroküche KISPI Therapiestation" am Fr 15.05.2026 17:00, im Kalender "Arbeit", mit 3-Tage-Erinnerung. Nur lokal auf Macbook Pro — Mac Mini kann ihn ueber iCloud-Sync bekommen.

## Voraussetzungen

| Tool | Pfad / Version |
|---|---|
| Node | /usr/local/bin/node |
| docx (npm) | lokal in /tmp/build_kispi/node_modules — Mac Mini braucht eigene Installation: `cd /tmp && mkdir build_kispi && cd build_kispi && npm init -y && npm install docx` |
| LibreOffice (soffice) | /opt/homebrew/bin/soffice |
| Poppler (pdfinfo) | /opt/homebrew/bin/pdfinfo |
| PyMuPDF (fitz) | venv unter /tmp/build_kispi/venv (nur fuer Anonymisierung): `python3 -m venv venv && venv/bin/pip install pymupdf` |
| Apple Mail | via `osascript -e 'tell application id "com.apple.mail" ...'` |
| Apple Calendar | via `osascript -e 'tell application id "com.apple.iCal" ...'` |

## Aktueller Stand (06.05.2026)

- Phase 1: erledigt
- Phase 2: erledigt
- 6 Mail-Drafts in Apple Mail / Entwuerfe (Macbook Pro lokal — nicht synchronisiert)
- Calendar-Termin gesetzt (Macbook Pro lokal)
- Cover-Page Installationslegende: erstellt, im Output-Ordner
- LV wurde nach erstem Layout-Check (Spalten zu schmal) ueberarbeitet und in alle 6 Anbieter-Ordner kopiert
- Manueller Schritt offen: User merged Cover-Page mit 5-seitiger anonymisierter Version in Preview

## Naechste Schritte fuer Mac Mini (falls dort weitergearbeitet wird)

1. Mail-Drafts und Calendar-Termin sind nur lokal — nicht erneut erstellen, sondern Macbook-Pro-Drafts sichten
2. Falls Anpassungen am LV: build.js anpassen + Phase-2-Versand-Ordner aktualisieren
3. Nach 15.05.2026: Phase 3 starten — eingegangene Offerten via Skill offertenpruefung auswerten
