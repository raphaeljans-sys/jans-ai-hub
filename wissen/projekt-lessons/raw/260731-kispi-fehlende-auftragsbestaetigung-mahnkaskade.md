---
title: KISPI — fehlende Auftragsbestätigung als verdeckte Ursache einer Mahnkaskade (RE-00087)
status: emerging
last_updated: 2026-07-31
sources:
  - logbuch/LOGBUCH.md:2871 (2026-06-16, "Neuer Verzug")
  - logbuch/LOGBUCH.md:1226 (2026-07-23 Radar, "Auftragsbestätigung als Knackpunkt")
  - logbuch/LOGBUCH.md:1833 (2026-07-17, TeKoSi-Auftragsbestätigung Türfachplanung)
  - logbuch/fristen.md:14 (2026-07-31, 106 Tage überfällig)
  - logbuch/fristen.md:26 (2026-07-xx, Gruner-Vertragsprüfung, kein Auftragsfeld/00_Admin leer)
---

## Fokus-Bereich
Kosten & Termine (Debitoren/Mahnwesen-Schnittstelle), mit Berührung zu Koordination & Kommunikation.

## Extrahierte Aussagen (mit Fundstelle)

1. **Erstauftreten des Verzugs.** «RE-00087 (Kispi, CHF 15'000, faellig 16.04.) taucht neu als
   ueberfaellig auf, 61 Tage, erst Mahnstufe 1.» (LOGBUCH.md:2871, Eintrag vom 16.06.2026.)
   Fälligkeit 16.04.2026, erstmals im Register als Verzug erfasst am 16.06.2026 — 61 Tage nach
   Fälligkeit, nicht unmittelbar danach.

2. **Mechanischer Fortgang ohne Ursachenklärung.** Über Dutzende Radar-/Hub-Chef-Einträge
   (LOGBUCH.md Zeilen 1535, 1684, 1949, 2396, 2410 u.v.a., Zeitraum 21.06. bis 31.07.2026) wird
   RE-00087 ausschliesslich über Tage-Zähler und Mahnstufe fortgeschrieben («92 Tage», «95 Tage»,
   «96 Tage», «97 Tage», «98 Tage», «106 Tage» auf Mahnstufe 2) — in keinem dieser Einträge wird
   vor dem 21.07. eine Ursache benannt, warum KISPI nicht zahlt.

3. **Whitelist-Grenze verhindert Eskalation.** «RE-00087 steht auf Mahnung 2 (Stufe 3/Betreibung
   ist Entscheid Raphael, A1 nur Stufe 1)» (LOGBUCH.md:1491, Hub-Chef-Lauf). Die automatisierte
   Mahnwesen-Whitelist (Rule/Skill `mahnwesen`, Autonomiestufe A1) darf nur bis Mahnstufe 1/2
   autonom als Entwurf vorschlagen; Mahnstufe 3/Betreibung bleibt zwingend Einzelentscheid
   Raphael — die Rechnung kann daher beliebig lange auf Stufe 2 stehen bleiben, ohne dass der
   Automatismus selbst eskaliert oder nach der Ursache fragt.

4. **Ursache erst durch persönliches Eingreifen Raphaels benannt.** «RJ hat 21.07. 10:42 die drei
   offenen KISPI-Rechnungen (Total CHF 32'280) selbst gebündelt an KISPI gemahnt und die
   **fehlende Auftragsbestätigung** als Kern des Zahlungsstaus angesprochen.» (LOGBUCH.md:1226,
   Radar-Eintrag 23.07.2026.) Diese Diagnose kam nicht aus dem Mahnwesen-Loop, sondern aus
   Raphaels eigener, gebündelter Mail — mehr als drei Monate nach Fälligkeit der ältesten Rechnung.

5. **Strukturell wiederkehrendes Muster im selben Mandat (zwei unabhängige weitere Belege).**
   - Gruner AG: Prüfung der Vertragsgrundlage ergab, «JANS hat keinen Vertrag mit der Gruner AG»
     — beide Offerten nennen die Eleonorenstiftung als Auftraggeberin, «ein unterzeichneter
     Planervertrag existiert nicht; das Auftragsfeld der Brandschutzofferte ist leer,
     `00_Admin/2 Auftragsbestaetigung/10 Auftragserteilung/` enthält nur `.DS_Store`.»
     (fristen.md:26.)
   - TeKoSi Türfachplanung: «TeKoSi (L. Hiltmann) mahnt 16.07. die Auftragsbestaetigung zur
     Tuerfachplanung an, RJ hat sie an KISPI weitergeleitet — Ball bei KISPI.»
     (LOGBUCH.md:1833, Eintrag 17.07.2026.)

## Unsicher
- Ob KISPI die Auftragsbestätigung inzwischen (nach dem 21.07.) nachgereicht hat, ist aus dem
  gesichteten Logbuch-Zeitraum nicht ersichtlich — Stand 31.07. bleibt RE-00087 unverändert auf
  Mahnstufe 2 (fristen.md:14), was eher gegen eine Klärung spricht, aber kein direkter Beleg ist.
- Ob die fehlende Auftragsbestätigung bei RE-00087 exakt dieselbe administrative Lücke ist wie
  beim Gruner-Fall (derselbe `00_Admin`-Ordner, dieselbe Leistung) oder nur ein strukturell
  ähnliches, aber eigenständiges Versäumnis — die Quellen belegen das Muster, nicht die
  Identität der Ursache im Detail.

## Spannungen
- Keine inhaltliche Spannung zwischen den Quellen; alle fünf Fundstellen sind konsistent.
