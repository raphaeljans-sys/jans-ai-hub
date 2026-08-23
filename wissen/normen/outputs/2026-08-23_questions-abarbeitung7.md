# QUESTIONS-Abarbeitung 7: VKF-BRL 16-15 P1 nachgezogen (bereits geloest, nie geschlossen), SharePoint-Erreichbarkeit gemischt

**Auftrag Raphael:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je
Aussage (Norm, Ausgabe, Ziffer), Verifikationsstatus des Destillats vor Zitat lesen. Vorlauf
gelesen: `CHANGELOG.md` (Kopf: SIA-Sweep elfte Fortsetzung, 23.08.2026) und
`outputs/2026-08-23_questions-abarbeitung-sia266-1-sia410-web-verifiziert.md` (letzter Lauf
dieser Reihe). Ein parallel laufender `claude`-Prozess mit demselben Auftragstext ist dieser
Lauf selbst, kein Konkurrent.

## Ausgangslage: SharePoint teilweise wieder erreichbar

Der letzte Lauf dieser Reihe war durch `fts_read: Operation timed out` auf allen drei
OneDrive-Mounts blockiert und musste die drei P1-BRING-SCHULDEN (SIA 380/1, SIA 385/1,
VKF-BRL-16-15-Vollfassung) unbearbeitet lassen. Nachgeprueft in diesem Lauf: der **Haupt-Mount**
`~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS` antwortet wieder normal. Der
**zweite Mount** (Praefix-Kollisionsname, in `norm-inventar.md` als Standort von
`PL - 02_Recht_Norm/02_Normen/` referenziert, dort liegen `SIA_Normen/alle/` und `SIA_Abo/`)
antwortet weiterhin mit `fts_read: Operation timed out` (zweifach geprueft, 8 s und 12 s
Wartezeit) — unveraendert gegenueber dem letzten Lauf. **Folge:** SIA 380/1 und SIA 385/1
bleiben blockiert (Volltexte liegen ausschliesslich unter `PL - 02_Recht_Norm/`), aber die
**VKF-BRL 16-15 Stand 01.12.2022** war ueber den Hauptmount erreichbar — Fund per `mdfind` auf
Dateiname `BSPUB-1394520214-85.pdf`, liegt als projektgebundene Kopie in
`AR - 01 Projekte/2619_KINDERSPITAL/06_Reglemente/Brandschutz Normen Auszug/`.

## Befund: die P1-Bring-Schuld VKF-BRL 16-15 war bereits geloest, nur nie als geschlossen markiert

`wiki/QUESTIONS.md` fuehrte seit Run 8 (18.07.2026) den P1-Eintrag «Fassung Stand 01.12.2022
der VKF-BRL 16-15 vollstaendig destillieren» als offen, mit dem Zusatz «Offen bleiben zwei
Punkte» (ABSV-Aenderung Ziff. 2.4.3/2.4.4, materielle Personenbelegungs-Aenderung Ziff. 3.5.2).
Der Zusatz stammte aus Run 22 (25.07.2026). Das Destillat
`destillate/vkf-brl-16-15-flucht-rettungswege.md` enthaelt aber bereits seit Run 22/23
(25.07.2026) einen vollstaendigen Abschnitt «Fassung 01.12.2022 — Delta zur Fassung
01.01.2017», der genau diese zwei Punkte behandelt:

1. **ABSV 22.03.2017 (Ziff. 2.4.3/2.4.4):** Run 23 hat die urspruengliche Fehldiagnose («Bild-
   unterschrift von Ziff. 2.4.3 nach 2.4.4 vertauscht», Seite 16) per `pdftotext`-Volltext-
   abgleich beider Fassungen widerlegt. Tatsaechlich: reine **Umbenennung** einer zweiten
   Bildunterschrift unter der Ueberschrift «zu Ziffer 2.4.4» (S. 15), keine Vertauschung,
   kein Zahlenwert betroffen.
2. **TKB 09.06.2021 (Ziff. 3.5.2, Personenbelegung Verkauf):** am Original S. 24 der Fassung
   Stand 01.12.2022 nochmals gegengelesen — die seit Wissens-Chef Run 8 gefuehrte 3-zeilige
   Matrix (Fachmaerkte/Kaufhaeuser/Einkaufszentren 0.10/0.10 Personen/m2; Supermaerkte
   0.38/0.15; Hochfrequentierte Supermaerkte 0.45/0.21) stimmt wortgetreu mit dem Original.

**Eigene Gegenpruefung in diesem Lauf:** `BSPUB-1394520214-85.pdf` per `pdfinfo` identifiziert
(Titel «16-15 Flucht- und Rettungswege», 35 S., Titelseite bestaetigt «01.01.2017 / 16-15de» +
«Stand 01.12.2022») und per `pdftotext -layout` auf S. 1-3 (Aenderungsliste) sowie S. 14-17
(Anhang zu Ziff. 2.4.2-2.4.4) gelesen. Die Aenderungsliste auf S. 2 nennt wortgleich die drei
im Destillat dokumentierten Aenderungsstufen (ABSV 22.03.2017 zu Ziff. 2.4.3/2.4.4 S. 15/16;
TKB 09.06.2021 zu Ziff. 3.5.2 S. 24; Fehlerkorrektur 01.12.2022 zu Ziff. 3.7 S. 33). Die
extrahierten Anhang-Bildunterschriften auf S. 15/16 decken sich wortgetreu mit dem im Destillat
zitierten Text («Fluchtweglänge in der Nutzungseinheit.» / «Gesamtlänge von Fluchtwegen mit
einem Ausgang an einen sicheren Ort im Freien oder in einen vertikalen Fluchtweg.»). **Kein
Widerspruch gefunden — die Delta-Analyse im Destillat ist korrekt und die P1-Bring-Schuld war
inhaltlich bereits vollstaendig erledigt.**

**Umgesetzt:** `wiki/QUESTIONS.md`, P1-Eintrag als `[x]` geschlossen mit Verweis auf den
bestehenden Destillat-Abschnitt und die heutige Gegenpruefung; Original-Auftragstext bleibt
unveraendert stehen (Nachvollziehbarkeit). Kein neuer Fachinhalt im Destillat noetig — es war
bereits korrekt.

## Zweiter Befund: «Folgepruefung zur 2015er-BRL-Serie» ist durch den VKF-Fassungs-Sweep erledigt

Derselbe Run-15-Abschnitt (17.07.2026) enthielt einen zweiten offenen Punkt: «dieselbe
Verwechslung Fassungsdatum ↔ Ausgabejahr duerfte bei den uebrigen revidierten VKF-Richtlinien
systematisch auftreten — REGISTER und Destillate der ganzen Serie darauf durchsehen.» Der
seither gelaufene **VKF-Fassungs-Sweep** (N27-1/N58-1, Normen-Lauf Run 58-60, 20.-23.08.2026)
hat genau das geleistet, nur nicht unter diesem Titel: Zugangsweg fuer alle 35
VKF-Publikationen mit KB-Destillat geklaert, Delta-Destillate fuer die gesamte
01.01.2017er-Fassungswelle erstellt. Die Rang-5-Tabelle im Run-58-Abschnitt bestaetigt
ausdruecklich: «die Aenderungen 2017 sind fuer 13-15/14-15/15-15/16-15/22-15 bereits erfasst».
**Umgesetzt:** Eintrag als `[x]` geschlossen mit Verweis auf den Sweep, Original-Wortlaut bleibt
stehen.

## Verifikation

`git diff --numstat -- wissen/normen/wiki/QUESTIONS.md`: 77 Zeilen hinzugefuegt, 10 entfernt.
Die 10 entfernten Zeilen stammen **nicht** aus diesem Lauf, sondern aus parallel laufenden
Prozessen derselben Station (SIA-266/1-Schliessung, SIA-410-Schliessung, SIA-380-Nachtrag —
siehe deren eigene, bereits vorliegende Reports); per `git diff` (nicht nur `--numstat`)
gegengelesen: alle drei eigenen Bloecke dieses Laufs sind reine `+`-Hunks ohne eine einzige
geloeschte Zeile. Kein `git`-Schreibbefehl ueber den SMB-Mount ausgefuehrt.

## Nicht geleistet / weiterhin offen

- **BRING-SCHULD P1 SIA 380/1:2016 Volltext, BRING-SCHULD P1 SIA 385/1:2011 Volltext:** weiterhin
  blockiert, weil der Mount mit `PL - 02_Recht_Norm/02_Normen/SIA_Normen/alle/` (der zweite,
  praefixkollidierende OneDrive-Mount) durchgehend `fts_read: Operation timed out` liefert —
  reproduzierbar, nicht auf einen Werkzeugfehler dieses Laufs zurueckzufuehren. Fuer einen
  Folgelauf: zuerst `heartbeat` bzw. gezielt diesen Mount pruefen, dann diese beiden P1-Punkte
  zuerst angehen.
- **BRING-SCHULD P1 SIA 266/1:2015, P2 SIA 410-Nachfolgewerke, P2 SIA-Merkblatt 2048:** wie in
  den Vorlaeufen unveraendert offen — allesamt Kauf-/Beschaffungsentscheide, die Raphael selbst
  treffen muss (Rule `Grenzen`: keine Zahlungen/Buchungen ohne Einzelfreigabe).
- **N-R40-1 bis N-R40-4, N-R21-2** und weitere P3/P4-Eintraege: unveraendert offen, keine neue
  Methode verfuegbar.
