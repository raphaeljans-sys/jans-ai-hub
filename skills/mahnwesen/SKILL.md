---
name: mahnwesen
description: >-
  Debitoren-Mahnwesen-Agent fuer JANS — findet automatisch heraus, welche Rechnungen je
  Debitor im Zahlungsverzug sind, und schlaegt die korrekte naechste Mahnstufe vor. Liest
  den echten Zahlungs-/Faelligkeitsstand aus bexio (Connector connectors/bexio.mjs), nicht
  aus archivierten PDF. Diesen Skill verwenden wenn der Benutzer fragt: "Mahnwesen", "wer ist
  im Zahlungsverzug", "welche Rechnungen sind ueberfaellig", "offene Posten", "Debitoren
  pruefen", "Mahnung faellig", "naechste Mahnstufe", "wen muss ich mahnen", "Zahlungsverzug",
  "ueberfaellige Rechnungen", "Rechnung auf naechste Mahnstufe stellen", "Zahlungserinnerung
  versenden", "Mahnlauf", "offene Rechnungen Kinderspital/Tschopp/...". Zwei Phasen: Phase 1
  (Verzugs-Erkennung) laeuft read-only und unbeaufsichtigt (auch als Scheduled Task), Phase 2
  (Mahnstufe erzeugen, ablegen, Zahlungsaufforderung schreiben) nur interaktiv mit Bestaetigung.
  Nutzt den bexio-Connector (kb_invoice + kb_reminder); Gegenstueck zur Kostenkontrolle auf der
  Debitorenseite.
---

# JANS Debitoren-Mahnwesen

Findet je Debitor die Rechnungen im **echten** Zahlungsverzug und schlaegt die korrekte
naechste Mahnstufe vor. Datenquelle ist immer der Live-Stand in **bexio**, nie eine
archivierte Mahnungs-PDF.

## Contract

- **Trigger:** Sobald geklaert werden soll, wer im Zahlungsverzug ist, welche Rechnung als
  naechstes gemahnt gehoert, oder eine konkrete Rechnung auf die naechste Mahnstufe gestellt
  werden soll.
- **Inputs:** Keine zwingenden — der Skill zieht den Stand selbst aus bexio. Optional: ein
  konkreter Debitor/eine Rechnungsnummer.
- **Connector:** `connectors/bexio.mjs` (im Repo, nicht auf dem NAS — analog truninger-ds3.mjs).
  Token in `~/.bexio.env` (Personal Access Token, chmod 600).
- **Output-Ablage:** Mahnungs-PDF je Projekt unter `.../<projektordner>/00_Admin/6 Rechnungen
  an Auftraggeber/_Archiv/Mahnungen/` als `mahnung-<stufe>-re-<nr>.pdf`; Begleit-/Zahlungs-
  aufforderungs-Mail in die Projekt-Korrespondenz. Verzugs-Report (Phase 1) zusaetzlich nach
  `30 JANS AI HUB OUTPUT/mahnwesen/<jahr>/`.
- **Abhaengige Rules:** umlaute-konvention, mail-formatierung, jans-absenderadresse,
  anrede-kontakte, dokument-layout-standard, dateinamen-konvention + Korrektur-Pflicht
  (jede Mail/jedes Schreiben vor Ausgabe durch Skill `korrektur`).
- **Verwandt:** kostenkontrolle (Bauseite), korrektur (QS vor Versand).

## Kernregel — Verzug NUR aus dem Live-Stand (Lektion Fall RE-00088, 13.06.2026)

RE-00088 (Kinderspital) hatte zwei archivierte Mahnstufen im Ordner `_Archiv/Mahnungen/`,
war in bexio aber laengst **bezahlt** (Restbetrag 0, Status 9). Wer auf die PDF schaut,
mahnt eine bereits beglichene Rechnung. Darum gilt hart:

> **Zahlungsverzug = Restbetrag (`total_remaining_payments`) > 0 UND Faelligkeit
> (`is_valid_to`) < heute UND Status nicht Entwurf(7)/storniert(19,20).**
> Eine archivierte Mahnungs-PDF ist KEIN Beleg fuer Verzug.

## bexio-Datenmodell (validiert 13.06.2026)

- Rechnung: `GET /2.0/kb_invoice` (Restbetrag in `total_remaining_payments`, Faelligkeit in
  `is_valid_to`, Status in `kb_item_status_id`: 8 = offen, 9 = bezahlt, 19 = storniert).
- Mahnung heisst in der API **`kb_reminder`** (nicht `kb_invoice_reminder`):
  `GET/POST /2.0/kb_invoice/{id}/kb_reminder`, `.../{rid}/send`, `.../{rid}/mark_as_sent`,
  `.../{rid}/pdf`. POST erzeugt die naechste Stufe; bexio zaehlt `reminder_level` selbst hoch.
- **Mahnstufen-Leiter** (bexio `reminder_level` → Bezeichnung):
  1 = Zahlungserinnerung · 2 = Mahnung 1 · 3 = Mahnung 2 · 4 = Mahnung 3 / Betreibung.
  Die aktuelle Stufe = Anzahl/`max(reminder_level)` der vorhandenen Mahnungen.

## Phase 1 — Verzugs-Erkennung (read-only, automatisierbar)

```bash
node connectors/bexio.mjs --verzug          # nur echter Verzug, gruppiert je Debitor
node connectors/bexio.mjs --verzug --alle    # zusaetzlich offene/bald faellige
node connectors/bexio.mjs --verzug --json    # maschinenlesbar (fuer Scheduled Task)
```

Der Scan:
1. zieht alle Rechnungen, filtert auf Restbetrag > 0 und gueltigen Status,
2. holt je offene Rechnung die `kb_reminder` und bestimmt die aktuelle Mahnstufe + die Frist
   der letzten Stufe,
3. markiert «im Verzug» (Faelligkeit verstrichen) und «naechste Stufe faellig» (Frist der
   letzten Mahnstufe verstrichen),
4. gruppiert je Debitor (Name + Mail aus `/2.0/contact/{id}`), aelteste Rechnung zuerst,
5. gibt je Debitor einen **Vorschlag** «naechste Stufe: …» aus.

Standard-Vorschlagsregel: je Debitor jede ueberfaellige Rechnung einzeln, aelteste zuerst,
Vorschlag = aktuelle Stufe + 1, sobald die Frist der letzten Stufe verstrichen ist.

## Phase 2 — Aktion (NUR interaktiv, mit Bestaetigung)

Nie ohne ausdrueckliches OK des Benutzers — eine Mahnung ist aussenwirksam.

1. **Vorschlag bestaetigen lassen:** Rechnung, aktuelle Stufe, vorgeschlagene naechste Stufe,
   Betrag, Debitor + `kreditoren@…`-Mail vorlegen.
2. **Mahnstufe erzeugen:** `node connectors/bexio.mjs --mahnen <id> --ja`
   (ohne `--ja` nur Trockenlauf). Optional `--senden` fuer Versand ueber bexio — i.d.R. NICHT,
   da JANS die Zahlungsaufforderung selbst per Apple Mail schickt.
3. **PDF ablegen:** Mahnungs-PDF aus bexio (`/kb_reminder/{rid}/pdf`) in den Projektordner
   `_Archiv/Mahnungen/` als `mahnung-<stufe>-re-<nr>.pdf`.
4. **Zahlungsaufforderung schreiben:** sachliche, freundliche Mail an die `kreditoren@…`-Adresse
   des Debitors (Anrede/Absender nach Rules), Rechnung + Mahnung als Beilage, Bitte um
   umgehende Zahlung mit neuer Frist; vor Ausgabe durch Skill `korrektur`. Mail in die
   Projekt-Korrespondenz ablegen.

## Automatisierung (Scheduled Task)

Phase 1 als Scheduled Task `mahnwesen-verzugscheck` (z.B. werktags morgens): laeuft
`--verzug --json`, und meldet Raphael nur dann, wenn eine Rechnung NEU in den Verzug
gekippt ist oder eine naechste Mahnstufe faellig wird — mit fertigem Vorschlag. Das
Erzeugen/Versenden bleibt der interaktiven Phase 2 vorbehalten.
