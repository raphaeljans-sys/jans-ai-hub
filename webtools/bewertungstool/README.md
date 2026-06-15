# JANS Liegenschaftsbewertung — Web-Tool

Eigenständiges Web-Formular (Single-Page-App, **keine Server-Software nötig**) als JANS-Pendant
zum Wüest-Hedonic-Tool. Mehrstufiger Eingabe-Assistent → Marktwert-Richtwert → Bericht im
WP-Layout (als PDF speicherbar). Läuft auf jedem Gerät, Eingaben werden lokal im Browser gespeichert.

- **Eine Datei:** `index.html` (HTML + CSS + JS inline, keine Abhängigkeiten).
- **Demo/Test:** `index.html?demo=wangen` füllt den Fall Bahnhofstrasse 27 vor und zeigt den Bericht.
- **Bewertungslogik:** Ertragswert (Renditeobjekt), Vergleichswert (UBS-Marktkennwerte je Gemeinde,
  `MARKT`-Tabelle im Script), Realwert grob; qualitative Faktoren (Standard/Zustand/Mikrolage)
  modifizieren den Wert. Bewusst als **Richtwert** deklariert, nicht als unterschriebenes Gutachten
  (WP's hedonische Transaktions-Regression ist proprietär und nicht 1:1 nachbaubar).

## Auf Hostpoint veröffentlichen

### Variante A — selbst hochladen (am schnellsten, keine Zugangsdaten nötig)
1. Hostpoint Control Panel → **Webhosting** → **Dateimanager** (oder FTP-Programm wie Cyberduck).
2. Im Web-Verzeichnis (meist `www/` oder `httpdocs/`) einen Ordner anlegen, z.B. `bewertung`.
3. `index.html` dort hineinladen.
4. Aufrufbar unter: **https://raphaeljans.ch/bewertung/**

### Variante B — ich lade direkt hoch (via SFTP)
Dafür brauche ich in der lokalen `.env` (wird nicht committet):
```
HOSTPOINT_SFTP_HOST=...        # z.B. ftp.raphaeljans.ch oder der Hostpoint-Servername
HOSTPOINT_SFTP_USER=...
HOSTPOINT_SFTP_PASS=...        # oder SSH-Key
HOSTPOINT_WEBROOT=...          # Zielordner, z.B. /www/bewertung
```

### Variante C — auf raphaeljans.ch (WordPress) einbetten
Tool unter einer URL hosten (A oder B), dann auf einer WordPress-Seite per iframe einbinden:
```html
<iframe src="https://raphaeljans.ch/bewertung/" style="width:100%;height:1400px;border:0"></iframe>
```
(Kann ich über die WordPress-REST-API automatisch als Seite anlegen — Skill `website-content`.)

## Marktdaten pflegen
Die Gemeinde-Kennwerte (EFH/EW-Median, Miete, Bauland, Kapitalisierungssatz) stehen in der
`MARKT`-Tabelle im `<script>` von `index.html`. Neue Gemeinden = eine Zeile ergänzen. Quelle:
KB `wissen/immobilienbewertung/wiki/marktdaten-gemeinden/`.

## Status / nächste Ausbauschritte
- Karten (Makro-/Mikrolage) sind Platzhalter → via `geo-zh.mjs` als Bild einsetzbar.
- Adress-Autocomplete + Karte (Google Maps/Leaflet) optional.
- Passwortschutz / Lead-Erfassung (Mailversand) optional.
- Feinschliff Vergleichswert bei gemischten MFH (Wohn- vs. Gewerbeanteil trennen).
