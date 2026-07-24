# Konversations-Destillat 24.07.2026

MacBook Pro 26 Sessions · Mac Mini 26 Sessions · Dispatch 16 (Mac-Mini-Nachtschicht-Zyklen,
davon 14 auch als eigene Mac-Mini-Sessions erfasst — keine Doppelzählung, reine Routine,
keine Handy-Sonderauftraege) · Cloud 0 — Fenster 26h (23.07. ca. 04:13 bis 24.07. 06:13).

Zaehlweise: nur Sessions mit echten, von Raphael getippten Eingaben oder substanziellen
Ergebnissen zaehlen als Gespraech. Reine Trainings-/Routine-Laeufe (inkl. der Nachtschicht-
Zyklus-Vorlage) sind unten nur als Einzeiler-Summe gefuehrt.

## Themen dieses Fensters (echte Gespraeche)

### KISPI Brandschutz LBW: Herkunft der 800-kg/m3-Rohdichte-Vorgabe geklaert (Mac Mini, 23.07. 12:58–13:xx)

**Kern & Entscheide:** Raphael hatte vom Trockenbauer Estermann zwei VKF-Anerkennungen fuer
die LBW-Systemwaende (W320/W340/W430/W440) erhalten (Nr. 18151 GKB-Platte 776 kg/m3 vs.
Nr. 22636 Duraline-Platte 1'003 kg/m3) und wollte wissen, warum zwei Dokumente kommen. Claude
hat den Unterschied erklaert (beide EI 90-RF1, aber nur Duraline erfuellt Jens Ziegels
(Gruner) Vorgabe von min. 800 kg/m3 fuer die aeusserste Beplankungsplatte) und dazu einen
ersten Bericht abgelegt. Auf die strategische Anschlussfrage (fuer die Auflagebereinigung bei
der Feuerpolizei nur die 22636-Anerkennung beilegen?) hat Claude eine differenzierte Antwort
gegeben (18151 ist nicht normwidrig, die 800 kg/m3 sind eine QS-Vorgabe Ziegels, keine
VKF-Anforderung; Fallunterscheidung je nach effektiv verbautem System) — Raphael hat das
Vorgehen vorerst zurueckgestellt ("lassen wir das"), aber die Einschaetzung als zweiten
Bericht ablegen lassen. Dritte, substanziellere Frage: woher stammt die 800-kg/m3-Vorgabe
effektiv, und ist sie fuer das Projekt KISPI sachlich korrekt? Claude hat mit Zugriff auf die
Truninger-DS3-Plattform das globale Brandschutzkonzept (Baueingabe 2016 + Aenderungseingabe
2018) durchsucht — dort steht **keine** Rohdichte-Angabe, nur EI-Qualitaeten — und ist stattdessen
im Original-LV der Erstellung (LV BKP 271.13 Spez. Gipserarbeiten EG-DG, 12.05.2020) auf die
vorgeschriebenen Gipsplattentypen DFIR/DFH2IR gestossen. Nach SN EN 520 bedeutet Typ D
«Gipsplatte mit definierter Dichte von mindestens 800 kg/m3» — **Ergebnis: Jens Ziegels
Vorgabe ist sachlich korrekt und stammt aus der Bestands-Spezifikation, nicht aus einer freien
Anforderung.** Auf Raphaels Wunsch wurde diese Beweiskette als Wissen im Hub abgelegt (Commit
`32b8bd0c`, NAS gepusht), damit sie fuer kuenftige Anfragen verfuegbar ist.

**Offene Punkte & Folgeaktionen:** Keine offene Frist — die Verifikation ist abgeschlossen.
Raphael entscheidet weiterhin selbst, ob/wie er die Beilagestrategie fuer die
Feuerpolizei-Eingabe umsetzt (im zweiten Bericht dokumentiert, aber nicht ausgefuehrt).

**Radar-relevant:** ja — schliesst den bestehenden Register-Punkt vom 23.07. («Gepaart, LBW
VKF/Rohdichte ... RJ zu pruefen/bestaetigen»). Neue Zeile mit Status «beantwortet/geklaert»
im Fristen-Register ergaenzt.

### KISPI Pendenzenliste fuer die Fachplanersitzung 23.07.2026 (Mac Mini, 23.07. 19:19–19:23)

**Kern & Entscheide:** Raphael hat aus einer diktierten Liste eine formelle Pendenzenliste
fuer die Koordinationssitzung Gruner/Jans/Kinderspital (23.07. 13:00, Los-uebergreifend)
erstellen lassen. Claude hat mit dem Skill `pendenzenliste` ein 5-seitiges DOCX+PDF erzeugt:
10 Pendenzen in 5 Gruppen (A Therapiekueche Roethlisberger, B Tueren/Tuerfachplanung,
C Brandschutz/Innere Verglasung, D Lueftung, E Administration/Rechnungen), Bilanz 3
abgeschlossen / 1 in Bearbeitung / 6 offen, mit Prioritaetenblock (Ruecklauf Prinzipplaene,
TeKoSi-Offerte, Roethlisberger-Bestellentscheid, RE-00087-Mahnstufe, private
Lueftungskontrolle Gruner). Abgelegt unter `.../pendenzen/2619-KISPI/260723-2619-Pendenzen-
Fachplanersitzung/` (DOCX+PDF), Korrektur-Harness gruen durchlaufen.

**Offene Punkte & Folgeaktionen:** Alle enthaltenen Einzelpunkte (Prinzipplaene-Ruecklauf,
TeKoSi, Roethlisberger, RE-00087, Lueftungskontrolle) stehen bereits im Fristen-Register
(Stand 23.07.) — reine Verdichtung/Aufbereitung fuer die Sitzung, keine neuen Fakten.

**Radar-relevant:** nein zusaetzlich — Inhalt deckt sich vollstaendig mit dem bestehenden
23.07.-Registerstand, kein neuer Frist-/Zusage-Punkt.

### KISPI: zustaendige Feuerpolizei-Kontaktadresse gesucht (Mac Mini, 23.07. ~19:3x)

**Kern & Entscheide:** Raphael wollte die E-Mail-Adresse der fuer das KISPI zustaendigen
Feuerpolizei wissen. Claude hat die Projekt-Korrespondenz und die amtliche VKF-Adressliste
geprueft: zustaendig ist Schutz & Rettung Zuerich, Feuerpolizei, Beatenplatz 1, 8021 Zuerich,
namentlicher Ansprechpartner Markus Gantenbein (Direktwahl 044 411 26 76), belegt durch
Kontaktnotiz und Screenshot im Projektordner sowie Telefonnotiz vom 16.02.2026. Eine
E-Mail-Adresse ist **nirgends belegt** — Claude hat ein plausibles Muster
(`vorname.nachname@zuerich.ch`) genannt, aber ausdruecklich als unverifiziert markiert statt
zu raten.

**Offene Punkte & Folgeaktionen:** Falls eine E-Mail an die Feuerpolizei noetig wird, muss die
Adresse vorher telefonisch bestaetigt werden (kein Identifikator-Raten, Rule
identifikatoren-verifizieren).

**Radar-relevant:** nein — reine Auskunft ohne Frist- oder Zusage-Charakter, kein
Handlungsdruck.

### KISPI Akutspital: Bodenheizschlaufen-Plaene 1. OG + Verlegeplaene Heizungsunternehmer (MacBook Pro, 23.07. 23:19–23:xx)

**Kern & Entscheide:** Raphael wollte auf der Truninger-Plattform den Plan mit den
Bodenheizschlaufen im 1. OG des Akutspitals finden. Claude hat die Heizung/Kaelte-Grundrisse
von Gruner Gruneko identifiziert (Planserie S_HK_1311 bis S_HK_1343, 12 Planfelder, plus
Uebersichtsplan 51_S_HK_1_UP_01_XX_Heizsysteme 1:200) und angehaengt. Auf Nachfrage wurden
zusaetzlich die Ausfuehrungs-/Verlegeplaene des Heizungsunternehmers steger ag (Los 242.11
Heizung/Kaelte Sued) gesucht: 12 Feldplaene (AF_FBH_OG1_S_11 bis _43), 6 DWG-Dateien,
2 Auslegungsberechnungen (Gebaeudehaelften AB/CD). Auf Wunsch wurden beide Plansaetze doppelt
abgelegt (geteilte Projekt-Site + interne Spiegel-Ablage), exakter Struktur-Spiegel der
Truninger-Plattform, 68 Dateien.

**Offene Punkte & Folgeaktionen:** Keine — Auftrag vollstaendig erledigt und dokumentiert.

**Radar-relevant:** nein — reine Grundlagenbeschaffung ohne Frist-/Zusage-Charakter.

## Bereits im Register gefuehrt (kein neuer Eintrag)

- TeKoSi Tuerfachplanung Los 231.10 (beauftragt 22.07.), KISPI-Brandschutz-Auflagenbereinigung
  (finale Abgabe 22.07.), Debitoren-Verzug RE-00087/98/99, Saumstrasse-21-Geschirrspueler-
  Submission — alle unveraendert seit dem 23.07.-Stand, in den obigen Gespraechs-Themen nur
  bestaetigt/vertieft, nicht neu.
- Umlaut-Regel fehlt in Mac-Mini-Scheduled-Task-Prompts (23.07., Config-Fix, weiterhin
  offen/whitelist-blockiert) — in der Nacht 23./24.07. mehrfach in Trainingslaeufen erneut
  angetroffen (u.a. Energie Run 86 hat den Fehler selbst gemacht und korrigiert), keine neue
  Register-Zeile noetig.

## Routine-/Trainings-Laeufe (Einzeiler-Summe)

26 MacBook-Pro-Sessions (u.a. Wissens-Chef Run 13, Normen-Training Runs 18+19 SIA/VKF
komplett, Wettbewerbs-DNA Etappe 3 Baustein B1+B2/B3 Healthcare, Immobilienbewertung-Training
Run 41 [Delta-Null], Spec-Training Laeufe 26+27, Twin-Mail-Training Batches 46/50/59,
Twin-Fidelity-Reviews 90/100, Logbuch-Radar-Laeufe, Hub-Chef, Heartbeat, bexio-Hygiene,
Debitoren-Verzugscheck) sowie 26 Mac-Mini-Sessions (14 davon als Nachtschicht-Zyklus-Vorlage,
u.a. Synobsis-Batch [12. leerer Lauf], Energie-Training Run 84–86, Planungsgrundlagen Run 58,
diverse Wissenscheck-Phase-1-Audits [koordination, entwurfs-referenzen, spec,
immobilienbewertung], neuer Wiki-Artikel `typologien/bildung.md`, neuer Wiki-Artikel
`holding-struktur.md` in `firmengruendung-ch`), ausschliesslich Routine ausser den vier oben
gefuehrten echten Gespraechen. 16 Dispatch-Nachtschicht-Zyklen auf dem Mac Mini, durchweg
budget-diszipliniert (~1.2–3.1 von 5 USD je Lauf), keine Handy-Sonderauftraege. Keine
Besonderheiten ausser den bereits erwaehnten SMB-Git-Kollisionen (mehrfach, alle
regelkonform dem nativen `nas-selfcommit`-Cron ueberlassen) und der bekannten
Umlaut-Bug-Kehrseite der Minimum-Viable-Model-Umstellung.
