# Trainingslauf Planungsgrundlagen — Run 25 (2026-07-13)

Schwerpunkt-Domaenen laut Rotation nach Run 24 (Kartenportale + Brandschutz): **Kartenportale
(PL-01)** + **Energie (PL-04)**, Token-Vollgas 2 Domaenen. Anders als in frueheren Laeufen war der
Curriculum-/QUESTIONS-Rueckstand in beiden Domaenen praktisch vollstaendig abgearbeitet (alle
bisherigen K-/E-Punkte `[x]`) — dieser Lauf hat deshalb den vollstaendigen PL-01/PL-04-Ordnerbaum
auf SharePoint nach bisher **unbearbeiteten** Unterordnern durchsucht, statt bekannte Luecken zu
vertiefen. Ergebnis: mehrere bisher nie erschlossene Themen mit realem JANS-Praxisbezug gefunden.

## Bearbeitete Fragen (9)

**Kartenportale — 6 neue Themen aus bisher unbearbeiteten PL-01-Unterordnern:**
1. Wie funktioniert das digitale Baugesuchsportal eBau SZ (Registrierung, Pflichtfelder,
   Beilagen)? → Buergerportal-Registrierung + eine reale JANS-Arbeitsnotiz (Fall Willerzell Kataster
   3301) legt die tatsaechliche Feldliste offen: Vermessungsangaben via WebGIS SZ, GVZ-Nr.,
   Gebaeudevolumen doppelt (SIA 116 UND SIA 416, mit 3 offenen Fachfragen zur konkreten Anwendung),
   Entwaesserungsplan SN 592 000, **Oberflaechenabfluss als eigener, von der Naturgefahrenkarte
   unabhaengiger Layer**, Schadstoff-Schwelle 200 m³ → NEU [[kartenportale-ebau-sz-baugesuch]].
2. Wie wird das historische Terrain (gewachsener Boden vor einer Bestandesueberbauung) fuer die
   Baumassenziffer rekonstruiert, wenn swissALTI3D nur den Ist-Zustand liefert? → private
   Vermessungsbueros digitalisieren historische Kantonskarten zu Hoehenlinien; realer JANS-Fall
   Regensdorf Holenbachstrasse 45-55 (Acht Grad Ost AG, Auftraggeber Nova Property) belegt Methode
   + Liefergegenstand (PDF/DWG/LandXML) → NEU [[kartenportale-historisches-terrain-vermessungsbuero]],
   direkter Anschluss an Skill `massgebendes-terrain`.
3. Was ergaenzt die inggeol.ch-Praxishilfe "Bauen im Rutschgebiet" zur bisherigen
   Naturgefahren-Checkliste? → Naturgefahrenkarte zeigt nur den ungestoerten Zustand; das
   Bauvorhaben selbst ist eine Zustandsaenderung mit eigenem, projektabhaengigem Risiko — gerade
   die gelbe Gefahrenstufe wird deshalb oft unterschaetzt. Typische baubedingte Ausloeser +
   bewaehrte Rollenverteilung Architekt/Bauingenieur/Geologiebuero dokumentiert →
   [[kartenportale-naturgefahren-objektschutz]] §7 (neu).
4. Was bietet `geoglatt.ch` zusaetzlich zu `maps.zh.ch`? → alternative kommunale
   Benutzeroberflaeche, kein Ersatz fuer den kantonalen OGD-WFS-Weg.
5/6. Lohnt sich vertiefte Bearbeitung von Kt. Luzern/Kt. Bern? → niedrige Prioritaet bestaetigt
   (kein JANS-Kerngebiet); Praxis-Lehre dokumentiert: eine Kt.-LU-AV-Bestellung ueber `geodienste.ch`
   wurde ohne Begruendung abgelehnt, der kantonseigene Geodatenshop LU funktionierte hingegen
   zuverlaessig → beides in [[kartenportale-geoportale-uebersicht]] §Weitere Kantone.

**Energie — CLT-Bauphysik + realer U-Wert-Fall (bisher unbearbeiteter Ordner `U Wert berechnung/`):**
7. Welchen U-Wert erreicht eine CLT-Aussenwand mit/ohne Daemmung? → belegt aus "CLT by Stora Enso —
   Technische Dokumentation Bauphysik" (V06.2021): λ_CLT = 0,12 W/mK (EN ISO 10456), unbekleidete
   100mm-Platte U=0,997 W/m²K, mit 160mm Mineralwolle U=0,179 W/m²K.
8. Wie sieht ein realer JANS-U-Wert-Nachweis fuer eine CLT-Konstruktion aus? → Fall Biwak Grassen
   (bereits Brandschutz-Benchmark aus Run 24): Schutzblech + 40mm Luft + 40mm Mineralwolle + 140mm
   CLT ≈ U 0,40 W/m²K gegen Zielwert 0,5 W/m²K; Stroh-Alternative (oekologisch) haelt Zielwert
   ebenfalls ein.
9. (Implizit) Bestaetigt: die Feuchte-/Luftdichtheit-Kapitel derselben Stora-Enso-Doku bleiben als
   Fundstelle vermerkt, nicht ausgewertet (kein Bedarf aus aktuellen Projekten erkennbar).

## Neue/erweiterte Artikel

- **NEU [[kartenportale-ebau-sz-baugesuch]]** (emerging): eBau-SZ-Domaene komplett neu erschlossen.
- **NEU [[kartenportale-historisches-terrain-vermessungsbuero]]** (emerging): schliesst eine echte
  Luecke zwischen Geodaten-Beschaffung (amtlich, aktuelles Terrain) und der fachlichen MT-Festlegung
  im Skill `massgebendes-terrain` (historisches Terrain, wo amtliche Portale nicht helfen).
- **[[kartenportale-naturgefahren-objektschutz]] erweitert:** neuer §7 (Rutschgebiete inggeol.ch),
  bisheriger §7 "Offene Punkte" zu §8 verschoben; Frontmatter/Sources ergaenzt.
- **[[kartenportale-geoportale-uebersicht]] erweitert:** neuer Abschnitt "Weitere Kantone/regionale
  Portale" (Kt. LU, Kt. BE, geoglatt.ch).
- **[[energie-uebersicht]] erweitert:** §U-Wert um CLT-Bauphysik-Kennwerte + realen Biwak-Grassen-
  Wandaufbau ergaenzt (vorher nur unverarbeiteter Ordnerverweis).

## Verifikations-Stufe (Modell-D-Volltextabgleich)

Alle acht neu ausgewerteten Quellen (eBau-SZ-Registrierungsanleitung + reale Arbeitsnotiz,
Acht-Grad-Ost-Mail-Thread, inggeol.ch-Praxishilfe S.1-9, geodienste.ch-Ablehnungsmail, Stora-Enso-
CLT-Bauphysik-Doku S.1-8, Biwak-Grassen-U-Wert-Notiz) wurden **direkt im Original gelesen** — kein
Sekundaerzitat. Keine Endpunkte/Kennwerte erfunden; wo eine Fachfrage im realen eBau-Fall offen
blieb (Tiefgarage im SIA-416-Volumen? GVZ-Nr.-Zuteilung? kW-Bezugsbasis Waermeerzeuger?), ist das
als offene Frage dokumentiert statt geraten zu beantworten. Kein Verdikt "beanstandet".

## Was als naechstes

- **Naechste Domaenen laut Rotation:** Recht/Norm + Brandschutz fuer den naechsten Lauf (beide
  Domaenen sind nach Run 21/23/24 bereits sehr weitgehend erschlossen — Schwerpunkt duerfte
  aehnlich wie hier auf bisher unbearbeiteten PL-02/PL-03-Unterordnern statt neuen Kernfragen liegen).
- **Kartenportale/Energie:** die "einfachen" Curriculum-Punkte sind jetzt in allen vier Domaenen
  weitgehend abgearbeitet. Kuenftige Kartenportale-/Energie-Laeufe sollten routinemaessig zuerst
  `find PL-0X -type f` gegen `raw/_INGESTED.md` abgleichen, um systematisch die letzten
  unbearbeiteten Unterordner zu finden (Methode dieses Laufs), statt nur `curriculum.md` erneut zu
  lesen.
- **Offen bleibt:** drei reale eBau-SZ-Fachfragen (Tiefgarage/GVZ-Nr./Waermeerzeuger-kW) noch nicht
  mit der Baugesuchszentrale geklaert; ZH-Endpunkt Naturgefahren/Grundwasser weiterhin unbelegt.
