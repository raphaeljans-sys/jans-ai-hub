# JANS AI Hub — Logbuch

Append-only Journal der Kontroll-Schicht. Neueste Eintraege zuoberst. Nie von Hand kuerzen;
der Agent `logbuch` schreibt, der Radar ergaenzt taeglich.

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
