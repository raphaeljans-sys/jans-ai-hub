# Training-Run 21 — KB Immobilienbewertung (2026-07-13)

**Modus:** Verifikation (vierter Lauf in Folge). Ingest-Curriculum vollstaendig abgearbeitet
seit Run 16; der Loop prueft belegte Kernaussagen adversarial gegen die Originalquellen
(Verifikations-Pflicht ab 12.07., Rule auto-verbesserungen 260712).

## Gewaehltes Thema (statt 10 Ingest-Themen)

Es gibt keine offenen Ingest-/T-Aufgaben mehr. Der im Run-20-Report angekuendigte naechste
Verifikations-Kandidat wurde bearbeitet:

**Nutzungskonzeptions-Kennzahlen S. 123-133 (Wuest-Kurs «Immobilien entwickeln») gegen die
Originalfolien gegengelesen (Modell D, Volltext).** Geprueft wurden alle in
[[nutzungskonzepte]] belegten Zahlen des Zielgruppensegmentierungs-/Nutzermix-Blocks.

## Verifikations-Ergebnis: BESTANDEN

Deckungsgleich mit den Originalfolien (Foliennummern in der Fusszeile):

- **Sinus-Milieu-Kennzahlen** (Folie «Oberschicht / Obere Mittelschicht»): Arrivierte 9 % /
  Ø 47 J / >9'000 CHF; Postmaterielle 13 % / Ø 45 J / CHF 6'000+; Performer 11 % / Ø 39 J /
  CHF 9'000+ — exakt.
- **Best-Ager-Community**: Alter 55-75, (frueh)pensioniert, ueberdurchschnittliches Einkommen,
  Haushaltsgroesse 2.5-4.5 Zi, flexible Wohnungen mit Lift/schwellenlos/Gemeinschaftsraeumen — exakt.
- **Expats House**: Ø 44.2 Jahre, 82 % Hochschulabschluss, 7 Typen (Quelle «Expat Insider 2018»
  von InterNations) — exakt.
- **Aktive Familien**: idealer Nutzermix-Anteil 40-50 %, 3.5-5.5 Zi, 30-45 J, ~2 Kinder,
  grosszuegige Kuechen-/Wohnbereiche, private Aussenraeume, Spielplatz — exakt.
- **Nutzermix Wohnen**: Junge performative Pendler 20-30 % / Familien 40-50 % / Silver Ager
  30-40 % — exakt.
- **Nutzermix Geschaeftsflaechen**: Plug&Live-Gewerbe 65 % / Quartiersversorgung 25 % /
  Kuenstlerhaus 10 % — exakt.

Keine Korrektur noetig; [[nutzungskonzepte]] bleibt `established`.

## Was geaendert wurde

- **Anreicherung** in [[nutzungskonzepte]]: die Milieuzugehoerigkeit der Zielgruppe «Aktive
  Familien» (Buergerliche Mitte 35 % / Buergerlich-Gehobene 25 % / Adaptiv-Pragmatische 25 % /
  Postmaterielle 15 %) war bisher nicht dokumentiert und ist neu erfasst (klar lesbares
  Kreisdiagramm auf der Familien-Milieufolie).
- `last_updated` von [[nutzungskonzepte]] auf 2026-07-13 gehoben.
- Register gepflegt: curriculum.md (Stand Run 21), wissensluecken.md (B-Tabelle + Erledigt),
  CHANGELOG.md.

## Leitplanke / Ehrlicher Befund

Die feingliedrige **Sinus-Verteilungstabelle** (Spalten Ingenbohl / MS-Region Innerschweiz /
Kanton SZ / Schweiz, Folie 51) ist bei der verfuegbaren Aufloesung nur **approximativ** lesbar.
Statt unsichere Dezimalwerte zu uebernehmen (Leitplanke «nichts erfinden»), ist nur der
qualitative, klar belegte Befund erfasst: in der Region Ingenbohl sind **Adaptiv-Pragmatische**
und **Buergerliche Mitte** ueber-, **Postmaterielle / Performer / Konsumorientierte Basis**
unterrepraesentiert (steht im Fliesstext der Folie). Die Dezimalwerte bleiben eine offene,
nicht-kritische Datenluecke (kein KB-relevanter Kennwert).

## Marktpuls (E7)

Nicht erneut geprueft — unveraendert seit Run 17 (2026-07-12): SNB-Leitzins 0.00 %,
Referenzzins 1.25 % (naechste Publ. 01.09.2026), Durchschnittszinssatz 31.03.2026 = 1.31 %,
Mietindex Mai-2026 133.7, Baupreisindex Apr-2026 100.6, SREBI Q1-2026 0.69. Kein neuer
Publikationstermin seit Run 17 erreicht → ein Web-Check nach 1 Tag haette keinen Grenznutzen.

## Empfehlung / Naechster Schritt

**Ruecktaktung ins Nachtfenster — jetzt zum vierten Mal in Folge empfohlen.** Die Runs 18-21
waren allesamt reine Verifikations-Laeufe ohne materiellen Befund; die auto-schliessbaren
Ingest-Rueckstaende sind seit Run 16 abgearbeitet, der Grenznutzen des Intensiv-Takts fuer
diese KB ist praktisch null. Vorschlag: `immobewertung-training` auf 1x im Nachtfenster
(22:00-06:00) zuruecktakten (Rule 260711/260712), bis Raphael neues Rohmaterial in `raw/`
liefert (offene Bring-Schulden D5 Margen-/Finanzierungspraxis, D10 Referenzblatt-Bereinigung,
D11 m3-Index-Faktor 2003→2026).

Falls der Intensiv-Takt dennoch weiterlaeuft, sind die naechsten Verifikations-Kandidaten:
- [[erfolgsfaktoren-wettbewerb]] — die 10 DXMA-Referenzfaelle + Aufwertungsgewinne (z.B.
  Baslerstrasse +52 %) gegen die Original-DXMA-Folien nachrechnen.
- [[nutzungskonzepte]] — die Schwamendingen-Varianten-Nutzermix-Quoten (S. 138-145) gegenlesen.
