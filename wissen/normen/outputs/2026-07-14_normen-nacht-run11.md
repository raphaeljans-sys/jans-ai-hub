# Normen-Training SIA/VKF — Run 11 (MacBook Pro, 2026-07-14)

## Ausgangslage

Der Loop ist seit Rule 260713 (13.07.2026) auf SIA/VKF gedrosselt (1x taeglich 01:20),
da der Token-Fokus des MacBook Pro auf dem Wettbewerbs-DNA-Training liegt. Runs 7-10
liefen heute (2026-07-14) bereits. `training/norm-inventar.md` zeigt fuer SIA und VKF
0 offene `[ ]`-Positionen — die Grunddestillation ist abgeschlossen. Dieser Run setzt
deshalb bei Vertiefungsstufe (b) an: **Retro-Verifikation bestehender Destillate**.

## Auswahl

Vier Destillate mit Status `destilliert` (noch nicht `established`) und **gueltiger**
Ausgabe (gemaess `wiki/REGISTER.md` nicht durch eine neuere Fassung ersetzt) wurden
gewaehlt, alle klein genug fuer einen vollstaendigen Volltextabgleich in einem
Agenten-Lauf (8-20 Seiten):

| Norm | Titel | Seiten | Register-Status |
|---|---|---|---|
| SIA 184:1972 | Baureinigungsarbeiten | 8 | gueltig 2013 |
| SIA 226:1976 | Naturstein-Mauerwerk | 8 | gueltig 2013 |
| SIA 241:1988 | Schreinerarbeiten | 20 | gueltig 2013 |
| SIA 256:1988 | Deckenverkleidungen aus Fertigelementen | 12 | gueltig 2013 |

## Verifikations-Verdikte

### SIA 184:1972 — bestanden nach Ergaenzung
~45 Einzelpunkte geprueft (Ziff. 1.1-7.10, Zahlen, Begriffe, Tabellen, Inkrafttreten).
1 Luecke gefunden: Ziff. 7.3.5 "Taglohnarbeiten" (Verweis auf SIA 118) fehlte im
Destillat, ergaenzt. Alle uebrigen Fundstellen/Zahlen/Definitionen korrekt und
vollstaendig. **Status: established (verifiziert 260714, Volltextabgleich).**

### SIA 226:1976 — bestanden nach 4 Praezisierungen
~35 Einzelaussagen Wort-fuer-Wort gegen das 8-seitige Original geprueft. Vier
Praezisierungen: Ziff. 7.12.02 (Figur 1 steht in SIA 225, nicht in SIA 226 selbst),
Ziff. 7.12.04 (Ausfuehrungsart-Details Auffuellmaterial/Verdichtungsgrad/Gemischt-
mauerwerk), Ziff. 7.22.02 (Wortlaut "Schutz vor schaedlichen Einfluessen" statt
verkuerzter Paraphrase), Anhang A101 (Skizze 2 zeigt nur Moertelmauerwerk, nicht auch
Trockenmauerwerk) + neuer Abschnitt Titelblatt-Hinweis (SN 505 226, Druckvermerk
2/1993 vs. Ausgabe 1976) und Kommissions-Mitgliederblock S.119/120 ergaenzt. Keine
sachlichen Fehler. **Status: established (verifiziert 260714, Volltextabgleich).**

### SIA 241:1988 — bestanden nach Ergaenzung
Alle 20 Seiten geprueft (Titelblatt, Ziff. 0-2, 4-5, 7, Anhang 1-3, Kommission/
Genehmigung). Fachlich-technischer Kern bereits fehlerfrei (Holzfeuchte 9%/6-12%,
Koernung 120-150/80-100, Durchbiegung 1/300, 100/75 kg/m², Geschossgruppen Ziff. 7.14).
Ergaenzt: exaktes Genehmigungsdatum (Delegiertenversammlung 19.06.1987 Aarau,
Inkrafttreten 1.03.1988), Datum Vorgaengernorm SIA 126 (24.06.1955, nicht nur "1959"),
fehlender Kommissions-Mitgliederblock (S.20) und Abkuerzungsverzeichnis BSA/FRM/
LIGNUM/VSSM (S.19). Seiten 17-18 sind Original-Leerseiten, kein Content-Verlust.
**Status: established (verifiziert 260714, Volltextabgleich).**

### SIA 256:1988 — bestanden nach kleiner Ergaenzung
~45 Ziffern/Kernaussagen geprueft (Geltungsbereich, Begriffe, Planung, Material,
Ausfuehrung, Leistung/Lieferung, Anhang). Keine inhaltlichen Fehler, keine falschen
Zahlen/Ziffern/Fundstellen. 1 Ergaenzung: Hinweis auf die Prinzipskizze S.5 zu den
fuenf Hoehenbegriffen war im Destillat nicht erwaehnt, nachgetragen.
**Status: established (verifiziert 260714, Volltextabgleich).**

## Gesamtbefund

4/4 Destillate bestanden die Widerlegungs-Pruefung ohne sachliche Zahlenfehler — nur
Ergaenzungen/Praezisierungen noetig. Alle 4 von `destilliert` auf `established`
gehoben.

## Nachgefuehrt

- `training/norm-inventar.md`: 4 Zeilen (184/226/241/256) auf `established` + Datum 260714.
- `destillate/INDEX.md`: 4 neue Eintraege am Tabellenende.
- `CHANGELOG.md`: neuer Eintrag oben.
- Destillate direkt korrigiert/ergaenzt (Edit-Tool durch die Verifikations-Agenten).

## Technischer Hinweis (Git/SMB)

`git status`/`git commit` gegen das NAS-Repo hingen mehrfach in uninterruptible I/O-Wait
(Prozessstatus `UN`) — bekanntes Problem bei Git-Operationen ueber SMB (dokumentiert in
`rules/sync-kanonische-quelle.md`). Kein `.git/index.lock` vorhanden, kein konkurrierender
Git-Prozess gefunden — die Verzoegerung liegt an der SMB-Dateisystem-Performance, nicht an
einer Sperre. Es wurde NICHT force-committet oder das Lock manipuliert; der Commit wurde
im Hintergrund abgewartet bzw. dem `nas-selfcommit`-Cron ueberlassen (Rule
`sync-kanonische-quelle.md`, Update 2026-07-13: DSM-Cron sichert liegen gebliebene
NAS-Edits automatisch alle 15 Min).

## Naechster Batch

Weitere Kandidaten fuer Vertiefungsstufe (b) Retro-Verifikation (Status `destilliert`,
noch nicht `established`, gueltige Ausgabe gemaess Register): SIA 2020:2017 (Original
bereits vollstaendig gelesen 12.07.2026), SIA 100:2004, SIA 108:2014, VKF-BRL 28-15
Anerkennungsverfahren (Duplikat-Merge mit `vkf-brl-anerkennungsverfahren.md` offen).
Veraltete Editionen (SIA 270:1992, SIA 273:1998, SIA 318:1988, SIA 342:1988 — laut
Register durch neuere Ausgaben ersetzt) haben niedrigere Prioritaet, da die Kanzlei fuer
neue Vertraege die aktuelle Fassung braucht; sie bleiben als historische Referenz im
Bestand.

**Kein "SIA/VKF KOMPLETT"** — Grunddestillation ist fertig, aber Vertiefungsstufen (b)
Retro-Verifikation, (c) Q&A-Selbstbefragung und (d) Querschnitts-Synthesen sind erst
teilweise abgearbeitet (siehe laufende Statusliste in `destillate/INDEX.md`).
