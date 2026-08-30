# Buchhaltungssoftware für Einzelfirma + Raphael Jans AG: bexio verlängern, Eigenbau oder Wechsel?

Datum: 30.08.2026 · Anlass: bexio migriert das Abo am 08.10.2026 (individuelles
Verlängerungsdatum) automatisch von Starter (CHF 35/Mt.) auf Advanced (CHF 42/Mt.);
zugleich ist der API-Zugang seit ca. 07.08.2026 tot (HTTP 401). Frage Raphael: Abo
verlängern, ein zugeschnittenes Eigenprogramm bauen oder günstigere Alternative?

## Faktenlage bexio (Web-Recherche 30.08.2026, Quellen je Aussage beim Befund)

- Paketumstellung per 01.03.2026: Starter → Advanced (CHF 42/Mt.), Pro → Optima (69),
  Pro+ → Ultimate (119); neu Basic (CHF 35/Mt., 1 Benutzer, ohne Lohn, ohne
  KI-Belegscanning). Bestehende Starter-Kunden werden am individuellen
  Verlängerungsdatum migriert (Ankündigung 40 Tage vorher). Quellen:
  bexio.com/de-CH/pakete-preise · help.bexio.com Artikel 000002493 ·
  magicheidi.ch/de/bexio-prices-2026 · pfeffersack.ch/blog/bexio-preiserhoehung-2026-alternativen
- Kündigung/Downgrade: spätestens 30 Tage vor Ablauf der Vertragsperiode, sonst
  automatische Verlängerung; Downgrade wirkt erst auf Periodenende. Datenlöschung
  30 Tage nach Abo-Ende. Quellen: bexio.com/en-CH/package-changes ·
  help.bexio.com 000001679
- Zweite Firma (AG): braucht ein eigenes bexio-Konto mit eigenem Abo; Mandantenrabatte
  nur über Treuhand-Pakete (Treuhänder führt das Konto, FiBu CHF 10/Mt.). Quellen:
  help.bexio.com 000001839 · bexio.com/de-CH/treuhand/pakete-preise-mandanten
- API: keine belegte Paketbeschränkung. Dokumentierte Umstellungen: Identity Provider
  idp.bexio.com → auth.bexio.com (Login-Umstellung per 02.09.2026 kommuniziert),
  Scope-Änderungen 19.06.2026. Eine Token-Abschaltung Anfang August 2026 ist NICHT
  dokumentiert; wahrscheinlichste Ursache des 401 ist ein verfallener/alter Personal
  Access Token bzw. die IdP-Migration. Erster Reparaturschritt: neuen PAT unter
  developer.bexio.com erzeugen und in `~/.bexio.env` hinterlegen (Scopes
  kb_invoice_show + kb_invoice_edit gemäss `connectors/bexio.mjs`). Quelle: docs.bexio.com

## Kostenvergleich für ZWEI Rechtseinheiten (jährlich, exkl. MWST, Stand 30.08.2026)

| Lösung | Kosten/Jahr | 2 Firmen | QR-Rechnung | camt.053 (UBS) | API | Bemerkung |
|---|---|---|---|---|---|---|
| bexio Advanced + Basic | ~CHF 924 (504+420) | 2 Abos nötig | ja | ja (Basic: widersprüchlich belegt) | ja | Status quo fortgeschrieben |
| CashCtrl PRO | ~CHF 350 (verifizieren) | 2 Organisationen im Basispreis | ja (schon FREE) | ja (camt.052/053/054) | REST-API | Swiss Made, Treuhänder-Zugriff, seit 2013 |
| Banana Plus Advanced | CHF 179 | dateibasiert, beliebig viele | ja | ja | nein (Desktop) | keine Cloud, kein Mahn-Automat |
| Swiss21 BASIC | ~CHF 504 (2× 21/Mt.) | 2 Abos | ja | ja | nicht belegt | Abacus-Ökosystem |
| Eigenbau | CHF 0 Lizenz | — | machbar | machbar | — | siehe Einschätzung unten |

Ausgeschieden: Magic Heidi (nur Milchbüchlein-Buchhaltung, für eine AG untauglich —
die AG ist nach OR 957 zwingend doppelt buchführungspflichtig), KLARA (Gratis-Buchhaltung
2023 eingestellt, Mandantenfähigkeit nicht belegt), Odoo (Multi-Company nur im
Custom-Plan, Betriebsaufwand unverhältnismässig für 1–2 Personen), Infoniqa ONE
(Preisklasse), Numarics/Findea (Treuhand-Outsourcing, anderes Modell).

## Einschätzung Eigenbau

Rechnungsstellung mit QR-Teil, Debitorenliste und camt-Abgleich sind baubar (der Hub
tut Teile davon heute schon: `mahnwesen`, `zahlungsabgleich`). NICHT sinnvoll ist der
Eigenbau des Buchhaltungskerns: doppelte Buchführung mit MWST-Abrechnung,
Jahresabschluss und Revisionstauglichkeit für eine AG verlangt gepflegte
Rechtskonformität (MWST-Sätze, Formulare, Kontenrahmen), Treuhänder-Akzeptanz und
einen belastbaren Audit-Trail — alles Dinge, die eine CHF-350-Software mitbringt und
ein Eigenbau als Dauerlast erzeugt. Ein Eigenbau nur für Rechnungen würde zudem die
Daten von der Buchhaltung trennen und das eigentliche Problem (Buchhaltung nie sauber
geführt) verschärfen statt lösen.

## Empfehlung (30.08.2026)

1. Favorit: CashCtrl PRO als gemeinsame Lösung für Einzelfirma UND AG (2 Organisationen
   in einem Abo, ~CHF 350/Jahr statt ~CHF 924 bei 2× bexio). REST-API stellt die
   Hub-Automatisierung (Debitoren-Radar, Abgleich, Mahnwesen) wieder her. Vorher im
   FREE-Plan testen; PRO-Preis und Saldosteuersatz-Unterstützung auf der Live-Preisseite
   verifizieren.
2. Der Wechselzeitpunkt ist günstig: die bexio-Buchhaltung wurde nie sauber geführt
   (wenig Migrationsmasse — im Kern Kontakte und Rechnungsarchiv exportieren), und die
   AG startet ohnehin bei null. Entscheid bis ca. 08.09.2026 nötig (30-Tage-Frist vor
   dem Verlängerungsdatum 08.10.2026).
3. Fallback bei Verbleib: Downgrade auf bexio Basic (CHF 35/Mt.) prüfen statt
   automatische Migration auf Advanced — vorher bei bexio klären, ob Basic die
   Bankanbindung enthält (Quellen widersprechen sich). Für die AG bliebe dann trotzdem
   ein zweites Abo oder eine andere Lösung nötig.
4. Unabhängig vom Entscheid: neuen bexio-PAT erzeugen (developer.bexio.com), damit
   Debitoren-Monitoring und Zahlstatus (u.a. KISPI, offen CHF 51'400) wieder prüfbar
   sind — der Zugang bleibt bis zu einem allfälligen Abo-Ende bezahlt und nützlich.

## Offene Punkte

- Exakter CashCtrl-PRO-Preis 2026 und Saldosteuersatz-Methode (Live-Seite prüfen).
- Wortlaut der offiziellen bexio-Migrationskommunikation (Helpcenter nur im Browser lesbar).
- Konkrete 401-Ursache (im eingeloggten Konto unter developer.bexio.com sichtbar).
- Treuhänder-Frage für den AG-Jahresabschluss: falls ein Treuhänder mandatiert wird,
  dessen Software-Präferenz VOR dem Wechselentscheid einholen (bexio-Treuhandpaket
  CHF 10/Mt. könnte die Rechnung ändern).
