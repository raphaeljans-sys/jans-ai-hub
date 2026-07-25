# Connectoren Versandplanung (Skill `versandplanung`)

Vier Bausteine für die tägliche Versand- und Routenplanung des Onlineshops.
Alle Credentials liegen pro Station in `~/.versand.env` (chmod 600, NIE in Git) —
Vorlage siehe unten. Aufbau-Stand und offene Entscheide: Spec
`wissen/spec/outputs/2026-07-04_versandplanung-onlineshop_spec.md`.

## shop-orders.mjs — Bestellungen aus dem Shop

Zieht die offenen, noch nicht verarbeiteten Bestellungen und klassifiziert sie in
`post` (schweizweiter Versand) und `pickup` (eigene Auslieferroute). Adapter-Prinzip:
`SHOP_TYP=woocommerce | shopify | csv` — der Rest der Pipeline ist shopunabhängig.

```bash
node shop-orders.mjs --test               # Verbindung + Zugangsdaten prüfen
node shop-orders.mjs --heute --json       # Tagesbestellungen als JSON (Pipeline-Input)
node shop-orders.mjs --markieren <datei>  # verarbeitete Bestellungen im Shop markieren
```

## post-label.mjs — Versandetiketten Post CH

Erzeugt Adressetiketten mit Sendungsbarcode über die **Digital Commerce API «Barcode»**
(`dcapi.apis.post.ch/barcode/v1/generateAddressLabel`, OAuth2 Client Credentials).
Voraussetzung: Rechnungsbeziehung + **Frankierlizenz** bei der Post, Zugangsdaten vom
Post-Entwicklerportal (developer.post.ch). **Kostenrelevant** → produktiv nur mit `--ja`.

```bash
node post-label.mjs --test                       # Token + API prüfen
node post-label.mjs --aus bestellungen.json      # Trockenlauf (zeigt, was erzeugt würde)
node post-label.mjs --aus bestellungen.json --ja # Etiketten wirklich erzeugen (PDF je Sendung)
```

## circuit.mjs — Tagesroute in Circuit for Teams

Erstellt den heutigen Auslieferplan in **Circuit for Teams** (nur die Teams-Variante
hat eine API — die Einzel-App nicht): Plan anlegen → Pickup-Stops batch-importieren →
optimieren → an den Fahrer verteilen. API-Key aus den Circuit-Team-Einstellungen.

```bash
node circuit.mjs --test                                # API-Key prüfen
node circuit.mjs --plan-heute --aus bestellungen.json  # Plan + Stops + Optimierung
node circuit.mjs --plan-heute --aus bestellungen.json --verteilen  # zusätzlich an Fahrer
```

## drucken.sh — CUPS-Druck auf die richtigen Geräte

```bash
bash drucken.sh packzettel.pdf --a4     # → bizhub c300i (VERSAND_DRUCKER_A4)
bash drucken.sh etiketten/ --labels     # → Labeldrucker (VERSAND_DRUCKER_LABELS), ganzer Ordner
```

## ~/.versand.env — Vorlage

```bash
# Shop (E1 — Default WooCommerce)
SHOP_TYP=woocommerce
SHOP_URL=https://shop.example.ch
WC_KEY=ck_...
WC_SECRET=cs_...
# SHOPIFY_SHOP=meinshop   # bei SHOP_TYP=shopify
# SHOPIFY_TOKEN=shpat_...
# CSV_PFAD=~/Downloads/bestellungen.csv   # bei SHOP_TYP=csv

# Tagesplanung
VERSAND_CUTOFF=06:00
PICKUP_MARKER=pickup,abhol       # Versandart-Namen, die als Pickup gelten

# Post CH DCAPI (E2)
POST_CLIENT_ID=...
POST_CLIENT_SECRET=...
POST_FRANKING_LICENSE=...
POST_ABSENDER_NAME=...
POST_ABSENDER_STRASSE=...
POST_ABSENDER_PLZ=...
POST_ABSENDER_ORT=...

# Circuit for Teams (E3)
CIRCUIT_API_KEY=...
CIRCUIT_DEPOT_ID=                # optional
CIRCUIT_FAHRER_ID=               # optional: Route direkt zuweisen

# Drucker (E4)
VERSAND_DRUCKER_A4=bizhub_c300i
VERSAND_DRUCKER_LABELS=
```
