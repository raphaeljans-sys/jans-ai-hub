# Mailbatch 49 — Sent Items rj@, sequentieller Sweep fortgesetzt

**Fenster:** Index 315 bis 295 in "Gesendete Elemente" (Exchange-Konto), **2026-06-02 11:19
bis 2026-06-04 10:17** (neueste=1/älteste=1284, Gesamtbestand von 1282 auf 1284 gewachsen —
2 neue Mails seit Batch 48 trafen ein). Zugriff via Apple Mail osascript (Bundle-ID
`com.apple.mail`, Account "Exchange") — M365-MCP liefert in dieser Session nur
CLI-Kommandosuche (`m365_search_commands`) ohne Mail-Read-Tool, Cowork-Connector
`outlook_email_search` nicht verfügbar.

**Indexverschiebung festgestellt und verifiziert:** der Batch-48-Endpunkt
("Besichtigungstermin Albertstrasse 7", 02.06.2026 11:14) lag laut Register auf Index 314,
war aber durch die 2 neu eingetroffenen Mails auf Index 316 gerutscht — per gezieltem
Betreff-Grep (Index 310-320) bestätigt, bevor der Sweep fortgesetzt wurde. Nächster Lauf muss
denselben Verifikationsschritt wiederholen, nicht blind auf die zuletzt notierte Indexzahl
vertrauen.

21 Mails im Fenster gesichtet (Index 295-315), 12 Volltexte gelesen. 1 reine
Teams-Besprechungseinladung ohne Fliesstext übersprungen (Index 315, "Begehung vor Ort"),
2 Auto-"Angenommen"-Termin-Bestätigungen ohne Fliesstext übersprungen (Index 308/314), 1
Serien-Offertanfrage-Duplikat (Index 312/313, identische Metallbau-Anfrage an zwei Anbieter)
nur einmal im Volltext gelesen. 2 Mails mit leerem Body aber sprechendem Betreff als
Nullform-Beleg genutzt (Index 296 "Bauentscheid KISPI", Index 304 "211 Umbauarbeiten
Generell").

## Hauptfäden

- **KISPI Lenggstrasse 30 (Albin Spahic, Du):** Vergabe LOS_273.35 Küchenbau (Entscheid
  Metallküche→Holzküche, Koordinationskette an Schreiner Röthlisberger + Fachplaner
  HLK/ELE/SAN weitergereicht); Angebot-Sprinkleranpassung mit Preis-Delta-Kurzformel
  KV/ANUN und Abgebotsrunden-Ankündigung; Zahlungserinnerung RE-00088 an Marc Tobler
  (Kreditoren, Sie) mit "gegenstandslos"-Klausel; Bauentscheid-Auflagen Brandschutz
  (SRZ*EW1/SRZ*EW2-Amtscodes) an Jens Ziegel/Gruner weitergeleitet, "Geschätzter Jens" +
  informeller Vor-Termin-Signoff "Wir sehen uns 10:30. Bis gleich."; zwei reine
  Betreff-Status-Mails ohne jeden Fliesstext ("Raumprogramm aktualisiert",
  "Besprechungstheman für Freitag" als Bullet-Nullform).
- **Albertstrasse 7 (Nova Property Fund, Roman Steinmann Investor-Du):** Submissionsrunde
  Sanitär/Elektro/Metallbau-Fertigteile (Sie-Serie), Besichtigungstermin-Bestätigung an
  Mario Di Capua/Karl Waechter AG ("Geschätzter Herr Di Capua" nach "Sehr geehrter Herr"
  in der Ursprungsmail — Sie-Erwärmung im Thread bestätigt), Teams-Begehungstermin mit
  Steinmann.
- **Thalwil 2414 (Bauherr-Partner Stefan Tschopp, Du):** Freigabeantrag Grundriss/Ansichten
  Aufstockung + Umgebungsplan; Rechnung RE-00096 diesmal an das Ehepaar Gertrud+Stefan
  gemeinsam adressiert, "Guten Tag Gertrud und Stefan" statt "Hoi Stefan" (Geld kühlt das
  Register, hier für den Paar-Empfänger).

## Gewichtung

Authentisch, klar vor-Claude-Stil, handgetippte Rahmen. Keine Echo-Falle in den 12 gelesenen
Volltexten.

## Mikro-Metrik

713 Wörter (12 Kernmails via `stilmetrik.py`): Du-Gross-Quote 1.0; Tausender-Apostroph 4;
Ellipsen 0; Satzlänge ø 25.5 W (hoch, getrieben durch die langen Fachmails Vergabe/Auflagen);
Anreden gemischt (Geschätzter Herr 2×, Hoi Stefan/Hoi Albin/Geschätzter Albin/Geschätzter
Jens/Sehr geehrter Herr je 1×); Grüsse "Freundliche Grüsse" 8× dominant, "Lieber Gruss" 1×
(Vergabe-Mail an Albin, Doppel-Signoff Lieber-Gruss+voller-Block).

## Neue Marker (Details im jeweiligen Wiki-Artikel)

- **arbeitsweise:** Betreff-als-Body-Nullform ("Raumprogramm aktualisiert" wortgleich als
  einziger Mailinhalt) — noch unter der bereits belegten Agenda-Nullform; Caps-Titel-Zeile
  im Fliesstext für Vergabe-/Auftragsmails ("VERGABE LOS_273.35 Küchenbau") und als
  Zwischentitel für Themenblöcke in längeren Fachmails ("SUBMISSIONSDOSSIER",
  "GRUNDFRAGESTELLUNG", "KOORDINATION MIT FACHPLANER", "WERKPLANUNG").
- **beziehungsregister:** Paar-Rechnung "Guten Tag Gertrud und Stefan" als eigene
  Mittelstufe für Ehepaar-Bauherrschaft (wärmer als Firmen-Sie, kühler als Einzel-Du) —
  präzisiert den bereits belegten "Geld kühlt Peer-Du"-Reflex für den Paar-Empfänger.
- **stimme:** terse Preis-Delta-Kurzformel "Das Angebot ist zu hoch: / KV: CHF X.- / ANUN:
  CHF Y.-" ohne Einleitung im Fachplaner-Du; ultra-informeller Vor-Termin-Signoff "Wir sehen
  uns 10:30. Bis gleich." trotz formeller Anrede im selben Satzblock; Mikro-Metrik.

## Fortsetzung

Nächster Lauf: ab Index 294 in "Gesendete Elemente" (Exchange, Zählung verschiebt sich mit
neu eintreffenden Mails — vor Fortsetzung Betreff/Datum-Grep gegen den Batch-49-Endpunkt
"Auflagen Bauentscheid: Brandschutz", 04.06.2026 10:17, verifizieren).
