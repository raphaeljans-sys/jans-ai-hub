# bexio: Bankbewegungen selbständig kontieren und buchen — Spec

- **Ziel (1 Satz):** Die Bank ist in bexio laufend vollständig verbucht, ohne dass Raphael Listen freigeben muss.
- **Abgrenzung:** Nur Banktransaktionen zu Journalbuchungen (`manual_entries`). Nie: Zahlungen auslösen, Zahlungsaufträge erfassen, Rechnungen als bezahlt markieren oder reconcilen, löschen, stornieren. Debitoren-Mahnwesen bleibt bei Whitelist A1/A9. Kein Jahresabschluss, keine MWST-Abrechnung.

## Ist-Zustand (gemessen 17.09.2026)
- 118 ungebuchte Banktransaktionen 2026 (19.02. bis 08.09.), alles Ausgänge; 63 Kontierungsregeln; MWST Saldosatz, Buchungen ohne Steuercode; Doppelbuchungs-Schutz (Datum+Betrag) im Connector; kein Storno-Code.
- Banktexte von E-Banking-Aufträgen, Daueraufträgen und E-Bills tragen **keinen Empfänger** («Multi e-banking Order», «PayNet Order // E-BILL»); weder Mailsuche noch Kreditoren-Ablage 2026 liefern dazu Belege (geprüft nach Betrag, 71 PDF).

## Schlüsselentscheide (bestätigt Raphael 17.09.2026)
1. **Alles automatisch** (bestätigt), 2. **ohne Betragsgrenze** (bestätigt), 3. **monatlich mit Bericht** (bestätigt, Task `bexio-buchen-monatlich`, 2. des Monats 06:20, Mac Mini), 4. **Schreibrecht `bank_payment_edit` im Dauerzugang testen** (bestätigt; offen bis Raphael `--einrichten --zusatz "bank_payment_edit"` ausgeführt hat; bis dahin Banktransaktionen über den PAT).
5. **Präzisierung Claude (vorgeschlagen, unwidersprochen):** Unbelegtes nie auf ein geratenes Aufwandkonto; nach 60 Tagen ohne Klärung auf 1090 Transferkonto mit Präfix «ABKLAERUNG:». *Noch beweglich:* eigenes Konto 1099 Abklärungskonto statt 1090.

## Bewertungskriterien
- Nach jedem Lauf: Restmenge = nur Unbelegtes; jede Buchung im Protokoll; keine Doppelbuchung; keine Buchung ohne Regel oder Beleg.
- Die Regeldatei wächst, die Rückfragen schrumpfen.

## Plan
- Block 1 (erledigt 17.09.): `--auto`, Erstlauf 2026: 74 + 14 = **88 Buchungen, CHF 1'637.91**, 0 Fehler; 8 Analogieregeln.
- Block 2 (offen): 30 Positionen ohne Beleg, 13 Muster, einmalige Klärung durch Raphael, daraus Regeln.
- Block 3: Scope-Test, erster unbeaufsichtigter Monatslauf 02.10.2026.

## Verifikation
Autoritativ: bexio-Journal (`--buchungen`, `--kontieren` Restmenge). Zweitinstanz: Treuhänder/Abschluss. Protokolle: `logbuch/bexio-buchungen/`.
