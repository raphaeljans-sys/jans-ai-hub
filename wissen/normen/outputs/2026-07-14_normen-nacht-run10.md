# Normen-Training-Nacht — Run 10 (MacBook Pro, 14.07.2026)

## Kontext und Umfang dieses Laufs

Gemäss Rule `auto-verbesserungen` 260713 ist dieser Loop (`normen-training-nacht`,
SIA+VKF) auf 1x täglich (01:20) gedrosselt, weil der Token-Fokus des MacBook Pro auf dem
Wettbewerbs-DNA-Harness liegt. Heute (14.07.2026) liefen bereits Run 8 und Run 9 dieses
Tasks. Dieser Run 10 ist daher — wie schon Run 9 — eine gezielte, eng begrenzte Ergänzung
und keine Rückkehr zum VOLLGAS-Batchbetrieb.

Zusätzlich: Das SIA/VKF-Inventar (P1/P2, alle realen Dateien ohne Sprachvarianten/xalt)
ist gemäss `training/norm-inventar.md` bereits vollständig destilliert bzw. übersprungen
(begründet). Der Lauf befindet sich damit in der Vertiefungsstufe (b) Retro-Verifikation.

## Durchgeführt

**SIA 421:2006 (Raumplanung — Nutzungsziffern GFZ/AZ/BMZ/ÜZ/GZ)** — Volltextabgleich aller
20 Seiten des Originals (`421_2006_d.pdf`) gegen das bestehende Destillat
`destillate/sia-421-2006.md` (Status vorher: `destilliert`, noch nicht verifiziert).

Norm gewählt, weil in Run 8 explizit als nächster Vertiefungskandidat empfohlen (direkte
Referenz in den Skills `machbarkeit`/`volumenstudie`/`massgebendes-terrain`).

### Ergebnis

**Keine sachlichen Fehler** in Zahlen, Formeln oder Definitionen. Alle Kernziffern-Formeln
(GFZ = ΣGF/aGSF, AZ = ΣaGF/aGSF, BMZ = BVm/aGSF, ÜZ = aGbF/aGSF, GZ = aGrF/aGSF), alle
Fundstellen (Ziff. 0.1-0.3, 2.1-2.4, 3.1-3.5, 4.1-4.5, 5.1-5.5, 6.1-6.7, 7.1-7.3) und alle
Figuren-Beschreibungen (1-10) im Destillat stimmen exakt mit dem Original überein.

**3 Definitionsluecken ergaenzt** (keine Falschaussagen, nur fehlende Ergänzungen):

1. Nebenregel zur Geschossflaeche GF (Ziff. 1.1, aus SIA 416): Hohlraeume unter dem
   untersten zugaenglichen Geschoss zaehlen NICHT als Geschossflaeche — fehlte komplett.
2. Eigenstaendige Definition **"Lichte Hoehe"** (Ziff. 1.2.1, aus SIA 423): war im
   Destillat nur als Stichwort gelistet, ohne Inhalt. Wichtig, weil dieser Begriff als
   Schwellenwert direkt in Ziff. 3.3 (GFZ) und Ziff. 4.4 (AZ) referenziert wird
   ("Nicht angerechnet werden Flächen, deren lichte Höhe unter einem vom Gesetzgeber
   vorgegebenen Mindestmass liegt").
3. Eigenstaendige Definition **"Gebaeude"** (Ziff. 1.2.3, aus SIA 423): ebenfalls nur als
   Stichwort ohne Inhalt gelistet — Grunddefinition ("ortsfeste Bauten, die zum Schutz von
   Menschen, Tieren oder Sachen eine feste Ueberdachung und in der Regel weitere
   Abschluesse aufweisen") nachgetragen.

Ergaenzend praezisiert: Beispiele fuer Verkehrsflaeche VF und Funktionsflaeche FF (waren
zuvor nur implizit erwaehnt), Detailregel zur Grundstuecksflaeche GSF (kann eine einzelne
Parzelle, mehrere Parzellen oder Teile davon umfassen) und zur Umgebungsflaeche UF
(Voraussetzung "bepflanzt/begangen/befahrbar UND mit Terrain verbunden" fuer unterirdische
Bauten als UF).

## Nachgeführt

`destillate/sia-421-2006.md` (Status `established, verifiziert 260714`, Verifikations-
Sektion angefügt), `training/norm-inventar.md`, `destillate/INDEX.md`, `CHANGELOG.md`.

## Offen / nächster Lauf

Aus Run 8/9 weiterhin offen (nächste Prioritäten):
- SIA 142:2009, SIA 143:2009 (Wettbewerbs-/Studienauftragsordnungen — Skill `wettbewerb`)
- SIA 400:2000 (CAD/Planbearbeitung) als weitere Retro-Verifikation
- VKF-BRL 28-15 Anerkennungsverfahren (Duplikat-Merge offen, siehe Run 5/7 Notizen)
- Teil-Destillate mit Lücken: SIA D 0165, SIA 196/405/343.051/382-1/384-201/2056

Gemäss Rule `auto-verbesserungen` 260713 bleibt dieser Loop auf 1x täglich (01:20)
gedrosselt, solange der Wettbewerbs-DNA-Harness den Token-Fokus des MacBook Pro trägt.

## Git-Disziplin

Nur lokal committet (kein Push) — der git-auto-sync-Job übernimmt Pull/Push gebündelt
gemäss Rule `sync-kanonische-quelle.md`.
