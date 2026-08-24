---
quelle: "Merkblatt Messkonzept für Wärmepumpen-Anlagen, Fachstellen Energie- und Gebäudetechnik (FS EGT, Amt für Hochbauten) und IGG (Immobilien Stadt Zürich), stadt-zuerich.ch/content/dam/web/de/planen-bauen/projekte-und-ausschreibungen/dokumente/hochbauvorhaben/vorgaben/energie-gebaeudetechnik/merkblatt-messkonzept-waermepumpen.pdf"
herausgeber: "Stadt Zürich, Amt für Hochbauten (AHB) und Immobilien Stadt Zürich (IGG), Lindenhofstrasse 21, Postfach, 8021 Zürich"
ausgabe: "17.06.2020, M-System-Nr. 394 (interner Dateiname trägt zusätzlich «Gleichwertigkeit», sonst keine Versions-/Änderungsangabe im Dokument selbst)"
gelesen: "S. 1-10 vollständig, 2026-08-24 (Titelblatt/Fliesstext per PyMuPDF-Textlayer, die stark grafische Systemgrenzen-Figur S. 6 sowie S. 3-9 visuell per Bildrendering gelesen, da der Textlayer dort weitgehend leer ist — echte Bild-/Vektorgrafik-Seiten, kein Extraktionsfehler)"
datenstand: "Juni 2020 ⚠ Literaturverweis [2] im Dokument selbst zitiert die «Richtlinie Gebäudetechnik», Stand 26.08.2015 — diese ist seither durch die Fassung August 2025 (`[[ahb-richtlinie-gebaeudetechnik-229-2025]]`) abgelöst; die JAZ-Definition und Messkonzept-Anforderungen dieses Merkblatts selbst sind davon inhaltlich nicht offensichtlich betroffen, aber nicht gegengeprüft"
status: established
last_updated: "2026-08-24"
---

# Destillat — Merkblatt Messkonzept für Wärmepumpen-Anlagen, AHB Stadt Zürich, M-System-Nr. 394, Juni 2020

## Das Wichtigste in 1 Satz

Für AHB-/IMMO-Bauvorhaben der Stadt Zürich ist im Vorprojekt ein Messkonzept für die
Jahresarbeitszahl (JAZ) der Wärmepumpe zu erstellen; die JAZ-Definition (Kondensatorwärme
geteilt durch Kompressor- **und** sämtliche Hilfsbetriebe-Energie) und die minimalen Messstellen
sind je nach Anlagengrösse gestaffelt vorgegeben.

## Fund-Anlass und Einordnung

Referenziert namentlich in `[[ahb-richtlinie-gebaeudetechnik-229-2025]]` (Dokumentenliste S. 5-6,
Doc.-Nr. 394) als eines der aktuell gültigen AHB-Fachmerkblätter, dort als Kandidat mit
Healthcare-/JANS-Relevanz priorisiert (Teil 6 dieser Richtlinie verweist auf das Tool WPesti für
die Planungs-JAZ, dieses Merkblatt regelt die spätere **Messung** der effektiven JAZ im Betrieb).

## JAZ-Definition (Kap. 2.1)

Das Merkblatt unterscheidet ausdrücklich zwischen dem punktuellen **COP** (Kompressor-Kennzahl
nach EN 14511, ein Betriebspunkt) und der betrieblichen **Jahresarbeitszahl (JAZ)**, die das
gesamte Wärmepumpensystem inkl. aller Hilfsbetriebe über ein Jahr erfasst:

```
JAZ = Q_WP / (E_WP + E_V + E_K + E_SR + E_A + E_C)
```

- `Q_WP`: produzierte Wärme ab Kondensator
- `E_WP`: Energiebedarf des Kompressors
- `E_V`: Energiebedarf der Verdampferpumpe
- `E_K`: Energiebedarf Kondensatorpumpe(n)
- `E_SR`: Energiebedarf für Steuerung und Regulierung
- `E_A`: Energiebedarf Abtaueinrichtung (falls vorhanden)
- `E_C`: Energiebedarf der Carterheizung

Zusatzheizungen (z. B. Elektroeinsätze) werden für die JAZ-Berechnung **nicht** berücksichtigt.
Referenziert wird eine weitere Kennzahlenfamilie (Seasonal COP, JAZ_WP, Wärmeerzeugungsnutzungsgrad
WNG, Systemnutzungsgrad SNG/SNG+) nach Dott et al. 2018 (Systemgrenzen-Figur S. 6) — je weiter
die Systemgrenze (WP allein → inkl. Speicherverluste → inkl. Verteilverluste), desto tiefer die
resultierende Kennzahl. Für die Stadt Zürich massgebend ist primär die **JAZ gemäss
Minergie-Nachweis**, standardmässig mit dem Tool **WPEsti** (Huber/Stalder 2018) berechnet.

Auf den Einsatz von Elektroeinsätzen (z. B. für die TWW-Schnellerwärmung) soll grundsätzlich
verzichtet werden; ein Ausfall-bedingter Elektroeinsatz-Betrieb muss über einen Alarm angezeigt
werden.

## Messstellen nach Anlagengrösse (Kap. 2.2)

Die Grenze zwischen «Kompakt-» und «Grosswärmepumpenanlage» liegt bei **rund 100 kW Heizleistung**
(Kompaktanlagen: alle Betriebskomponenten in der WP integriert; Grossanlagen: projektspezifisch
geplante hydraulische Einbindung/Steuerung durch Fachpersonen).

**Kompaktwärmepumpenanlage (Kap. 2.2.1):**
- Wärmemessung ab WP (Q_WP)
- Eine Elektromessung für Verdichter + alle Hilfsbetriebe zusammen (E_WP + E_V + E_K + E_SR + E_A + E_C)
- Bei mehreren WP nach Rücksprache Einzelmessung je Maschine möglich
- Zusätzlich zur Überwachung: Betriebsstunden/Starts je WP; bei Erdwärmesonden minimale/maximale
  Vor-/Rücklauftemperatur pro Jahr (Minimalanforderung **SIA 384/6:2020**, oder Trendaufzeichnung
  bei Aufschaltung auf ein EDL-Portal)

**Grosswärmepumpenanlage (Kap. 2.2.2, > ca. 100 kW):**
- Wärmemessung ab WP (Q_WP) UND getrennte Elektromessung Verdichter (E_WP) UND getrennte
  Elektromessung aller Hilfsbetriebe (E_V + E_K + E_SR + E_A + E_C) — pro Wärmepumpe
- Bei Umweltenergie-Förderaufwand (Grundwasserpumpen, Solepumpen, Luft-Wärmetauscher) wird eine
  separate Messung empfohlen (Entscheid im Projektteam)
- Zusätzlich: Betriebsstunden/Starts je WP, Modulationssignal bei FU-geregelten Kompressoren,
  Vor-/Rücklauftemperatur Erdwärmesonden wie bei Kompaktanlagen
- Bei aktiver Regeneration (Erdsonden auch zur Kühlung) müssen Wärmeeintrag/-entzug separat
  gemessen oder über das Vorzeichen der Messung eindeutig unterscheidbar sein
- Grundwasserfassungen: Temperatur und Grundwasserspiegel über Gebäudeautomation erfassen,
  **jährliche Rapportierung an das AWEL** ist Auflage

**Anlagen zur Wärme- und Kältenutzung / Kombianlagen (Kap. 2.2.3):**
- Wärmemessung ab WP-Kondensator UND Kältemessung ab WP-Verdampfer (je Nutzenergie), getrennte
  Elektromessungen Verdichter/Hilfsbetriebe — sonst identische Zusatzanforderungen wie oben

Bei Bauvorhaben im Auftrag von Immobilien Stadt Zürich werden Messdaten via SPS/GA automatisch
auf den EDL-Energiemonitor übertragen (JAZ-Berechnung dort); bei anderen Dienstabteilungen ist
auch eine Auswertung ohne Portal-Anbindung (manuelles Ablesen) zulässig — Minimalanforderung
bleibt aber, was für eine Minergie-Zertifizierung nötig ist. In begründeten Fällen (Kosten,
Komplexität) kann auf einzelne Messstellen verzichtet werden, wenn der Energiebedarf anders
plausibilisiert werden kann (z. B. Betriebsstunden, plausible Schätzung).

## Bauherren-Transfer

Für ein Healthcare-Projekt mit Wärmepumpenanlage > ca. 100 kW Heizleistung (praktisch jedes
grössere Pflegeheim/Spital) gilt nach dieser Stadt-Zürich-Praxis die **getrennte** Messung von
Verdichter- und Hilfsbetriebe-Strom als Standard, nicht die vereinfachte Summenmessung der
Kompaktanlage — bei der Ausschreibung der Gebäudeautomation/Zähler frühzeitig einzuplanen, da
eine Nachrüstung deutlich teurer ist. Der Formel-Nenner (E_WP + E_V + E_K + E_SR + E_A + E_C)
ist die praktische Eselsbrücke gegen eine zu optimistische, nur den Kompressor erfassende
JAZ-Angabe von Herstellerseite.

## Offene Punkte

- Kein eigener numerischer Zielwert/Mindest-JAZ in diesem Dokument selbst (das regeln
  Minergie-Nachweis bzw. Förderprogramme, siehe `[[waermepumpe-systemvergleich]]`,
  `[[sia-384-3-wpesti-jaz-methode]]`).
- Literaturverweis [2] (Richtlinie Gebäudetechnik, Stand 2015) ist überholt durch die 2025er-Fassung
  — nicht geprüft, ob das die Messkonzept-Anforderungen selbst materiell verändert.
- Die stark grafischen Seiten (v. a. Systemgrenzen-Figur S. 6) sind per Bildlesung erfasst, nicht
  per Textlayer — bei einer künftigen erneuten Quellenprüfung dasselbe Verfahren wiederholen,
  PyPDF2/PyMuPDF liefern für dieses PDF nur die Titelseite als brauchbaren Text.

## Backlinks

- `[[ahb-richtlinie-gebaeudetechnik-229-2025]]` (referenzierende Übersicht, Doc.-Nr. 394)
- `[[waermepumpe-systemvergleich]]`, `[[sia-384-3-wpesti-jaz-methode]]`,
  `[[cop-scop-jaz-waermepumpe-gruenenwald]]` (JAZ-Begriffsfamilie)
- `wiki/heizleistung-und-waermeerzeuger.md`
