# Training-Run 20 — Immobilienbewertung (2026-07-13)

## Kontext

Dritter Lauf in Folge im **Verifikations-Modus** (Ingest-Curriculum seit Run 19 vollstaendig
abgearbeitet). Ausgewaehltes Thema gemaess Empfehlung aus Run 19: das Lehrstueck
«hoeherer Ertrag ≠ hoeherer Landwert» (Wuest-Kurs S. 153-155), das seit Run 9 (2026-06-26) in
[[residualwertmethode]] dokumentiert ist, aber noch nie gegen die Original-Folien
nachgerechnet wurde.

## Vorgehen (Modell D — Volltext-Recompute)

Quelle: `IMMO - 03 KNOW-HOW/05 Residualwert/Folien WuestPartner/
Immo_02_P23D_Praesentation_Nextcloud.pdf`, Seiten 153-155 (via Read `pages:`).

Seite 153 zeigt die Wohnungstyp-Verteilung der vier Varianten (Office-Homes, Perlenhaeuser,
Jahreszeitenwohnungen, Best-Ager-Community). Seite 155 zeigt die Wirtschaftlichkeitsrechnung
fuer drei der vier Varianten (Jahreszeitenwohnungen fehlt auf dieser Folie — nur die drei in
der KB dokumentierten Varianten sind dort gerechnet).

## Ergebnis

| Variante | Ertragswert | Erstellung (inkl. R/G) | Landwert (rechnerisch) | Landwert (Tabelle) |
|---|---|---|---|---|
| Office-Homes | 39'845'000 | 30'500'000 | 9'345'000 | ~9.3 Mio ✓ |
| Perlenhaeuser | 39'249'000 | 29'900'000 | 9'349'000 | ~9.4 Mio (Rundungsgrenze) |
| Best-Ager-Community | 38'981'000 | 33'200'000 | 5'781'000 | ~5.8 Mio ✓ |

Formel **Landwert = Ertragswert − Erstellung** reproduziert sich fuer alle drei Zeilen exakt
bzw. auf der Rundungsgrenze (Perlenhaeuser: 9'349'000 liegt zwischen 9.3 und 9.4 Mio bei
Rundung auf eine Dezimalstelle — keine sachliche Abweichung).

**Zusatz-Plausibilisierung:** Landwert/CHF-pro-m2-GSF sollte fuer alle drei Varianten
dieselbe Grundstuecksflaeche ergeben, da laut Lehrstueck dasselbe Grundstueck zugrunde liegt:
- Office-Homes: 9.3 Mio / 880 CHF/m2 ≈ 10'568 m2
- Perlenhaeuser: 9.4 Mio / 880 CHF/m2 ≈ 10'682 m2
- Best-Ager-Community: 5.8 Mio / 550 CHF/m2 ≈ 10'545 m2

Die drei impliziten Grundstuecksflaechen liegen innerhalb von ±1.3 % zueinander (~10.5-10.7k
m2) — konsistent mit der Kernaussage des Lehrstuecks: gleiches Grundstueck, unterschiedliche
Nutzungskonzepte, die ertragsstaerkste Variante (Best-Ager-Community, 246 CHF/m2 HNF p.a.,
4.4 % Bruttorendite) hat trotzdem den mit Abstand tiefsten Landwert, weil die
Erstellungskosten (5'230 CHF/m2 HNF) ueberproportional hoeher liegen als bei den anderen
zwei Varianten (4'770/4'520 CHF/m2 HNF).

## Verdikt

**Bestanden.** Keine Korrektur an [[residualwertmethode]] noetig — die Tabelle war bereits
korrekt aus der Quelle uebernommen. Neu ergaenzt: die Verifikations-Notiz mit den
nachgerechneten Zwischenwerten und der GSF-Konsistenzpruefung, als Beleg fuer kuenftige
Nachfragen. Status bleibt `established`, `last_updated` auf 2026-07-13.

## Marktpuls (E7)

Nicht erneut geprueft. Run 17 (2026-07-12) hat alle Zins-/Preis-Anker als unveraendert
bestaetigt; ein taeglicher Web-Check einen Tag spaeter haette keinen Grenznutzen (naechster
Publikationstermin Referenzzins 01.09.2026, SNB-Entscheid 09.2026).

## Naechste Schritte

- Verifikations-Kandidat fuer den naechsten Lauf: Nutzungskonzeptions-Kennzahlen
  ([[nutzungskonzepte]]) — Sinus-Milieu-Prozentzahlen und Nutzermix-Quoten (S. 123-133)
  gegen die Originalfolien gegenlesen.
- **Empfehlung an Raphael (unveraendert, jetzt drei Laeufe in Folge):** Ruecktaktung des
  Loops ins Nachtfenster. Der auto-schliessbare Rueckstand ist seit Run 16 abgearbeitet;
  seither haerten die Laeufe nur noch bestehende, bereits belegte Kennwerte weiter ab, ohne
  neue Korrekturen zu finden. Der Grenznutzen der Tagesarbeit-Intensivphase sinkt fuer diese
  spezifische KB.
