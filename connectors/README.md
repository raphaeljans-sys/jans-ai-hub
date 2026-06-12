# Connectors (projektuebergreifend)

Hub-weite Connectoren zu externen Plattformen. Geodaten-Connectoren (geo-zh, geo-sz,
geoshop) liegen beim Skill `planungsgrundlagen` — hier liegt, was keinem einzelnen
Skill gehoert.

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

Stand 12.06.2026: Login-Flow am Original verifiziert (Formular `user_name`/`password`
auf `/login_handler`, Session-Cookie `ds3app`). Listen-/Download-Parser sind generisch
gebaut (Linkmuster `/ds/Collection-…`/`/ds/Document-…`) und werden nach dem ersten
echten Login mit Zugangsdaten nachgeschaerft (`--roh` liefert dafuer den HTML-Dump).
