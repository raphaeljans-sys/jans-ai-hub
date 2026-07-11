---
name: versandplanung
description: >-
  KI-Versand- und Routenplanungs-Harness für den Onlineshop — plant den kompletten
  Versandtag automatisch: zieht die offenen Bestellungen aus dem Shop, trennt
  Post-Versand und Pickup-Point-Auslieferung, erzeugt Post-Versandetiketten
  (Digital Commerce API «Barcode»), Packzettel fürs Lager-Picking und die
  Pickup-Point-Liste, druckt alles auf die richtigen Drucker (CUPS) und erstellt
  die optimierte Tagesroute in Circuit for Teams (Fahrer drückt nur noch «Start»).
  Diesen Skill verwenden wenn der Benutzer sagt: "Versandplanung", "Versandtag
  planen", "Etiketten drucken", "Packzettel", "Pickup-Liste", "Route erstellen",
  "Circuit", "Tagesroute", "Bestellungen versandbereit machen", "Versand heute".
  Zwei Phasen: Phase 1 (Tagesplan erzeugen, read-only + Dokumente) automatisierbar,
  Phase 2 (Etiketten erzeugen = kostenrelevant, Route an Fahrer verteilen) anfangs
  nur mit Bestätigung. Connectoren: connectors/versand/ (shop-orders, post-label,
  circuit, drucken).
---

# JANS Versandplanung (Onlineshop)

Plant den kompletten Versandtag des Onlineshops: **Etiketten, Packzettel und
Pickup-Point-Liste liegen im Drucker, die Tagesroute liegt fertig optimiert in
Circuit** — niemand muss mehr disponieren.

## Contract

- **Trigger:** Täglicher Versandlauf (Scheduled Task) oder auf Zuruf («plane den
  Versand für heute», «druck mir die Packzettel»).
- **Inputs:** Keine zwingenden — der Skill zieht die offenen Bestellungen selbst aus
  dem Shop (Cutoff konfigurierbar, Default 06:00). Optional: Datum, einzelne
  Bestellnummern, `--dry-run`.
- **Connectoren:** `connectors/versand/` — `shop-orders.mjs` (Shop-Adapter:
  WooCommerce/Shopify/CSV), `post-label.mjs` (Post CH DCAPI Barcode),
  `circuit.mjs` (Circuit for Teams), `drucken.sh` (CUPS-Druck).
  Credentials in `~/.versand.env` (chmod 600, NIE in Git).
- **Output-Ablage:** Tagesordner `30 JANS AI HUB OUTPUT/versand/<jahr>/<YYYY-MM-DD>/`
  mit `bestellungen.json`, `etiketten/*.pdf`, `packzettel.pdf`, `pickup-liste.pdf`,
  `report.md`. Physisch: Etiketten auf dem Labeldrucker, A4-Dokumente auf dem
  bizhub c300i.
- **Spec:** `wissen/spec/outputs/2026-07-04_versandplanung-onlineshop_spec.md` —
  dort die offenen Schlüsselentscheide E1–E7 (Shopsystem, Carrier-Vertrag,
  Circuit for Teams, Etikettendrucker, Cutoff, Pickup-Zuordnung, Autonomiestufe).
- **Abhängige Rules:** umlaute-konvention, dateinamen-konvention,
  dokument-layout-standard, identifikatoren-verifizieren (nie eine Adresse,
  Sendungsnummer oder Bestellnummer erfinden).
- **Verwandt:** `logbuch` (Report/Fristen), `korrektur` (QS der Druckerzeugnisse),
  `hub-chef` (Dispatch im Tagesbriefing).

## Kernregeln

1. **Nie doppelt.** Jede verarbeitete Bestellung wird im Shop markiert
   (Meta-Feld/Notiz `jans_versandtag=YYYY-MM-DD`). Ein zweiter Lauf am selben Tag
   verarbeitet nur, was noch keine Markierung hat. Ohne diese Markierung wird NICHT
   gedruckt und KEINE Etikette erzeugt.
2. **Etiketten sind kostenrelevant.** `post-label.mjs` läuft nur mit `--ja` produktiv
   (Frankierlizenz!), sonst Trockenlauf/Sandbox. Vollautomatik erst nach 5 fehlerfreien
   Werktagen (Spec S6).
3. **Quelle der Wahrheit ist der Shop-Livestand** — nie eine archivierte Liste, nie
   ein alter Export. Adressen kommen 1:1 aus der Bestellung (identifikatoren-verifizieren).
4. **Kundendaten bleiben lokal.** `bestellungen.json` und PDFs enthalten
   Personendaten — Ablage nur im Output-Ordner (OneDrive/SharePoint intern), nie in Git.

## Tagespipeline (Phase 1 — automatisierbar)

```bash
# 1. Offene Bestellungen des Tages ziehen (Cutoff aus ~/.versand.env)
node connectors/versand/shop-orders.mjs --heute --json > <out>/bestellungen.json

# 2. Klassifizieren: Versandart "post" ↔ "pickup:<punkt>" (macht shop-orders.mjs mit)

# 3. Packzettel (1 Seite je Bestellung, Picking-Reihenfolge) + Pickup-Liste erzeugen
python3 skills/versandplanung/tools/build_versanddokumente.py <out>/bestellungen.json

# 4. Drucken: A4-Dokumente auf bizhub, Reihenfolge Packzettel → Pickup-Liste
bash connectors/versand/drucken.sh <out>/packzettel.pdf --a4
bash connectors/versand/drucken.sh <out>/pickup-liste.pdf --a4
```

## Phase 2 — kostenrelevant / aussenwirksam (anfangs mit Bestätigung)

```bash
# 5. Post-Etiketten je Post-Bestellung erzeugen und drucken
node connectors/versand/post-label.mjs --aus <out>/bestellungen.json --ja
bash connectors/versand/drucken.sh <out>/etiketten/ --labels

# 6. Circuit-Tagesplan: Plan anlegen → Pickup-Stops importieren → optimieren → verteilen
node connectors/versand/circuit.mjs --plan-heute --aus <out>/bestellungen.json --verteilen
```

Danach: Kurz-Report (`report.md`) mit Verifier-Zahlen ins Logbuch + an Raphael:
Anzahl Bestellungen / Etiketten / Packzettel / Stops — alle vier müssen konsistent sein.

## Verifier (Pflicht am Ende jedes Laufs)

- Packzettel-Anzahl == Bestellungen des Tages.
- Etiketten-Anzahl == Post-Bestellungen; jede Sendungsnummer im Report gelistet.
- Circuit-Stop-Anzahl == Pickup-Bestellungen; Plan-Link im Report.
- Bei Abweichung: NICHT verteilen, Meldung an Raphael mit Diff.

## Automatisierung (Scheduled Task)

`versand-tagesplanung` auf dem Mac Mini, werktags 06:15 (nach Cutoff 06:00):
Phase 1 komplett, Phase 2 gemäss Autonomiestufe (Spec E7) — Stufe 1 legt Etiketten
und Circuit-Plan als Vorschlag vor, Stufe 2 (nach S6) führt durch und meldet nur
noch Fehler.

## Status / Aufbau-Reihenfolge

Aufbau nach Spec-Scopes S1–S6. Aktuell: **S1 abgeschlossen** (Struktur + Skelette).
Vor S2 müssen die Entscheide E1 (Shopsystem) und E4 (Etikettendrucker) bestätigt
sein; vor S4/S5 braucht es die Zugangsdaten (Post DCAPI, Circuit for Teams API-Key)
in `~/.versand.env`.
