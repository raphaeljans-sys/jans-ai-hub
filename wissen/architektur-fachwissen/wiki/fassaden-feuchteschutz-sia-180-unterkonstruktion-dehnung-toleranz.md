---
title: "Fassaden-Feuchteschutz nach SIA 180 (1999) und Unterkonstruktion als Lastübertragung"
status: speculative
last_updated: 2026-08-29
sources: ["/Volumes/daten/02_Architektur_Archiv/01_Konstruktion/07_Gebäudehülle/01_Lernmaterial/Skripte/01_Wärme_Feuchteschutz/Feuchteschutz_Fassadenbau.pdf (HTA Luzern, Peter Boog dipl. Ing. FH, «Feuchteschutz im Fassadenbau nach sia 180», März 2007, 9 Seiten, gelesen vollständig, zitiert sia 180-1999 Ziffer 6.2.1.2 und 3.1.3.5)", "/Volumes/daten/02_Architektur_Archiv/01_Konstruktion/07_Gebäudehülle/01_Lernmaterial/Skripte/02_Unterkonstruktionen/Unterkonstruktionen.pdf (HTA Luzern, «Unterkonstruktionen im Fassadenbau», ohne Autoren-/Datumsangabe, 11 Seiten, gelesen vollständig)", "raw/inventar/archiv-fachwissen__01_Konstruktion.md"]
links: ["[[fassadensysteme-typologie-sechs-systeme-hta-luzern]]", "[[beanspruchungsklassifizierung-fenster-aussentueren-ift-fe-05-1]]"]
---

# Fassaden-Feuchteschutz nach SIA 180 (1999) und Unterkonstruktion als Lastübertragung

## Kontext

Zwei HTA-Luzern-Skripte aus derselben Lehrveranstaltungsreihe (Feuchteschutz datiert März 2007, Autor Peter Boog dipl. Ing. FH; Unterkonstruktionen ohne Datum, thematisch/gestalterisch dieselbe Reihe). Beide beziehen sich auf **SIA 180 in der Ausgabe 1999** — nach Rule `normen-referenz` ist jede Norm-Aussage vor Verwendung gegen die heute geltende Ausgabe zu prüfen, da SIA 180 seither revidiert wurde (aktuelle Fassung SIA 180:2014 «Wärme- und Feuchteschutz im Hochbau» — hier nicht gegen `wissen/normen/` verifiziert, da dort noch kein SIA-180-Destillat vorliegt).

## Teil 1: Ziele des Feuchteschutzes

Feuchte ist im Fassaden- und Metallbau eine häufige Schadensursache. Zwei Wirkungsrichtungen: Schlagregen von aussen (Aufgabe der Fassade selbst) und Kondensation von innen, wenn warme, feuchte Raumluft an einer Oberfläche unterhalb des Taupunkts kondensiert; ist die Konstruktion nicht dampfdicht, kondensiert Feuchte auch innerhalb der Konstruktion. Schadensbilder: bei Oberflächenfeuchte Schimmelpilz, Fäulnis, Korrosion; bei Feuchte in der Konstruktion zusätzlich Reduktion der Wärmedämmung, Salztransport/-ablagerung (meist Mauerwerk) und Frostschäden.

Ziel ist eine innen dampfdichte Konstruktion mit Oberflächentemperaturen oberhalb des Taupunkts; wo das konstruktionsbedingt nicht durchgehend möglich ist, darf Kondenswasser laut SIA 180-1999 Ziffer 6.2.1.2 «kurzfristig auftreten, wenn dies nicht zu Schäden führt». Kritische Stellen sind grundsätzlich Wärmebrücken — als Fallbeispiel nennt das Skript ein Oblicht in einem Wintergarten mit massivem Tauwasser: Ursache war ein isolierter Aluminiumrahmen, der auf eine gegen aussen unisolierte Betondecke anschloss.

Schimmelpilzgefahr besteht, wenn die Oberflächenfeuchte über längere Zeit 80 % übersteigt. Für den Kondensat-Nachweis wird die tiefste Aussenlufttemperatur eines Standorts verwendet (tiefste in 20 Jahren an drei aufeinanderfolgenden Tagen gemessene Temperatur), für den Schimmelpilz-Nachweis die monatliche Mitteltemperatur — SIA 180-1999 Ziffer 3.1.3.5 gibt dazu die maximal zulässige Raumluftfeuchte in Abhängigkeit von Innen- und Aussentemperatur vor.

**Vereinfachter Nachweis:** Kondensatfreiheit und keine Schimmelpilzgefährdung sind gegeben, wenn (1) Fenster, Türen und Fassaden einen U-Wert von mindestens 2,4 W/m²K haben und (2) bei konstruktiven Wärmebrücken der Oberflächentemperaturfaktor fRsi ≥ 0,75 ist. Das Skript warnt ausdrücklich: ein guter U-Wert schliesst eine gravierende lokale Wärmebrücke nicht aus.

**Rechnerischer Nachweis** (nötig, wenn die Raumluftfeuchte nutzungsbedingt höher liegt oder fRsi < 0,75): mit festen Wärmeübergangswiderständen (äussere Oberfläche Rse = 0,04 m²K/W; innere Oberfläche obere Raumhälfte Rsi = 0,25, untere Raumhälfte 0,35, Fenster/Türen 0,15 m²K/W — diese weichen bewusst von den U-Wert-Berechnungswiderständen ab, um den Einfluss von Gebäudekanten abzubilden) wird der minimal zulässige Oberflächentemperaturfaktor fRsi,min bestimmt und mit dem tatsächlichen fRsi verglichen, getrennt für Oberflächenkondensat (tiefste Aussentemperatur) und Schimmelpilzfreiheit (Monatsmittel Oktober–April, mit 25 % Sicherheitszuschlag auf den zulässigen Dampfdruck).

## Teil 2: Unterkonstruktion als Lastübertragung

Die Unterkonstruktion (UK) ist die punkt- oder linienförmige Verbindung zwischen Fassadenelement und Baukörper. Sie **überträgt** Eigengewicht der Fassade, Windlasten und allfällige Schnee-/Personenlasten, und sie **nimmt auf**: Temperaturausdehnungen sowie Bauwerk- und Elementtoleranzen.

**Dehnungsformel:** Δl = l₀ · α · Δt (Ausgangslänge × Temperaturausdehnungskoeffizient × Temperaturdifferenz). Richtwerte aus dem Skript: Aluminium 23,8 × 10⁻⁶ 1/K, Beton rund 12 × 10⁻⁶ 1/K, Stahl 12 × 10⁻⁶ 1/K; Richtgrösse für die anzunehmende Temperaturdifferenz ΔT ≈ 40 K.

**Grundsatz:** Dilatationen sind unbehindert aufzunehmen — verspannte Teile mit Schrauben und Längsschlitzen sind dafür nicht geeignet (Schraube kann sich lockern), Kunststoff-Unterlagsscheiben ebenso wenig (Kunststoff kann fliessen). Geeignet sind gleitende Verbindungen oder Verbindungen über elastische Teile, mit gesicherten Schrauben; die Dilatation eines Fassadenrasters ist im Zweifel über ein schematisches Skelettbild zu untersuchen.

**Toleranzaufnahme:** Am Beispiel einer Silikonfuge (aufnehmbare Dehnung laut Beispiel 25 %, Rahmenmass 1,6 m, Rahmenwerkstoff Aluminium, ΔT = 40 K) zeigt das Skript die Bemessungslogik einer Bewegungsfuge; ist die Dehnung vollständig behindert, baut sich stattdessen eine Zwangskraft im Profil auf (Beispielrechnung mit Aluminium-Profilquerschnitt 530 mm²).

## Praxisregel

Bei jedem Fassadendetail mit Wärmebrücken-Verdacht (Oblichter, auskragende Betonteile, durchlaufende Metallprofile) zuerst den fRsi-Grenzwert 0,75 als Faustregel prüfen, bevor ein rechnerischer Nachweis beauftragt wird. Für die Unterkonstruktion gilt: nie starr verspannen, immer Gleitlager oder elastische Verbindung mit gesicherter Schraube vorsehen — die Dehnungsformel mit ΔT ≈ 40 K liefert eine schnelle Grössenordnung für die nötige Fugenbreite.

## Offene Punkte

- **Beide Skripte beziehen sich auf SIA 180 in der Ausgabe 1999** (Ziffern 6.2.1.2 und 3.1.3.5 explizit zitiert). Nach Rule `normen-referenz` ist jede Norm-Aussage vor Verwendung gegen die aktuell geltende SIA-180-Fassung zu prüfen; eine Verifikation gegen `wissen/normen/` konnte in diesem Lauf nicht erfolgen, da dort kein SIA-180-Destillat vorliegt.
- Die Temperaturausdehnungskoeffizienten und die Richtgrösse ΔT ≈ 40 K sind Lehrunterlagen-Richtwerte, keine Normwerte im engeren Sinn; sie sind für eine verbindliche Bemessung gegen die Herstellerangaben des jeweiligen Profilsystems zu verifizieren.
- Das Feuchteschutz-Skript ist explizit datiert (März 2007); das Unterkonstruktionen-Skript trägt kein Datum, stammt aber erkennbar aus derselben Lehrveranstaltung (identisches Foliendesign «HTA LUZERN»).
