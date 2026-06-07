---
name: 2026-06-07_buch-run0_dachausbau-wangen-chaled
typ: Anwendungsfall (Trainingsmodell B — Fall-Nachrechnung)
fall: Dachgeschoss-Analyse Mehrfamilienhaus mit Arztpraxis, Wangen, Bahnhofstrasse 27, Parz. 25
anfrage: David Chaled (drdavidchaled@gmail.com), Mail «Ausbau Dachgeschoss» 2026-06-07
quellen_buch: ["Bd 2, Kap. 14, S. 919-961 (Ausnuetzung/Anrechnung)"]
status: erste Einschaetzung (Buch-Bootstrap) — Kanton + Kennwerte offen
last_updated: 2026-06-07
---

# Dachgeschoss Wangen, Bahnhofstrasse 27 — baurechtliche Ersteinschaetzung

> Erster Anwendungsfall des Buch-Trainings. Methodik + § aus dem Standardwerk
> «Zuercher Planungs- und Baurecht» (Bd 1+2). **Achtung Kanton:** siehe Punkt 0.

## 0. Entscheidender Vorbehalt — welcher Kanton / welche Gemeinde?

«Wangen, Bahnhofstrasse 27» ist nicht eindeutig. In der KB liegen **zwei** Baureglemente:
- **Wangen SZ** (Bezirk March) — `raw/…_amtlich_sz_baur-wangen-sz.md`
- **Wangen-Bruettisellen ZH** (Bezirk Buelach) — `raw/…_amtlich_zh_bzo-wangen-bruttisellen.md`

Das ist **entscheidend**: Liegt das Objekt in **SZ**, gelten das SZ-PlanungsG/PBV und das
Baureglement Wangen SZ — die hier zitierten Zuercher §§ gelten dann nur **sinngemaess
(gleiche Methodik, andere Paragraphen/Werte)**. **Vor jeder verbindlichen Aussage Kanton
+ Gemeinde + Parzelle 25 (Zone, Ausnuetzungsmass, Parzellenflaeche) klaeren.**

## 1. Bestand (aus GRULÉR-Gebaeudevermessung, 14.01.26, SIA 416)

| Geschoss | GF (m²) | HNF (m²) | Nutzung |
|----------|---------|----------|---------|
| UG | 298.8 | — | Garagen (3+), Keller, Heizung/Tank, Luftschutz |
| EG | 240.1 | 175.4 | **Arztpraxis** (Sprech-/Untersuchung/Roentgen/Labor) |
| OG1 | 223.9 | 166.9 | **2 Wohnungen**: WHG 1 4.5-Zi 105.0 m², WHG 2 2.5-Zi 61.9 m² |
| OG2 | 152.3 | 117.7 | Teil von WHG 3 |
| DG | 107.3 | 78.0 | Teil von WHG 3 (Wohnessküche, 3 Zimmer, Wirtschaftsraum, Estrich) |
| **Total** | **1'022.4** | **538.0** | |

- **WHG 3** = 7.5-Zi-**Maisonette OG2 + DG**, 195.7 m² — das ist die «grosse, in die Jahre
  gekommene Wohnung», um die es geht.
- **Schnitt:** DG-Boden +7.93, First +12.05; Aufbau-Hoehe DG ~4.1 m, aber unter Dachschraege
  teils nur **1.90-1.94 m** lichte Hoehe; im Plan die **1.50-m-Hoehenlinie** (Grenze nutzbarer
  Flaeche) eingezeichnet. Gebaeude hat **Lift** (Maschinenraum im DG).
- Geschossigkeit: EG + OG1 + OG2 als Vollgeschosse, **DG als echtes Dachgeschoss** (Schraege) —
  zu verifizieren am Vollgeschoss-/Dachgeschoss-Begriff (§ 276 PBG, Kap. 16).

## 2. Frage «Ausbau/Umbau ja oder nein?» — die Ausnuetzung entscheidet

Massgeblich ist die **Ausnuetzungsziffer** (Bd 2, Kap. 14, S. 938):
`AZ = anrechenbare Wohn-/Arbeitsraeume in Vollgeschossen / massgebliche Grundstuecksflaeche`
(§ 254 Abs. 1 PBG ZH).

**Schluessel fuer Dachausbau — Mehrflaechenregel (§ 255 Abs. 2 PBG ZH, S. 950 f.):**
Raeume im **Dachgeschoss** zaehlen **nicht voll** zur Ausnuetzung. Anrechenbar ist nur die
**Mehrflaeche** ueber der Schwelle
`gesamte zulaessige Ausnuetzung ÷ Zahl der zulaessigen Vollgeschosse` je Geschoss.
→ Ein bestehendes, bereits wohngenutztes DG ist also ausnuetzungsmaessig **privilegiert**;
ein blosser **Innenausbau ohne Flaechen-/Volumenvermehrung** belastet die AZ kaum zusaetzlich.

**Damit ist die Kernfrage:** Wie viel **AZ-Reserve** hat Parz. 25 noch?
- Dazu fehlen: **Zone**, **zulaessige AZ** (bzw. das kantonale Mass), **Parzellenflaeche**,
  und die heute **ausgeschoepfte** anrechenbare GF. (Reserve = zulaessig − bestehend.)
- Bezugsquellen: Baureglement/BZO der richtigen Gemeinde (in KB vorhanden), GIS (maps.zh.ch
  bzw. SZ-GIS), Grundbuch/Parzellenflaeche.

**Vorlaeufige Tendenz:** Ein **Ausbau/Umbau im bestehenden Volumen ist baurechtlich i.d.R.
gut machbar** (Bestandesbauten mit DG-Wohnnutzung sind ausnuetzungsmaessig beguenstigt).
Verbindlich erst nach AZ-Reserve-Rechnung.

## 3. «Welche Moeglichkeiten beim Ausbauen?»

| Variante | Baurechtlich | Hinweis |
|----------|--------------|---------|
| **A — Innensanierung im Volumen** (gleiche Aussenhuelle) | am unkompliziertesten; nur wo Aufenthaltsraeume tangiert: **Raumhoehen/Wohnhygiene** (Kap. 17) | bewilligungspflichtig sobald aussen sichtbar/strukturell; sonst meldearm |
| **B — Dachaufbauten/Lukarnen, neue Dachflaechenfenster** | gewinnt Kopfhoehe + nutzbare Flaeche, loest aber **Dachgestaltung/Gebaeudehoehe** (Kap. 16) aus; allenfalls **AZ-Mehrflaeche** | Mass der zulaessigen Aufbauten je Gemeinde sehr unterschiedlich |
| **C — Vollausbau Estrich/Wirtschaftsraum zu Wohnen** | Flaeche kann ueber die Mehrflaechen-Schwelle treten → **AZ-relevant** | Eignung (Belichtung/Hoehe) noetig — vgl. S. 944 f. |

**Wohntauglichkeit unter der Schraege** (Bd 2, S. 944 f.): Raeume sind nur «anrechenbar/
nutzbar», wenn sie zum Wohnen **geeignet** sind — genuegende **Belichtung/Belueftung** und
**Raumhoehe**. Reduit-/Lagerflaechen mit ~1.8 m Hoehe oder zu wenig Fensterflaeche gelten
nicht als Wohnflaeche (BEZ-/VB-Praxis). Die 1.50-m-Linie im Plan zeigt, wo es eng wird.

## 4. «Aus der grossen Wohnung zwei machen?» — Nutzungsart/Teilung

Eine **Wohnungsteilung** aendert die **Ausnuetzung nicht** (gleiche Flaeche, andere Aufteilung).
Auszuloesen/zu pruefen sind aber:
- **Erschliessung je Einheit**: separater, abschliessbarer Zugang. Treppenhaus **und Lift**
  sind vorhanden → guenstige Ausgangslage.
- **Wohnhygiene je Einheit** (Kap. 17): Mindest-Raumhoehen, Belichtung, Kueche/Nasszelle —
  im DG wegen der Schraege (1.90-1.94 m) genau zu pruefen.
- **Brand-/Fluchtweg** (2. Rettungsweg) und **Schallschutz** zwischen den Einheiten (SIA 181).
- **Pflichtparkplaetze**: zusaetzliche Wohnung → zusaetzlicher PP-Bedarf; Reserve durch
  Garagen + Aussenparkfelder vorhanden (UG 3 Garagen + Vorplatz).
- **Praxis im EG** bleibt bestehen → gemischte Nutzung; keine Mischrechnung der Zonen-
  ausnuetzung noetig (ein Grundstueck, eine Zone — Mischrechnungsverbot betrifft Zonen, S. 921).

**Tendenz:** Teilung der 195.7-m²-Maisonette in z.B. eine OG2-Wohnung + eine kleinere
DG-(Attika-)Wohnung ist konzeptionell moeglich; die **DG-Einheit allein** (78 m² HNF, tiefe
Raeume) ist als eigenstaendige Wohnung **grenzwertig** und steht/faellt mit Belichtung+Hoehe.

## 5. Empfehlung / naechste Schritte (vor dem Rueckruf an Chaled)

1. **Kanton + Gemeinde + Zone + Parzellenflaeche (Parz. 25) feststellen** → richtiges
   Baureglement waehlen (beide in KB), AZ-Reserve rechnen.
2. **AZ-Reserve** = zulaessige anrechenbare GF − heute anrechenbare GF (Vollgeschosse +
   DG-Mehrflaeche). Erst dann ist «Ausbau ja/nein» belastbar.
3. **Vollgeschoss-/Dachgeschoss-Status** des DG klaeren (§ 276 PBG bzw. SZ-Pendant).
4. **Telefonat** mit Chaled: Bestand ist hochwertig (Lift, Praxis-Mieter, viel Parkierung).
   Innensanierung gut machbar; Mehrflaeche/Teilung nach AZ-Reserve und Wohnhygiene-Check.

## Belege (Buch-Destillat)

- [[14-nutzungsdichte-ausnuetzung]] — § 254/255/256/257/259/260/276 PBG; Mehrflaechenregel
  S. 950 f.; Wohntauglichkeit S. 944 f.; AZ-Formel S. 938.

> *Hinweis: Ersteinschaetzung, ersetzt keine Rechtsberatung. Kanton/Gemeinde, aktuelle
> Baureglements-Fassung und Parzellendaten sind vor verbindlicher Aussage zu verifizieren.*
