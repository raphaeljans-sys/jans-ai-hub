# JANS AI Hub — Logbuch

Append-only Journal der Kontroll-Schicht. Neueste Eintraege zuoberst. Nie von Hand kuerzen;
der Agent `logbuch` schreibt, der Radar ergaenzt taeglich.

---

## 2026-06-15

- **Radar-Lauf:** Register gegen bexio (`--verzug`), Kalender (M365) und Mail-Eingang abgeglichen.
  In Verzug weiterhin nur RE-00088 (Kispi, CHF 15'000, jetzt 26 Tage ueberfaellig, Mahnung 2,
  Zahlungsfrist 19.06.). RE-00096 (Tschopp), RE-00097 (Hofer) je 16.06. und RE-00089 (Kispi) 18.06.
  noch nicht ueberfaellig, bleiben auf «beobachten».
- **Kalender naechste 7 Tage:** keine neuen Termine; die zwei bekannten bestaetigt — 17.06. 10:00
  Sitzung KISPI PPTS (Brandschutz, Teams), 19.06. 14:00 Besichtigung David, Bahnhofstrasse 27.
- **Mail-Erkenntnis 1 (bexio):** Auto-Antwort vom 13.06. — support@bexio.com wird nicht mehr genutzt.
  Die Doppelimport-Anfrage erreichte damit keinen aktiven Support. Register-Eintrag 18.06. von
  «Antwort pruefen» auf «Anfrage neu ueber bexio-Kontaktformular einreichen» (Status offen) geaendert.
- **Mail-Erkenntnis 2 (KISPI):** J. Ziegel (Gruner) liefert heute (bis 12:00) den angepassten
  Brandschutzplan aus dem CAD als Grundlage fuer die Stellungnahme/Aenderungseingabe — fliesst in die
  Sitzung am 17.06. ein; am 17.06.-Eintrag vermerkt.
- **Keine Erledigungen heute.** Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges in 7 Tagen).

---

## 2026-06-14

- **Radar-Lauf:** Register gegen bexio (`--verzug`) und Kalender abgeglichen. In Verzug aktuell
  nur RE-00088 (Kispi, CHF 15'000, 25 Tage ueberfaellig, Mahnung 2, Zahlungsfrist 19.06.). RE-00096
  (Tschopp), RE-00097 (Hofer) und RE-00089 (Kispi) noch nicht ueberfaellig, bleiben auf «beobachten».
- **Kalender naechste 7 Tage:** zwei Termine ergaenzt — 17.06. 10:00 Sitzung KISPI PPTS Koordination
  LBW/Innere Verglasung (Brandschutz, Teams); 19.06. 14:00 Besichtigung David, Bahnhofstrasse 27.
- **Offen/nachfassen:** bexio-Doppelimport (Antwort Support, 18.06.) und EPROID-Anfrage B26-00705.01
  (20.06.). Keine Erledigungen heute (Sonntag).
- Briefing-Mail an rj@ versendet (Faelliges in den naechsten 7 Tagen vorhanden).

---

## 2026-06-13

- **2619 KISPI / EPROID:** Anfrage von Nadia Petti Kunz (BD Kt. ZH, Datenlogistik) zur EPROID
  fuer Baugesuch B26-00705.01 (Lenggstrasse 30, Umbau Buero zu Klinik 1. OG) verarbeitet.
  Kanton nicht zustaendig (Stadt ZH fuehrt eigenes GWR) -> EPROID-Anfrage portalfertig erstellt
  (QS durch korrektur), Einreichung durch RJ via eBaugesucheZH im Verfahren B26-00705.01.
  EPROID fuer Energienachweis (EVEN). Fachstelle bei Nicht-Herausgabe: Statistik Stadt ZH.
- **Neue Hub-Faehigkeit:** GWR-Connector `gwr-bund.mjs` (Planungsgrundlagen) gebaut + validiert —
  amtliche GWR-Gebaeudedaten per EGID/Adresse/EGRID (Volumen/EBF/Energie, Codes dekodiert).
  Belegt: EPROID NICHT login-frei beziehbar (madd/eCH-0206 brauchen Auth) -> kein EPROID-Auto-Bezug.
- **Mahnwesen/Debitoren:** RE-00088 (Kispi, CHF 15'000) war faelschlich als bezahlt gebucht
  (Phantom-Zahlung ohne Bankbeleg). Korrigiert: Zahlung geloescht, Mahnung 2 erzeugt und an
  Marc Tobler + kreditoren@kispi.uzh.ch versendet, an allen drei Orten abgelegt. Frist 19.06.
- **bexio-Hygiene:** UBS-Feed doppelt importiert (rund 105 Phantom-Duplikate). bexio-Support
  angeschrieben, den Doppelimport gesamthaft zu entfernen. Antwort ausstehend (nachfassen 18.06).
- **Neue Hub-Faehigkeiten gebaut:** Connector `bexio.mjs` (Debitoren/Mahnwesen/Bankabgleich),
  Skills `mahnwesen` + `zahlungsabgleich`, Scheduled Tasks `mahnwesen-verzugscheck` (werktags)
  und `zahlungsabgleich-check` (taeglich). Debitoren-Seite jetzt auf verifizierten Daten.
- **Kontroll-Schicht initiiert:** Logbuch + Fristen-Register + Agent `logbuch` angelegt — der Hub
  wird vom ausfuehrenden Werkzeug zur Aufsichts-/Qualitaetsinstanz.
