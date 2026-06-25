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
