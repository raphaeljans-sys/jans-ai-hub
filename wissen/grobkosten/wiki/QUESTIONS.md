# QUESTIONS — wissen/grobkosten

Offene Fragen / Wissenslücken / ungelöste Spannungen. Neueste zuoberst.

## 2026-07-25 — Trainings-Run 3 (Drittquelle AR-07 Archiv geprüft): erstmals GV+BKP im selben Dokument, aber beide Fälle intern widersprüchlich

- **Befund:** SharePoint `AR - 07 Archiv` (abgeschlossene Mandate) vollständig geprüft (4
  Projektordner). Zwei liefern Material: 2202 Ackersteinstrasse 67 (4 Kostenstände über
  2021–2023, Volumen 613–850 m³, Gesamtkosten CHF 480'000–1'219'133, ohne erkennbaren Grund
  für die Abweichung) und 2304 Reckholdern 20 (erstmals GV 1'715 m³ UND vollständige
  eBKP-H-Gliederung im selben Dokument — aber dasselbe Dokument enthält zwei sich
  widersprechende Gesamtkosten, CHF 2'960'000 vs. CHF 1'800'000, wobei letztere erkennbar aus
  einer nicht aktualisierten Fremdprojekt-Vorlage stammt, inkl. sachfremder
  Mietrendite-Berechnung). Details: `raw/2202-ackersteinstrasse.md`, `raw/2304-reckholdern.md`.
- **Neues strukturelles Muster:** Anders als in Run 2 (wo GV und BKP-Kosten in getrennten,
  aber je für sich konsistenten Dokumenten fehlten) liegt hier das Problem NICHT im Fehlen von
  Grösse oder Kostengliederung, sondern in der internen Konsistenz der Dokumente selbst —
  Word/PDF-Vorlagen mit nicht vollständig aktualisierten Vorjahresdaten (Titelseite/
  Rendite-Block aus Fremdprojekt) und mehrfachen, sich widersprechenden Kostenständen ohne
  dokumentierten Anlass für die Änderung. Für künftige Läufe: bei einem Kandidaten mit
  vermeintlich vollständigem GV+BKP-Bild IMMER prüfen, ob das Dokument intern
  in sich konsistent ist (Summe der Positionen = ausgewiesenes Total, Objektbeschrieb passt
  zum Rest des Dokuments), bevor eine Übernahme erwogen wird.
- **Vorschlag für Run 4:** Beide Projekte haben mehrere Kostenstände über die Zeit — ein
  gezielter Blick auf eine allfällige Schlussabrechnung (Ist-Kosten) im selben Projektordner
  könnte die Widersprüche auflösen (in diesem Lauf nicht gesucht, nur die in `PROGRAMM.md`
  vorgeschlagenen KV-/GKS-Dokumente gelesen). Alternativ: Rückfrage an Raphael Jans, welcher
  Stand je Projekt effektiv realisiert wurde. Mit `AR - 07 Archiv` vollständig geprüft (4/4
  Projektordner `[x]`/`[-]`) und `AR - 01 Projekte` in Run 2 vollständig geprüft, sind die
  bekannten SharePoint-Quellen gemäss `PROGRAMM.md` ausgeschöpft — ein Run 4 müsste entweder
  gezielt nach Schlussabrechnungen suchen (statt neue Projektordner) oder eine neue Quelle
  identifizieren (z.B. `kostenkontrolle`-Outputs, falls dort inzwischen Kostenrapporte
  vorliegen).

## 2026-07-25 — Trainings-Run 2 (SharePoint-Zweitquelle geprüft): erste Realdaten, aber durchgängig zu dünn für Promotion

- **Befund:** SharePoint `AR - 01 Projekte` (aktive Mandate) bestätigt die in Run 1 offen
  gelassene Vermutung — hier liegen die echten Kostendokumente, nicht im NAS-Altarchiv. Von 8
  geprüften Mandaten liefern 3 auswertbare Gesamtgebäude-Kostendokumente (Thalwil, Wartstrasse,
  Grubenackerstrasse). Alle drei sind jedoch für eine Kennwert-Promotion **zu dünn**: Thalwil
  hat ein volles BKP-1-6-Bild (CHF 526'300) aber kein Gesamt-GV; Wartstrasse hat gar kein
  GV (Fassaden-Teilprojekt); Grubenackerstrasse hat ein Volumen (1'668 m³), aber nicht
  SIA-416-verifiziert, ohne BKP-Gliederung und ohne Nutzungsangabe. Details: `raw/*.md`.
- **Strukturelles Muster (wichtig für künftige Läufe):** Die Dokumente, die tatsächlich ein
  sauberes GV+BKP-1-5+Nutzung-Tripel enthalten würden, existieren im JANS-Alltag offenbar
  selten als EIN Dokument — GV steckt oft im Vorprojekt/Baugesuch (Planer-Fachdokument), BKP-
  Kosten in einem separaten Kostenblatt. Ein künftiger Lauf sollte pro Projekt gezielt NACH
  dem GV-Dokument (Baugesuch, Vorprojekt-Pläne mit Kubatur) suchen und es mit dem Kostenblatt
  zusammenführen, statt nur das Kostenblatt allein zu prüfen.
- **Ausgeschlossen (bewusst, nicht offen):** 2619 KISPI (Kinderspital Zürich, umfangreichstes
  Kostendossier im Bestand) — Healthcare-Scope, gehört in den Skill `kostenschaetzung`, nicht
  hierher. Empfehlung: eigener Hinweis an den `kostenschaetzung`-Loop, falls dieser die
  KISPI-Kostendaten noch nicht kennt.
- **Nebenbefund (kein grobkosten-Thema, aber notiert):** `2518_Grubenackerstrasse_7/
  04_KostenTermine/1_Kosten/2_Kostenschätzung/230324 Kostenvergleich Liftposition/` enthält
  Fremddaten zweier anderer Projekte (Reckholdern 20, Laternengasse 5) — Fehlablage, read-only
  nicht bereinigt, zur Kenntnis an Raphael.
- **Vorschlag für Run 3:** SharePoint `AR - 07 Archiv` (abgeschlossene Mandate mit
  Schlussabrechnung) prüfen — dort ist die Wahrscheinlichkeit eines vollständigen GV+BKP-Bilds
  höher als bei laufenden Mandaten (deren KV/GKS oft vor Baubeginn und ohne finales GV steht).

## 2026-07-25 — Trainings-Run 1 (Stufe 1, Inventar): Altarchiv `04_Buero/02_Projekte` liefert 0 auswertbare Kostendokumente — Zweitquelle SharePoint prüfen

- **Befund:** Vollständige Durchsicht aller 21 Projektordner unter
  `/Volumes/daten/04_Buero/02_Projekte/` (Details `training/quellen-inventar.md`) ergab **kein
  einziges** auswertbares GV/BKP-1-5-Kostendokument. Ordner, deren Struktur einen vollständigen
  Kostenverlauf suggerieren (z.B. `1602_St_Karli_11` mit 8 Phasenordnern Wettbewerb→
  Kostenfeststellung, `1303_Steinhof` ebenso), sind auf Dateiebene komplett leer (nur
  `.DS_Store`). Andere Treffer sind Honorarofferten (1011), Möbel-/Büroumzugs-Preisvergleiche
  (1527), ein leeres Berechnungs-Template (1115) oder fachfremd (1604, italienisches CISA-
  Palladio-Studienmaterial).
- **Offene Frage:** Ist dieses Alt-NAS-Archiv (`04_Buero/02_Projekte`, Projekte 2010–2015)
  überhaupt der richtige Ort für reale Baukosten, oder laufen JANS-Bauleitungsmandate mit
  echter Kostenkontrolle ausschliesslich über SharePoint (`AR - 03 Studien/`, aktive Mandate
  KISPI/Albertstrasse/Thalwil, Rule `projekt-ablage-stand`)? `training/PROGRAMM.md` nennt
  SharePoint bereits als Zweitquelle ("`kostenkontrolle`-Outputs und Schlussabrechnungen der
  aktuellen Mandate") — noch nicht geprüft, da dieser Lauf sich strikt an die im Prompt
  vorgegebene NAS-Quelle hielt.
- **Vorschlag für den nächsten Lauf:** SharePoint-Projektordner (M365-Connector,
  `09_Dokumente/CLAUDE/` bzw. die BKP-Kostenkontrolle-Ablage der aktiven Mandate) nach
  Schlussabrechnungen/Kostenständen mit GV-Bezug durchsuchen, statt das Alt-NAS-Archiv erneut
  zu prüfen (dort ist die Quellenlage nach dieser Vollprüfung ausgeschöpft).
- **Einzige nicht komplett wertlose Fundstelle:** `1318_Lorraine_Kueche` (BKP-Detailpositionen
  Schreiner/Heizung/Sanitär für einen Kücheneinbau) — kein Gebäude-GV, daher hier nicht
  verwertet; potenziell später für eine BKP-Einzelposition-Kennwert-Erweiterung interessant.

## 2026-07-24 — Nachgetragen aus Health-Check 21.07.2026 (strukturelle Findings, 3 Wochen offen)

- **Reale JANS-Schlussabrechnungen fehlen weiterhin.** Alle Kennwerte in `kennwerte.md` sind
  Status "Seed" (Wüest-kalibriert, keine eigene Realabrechnung). Erster Realwert ist der
  Promotion-Trigger auf "belegt (n=…)".
- **Umbau/Sanierung: eigene m³-Reduktionsfaktoren noch nicht belegt** — derzeit Verweis auf
  Skill `kostenschaetzung` (dort m²-NF-Reduktionsfaktoren, nicht direkt auf m³-GV übertragen).
- **Healthcare bewusst ausgelagert** an Skill `kostenschaetzung` (Wüest-Partner-m²-NF) — kein
  offener Punkt, nur zur Abgrenzung vermerkt.
- **HNF/GF-Umrechnungsfaktoren (0.70 Regelgeschoss, 0.60 Gesamtgebäude) ohne eigene Quelle** —
  erkennbare JANS-Faustannahmen, plausibel und im Band, aber ohne Provenienz-Tag (Audit C,
  Health-Check 21.07.2026). Unkritisch, aber bei Gelegenheit mit einer Herleitung/Quelle
  hinterlegen, sobald eine verfügbar ist.
