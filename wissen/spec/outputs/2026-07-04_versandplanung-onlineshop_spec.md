# Spec: KI-Versand- und Routenplanung Onlineshop (Tagesplanung)

**Datum:** 2026-07-04
**Status:** PARKIERT (Entscheid Raphael, 11.07.2026) — Projekt bis auf Weiteres nicht
weiterverfolgt; Entscheide E1–E7 bleiben unbestätigt, keine offene Pendenz. Skill
`versandplanung` + Connectoren `connectors/versand/` bleiben als inaktives Gerüst im Hub
(nichts läuft automatisch). Wiedereinstieg bei E1 (Shopsystem bestätigen).
**Methode:** Spec-Methode (Karpathy/Marchese) — WAHRES ZIEL zuerst, dann enge Scopes mit Checkpoints

---

## 1. Das wahre Ziel

> Jeden Morgen liegt der komplette Versandtag **fertig vorbereitet** da — ohne dass
> jemand etwas planen muss:
>
> 1. **Versandetiketten** (schweizweiter Versand, Post) liegen ausgedruckt im Drucker.
> 2. **Packzettel** je Bestellung liegen ausgedruckt im Drucker — für die Person, die
>    im Lager pickt.
> 3. **Pickup-Point-Liste** (alle Bestellungen je Abholpunkt) liegt ausgedruckt im Drucker.
> 4. Die **heutige Auslieferroute** ist in Circuit (oder vergleichbar) fertig erstellt und
>    optimiert — der Fahrer muss nur noch auf «Start» drücken.

Nicht das Ziel: ein neues Shopsystem, ein Lager-Verwaltungssystem, Livetracking.
Das Ziel ist die **tägliche Dispositions-Arbeit auf null** zu bringen.

## 2. Ist-Zustand / Kontext

- Onlineshop vorhanden (System noch zu bestätigen — siehe Entscheid E1).
- Zwei Versandwege: **Post** (schweizweit, Etikett) und **eigene Auslieferung an
  Pickup Points** (Route mit Circuit).
- Immer-an-Station: Mac Mini (Büro) — natürlicher Ort für den täglichen Lauf.
- Drucker im LAN: Konica Minolta bizhub c300i (A4). Etikettendrucker: zu bestätigen (E4).

## 3. Schlüsselentscheide (VOR Scope 2 bestätigen)

| # | Entscheid | Annahme (Default) | Alternativen |
|---|---|---|---|
| E1 | **Shopsystem** | WooCommerce (raphaeljans.ch läuft auf WordPress → Vermutung) | Shopify, Shopware, CSV-Export |
| E2 | **Carrier + Vertrag** | Post CH mit «Digital Commerce API (Barcode)» — braucht Frankierlizenz + Rechnungsbeziehung | Planzer, Quickpac; Übergangslösung: Post-Onlinedienst manuell |
| E3 | **Routen-App** | Circuit for Teams (hat offizielle API: Plan anlegen, Stops importieren, optimieren, an Fahrer verteilen) | Routific, OptimoRoute; Circuit «Einzel-App» hat KEINE API — es braucht Circuit for Teams |
| E4 | **Etikettendrucker** | Dedizierter Labeldrucker (z.B. Brother QL / Zebra, 103×165 mm A6) via CUPS am Mac Mini | A4-Bogen auf bizhub (4 Etiketten/Blatt, schneiden) |
| E5 | **Stichzeit / Cutoff** | Bestellungen bis 06:00 kommen in den heutigen Tag; Lauf 06:15, Druck sofort | anderer Cutoff, zweiter Lauf mittags |
| E6 | **Pickup-Zuordnung** | Der Kunde wählt den Pickup Point im Shop (Versandart/Feld) → eindeutig auslesbar | Zuordnung über PLZ-Tabelle |
| E7 | **Autonomiestufe** | Stufe 1: Lauf erzeugt alles + druckt, aber Kurz-Report an Raphael; Stufe 2 (später): vollautomatisch, Meldung nur bei Fehlern | sofort vollautomatisch |

## 4. Architektur (Zielbild)

```
Shop (WooCommerce/Shopify/CSV)
        │  offene, unversandfertige Bestellungen (Cutoff 06:00)
        ▼
┌─ versand-tagesplanung (Mac Mini, täglich) ────────────────────────┐
│ 1. Bestellungen ziehen        connectors/versand/shop-orders.mjs  │
│ 2. Klassifizieren             Post ↔ Pickup-Route (aus Versandart)│
│ 3. Etiketten erzeugen         connectors/versand/post-label.mjs   │
│ 4. Packzettel + Pickup-Liste  skills/versandplanung/tools/        │
│ 5. Drucken (CUPS lp)          Etiketten → Labeldrucker,           │
│                               Packzettel/Listen → bizhub c300i    │
│ 6. Circuit-Plan erstellen     connectors/versand/circuit.mjs      │
│    (Stops importieren → optimieren → an Fahrer verteilen)         │
│ 7. Kurz-Report                an Raphael (Logbuch + Mail/Push)    │
└───────────────────────────────────────────────────────────────────┘
```

Idempotenz-Regel: jede Bestellung bekommt beim Verarbeiten eine Markierung
(Shop-Notiz/Meta-Feld `jans_versandtag=YYYY-MM-DD`), damit ein zweiter Lauf am selben
Tag nichts doppelt druckt und keine Etikette doppelt erzeugt.

## 5. Scopes (eng, mit Checkpoints)

| Scope | Inhalt | Checkpoint (Bewertungskriterium) |
|---|---|---|
| S1 | Skill + Connector-Skelette + Spec (dieses Dokument) | Struktur liegt im Hub, Entscheide E1–E7 vorgelegt ✅ (dieser Lauf) |
| S2 | Shop-Anbindung real (nach E1): `shop-orders.mjs --heute` liefert die echten Bestellungen des Tages als JSON | Stichprobe: JSON deckt sich 1:1 mit Shop-Backend |
| S3 | Dokumente: Packzettel + Pickup-Liste als PDF, Probedruck auf bizhub | Lagerperson bestätigt: «damit kann ich picken» |
| S4 | Post-Etiketten (nach E2, Zugangsdaten DCAPI): Testetikett im Sandbox-Modus, dann 1 echte Sendung | Etikett wird am Postschalter/Abholung akzeptiert |
| S5 | Circuit-Anbindung (nach E3, API-Key): Plan+Stops+Optimize für 1 Testtag | Route erscheint in der Fahrer-App, «Start» genügt |
| S6 | Täglicher Lauf als Scheduled Task auf Mac Mini (E5, E7 Stufe 1) | 5 Werktage fehlerfrei, dann Stufe 2 |

## 6. Verifier (zweite Prüfinstanz)

- **Etiketten:** Sendungsnummer des erzeugten Etiketts gegen Post-Tracking prüfen
  (existiert und ist der richtigen Adresse zugeordnet).
- **Route:** Stop-Anzahl im Circuit-Plan == Anzahl Pickup-Bestellungen des Tages;
  Abgleich im Report.
- **Vollständigkeit:** Anzahl gedruckter Packzettel == Anzahl Bestellungen des Tages;
  jede Bestellung genau einmal markiert.
- **QS Texte:** Packzettel/Listen einmalig durch Skill `korrektur` (Layout-Standard).

## 7. Harte Regeln

- Etiketten-Erzeugung läuft über die Frankierlizenz (Kostenrelevanz) → im Aufbau nur
  mit `--ja`-Flag bzw. Sandbox; Vollautomatik erst nach S6.
- Kundendaten (Adressen) bleiben lokal/beim Carrier — keine Ablage in Git, keine
  Weitergabe an Dritte ausser Post/Circuit.
- Credentials pro Station in `~/.versand.env` (chmod 600), NIE in Git.

## 8. Quellen (validiert 2026-07-04)

- Circuit for Teams API: https://developer.team.getcircuit.com/api — Plan anlegen,
  Stops batch-importieren, optimieren, verteilen. Nur «for Teams», nicht die Einzel-App.
- Post CH Digital Commerce API «Barcode»: https://developer.post.ch/en/digital-commerce-api —
  `generateAddressLabel` erzeugt Adressetikett inkl. Sendungsbarcode; braucht
  Rechnungsbeziehung + Frankierlizenz.
