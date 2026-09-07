# Bauleitung-Training, Lauf 0 (interaktiv, 07.09.2026)

Auftrag Raphael: bbase.ch scannen, Prinzipien als Raster fassen, Bauleitungs-Harness testen und
trainieren, Loop ergaenzen. Dieser Lauf ist der Nullpunkt des Registers 15; die Einzelberichte
liegen unter `audits-260907/` (fuenf Audits, Praxistest-Protokoll, Test-Kostenrapport 2619).

## 01 Grundlage

01.1 Raster `14_bauadministration-prinzipien.md`: 42 Prinzipien aus 31 Seiten und 15 Handbuechern
von bbase.ch (PMS Informatik AG); Textextrakte unter `referenzen/bbase-handbuecher/`.
01.2 Reifegrad-Selbsttest (`tools/reifegrad.py`): 7 von 18 Gewerken mit Goldstandard (39 %),
Reifegrade R1 1, R2 12; rund 7 offene Luecken vor diesem Lauf.

## 02 Ampelbilanz je Skill (vor der Umsetzung)

| Skill | Pruefpositionen | gruen | gelb | rot |
|---|---|---|---|---|
| honorarberechnung-sia102 | 14 | 0 | 7 | 7 |
| ausschreibung + offertenpruefung | 9 | 0 | 7 | 2 |
| werkvertrag | 15 | 2 | 11 | 2 |
| unternehmerkontrolle | 22 | 3 | 13 | 6 |
| kostenkontrolle | 24 | 3 | 11 | 10 |

Praxistest kostenkontrolle mit 2619 KISPI BAUKOSTEN (Stand 01.06.2026), Prinzipien a bis g:
gruen 1, gelb 2, rot 4; dazu Fehler in der Quelle (MwSt-Basis gemischt, ein Angebot unbelegt,
Los-Nummern als BKP-Codes, Stundentotal um 1'000 h falsch), Rueckmeldung im PROJEKT-STAND 2619.

## 03 Umgesetzt (Liefer-Delta)

03.1 werkvertrag: SKILL.md 101 auf 130 Zeilen (Gate 1a Vergabefreigabe, LV-Kopie mit
eingefrorenem Original, Vertragsbrief mit Ruecksendefrist, Uebergabe Diverse an Phase I);
Vorlage 210 auf 231 (Vergabeeinheit und gedeckte Konti im Kopf, Ziff. 1 Querverweis auf
Ziff. 19, Nachtragstypen in Ziff. 2, Checkliste 4 mit zwei Sicherheiten, 4a Vergabefreigabe).
03.2 ausschreibung: SKILL.md 402 auf 442 (Versand-Gate, eingefrorene Ausschreibung,
Submittenten-Checkpoint, Regie getrennt, Sektion 8a Pflicht, MA-Spalte); Vorlage
vergabeempfehlung Sektion 8a Vergabeantrag; 10_dokumente-standard 61 auf 95 (Mengenarten
SIA 451, Herleitung, Selbstdeklaration, drei Bestimmungsebenen); projekte/README «Lose als
Vergabeeinheiten»; `_TEMPLATE.json` Felder ma/herleitung; Glossar drei Eintraege.
03.3 offertenpruefung: vergleichsmatrix_template 88 auf 109 (KV- und Favoritenspalte,
Abweichungsfilter, Abgebotsrunde neutral).
03.4 unternehmerkontrolle: SKILL.md 105 auf 161 (Schritte 1, 2, 5, 6 neu, Schritt 8 Beurteilung,
Regeln Kontoauszug und Diverse); sechs neue Vorlagen (zahlungsantrag, kontoauszug-gewerk,
ausmass-abrechnung, schlussrechnung, abnahme-aufgebot, beurteilung); nachtrag-formular mit
Typen und Register, maengelprotokoll mit Ruege, Buergschaft gestaffelt.
03.5 kostenkontrolle: SKILL.md 137 auf 207 (Ratifizierung, Mutationen, Eingabe normieren,
Vergabeantrag, Pflichtangaben, Konto-Notation, Preisstandanpassung, Gliederungen,
Kostenerwartung je Vergabestand, Pfad berichtigt); Vorlage 52 auf 92 (Kostenrapport 13
Spalten, Aenderungsprotokoll, Vergabeantrag, Zahlungsantrag, Kontoauszug je VE).
03.6 honorarberechnung-sia102: SKILL.md 312 auf 472 (Methodenwahl-Gate, Vollformel
p = Z1 + Z2/³√B mit Faktorprotokoll und Plausibilitaetsgrenze, Definition B, Leistungsnachweis,
Tarifblatt, Format A als Vertragsurkunde, Normbezug SIA 102:2014, Uebergabe an kostenkontrolle
und logbuch; Bandbreiten im Destillat sia-102-2014 belegt); neu
`referenzen/260907-Stundenansaetze-JANS.md`; Warnzeilen zu MwSt-Status und Zahlungsfrist.
03.7 Neu: Loop `bauleitung-training` (Scheduled Task, Montag 04:20), Register 15, dieser
Ordner `training/`, Rollen-Eintrag sweeper, Chronik 260907, Ruecklauf-Report in
`wissen/projekt-lessons/outputs/2026-09-07_bbase-raster-audit-bauleitungsharness.md`.

## 04 Offen (Entscheid Raphael oder Werkzeug)

L14 bis L26 in `wissensluecken.md`: Form des Vergabeantrags, SIA-118-Ausgabe und SIA 1023,
Los-Nummer als Vergabeeinheit, KV-Ratifizierungsschwelle, Regie-LV, MA-Spalte und
Selbstdeklaration im DOCX-Generator, MwSt-Status Honorar, Definition B und
Fachplaner-Reduktion, Tarifblatt-Herleitung, Goldstandard-Honorarofferte, KV-Referenz je Los,
kostenschaetzung-Kurzbericht.

## 05 Naechster Hebel je Skill

honorarberechnung: Goldstandard-Offerte anonymisiert ablegen (L24), Tarifblatt herleiten (L23).
ausschreibung: MA-Spalte im Generator (L19), Stammdateien um «Lose als Vergabeeinheiten».
werkvertrag: SIA-118-Ausgabe festlegen (L15), Vorlage auf echte Umlaute.
unternehmerkontrolle: neue Vorlagen an einem realen Gewerk validieren (R2 zu R5).
kostenkontrolle: Kostenrapport 2619 mit bereinigter Quelle als XLSX real fahren.
