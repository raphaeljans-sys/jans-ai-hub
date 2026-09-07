# Projekt-Stammdaten (Ausschreibung)

Verbindliche Stammdaten pro Bauprojekt — vor allem die **Bauherrschaft**, die
Objektbezeichnung und feste Projektparameter. Diese Angaben muessen in **jedem**
Los desselben Projekts **identisch** verwendet werden (Begleitschreiben, LV-Stammzeile,
Vergabeempfehlung).

## Regel

**Vor jeder Ausschreibung fuer ein Projekt zuerst die passende Projekt-Stammdatei lesen
und Bauherrschaft + Objektbezeichnung daraus uebernehmen.** Niemals die Bauherrschaft
raten oder aus Datei-/Ordnernamen ableiten. Existiert noch keine Stammdatei fuer das
Projekt, die Bauherrschaft aus bereits erstellten Losen (LV-Stammzeile) verifizieren
und hier festhalten.

## Konvention

- Eine Datei pro Projekt: `<projektnr>-<kurzname>.md` (z.B. `2620-albertstrasse-7.md`).
- Pflichtfelder: Projektnummer, Objekt (exakte Schreibweise), Bauherrschaft (exakte
  Schreibweise inkl. Vertretung), Bauleitung, optional Verwaltung/Ansprechpersonen,
  Standard-Bauvorhaben-Text, Quelle der Verifikation.

## Lose als Vergabeeinheiten (Pflicht ab dem ersten ausgeschriebenen Los)

Jedes Los ist die Vergabeeinheit des Projekts: ein Vertrag, ein Unternehmer, ein Kontoauszug.
Je Los eine Zeile: Los-Nr. (bürointern) | Kürzel (zwei Buchstaben, z.B. GI Gipser, MA Maler,
PL Plattenarbeiten) | BKP-2017-Codes der zugeordneten KV-Konti | KV-Betrag des Loses
(Quelle, Datum) | Rückstellungen Regie/Teuerung/Ausmassreserve im KV | Stand (AS versandt,
vergeben, WV, SR). Dieselbe Zeile ist die Grundlage für Sektion «8a. Vergabeantrag» der
Vergabeempfehlung und für die Buchung in `kostenkontrolle`. Kürzel und Kontenzuordnung
werden beim Anlegen des Loses gesetzt, nie erst bei der Schlussrechnung.

| Projektnr | Objekt | Stammdatei |
|---|---|---|
| 2620 | MFH Albertstrasse 7, 8005 Zürich | `2620-albertstrasse-7.md` |
| 2414 | Umbau + Aufstockung ZFH, Bohlweg 3, 8800 Thalwil | `2414-thalwil.md` |
| 2619 | Universitäts-Kinderspital Zürich, Lenggstrasse 30, 8008 Zürich (Akutspital / PPTS Umnutzung Etage B) | `2619-kispi.md` |
