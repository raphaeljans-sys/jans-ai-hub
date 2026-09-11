---
quelle: "SIA 181:2020 «Schallschutz im Hochbau» — Anforderungswerte (Zusammenfassung Anhang A)"
herausgeber: "Schweizerischer Ingenieur- und Architektenverein (SIA); Zusammenfassung baumann akustik und bauphysik ag"
ausgabe: "Norm SIA 181:2020 (Aussenlaerm-Korrektur Jan. 2007 uebernommen); Anhang G/H aus SIA 181:2006"
gelesen: 2026-06-24
datenstand: "2026-06-24 / Norm SIA 181:2020 (gueltige CH-Norm Schallschutz Hochbau)"
status: established
last_updated: 2026-09-11
---

# SIA 181:2020 — Schallschutz im Hochbau: Anforderungswerte

> **Querbezug KB `normen` (Norm-Fundstelle) und ⚠ Ausgaben-Diskrepanz — gesetzt Wissens-Chef Run 16,
> 26.07.2026.** Fuer die ziffern-genaue Fundstelle ist die KB `normen` fuehrend (Rule
> `normen-referenz`): `wissen/normen/destillate/sia-181-2006.md` destilliert das **Original-PDF der
> Ausgabe 2006** (Ziff. 3.2.1.3: erhoehte Anforderung **+3 dB**; Tabelle 6 / Ziff. 3.2.3.3
> Haustechnik; Ziff. 0.1.2 + Anhang G fuer den Schutz *innerhalb* der Nutzungseinheit).
> Dieser Artikel arbeitet mit der geltenden **Ausgabe 2020** (Abstand Mindest↔erhoeht **+4 dB**) und
> stuetzt sich auf eine Bueros-Zusammenfassung, nicht auf das Original. Die Differenz +3/+4 dB ist
> also eine **Ausgaben-**, keine Sachdifferenz. Fuer JANS-Ausgaben gilt **SIA 181:2020**; in
> Vertraegen gilt die vereinbarte Ausgabe. Das Re-Destillat SIA 181:2020 aus dem Original ist
> Bring-Schuld der KB `normen` (Register-Eintrag vorhanden). Arbeitsteilung wie beim SIA-180-Paar:
> `normen` fuehrt die Norm-Fundstelle, `energie` die Vollzugs-/Anwendungsebene.

## Das Wichtigste in 1 Satz
Die SIA 181:2020 legt die **gesetzlich/privatrechtlich verbindlichen Mindestanforderungen** an den
Schallschutz im Hochbau fest (Luft-, Tritt-, Haustechnik- und Aussenlaerm), je nach **Laermempfindlichkeit
des Empfangsraums** und **Stoergrad der Quelle** — und schreibt bei **Ein-/Doppel-/Reihen-EFH und
Stockwerkeigentum die erhoehten Anforderungen zwingend** vor.

## Grundlogik
- Bewertet wird der **Empfangsraum** (wo man gestoert wird), nicht die Quelle. Drei Stufen
  **Laermempfindlichkeit**: **gering** (z.B. Nebenraeume), **mittel** (Wohnen, Schlafen, Buero),
  **hoch** (Spital/Heim-Ruheraeume, besonders schutzbeduerftig).
- **Stoergrad der Quelle** (Innenlaerm): klein / maessig / stark / sehr stark.
- **Zwei Niveaus:** **Mindestanforderung** (Gesetzesminimum) und **erhoehte Anforderung** (Komfort, den
  «die meisten Menschen als behaglich empfinden»). Neu in der 2020er-Fassung: der Abstand Mindest↔erhoeht
  wurde fuer Innenlaerm von 3 auf **4 dB** vergroessert.
- Kenngroessen sind **bauwerts-/volumenkorrigiert** (am fertigen Bau gemessen, inkl. Flankenuebertragung),
  NICHT die Labor-Einzahlwerte R_w/L'_n,w des Bauteils → vgl. `[[clt-schallschutz-stora-enso]]`.

## Kernwerte (Schutz gegen INNENLAERM)

### Luftschall D_i in dB — Mindestanforderung
(D_i,tot = D_nT,w + C − C_v; **groesser = besser**. Erhoehte Anforderung: **+4 dB**.)

| Laermempfindlichkeit | Stoergrad klein | maessig | stark | sehr stark |
|---|---|---|---|---|
| gering | 42 | 47 | 52 | 57 |
| **mittel (Wohnen)** | **47** | **52** | **57** | **62** |
| hoch | 52 | 57 | 62 | 67 |

### Trittschall L' in dB — Mindestanforderung
(L'_tot = L'_nT,w + C_I − C_v; **kleiner = besser**. Erhoehte Anforderung: **−4 dB** (tiefer).)

| Laermempfindlichkeit | Stoergrad klein | maessig | stark | sehr stark |
|---|---|---|---|---|
| gering | 63 | 58 | 53 | 48 |
| **mittel (Wohnen)** | **58** | **53** | **48** | **43** |
| hoch | 53 | 48 | 43 | 38 |

### Haustechnik-Geraeusche L_H,tot in dB(A) — Mindestanforderung
(A-bewerteter Beurteilungspegel mit Volumenkorrektur; erhoeht **−4 dB**, **Kleinstwert 25 dB**.)

| Laermempfindlichkeit | Einzelgeraeusch Funktion | Einzelgeraeusch Benutzung | Dauergeraeusch |
|---|---|---|---|
| gering | 38 | 43 | 33 |
| mittel | 33 | 38 | 28 |
| hoch | 28 | 33 | 25 |

## Schutz gegen AUSSENLAERM D_e in dB
(D_e,tot = D_nT,w + C_tr − C_v; Korrektur Jan. 2007. Erhoehte Anforderung: **+3 dB**.)

| Laermempfindlichkeit | ruhige Lage Tag/Nacht | im Verkehrsbereich Tag (L_r>60) | Nacht (L_r>52) |
|---|---|---|---|
| gering | 22 | L_r − 38 | L_r − 30 |
| mittel | 27 | L_r − 33 | L_r − 25 |
| hoch | 32 | L_r − 28 | L_r − 20 |

> **Schluesselregel (Bauherren-relevant):** Bei **Ein-, Doppel- und Reihen-EFH sowie bei
> Stockwerkeigentum** gelten **immer die erhoehten Anforderungen** (Aussenlaerm). Im uebrigen
> sind erhoehte Anforderungen **vertraglich** festzulegen (z.B. im Werkvertrag/Kaufvertrag).

## Empfehlungen INNERHALB einer Nutzungseinheit (Anhang G, aus SIA 181:2006)
Die 2020er-Norm macht hierzu keine Vorgaben → es gilt die alte Norm 2006 als Empfehlung.
Stufe 1 = niedrig, Stufe 2 = hoeher. Auszug (Luftschall D_i / Trittschall L'):

> **Drei Praezisierungen, uebernommen aus dem Primaerdestillat `wissen/normen`
> (`sia-181-2006.md`, Anhang G am Original gelesen und verifiziert, Run 84, 11.09.2026):**
> 1. **Die Tabellenwerte gelten ohne Einfluss der Tueren und offener Treppen** (Fussnote 1
>    zu Tab. 15) — die D_i-Werte unten betreffen das Trennbauteil, nicht die Tuer darin.
> 2. **Tueren sind separat zu regeln, ueber das Labor-R_w** (G.1): die bauakustische
>    Anforderung an Tueren (ausser Wohnungs-/Hauseingangstueren) wird ueber das bewertete
>    Schalldaemm-Mass R_w aus Eignungstests festgelegt, nicht ueber die D_i-Werte dieser
>    Tabelle. Anhang G nennt dafuer selbst keinen Zahlenwert.
> 3. **Stufe 1/2 (Komfortstufen dieser Empfehlung) ist NICHT dasselbe wie «Mindest-» und
>    «erhoehte Anforderung»** der Norm (Ziff. 2.2, oben im Artikel). «Stufe 2» nie mit
>    «erhoehte Anforderungen» gleichsetzen — zwei unabhaengige Stufensysteme.
>
> Praxisfolge (z.B. Spital/Heim-Korridor zu Zimmer): eine Planlegende mit einem dB-Wert an
> einer Tuer ist ein Elementwert R_w, die Tabellenempfehlung D_i 30/35 dB gilt fuer die
> Wand ohne Tuereinfluss — beide Zahlen koennen zufaellig gleich sein, meinen aber
> verschiedene Groessen.

| Nutzung | Raeume | D_i St.1 | St.2 | L' St.1 | St.2 |
|---|---|---|---|---|---|
| Wohnen | Schlafen ↔ Wohnen/Nasszelle | 40 | 45 | 55 | 50 |
| Buero | Buero ↔ Buero | 35 | 40 | 60 | 55 |
| Buero | Korridor ↔ Direktion | 35 | 40 | 60 | 55 |
| Schule | Klasse ↔ Klasse | 45 | 50 | 60 | 55 |
| Schule | Musikzimmer ↔ Klasse | 55 | 60 | 50 | 45 |
| Hotel | Zimmer ↔ Zimmer | 50 | 55 | 55 | 50 |
| Altersheim/Spital | Zimmer ↔ Zimmer | 50 | 55 | 55 | 50 |
| Altersheim/Spital | Korridor ↔ Zimmer | 30 | 35 | 55 | 50 |

Dauergeraeusche Haustechnik **innerhalb** der Einheit (L_H, Empfehlung): Schlaf-/Kinderzimmer
30 (St.1) / 25 (St.2); Wohnen/Buero/Heim/Spital/Hotel 35 / 30. (Werte um 25 dB ~ Grundgeraeusch.)

## Bauherren-Transfer
- **Was schuldet der Architekt?** Im Neubau ist der Schallschutz **nicht verhandelbar nach unten** —
  die SIA-181-Mindestwerte sind Stand der Technik und damit (auch ohne Vertragsklausel) geschuldet.
  Bei **EFH/Reihen-EFH/STWEG gilt automatisch das erhoehte Niveau** gegen Aussenlaerm; will der
  Bauherr Wohnungs-Komfort (kein Trittschall vom Nachbarn oben), muss er die **erhoehten Anforderungen
  vertraglich** vereinbaren — sonst schuldet der Unternehmer nur das Minimum.
- **Faustzahlen Wohnen (mittlere Empfindlichkeit, Stoergrad maessig):** Wohnungstrennung
  Luftschall **D_i ≥ 52 dB** (erhoeht 56), Trittschall **L' ≤ 53 dB** (erhoeht 49). Diese Werte sind
  am **fertigen Bau inkl. Flanken** zu erreichen — Labor-R_w/L'_n,w des Bauteils muss **mit Reserve**
  darueber liegen (Holzbau wegen Flankenuebertragung 3–8 dB Zuschlag, vgl. `[[clt-schallschutz-stora-enso]]`).
- **Haustechnik ist der haeufigste Streitpunkt:** Waermepumpe, Lueftung, Geschirrspueler, Dachentwaesserung —
  Dauergeraeusche im Schlafzimmer duerfen **28 dB(A)** (mittlere Empfindlichkeit) nicht ueberschreiten.
  Das diszipliniert die **WP-Aufstellung** (vgl. Laermschutznachweis LN-1 beim Heizungsersatz, FAQ F14).
- **Aussenlaerm an verkehrsexponierter Lage** treibt die Fensterqualitaet: an stark befahrener Strasse
  kann D_e = L_r − 33 (mittel) Schallschutzfenster + entkoppelte Lueftung verlangen — frueh im
  Laermgutachten klaeren (Laermschutz-Verordnung/USG-Planungswerte → Skill `baurecht`).

## Flankenübertragung im Holzbau (Nachtrag 24.08.2026)

Die SIA-181-Systematik zur Flankenübertragung — Projektierungszuschlag KP (Ziff. 4.1.1.2),
Zuschlag KF für Flankenübertragungen am Bau und die Spektrum-Anpassungswerte C/Ctr/CI
(Ziff. 4.1.1.3) — ist jetzt primärquellenbelegt über den BFH-Lignum-Bericht 2712-SB-01 (2008):
`[[lignum-schallschutz-holzbau-flankenuebertragung]]`. Konkretes Zahlenbeispiel von dort:
eine Wohnungstrennwand mit R'w = 55 dB in-situ (flankenbehaftet) kann im Labor-Direktdämm-Mass
Rw = 60 dB erreichen; die Differenz ist der KP/KF-Effekt. Ein bezifferter Einzelwert für
Holzbau-Anschlüsse: abgehängte Decke ~60 mm bei Kastendecken bringt **3-6 dB** Verbesserung.
Ein vollständiger, tabellarischer Katalog konkreter Rw-/Ln,w-Werte je Anschlussdetail (Stoss-
Lösung) ist damit **weiterhin nicht** belegt — der dafür zuständige Online-Bauteilkatalog
(`lignumdata.ch`/`bauteilkatalog.lignum.ch`) war am 24.08.2026 wegen Serverfehler nicht
erreichbar (Details siehe verlinktes Destillat).

## Offene Punkte / Abgrenzung
- **Numerischer Anschlussdetail-Katalog Holzbau** (Rw/Ln,w je Stoss-Lösung): `lignumdata.ch` bei
  nächster Gelegenheit erneut prüfen (Werkzeugproblem 24.08.2026, siehe
  `[[lignum-schallschutz-holzbau-flankenuebertragung]]`).
- **Aussenlaerm-Rechtsrahmen** (USG/LSV Belastungsgrenzwerte, Planungs-/Immissionswerte) → Skill `baurecht`
  (oeffentlich-rechtlich), waehrend SIA 181 die **privatrechtliche/bautechnische** Seite abdeckt.
- Exakte **C/C_tr/C_v-Spektrumanpassung** und die Mess-/Rechenverfahren (SIA 181 Hauptteil) hier nicht
  vertieft — fuer den Nachweis Bauphysiker beiziehen.

## Quelle
SIA 181:2020 «Schallschutz im Hochbau», Anforderungswerte zusammengefasst (Anhang A) durch
**baumann akustik und bauphysik ag** (PDF-Zusammenfassung); Anhang G/H (Schallschutz innerhalb
Nutzungseinheiten) urspruenglich aus derselben Buero-Zusammenfassung uebernommen, seit
11.09.2026 aber **primaerbelegt** durch `wissen/normen/destillate/sia-181-2006.md` (Original-PDF
SIA 181:2006, Anhang G/H/J, Tabellen am Rendering gelesen und durch einen unabhaengigen
Refuter-Agenten verifiziert, Run 84) — die acht Zeilen und L_H-Werte oben stimmen mit dem
Primaerbeleg ueberein.
⚠ **Datenstand 2026-06-24 (Hauptteil):** Werte des normativen Kerns (Ziff. 2.2 ff.) stammen
weiterhin aus einer Buero-Zusammenfassung der Norm — fuer den projektverbindlichen Nachweis die
**Original-Norm SIA 181:2020** beiziehen. Fuer die ziffern-genaue Fundstelle im Anhang G/H/J ist
die KB `normen` fuehrend (Rule `normen-referenz`). Backlinks:
`[[holzbau-bauphysik-clt]]`, `[[clt-schallschutz-stora-enso]]`, `[[schallschutz-sia181]]`,
`[[lignum-schallschutz-holzbau-flankenuebertragung]]`.
