---
quelle: Cercle Bruit «Vollzugshilfe 6.21 — Lärmrechtliche Beurteilung von Luft/Wasser-Wärmepumpen», Version 1. November 2024 (amtsnahe Vollzugshilfe, primär an Vollzugsbehörden gerichtet)
herausgeber: Cercle Bruit (Vereinigung der kantonalen Lärmschutzfachstellen) in Zusammenarbeit mit FWS (Fachvereinigung Wärmepumpen Schweiz)
ausgabe: PDF, 22 Seiten, vollständig via curl-Download + pdftotext -layout gelesen (WebFetch scheiterte an der Adobe-InDesign-Struktur, curl+pdftotext lieferte sauberen Volltext)
gelesen: 2026-07-13 (Run 56, vollständig S. 1-22 inkl. Anhang 4 Fallbeispiel)
datenstand: 1. November 2024 (Version der Vollzugshilfe; Schallleistungspegel-Basis LWA2°C gilt seit diesem Datum)
status: established
last_updated: 2026-07-13
---

# Wärmepumpen-Lärmschutz — Grenzwerte, Berechnung, Fallbeispiel (Cercle Bruit Vollzugshilfe 6.21)

**Das Wichtigste in 1 Satz:** Jede aussen (oder in Splitbauweise) betriebene Luft/Wasser-Wärmepumpe
muss über einen **Lärmschutznachweis** zeigen, dass ihr berechneter Beurteilungspegel am
nächstgelegenen Fenster eines Nachbargebäudes den nach Empfindlichkeitsstufe (ES) massgebenden
Planungswert nicht überschreitet — Erdsonden-Wärmepumpen sind lärmrechtlich unproblematisch und
brauchen keine Beurteilung.

## Geltungsbereich und rechtliche Grundlage
- **Betroffen:** Luft/Wasser-Wärmepumpen (innen, aussen oder als Split-Gerät aufgestellt) sowie
  Luft/Luft-Wärmepumpen — beide erzeugen Aussenlärm. **Nicht betroffen:** Erdsonden-Wärmepumpen
  (Sole/Wasser, Wasser/Wasser) — keine Aussenlärmemissionen, keine Beurteilung nötig.
- **Rechtsgrundlage:** Art. 11 Abs. 2 USG (Vorsorgeprinzip), Art. 7 Abs. 1 und Abs. 3 LSV (neue
  ortsfeste Anlagen), Art. 36 Abs. 1 LSV (Ermittlungspflicht), Anhang 6 Ziff. 1 Abs. 1 lit. e und
  Ziff. 34 LSV (Wärmepumpen-Sonderbestimmung).
- **Stellenwert der Vollzugshilfe:** richtet sich primär an Vollzugsbehörden; konkretisiert
  unbestimmte Rechtsbegriffe. Wer sie befolgt, vollzieht rechtskonform — andere, ebenfalls
  rechtskonforme Lösungen bleiben zulässig.

## Beurteilungsverfahren — die Formel
Der Beurteilungspegel Lr nach Anhang 6 LSV wird in zwei Schritten berechnet:

**Schritt 1 — Schalldruckpegel am Immissionsort:**
```
Leq = LWA2°C − 11 dB + DC − 20·log(s / s0)
```
- `LWA2°C` = A-bewerteter Schallleistungspegel der Wärmepumpe **bei 2 °C Aussentemperatur**
  (seit 1.11.2024 massgebend, zuvor andere Referenztemperatur) — aus dem Schalldaten-Verzeichnis
  der FWS, ersatzweise Herstellerangabe nach Messnorm EN 12102-1.
- `DC` = Richtwirkungsmass, abhängig vom Aufstellungsort: **freistehend (≥3 m zur Wand) +3 dB**,
  **an der Wand +6 dB** (weitere Zuschläge bei einspringender Fassadenecke bzw. wenn Quelle und
  Empfangsort an derselben Fassade liegen).
- `s` = Abstand in Metern zwischen Lärmquelle und Immissionsort (nächstes Fenster eines
  lärmempfindlichen Raums bzw. Baulinie bei unbebauten Parzellen), `s0` = 1 m.

**Schritt 2 — Beurteilungspegel:**
```
Lr = Leq + K1 + K2 + K3 + 10·log(t / t0)
```
- `K1` = Pegelkorrektur Anlagetyp: **5 dB am Tag, 10 dB in der Nacht**.
- `K2` = 2 dB bei schwach hörbarem Tongehalt (Standardannahme).
- `K3` = 0 dB (kein Impulsgehalt, Standardannahme).
- `10·log(t/t0)` = Betriebszeitkorrektur, `t0 = 720 Min.`; **Standardannahme im Nachweis ist
  Dauerbetrieb (t = 720 Min. → Korrektur 0 dB)** — konservativ, da eine korrekt dimensionierte
  WP nachts im Schnitt nur ~4 Std. läuft (reale Korrektur wäre ca. −5 dB). Diese bewusst
  konservative Annahme begünstigt leise Wärmepumpen-Modelle im Vollzug.

## Beurteilungszeitraum und Nachtkritik
Massgebend ist i.d.R. die **Nacht (19–07 Uhr, kritischer Bereich 22–06 Uhr)**, weil hier deutlich
strengere Planungswerte gelten als am Tag. Der FWS-Lärmschutznachweis berechnet beide Zeiträume,
kann aber auch für rein tagsüber betriebene Anlagen verwendet werden.

## Lärmschutzmassnahmen (Prüf-Kaskade)
Der Nachweis verlangt die Prüfung von vier primären Massnahmen: (1) Innenaufstellung
(meist nur bei Neubauten wirtschaftlich, sonst mehrere Tausend Franken für Wanddurchbrüche/
Zu-Abluftschächte), (2) Wahl eines leiseren Wärmepumpen-Modells, (3) Optimierung des
Aufstellungsorts (Abstand zu lärmempfindlichen Räumen/Sitzplätzen maximieren, Standort an
bereits lärmbelasteter Seite wählen z.B. Strassenseite), (4) Flüstermodus nachts (nur bei
Spezialfällen möglich, da eine korrekt dimensionierte WP i.d.R. keine Leistungsreserve dafür hat).
**Vorsorgeprinzip:** unabhängig von der Planungswert-Einhaltung sind weitergehende Massnahmen nur
zumutbar, wenn mit **höchstens 1 % der Investitionskosten** eine Reduktion von **mindestens 3 dB**
erreichbar ist (Art. 7 Abs. 3 LSV) — Schalldämmhauben (mehrere Tausend Franken) oder
Lärmschutzwände sind bei eingehaltenen Planungswerten deshalb i.d.R. **nicht verhältnismässig**
(Lärmschutzwände zudem oft wirkungslos wegen tiefer Frequenzen/Schallbeugung).

## Fallbeispiel (Anhang 4, vollständig nachgerechnet)
EFH, Luft/Wasser-Wärmepumpe als Heizungsersatz, aussen aufgestellt 1 m von der Südostfassade,
Nachbargebäude 14 m entfernt, Empfindlichkeitsstufe ES II:

| Grösse | Wert |
|---|---|
| LWA2°C | 60 dB(A) |
| DC (Wand-Aufstellung mit Abstrahlung zur Seite) | 6 dB |
| s | 14 m |
| K1 (Nacht) | 10 dB |
| K2 | 2 dB |
| K3 | 0 dB |
| Planungswert ES II Nacht | **45 dB(A)** |

Rechnung: `Leq = 60 − 11 + 6 − 20·log(14/1) = 55 − 23 = 32 dB(A)`, dann
`Lr = 32 + 10 + 2 + 0 + 0 = 44 dB(A)`. Der Planungswert von 45 dB(A) wird mit 44 dB(A) knapp,
aber gültig eingehalten. Die Wärmepumpe steht bewusst an der Seite mit dem grössten Abstand zu
Nachbargebäuden; am eigenen Haus ist nur ein lärmempfindlicher Raum betroffen (mit Zweitfenster
auf der abgewandten Seite).

## Bauherren-Transfer
Bei einem Heizungsersatz mit aussen aufgestellter Luft/Wasser-WP lohnt sich die Reihenfolge:
(1) zuerst den **Standort optimieren** (grösstmöglicher Abstand zu Nachbarfenstern, wandseitige
statt freistehende Aufstellung vermeiden wo möglich — freistehend ist mit +3 dB günstiger als
an der Wand mit +6 dB), (2) ein **leises Modell wählen** (LWA2°C-Wert vor dem Kauf vergleichen,
Unterschiede zwischen Modellen gleicher Heizleistung können erheblich sein), (3) erst wenn beides
nicht reicht, teurere bauliche Massnahmen (Schalldämmhaube, Innenaufstellung) prüfen — die sind
bei eingehaltenem Planungswert rechtlich meist nicht durchsetzbar verlangt, aber freiwillig
möglich. Der Lärmschutznachweis (Web-Tool der FWS, `fws.ch/laermschutznachweis`) ist im Kanton
Zürich seit 1.1.2023 Teil des vereinfachten Meldeverfahrens (private Kontrolle) und für die
Baueingabe obligatorisch — unabhängig davon, ob Planungswerte offensichtlich eingehalten sind.

## Offene Punkte
- Die genauen **Planungswert-Tabellen nach Anhang 6 LSV je Empfindlichkeitsstufe** (ES I-IV,
  Tag/Nacht) sind in dieser Vollzugshilfe nicht als eigene Tabelle abgedruckt, nur das
  Fallbeispiel nennt ES II Nacht = 45 dB(A) — für andere ES-Stufen wäre der LSV-Anhang-6-Text
  selbst oder eine kantonale Tabelle (z.B. `bauen-im-laerm.ch`) zu konsultieren.
- Kein Bezug zu konkreten CHF-Kosten des Lärmschutznachweises selbst (Aufwand für Fachperson).
- Die kantonalen Vollzugs-Ergänzungen (z.B. Kt. ZH: Meldeverfahren, Beurteilungsort-Praxis) sind
  in einer separaten Web-Quelle (`zh.ch/laermschutz-neuanlagen`) beschrieben, nicht in diesem
  Primärdokument selbst — als eigener Bauherren-Transfer-Punkt ergänzt.

**Backlinks:** [[waermepumpe-systemvergleich]] · [[heizleistung-und-waermeerzeuger]]
