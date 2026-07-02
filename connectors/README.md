# Connectors (projektuebergreifend)

Hub-weite Connectoren zu externen Plattformen. Geodaten-Connectoren (geo-zh, geo-sz,
geoshop) liegen beim Skill `planungsgrundlagen` — hier liegt, was keinem einzelnen
Skill gehoert.

## zefix.mjs — Zentraler Firmenindex (Handelsregister CH)

Fragt den schweizweiten Handelsregister-Index **Zefix** ueber die offizielle **Zefix
Public REST API** ab (kein Scraping). Zweck: das "externe Signal" des Verifiers
(Spec-Methode) fuer firmenbezogene Fakten — v.a. **Firmenname-Verfuegbarkeit** vor einer
Gruendung (AG/GmbH geniessen schweizweiten Schutz, OR 951 II) und **Firmen-Stammdaten**
(UID, Sitz, Rechtsform, Status). **Read-only** (keine schreibende Anfrage im Code).

**Zugangsdaten** (kostenlos, einmalige Registrierung per Mail an `zefix@bj.admin.ch`;
pro Station, NIE in Git):
```
~/.zefix.env        # chmod 600
ZEFIX_USER=...
ZEFIX_PASS=...
```

**Befehle:**
```bash
node zefix.mjs --test                         # Login/API pruefen
node zefix.mjs --available "JANS AG"          # Namens-Check (FREI / KOLLISION / PRUEFEN)
node zefix.mjs --search "Jans" --canton ZH    # Treffer auflisten
node zefix.mjs --firm CHE-123.456.789         # Stammdaten zu UID/CHID
```
Hinweis: Der Namens-Check ist ein belastbares Indiz, kein amtlicher Entscheid — das
letzte Wort zur "deutlichen Unterscheidbarkeit" hat das Handelsregisteramt/Notar.
Genutzt u.a. von der KB `firmengruendung-ch` und dem Skill `spec` (Verifier-Stufe).

## ebaugesuche-zh.mjs — eBaugesucheZH (Baubewilligungs-Portal Kt. ZH)

Liest den **Verfahrensstand eigener Baugesuche** auf der kantonalen Plattform
`portal.ebaugesuche.zh.ch` und erzeugt daraus einen **Statusbericht**: aktueller
Stand, Verfahrensbalken (Eingereicht › In Pruefung › Baurechtsentscheid › Baufreigabe
› Abgeschlossen), bisheriger Verlauf, Beteiligte, Dokumente und — abgeleitet aus dem
ZH-Prozessmodell — **was bis zur Baufreigabe fehlt**. **Read-only** (nur GET; kein Code,
der etwas einreicht/aendert/loescht).

**Login-Motor:** headless Chromium (Playwright) durch den ZHlogin
(`idp.zh.ch`, Siemens/DXA) → Profil «Login Private und Unternehmen» → ZHservices
(`services.zh.ch`, AngularJS) → **Mobile ID** (Freigabe am Handy, nicht automatisierbar).
Danach wird die Session (`~/.ebaugesuche-zh.session.json`, chmod 600) persistiert und die
JSON-API direkt per `fetch` angesprochen (kein Browser fuer Lese-Abfragen). Das JWT lebt
**~10 Tage**; `--refresh` frischt still ueber die `idp.zh.ch`-SSO auf (ohne Handy),
solange die SSO gueltig ist — sonst meldet er, dass ein `--login` mit Handy noetig ist.

**Zugangsdaten** (pro Station, NIE in Git):
```
~/.ebaugesuche-zh.env        # chmod 600
EBAU_USER=Raphael_Jans
EBAU_PASSWORD=...             # ZHservices-Passwort
EBAU_LOGIN_PROFILE=Login Private und Unternehmen
```
Voraussetzung einmalig: `npm install playwright && npx playwright install chromium`.

**Befehle:**
```bash
node ebaugesuche-zh.mjs --login [--sichtbar]   # Erstlogin (Mobile ID am Handy bestaetigen)
node ebaugesuche-zh.mjs --refresh              # stille SSO-Auffrischung (ohne Handy)
node ebaugesuche-zh.mjs --session              # Session-Zustand/Token-Ablauf pruefen
node ebaugesuche-zh.mjs --liste                # alle eigenen Baugesuche + Stand
node ebaugesuche-zh.mjs --bericht "B26-00705.01"   # Statusbericht (Nr., Stichwort oder UUID)
node ebaugesuche-zh.mjs --raw api/construction/v1  # Debug: beliebiger API-Pfad
```

**Stand 02.07.2026 — komplett validiert** (Login inkl. Mobile ID, Liste, Bericht):
- Endpunkte: `api/construction/v1` (Dossierliste), `api/construction/v1/<publicIdent>`
  (Voll-Dossier inkl. `activities`/`documents`/`accesses`/`state`), `api/activity/v1/<id>`
  (Verlauf), `api/access/v1?publicIdent=<id>` (Beteiligte), `api/user/v1` (Auth-Probe).
- ZH-Verfahrensstaende (`state`): SUBMITTED → PROCESSING → GRANTED (Baurechtsentscheid
  eroeffnet) → **APPROVED (Baufreigabe erteilt)** → DECISION_MADE → CLOSED; SUSPENDED =
  sistiert (Aktenergaenzung/Austauschplaene/Hindernisbrief = «hier hakt es»).
- Auswahl per `dossierIdentification` (z.B. `B26-00705.01`, `2024.227`), Titel-/Ort-
  Stichwort (`Bohlweg`, `Kinderspital`) oder `publicIdent`-UUID.

## truninger-ds3.mjs — Truninger-Plattform (DS3 Data-Share)

Lese-Connector zum Projektraum **ds3.data-share.ch** («Truningerserver», DS3 von
Data-Share; im KISPI-Projekt der historische Projektraum der Erstellung, u.a.
Hauptsammlung > Projektraum > 33 Bewilligungsverfahren).

**Read-only-Garantie:** Der Connector kennt ausser dem Login-POST keine einzige
schreibende Anfrage — Auflisten, Suchen und Herunterladen laufen ausschliesslich
ueber GET. Es existiert kein Code fuer Upload/Umbenennen/Loeschen. An der Struktur
des Projektraums kann er prinzipbedingt nichts aendern.

**Zugangsdaten** (pro Station, NIE in Git):
```
~/.truninger-ds3.env        # chmod 600
TRUNINGER_DS3_USER=...
TRUNINGER_DS3_PASS=...
```

**Befehle:**
```bash
node truninger-ds3.mjs --test                                  # Login + Einstieg pruefen
node truninger-ds3.mjs --ls /                                  # Sammlungen auflisten
node truninger-ds3.mjs --ls Collection-13304935 --tiefe 2      # Ordner (rekursiv)
node truninger-ds3.mjs --suche "Energienachweis" --in Collection-13304935 --tiefe 4
node truninger-ds3.mjs --holen Document-12345 --ziel "/pfad/lokal"
node truninger-ds3.mjs --roh /ds/Collection-13304935/view      # HTML-Debug
```

**Stand 12.06.2026 — komplett validiert** (Login, Listen rekursiv, Download):
- Objekttypen: `RootCollection-`/`Collection-` (Ordner), `File-` (Dokument; Download
  via `/ds/File-<id>/get/head/raw/<name>`), aeltere `Document-` als Fallback.
- KISPI-Projektraum (Konto ksz-hpb-ht, Projekt «Neubau Kinderspital Zuerich» 691):
  Einstieg `RootCollection-4592346` > `Collection-4859935` (Projektraum) >
  `Collection-12020781` (33 Bewilligungsverfahren) > `Collection-18291177`
  (01.10 Technische Eingaben HLK) — dort die Original-Energienachweise der Erstellung
  (EN4-Formulare je Lueftungseinheit, EN5 Kuehlung, Anlagenbeschriebe, Prinzipschemen).
- Leere Ordner melden sich als leer («Keine Objekte vorhanden»); Breadcrumbs werden
  nicht als Eintraege gelistet.

**Spiegelungs-Ziele (wohin heruntergeladene Daten gehoeren):**
Heruntergeladene Unternehmerdokumentationen werden in den entsprechenden
OneDrive/SharePoint-Ordner der KISPI-Bibliothek gespiegelt (synct automatisch).
`--spiegeln` legt die Unterordner direkt im Ziel an und ueberspringt vorhandene
Dateien (wiederaufsetzbar, auch stationsuebergreifend).

| DS3-Quelle | Inhalt | Lokales Ziel (OneDrive) |
|---|---|---|
| `Collection-19903221` | LOS_231.01 Elektro Innenausbau Sued (Jassi / Aamax AG), volle Unternehmerdok. (Unterordner 00..23) | `~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/JANS - 2619-KISPI - Dokumente/2 Plangrundlagen Bestand/70 Unternehmerdokumentation/LOS_231.01 Elektro Innenausbau Sued Jassi - Aamax AG` |

Beispiel:
```bash
node truninger-ds3.mjs --spiegeln Collection-19903221 \
  --ziel "$HOME/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/JANS - 2619-KISPI - Dokumente/2 Plangrundlagen Bestand/70 Unternehmerdokumentation/LOS_231.01 Elektro Innenausbau Sued Jassi - Aamax AG" \
  --tiefe 6
```
Die uebrigen Lose liegen analog unter `70 Unternehmerdokumentation/LOS_<nr>_<gewerk>` —
DS3-Collection-ID je Los via `--ls Collection-17500039` (= «70 Unternehmerdokumentation»).
