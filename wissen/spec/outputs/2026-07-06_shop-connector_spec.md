# Shop-Connector (Verfuegbarkeit + Bestell-Uebergabe) — Spec

**Status: PARKIERT (Entscheid Raphael, 11.07.2026)** — keine Umsetzung bis auf Weiteres;
keine offene Pendenz. Reaktivierung jederzeit moeglich: Spec ist vollstaendig, Wiedereinstieg
bei Scope 0 (Entscheide 1–4 bestaetigen).

Erstellt: 2026-07-06 · Methode: Skill `spec` (Karpathy/Marchese) · Faktenbasis: Connector-Muster
`connectors/bexio.mjs` / `geo-zh.mjs`, `logbuch/AKTIONS-WHITELIST.md`, Skills `mahnwesen` /
`zahlungsabgleich` (Zwei-Phasen-Muster)

> Entstanden aus einem realen Anwendungsfall (06.07.2026): Deckenventilator «Create Wind Calm»
> bei Galaxus — Live-Lieferstatus war aus der Remote-Session nicht pruefbar (HTTP 403,
> Bot-Schutz). Die Spec wurde ohne bestaetigtes AskUserQuestion-Interview aufgesetzt
> (Remote-Session, Rueckfrage nicht zustellbar); ALLE Schluesselentscheide sind darum
> als «noch beweglich» markiert und beim naechsten Kontakt zu bestaetigen.

## Ziel (1 Satz)
Ein Hub-Connector, der zu einem Produkt automatisiert Verfuegbarkeit, Preis und Lieferfrist
bei Schweizer Online-Haendlern abfragt und eine Bestellung bis zur Freigabe-Reife vorbereitet —
der verbindliche Kaufabschluss bleibt IMMER bei Raphael.

## Abgrenzung (was NICHT dazugehoert)
- KEIN automatischer Kaufabschluss, keine hinterlegten Zahlungsmittel, keine Ausfuehrung
  von Zahlungen — konsistent mit `AKTIONS-WHITELIST.md` («Geld/Buchungen NIE»).
- Kein Scraping gegen Bot-Schutz/AGB der Shops (kein Headless-Browser-Dauerbetrieb gegen
  galaxus.ch etc.); Direktzugriffe nur ueber offizielle Schnittstellen oder interaktiv
  ueber den Chrome-Connector auf den Stationen.
- Kein allgemeines Preisvergleichs-/Marktbeobachtungs-Tool ueber das Watchlist-Muster hinaus.
- Keine Lieferanten-/Kreditorenbuchhaltung (bleibt bexio, Spec Buchhaltungssystem 02.07.).

## Ist-Zustand (Scan 06.07.2026)
- Anwendungsfall real durchgespielt: Produktempfehlung stand (Create Wind Calm, Galaxus),
  aber der Live-Lieferstatus war nicht verifizierbar — WebFetch auf galaxus.ch → HTTP 403,
  Direkt-curl blockiert. Suchresultate zeigen nur Listung, nicht Lagerstand.
- Der Hub hat ein etabliertes Connector-Muster (`connectors/*.mjs`: bexio, geo-zh, zefix,
  ebaugesuche-zh) mit CLI-Flags, read-only-Default und Zwei-Phasen-Logik (Erkennung
  automatisiert, Aktion nur interaktiv mit Bestaetigung) — der Shop-Connector fuellt die
  Luecke «Beschaffung» in dieser Reihe.
- Fuer verbindliche Bestell-Uebergabe existiert heute KEIN legitimer API-Zugang:
  Digitec Galaxus bietet E-Procurement (OCI/Punchout) nur fuer Business-Konten,
  Brack.ch analog via Business+. Ohne Geschaeftskonto bleibt nur Warenkorb-Vorbereitung
  via Chrome-Connector auf den Stationen.

## Schluesselentscheide (Stand 06.07.2026 — ALLE noch beweglich, zu bestaetigen)
1. **Quellen Phase 1: toppreise.ch als Basis-Quelle** (Aggregator: deckt Galaxus, Digitec,
   Brack u.a. in einer Abfrage, strukturierte Daten, kein Bot-Schutz-Konflikt);
   Direkt-Anbindung Galaxus/Brack erst mit Business-Zugang. ← zu bestaetigen
2. **B2B-Konto: Galaxus Business abklaeren** (Anmeldung, E-Procurement-Bedingungen) als
   eigener Scope; einzige saubere Basis fuer eine API-gestuetzte Bestell-Uebergabe
   (Phase 2). ← zu bestaetigen
3. **Einsatz: Buero (JANS-Beschaffung) UND privat** (z.B. Deckenventilator) — ein Werkzeug,
   Absender-/Konto-Trennung erst bei Phase 2 relevant. ← zu bestaetigen
4. **Lager-Waechter: Ja** — Watchlist + Scheduled Task, Meldung ins hub-chef-Tagesbriefing
   (Loop-Muster wie `mahnwesen-verzugscheck`). ← zu bestaetigen
5. **Harte Regel (nicht beweglich): Kaufabschluss nur durch Raphael.** Der Connector
   bereitet vor (Verfuegbarkeit, Preis, Warenkorb/Bestell-Entwurf); jede verbindliche
   Bestellung braucht seine explizite Einzelfreigabe (`--ja`-Muster wie beim Mahnwesen).

## Bewertungskriterien (vorab)
- Die Frage «Ist Produkt X lieferbar, zu welchem Preis, bei wem?» ist in EINEM
  Connector-Aufruf beantwortet — belegt mit Quelle + Zeitstempel, nie geschaetzt
  (Rule `identifikatoren-verifizieren`).
- Der Ausgangsfall besteht den Test: Lieferstatus des Create Wind Calm wird korrekt
  gemeldet und stimmt mit der manuellen Kontrolle auf galaxus.ch ueberein (Verifier).
- Watchlist-Eintrag «melden wenn lieferbar / unter CHF Y» loest zuverlaessig genau eine
  Meldung im Tagesbriefing aus (kein Spam, Loop-Muster low-noise).
- Kein einziger automatischer Kauf, keine hinterlegten Zahlungsdaten im Hub — auditierbar
  am Code (der Connector kennt schlicht keinen Bezahl-Endpunkt).
- Connector folgt dem Hub-Standard: `connectors/shop.mjs`, CLI-Flags, README-Eintrag,
  Fehlerbild klar (Quelle nicht erreichbar ≠ nicht lieferbar).

## Plan (enge Scopes + Checkpoints)
- [ ] **Scope 0 — Entscheide bestaetigen:** die vier beweglichen Schluesselentscheide mit
      Raphael durchgehen (naechste interaktive Session, AskUserQuestion).
      → Checkpoint: Spec-Abschnitt «Schluesselentscheide» auf «bestaetigt» gehoben.
- [ ] **Scope 1 — Lese-Connector `connectors/shop.mjs`:** `--suche <Begriff>` und
      `--status <Produkt-URL/ID>` gegen die Basis-Quelle; Ausgabe Haendler/Preis/
      Verfuegbarkeit/Lieferfrist mit Quelle+Zeitstempel. Bau und Test auf einer Station
      (Buero-IP), nicht im Cloud-Container.
      → Checkpoint: Ausgangsfall Create Wind Calm korrekt beantwortet, manuell verifiziert.
- [ ] **Scope 2 — Lager-Waechter:** `--watch add/list/remove` (Watchlist-Datei auf NAS),
      Scheduled Task `shop-watchlist-check` (taeglich), Meldung ins hub-chef-Briefing.
      → Checkpoint: Testeintrag loest Meldung aus; Register-Eintrag im Logbuch.
- [ ] **Scope 3 — Galaxus-Business-Abklaerung:** Konto-Anmeldung, E-Procurement-/API-
      Bedingungen dokumentieren (wissen/, neue Notiz), Entscheid Phase 2 ja/nein.
      → Checkpoint: schriftliche Zusammenfassung + Entscheid Raphael.
- [ ] **Scope 4 — Bestell-Uebergabe (nur nach Scope-3-Ja):** `--bestellen <Artikel> --ja`
      uebergibt den Warenkorb via Business-Schnittstelle ODER erzeugt fixfertigen
      Bestell-Entwurf (Mail an Haendler, QS via `korrektur`); Abschluss/Zahlung manuell.
      → Checkpoint: eine reale Testbestellung gemeinsam durchgefuehrt.

## Verifikation
- Autoritative Instanz (bindend): der Shop selbst — Bestellbestaetigung/Rechnung des
  Haendlers; fuer Verfuegbarkeit die Produktseite im Browser (manuelle Stichprobe).
- Externes Signal (Indiz): Quervergleich zweier Quellen (Aggregator vs. Shop-Seite via
  Chrome-Connector); Abweichung → Meldung statt Annahme.
- Format-Vorlage: Connector-Goldstandard `connectors/bexio.mjs` (CLI-Muster, Zwei-Phasen,
  `--ja`-Freigabe) + `geo-zh.mjs` (validierte Bezugskette).
- Zweite Textinstanz: `korrektur` fuer jeden Bestell-Entwurf/Mail-Text.

## Faktenbasis
- Realer Fall 06.07.2026: Create Wind Calm, galaxus.ch (403 bei automatisiertem Zugriff).
- `connectors/README.md` + bestehende Connectoren (bexio, geo-zh, zefix, ebaugesuche-zh).
- `logbuch/AKTIONS-WHITELIST.md` (Geld-Aktionen NIE automatisch).
- Zwei-Phasen-Muster: Skills `mahnwesen` (Phase 1 read-only automatisiert, Phase 2 nur
  interaktiv) und `zahlungsabgleich` (harte Read-only-Regel).
- KB `wissen/spec/` (Vorlage `templates/spec-vorlage.md`, Goldstandard Buchhaltungssystem-Spec).

## Monitor-Log
- 2026-07-06: Spec aufgesetzt (Remote-Session, autonome Annahmen). Naechster Schritt:
  Scope 0 — Schluesselentscheide 1–4 von Raphael bestaetigen lassen.
- 2026-07-11: Scope 0 durchgefuehrt (AskUserQuestion, interaktive Session): Raphael
  entscheidet **PARKIEREN** — Entscheide 1–4 bleiben unbestaetigt, keine Umsetzung,
  keine offene Pendenz. Kein Monitor-Loop noetig (kein externes Warten); Wiedereinstieg
  nur auf Zuruf.
