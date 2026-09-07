# 15 Bauleitungs-Training: Register (lebendes Dokument)

Angelegt 07.09.2026. Gefuehrt vom Scheduled Task `bauleitung-training` (woechentlich, Montag 04:20)
und von Hand nach jedem interaktiven Audit. Das Register sagt, welcher Skill des Bauleitungs-Harness
wann zuletzt gegen das Raster `14_bauadministration-prinzipien.md` geprueft wurde und wie er stand.
Der Loop waehlt je Lauf den Skill mit dem aeltesten Pruefdatum. Lauf-Berichte: `training/`.

## Stand je Skill

| Skill | Prinzipien (Raster 04.x) | Letzter Audit | Ampel gruen/gelb/rot | Offene Luecken (wissensluecken.md) | Naechster Hebel |
|---|---|---|---|---|---|
| honorarberechnung-sia102 | 04.1 bis 04.6, 04.42 | 07.09.2026 (Lauf 0) | 0 / 7 / 7 vor Umsetzung; Methodenwahl, Formel, B, Nachweis, Tarif, Format A, Normbezug, Uebergabe eingearbeitet | L21, L22, L23, L24 | Goldstandard-Offerte ablegen, Tarifblatt herleiten |
| ausschreibung + offertenpruefung | 04.17 bis 04.23 | 07.09.2026 (Lauf 0) | 0 / 7 / 2 vor Umsetzung; Versand-Gate, Mengenarten, Regie, Vergabeantrag 8a, Offertvergleich mit KV/Favorit eingearbeitet | L14, L18, L19, L20, L25 | MA-Spalte im Generator, Stammdateien Lose als VE |
| werkvertrag | 04.17, 04.23 bis 04.29 | 07.09.2026 (Lauf 0) | 2 / 11 / 2 vor Umsetzung; Gate 1a, LV-Kopie, VE im Kopf, Nachtragstypen, zwei Sicherheiten, Vertragsbrief eingearbeitet | L15, L16 | SIA-118-Ausgabe festlegen, Vorlage Umlaute |
| unternehmerkontrolle | 04.27 bis 04.31, 04.36 bis 04.39 | 07.09.2026 (Lauf 0) | 3 / 13 / 6 vor Umsetzung; sechs neue Vorlagen, Schritte 1/2/5/6/8, Kontoauszug, Diverse eingearbeitet | keine offen (R2, Validierung ausstehend) | Vorlagen an realem Gewerk validieren |
| kostenkontrolle | 04.7 bis 04.15, 04.27 bis 04.35, 04.38 | 07.09.2026 (Lauf 0, Praxistest 2619) | 3 / 11 / 10 vor Umsetzung; Ratifizierung, Mutationen, 13-Spalten-Rapport, Belegkette, Eingabe normieren eingearbeitet | L17, L26 | Kostenrapport 2619 real als XLSX fahren |
| protokoll + pendenzenliste (quer) | 04.40 | ausstehend | | | |
| terminplanung (quer) | 04.41 | ausstehend | | | |

⚠ **Die Tabelle fuehrt sieben Zeilen, die Auswahlregel des Loops kennt fuenf** (Vermerk
Synergie-Lauf 30, 07.09.2026 — SYN-77; Text der Tabelle unangetastet). Die `description` der Task
`bauleitung-training` nennt als Auswahlmenge «je Lauf einen Skill (honorar, ausschreibung,
werkvertrag, unternehmerkontrolle, kostenkontrolle)», und Schritt 2 waehlt «den Skill mit dem
aeltesten Pruefdatum». Die beiden Quer-Zeilen `protokoll + pendenzenliste` (04.40) und
`terminplanung` (04.41) tragen **kein** Pruefdatum, sondern «ausstehend» — auf einem leeren Feld
ist «aeltestes Datum» nicht definiert, und in der Auswahlmenge stehen sie ohnehin nicht. Sie
werden vom Loop also strukturell nie erreicht, waehrend die Saettigungsklausel («jedes Prinzip des
**gewaehlten** Skills gruen» plus drei ertragslose Laeufe) allein ueber die Fuenf misst. Praktische
Folge: 04.40 und 04.41 haben heute keinen Zustaendigen, und eine Saettigungsmeldung wuerde sie
nicht mitzaehlen. Passend dazu tragen genau die vier Skills ohne Raster-Rueckkante
(`offertenpruefung` — am 07.09.2026 nachgetragen —, `protokoll`, `pendenzenliste`,
`terminplanung`) diejenigen, die nicht in der Auswahlmenge stehen; die fuenf der Auswahlmenge
tragen sie alle. **Nicht geaendert:** weder die Auswahlmenge der Task noch die Tabelle — ob die
Quer-Skills eigene Laeufe bekommen oder beim jeweiligen Anlass mitlaufen, ist ein Zuschnitt-
Entscheid Raphaels, kein Querverweis.

## Laufjournal (neueste zuoberst)

| Datum | Lauf | Skill | Ertrag (geaenderte Dateien, neue/geschlossene Luecken) | Bericht |
|---|---|---|---|---|
| 07.09.2026 | 0 (interaktiv) | alle fuenf | 20 Dateien geaendert, 6 Vorlagen neu, 13 Luecken neu (L14 bis L26), 0 geschlossen | training/2026-09-07_bauleitung-run0.md |
