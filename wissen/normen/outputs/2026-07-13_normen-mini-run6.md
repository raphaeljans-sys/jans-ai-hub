# Normen-Training Mini (Mac Mini) — Run 6, 13.07.2026

## Auftrag

Fortsetzung des DIN/VSS/RAL-Loops (Station Mac Mini) gemäss `training/PROGRAMM.md`. Run 5
(13.07.2026) hatte «DIN/VSS/RAL KOMPLETT» gemeldet (Inventar-Endbedingung erreicht) und
empfohlen, den Scheduled Task zu beenden. Gemäss der Token-Vollgas-Eskalation im Programm
(Rule 260712c, Abschnitt «Nach Inventar-Abschluss einer Familie») geht der Loop nach
Inventar-Abschluss aber NICHT in den Leerlauf, sondern in die Vertiefungsstufen über:
(a) Tiefendestillate der P1-Kernnormen, (b) Retro-Verifikation, (c) Q&A-Selbstbefragung,
(d) Querschnitts-Synthesen. Dieser Lauf beginnt mit Stufe (a), konkret mit der in Run 5 als
offen vermerkten Einzellücke.

## Ablauf

1. NAS-Mount + SharePoint-Zugriff geprüft — beide erreichbar.
2. Git-Pull (`--rebase --autostash`, da parallel ein anderer Prozess unstaged Änderungen an
   SIA-Destillaten/station-status hatte — nicht angerührt, Autostash sauber zurückgespielt).
   Repo war bereits aktuell.
3. `training/norm-inventar.md` + `wiki/QUESTIONS.md` + letzter Report (Run 5) gelesen:
   DIN/VSS/RAL-Inventar 0 offene Positionen, aber 4 dokumentierte Qualitätslücken vermerkt.
4. Konkreten, im Scope dieser Station liegenden Deepening-Kandidaten gewählt: **SN 640 105a**
   «Verbreiterung der Fahrbahn in Kurven» (Dez. 2000) — liegt vollständig als Anhang (S.25-37)
   in `VSS_Norm/VSS 640 291a Parkieren Geometrie.PDF`, war in Run 4/5 explizit als «nächster
   Lauf» vorgemerkt.
5. PDF-Zugriffscheck bestanden (`pdfinfo`, 37 Seiten total), Seiten 25-37 (= die vollständige
   13-seitige Eigennorm) via Read mit `pages: "25-37"` gelesen.
6. Destillat `destillate/sn-640105a-2000.md` erstellt: Geltungsbereich, Begriffe, alle 8
   inhaltlichen Ziffern (Fahrzeugkategorien/D-Werte, Begegnungsfälle-Matrix, Formel für
   maximale Verbreiterung, Abminderung bei kurzen Bögen, Anwendungs-Ablaufschritte a-f, Länge
   Verziehungsstrecke, Anordnung/Konstruktion, Beispiele), Literaturverzeichnis, JANS-
   Praxis-Transfer.
7. **Verifikations-Stufe:** Volltextabgleich (Modell D) — da der komplette Normtext bereits im
   Read-Ergebnis vorlag, wurden alle Kernwerte direkt am Original gegengeprüft: D-Werte
   Kategorien A (10,0 m) / B (8,7 m) / C (6,7 m) / D (4,0 m), Formel e = Ra − √(Ra² − D²),
   Bagatellgrenzen (≤10 cm/Fahrstreifen, ≤20 cm/Fahrbahn), Geltungsbereich (11,25-500 m
   Aussenradius), Grenzwinkel-Näherung ΦGrenz = 5,5 × arcsin(D/Ra) — alle Werte stimmen exakt
   mit dem Originaltext überein. Status `established`.
8. Register nachgeführt: `destillate/INDEX.md` (neue Zeile), `training/norm-inventar.md`
   (Trägerdatei-Zeile aktualisiert + neue Zeile für die Eigennorm), `wiki/REGISTER.md`
   (neue Sektion «Mini-Run-6»), `wiki/QUESTIONS.md` (Lücke geschlossen `[x]`, Run-6-Eintrag
   mit Ausblick auf verbleibende Deepening-Kandidaten).

## Ergebnis

SN-640-105a-Lücke geschlossen: 1 neues vollständiges Destillat, verifiziert. Damit sind nun
auch alle in Run 5 dokumentierten, nicht-blockierenden Qualitätslücken bis auf drei
verbleibend:
- VKF-Duplikate (5 Paare) — destruktiver Merge, braucht Raphaels Rückfrage (nicht diese Station).
- DIN EN 1627:2011 — nur Teilbestand (4/44 Seiten) im Ordner, Vollnorm müsste extern beschafft
  werden (keine Aktion ohne neue Quelle möglich).
- Fehlende CH-Pendants (SIA 500, SWKI 99-3, SIA 260er) — Kandidaten für den SIA/VKF-Loop auf
  dem MacBook Pro, nicht für diese Station.

## Plan für den nächsten Lauf

Da das DIN/VSS/RAL-Inventar weiterhin vollständig ist und die einzige offene, in dieser
Station lösbare Einzellücke (SN 640 105a) jetzt geschlossen ist, folgt der nächste Lauf den
weiteren Deepening-Stufen aus dem Programm:
- **Stufe (b) Retro-Verifikation:** eine Stichprobe bestehender DIN/VSS/RAL-Destillate (z.B.
  die grossen Scans aus Run 3/4: DIN 4102-1/2, DIN 18040-1/2, DIN 1946-6, VSS 640-Familie)
  mit 2-3 unabhängigen Widerlegungs-Agenten gegenprüfen und Status ggf. korrigieren.
- **Stufe (c) Q&A-Selbstbefragung:** 15-20 Prüfungsfragen zu den DIN/VSS-Kernnormen (z.B.
  DIN 277, DIN 18040, VSS 640 200/271) unabhängig am Original beantworten und in die
  jeweiligen Destillate als Q&A-Anhang einarbeiten.
- **Stufe (d) Querschnitts-Synthese:** DIN/VSS-Kennwerte, die für die Fach-Skills
  (`machbarkeit`/`planungsgrundlagen`/Erschliessung) relevant sind, als Querschnitts-Notiz
  bündeln.

## Ressourcenverbrauch

Gering — 1 PDF-Read (13 Seiten), 1 neues Destillat, 4 Register-Updates, kein Workflow-Fanout
nötig (Einzelposition).
