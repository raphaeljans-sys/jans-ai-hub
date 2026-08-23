# QUESTIONS-Abarbeitung — N41-1 und drei stale Abschnitte — 24.08.2026

**Auftrag:** Offene Fragen in `wissen/normen/wiki/QUESTIONS.md` abarbeiten. Fundstelle je Aussage
mit Norm, Ausgabe und Ziffer; Verifikationsstatus des Destillats lesen, nur `established`
zitierfähig. Rule `wissens-bibliothekar` beachten: jede Aussage belegen, nichts raten,
CHANGELOG-Pflicht, `git diff --numstat` nach jedem Schreiben.

## Ausgangslage

CHANGELOG-Kopf und der Report des letzten QUESTIONS-Laufs gelesen
(`outputs/2026-08-24_questions-abarbeitung-n29-2-n29-3.md`, 00:08 Uhr) — der hatte per
Skript-Filter über alle `##`-Abschnitte auf Schliess-Marker gefiltert, 10 offene gefunden, N29-2
und N29-3 bearbeitet und für den Rest «keine neuen Lücken» gemeldet.

**Eigene Gegenprobe mit demselben Filter** (Python, Marker ✅/GESCHLOSSEN/ERLEDIGT/bestätigt/
geklärt/beantwortet/abgeschlossen/KOMPLETT/gelöst/geschlossen über alle 58 `##`-Abschnitte):
8 Abschnitte ohne Marker. Davon 7 bereits aus dem 00:08-Lauf bekannt (kostenpflichtige
Bring-Schulden, Raphael-Entscheide N60-1/N60-2, eine reine Leitplanken-Notiz ohne
Handlungsbedarf) — **1 echt neu: N41-1**, zwischen dem 00:08-Lauf und diesem Lauf durch
Wissens-Chef Run 41 in `wiki/QUESTIONS.md` angelegt.

**Kollisionscheck** (`ps aux`) vor Arbeitsbeginn: eigener Prozess (PID 9367, Skript-Wrapper
`mschub187`, exakt dieser Auftragstext — per Anweisung «Ein claude-Prozess mit deinem eigenen
Lauf-Namen ist DEIN EIGENER» als diese Session selbst identifiziert). Parallel liefen `mschub184`
(Baurecht-Reglemente-Queue) und `mschub186`-Nachfolgeprozesse (SIA-Sweep, `energie`-QUESTIONS) —
andere Dateien bzw. andere Abschnitte derselben Datei, kein Konflikt.

## N41-1 — VSS SN 640 273a «Sichtverhältnisse bei Knoten» fehlt im Bestand (Bring-Schuld)

**Befund (Wissens-Chef Run 41, Cross-KB `normen` ↔ `baurecht`):** Der Artikel
`wissen/baurecht/wiki/strassenabstand-zufahrten-vorteilsabgabe-sz.md` Z. 38-42 zitiert
Sichtweiten-Kennwerte materiell unter «VSS SN 640 273a» (Beobachtungsdistanz innerorts 3.00 m
bzw. ≥ 2.50 m, ausserorts 5.00 m; Sichtweite A nach Zufahrtsgeschwindigkeit 20→15 m bis
80→125 m; hindernisfreies Sichtfeld 0.60-3.00 m über Fahrbahn). Diese KB führt dazu **weder
Registerzeile noch Destillat** — eigene Prüfung bestätigt: die einzige Fundstelle im ganzen
Bestand ist eine Literaturangabe der **Vorgängernorm** SN 640 273 (nicht 273a) in
`destillate/vss-640050-1993.md` (Zeilen 57, 68, 115). Die Ausgabe 273a gilt seit 01.08.2010.

**Ausgeführt (Verwaltung, keine Beschaffung):**
- `wiki/REGISTER.md` Abschnitt B: neue Tabellenzeile «SN 640 273a (VSS) Sichtverhältnisse bei
  Knoten | seit 01.08.2010 | SN 640 273 | kein Bestand — Bring-Schuld …».
- `training/norm-inventar.md`: sechste Zeile der VSS/SIA-Kaufliste (bisher fünf: SIA 491,
  SN EN 12193, SN 640 052, SN 641 400, SIA 181:2020).
- `wiki/QUESTIONS.md`: N41-1-Abschnitt mit Nachtrag versehen (Titel + neuer Absatz), Originaltext
  unverändert darunter belassen.

**Bleibt echte Bring-Schuld:** Beschaffung (VSS-Shop, kostenpflichtig), Destillation und
Gegenlesen des baurecht-Artikels sind ohne Raphaels Kaufentscheid nicht lösbar — Claude tätigt
keine Käufe. Bis dahin gilt im baurecht-Artikel der dort bereits gesetzte Vorbehalt
(Behördenwiedergabe aus dem SZ-Merkblatt, keine verifizierte VSS-Fundstelle).

## Drei stale Abschnitte nachgezogen

Dieselbe Lehre wie im 00:08-Lauf: bei dieser Bearbeitungsdichte (60+ Läufe an einem Tag) liegt
der Ertrag oft nicht im Finden neuer Lücken, sondern im Nachziehen bereits erledigter, aber nie
als geschlossen markierter Punkte. Für die 8 markerlosen Abschnitte wurde jeder einzeln gegen den
aktuellen Bestand geprüft:

1. **2026-07-31 (Wissens-Chef Run 21, SWKI):** Die offen gelassene Frage, ob die restlichen
   Kern-Dateien von `06_Richtlinien` (GVZ, Suva, Suissetec, VSA) und `09_Sanitaereinrichtung`
   systematisch abgearbeitet werden, ist laut `training/norm-inventar.md` seit Run 40-46
   (31.07.-07.08.2026) längst mit Ja beantwortet: GVZ 3/3, Suva 4/4, Suissetec 2/2 (eine
   begründet als Dublette), VSA 3/3, PAVIDENSA 9/9, BKZ 4/4, `09_Sanitaereinrichtung` 14/14
   (8 Dubletten seitengenau geprüft). Einzig offen bleibt N-R21-2 (VA 105-01:2015 Volltext,
   Kaufentscheid Raphael) — unverändert.
2. **Run 39 (30.07.2026, Lignatec/`lignum-4-1`):** Beide dort offenen Punkte gelöst. Die zehnte
   Lignatec-Runde (Run 41, 01.08.2026) hat erstmals den Fliesstext systematisch geprüft
   (6 Kernbefunde, 12 Nebenbefunde). Raphael hat den Vorrang-Auftrag am 17.08.2026 aus dem
   Scheduled Task `normen-training-nacht` gestrichen (CHANGELOG 260817) — erledigt seit Run 38,
   sechsfach als überholt zurückgemeldet. `lignum-4-1` bleibt wie vorhergesagt ereignisgetrieben.
3. **Run 30 (27.07.2026, PL-03-Bookkeeping):** Befund 1 (BRL-13-15/14-15-Bookkeeping) und
   Befund 2 (MD5-Identität PL-03↔PL-02) waren bereits im eigenen Text erledigt, nur nie mit
   Schliess-Marker versehen. Befund 3 (Erdbebengerechte Holzbauten) bleibt informativer Hinweis
   ohne Handlungsbedarf im Scope `normen` (keine statik-/erdbeben-KB vorhanden). Befund 4
   (SIA 491, SN EN 12193) unverändert Bring-Schuld, keine neue Information seit 27.07.2026.

Die vierte markerlose historische Notiz (2026-07-28, Wissens-Chef Run 19, Gebäudekategorien
I-XII) ist eine reine Leitplanken-/Merksatz-Dokumentation ohne offenen Handlungsbedarf — nicht
angefasst, da nichts zu schliessen ist.

## Nicht angefasst

Kostenpflichtige Bring-Schulden ohne neuen Sachstand (SIA 380/2:2022, SIA 384/4:2025,
NIN-Volltextzugang, jetzt auch SN 640 273a) sowie die beiden ausdrücklich Raphael zur
Entscheidung vorgelegten Vorschläge N60-1 (AFC-Synopse-Duplikat) und N60-2
(Methodik-Pflicht-14) — alle unverändert gelassen (Rule `wissens-bibliothekar`: Pause vor
Destruktivem/Entscheidungsbedürftigem statt eigenmächtig zu handeln).

## Verallgemeinerbare Lehre

Der Skript-Filter über Schliess-Marker ist zuverlässig, um **neue** Lücken von **alten,
unmarkierten** zu trennen — aber er kann nicht unterscheiden, ob ein markerloser Abschnitt
seit seiner Anlage durch spätere, unabhängige Läufe bereits gelöst wurde. Diese Prüfung bleibt
manuell (Abgleich gegen `training/norm-inventar.md` und `CHANGELOG.md`). Bei einer KB mit
60+ Läufen pro Tag lohnt sich dieser Abgleich: von 8 markerlosen Abschnitten waren 3 bereits
vollständig erledigt und 1 nur teilweise offen (SWKI-Fall) — nur 1 war wirklich neu.

## Verifikation

`git diff --numstat` nach jedem Schreiben geprüft: `wiki/QUESTIONS.md` rein additiv (vier neue
Nachtrags-Absätze in bestehenden Abschnitten, kein Originaltext gelöscht — Volltext-Diff einzeln
kontrolliert), `wiki/REGISTER.md` eine neue Tabellenzeile (der übrige, im Diff sichtbare Block
zur Suva-Gerüstbau-Liste stammt aus dem parallelen SIA-Sweep-Lauf, nicht aus dieser Session —
nicht angefasst), `training/norm-inventar.md` eine neue Zeile, `CHANGELOG.md` neuer Kopfeintrag
oberhalb des bereits vorhandenen SIA-Sweep-Eintrags (chronologisch korrekt, da dieser Lauf nach
00:16 Uhr endet). Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt; Commit über den
15-Minuten-`nas-selfcommit`-Cron bzw. `scripts/nas-commit-now.sh`.
