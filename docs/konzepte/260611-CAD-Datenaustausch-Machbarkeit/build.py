#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Baut DOCX/PDF des Konzepts CAD-Datenaustausch aus dem kanonischen MD-Inhalt (Spiegel)."""
import sys
sys.path.insert(0, "/Volumes/daten/jans-ai-hub/skills/ausschreibung/tools")
from jans_docx import base_doc, h1, h2, para, table, jans_footer

OUT = ("/Volumes/daten/jans-ai-hub/docs/konzepte/260611-CAD-Datenaustausch-Machbarkeit/"
       "260611-CAD-Datenaustausch-Machbarkeit.docx")

def b(d, t, size=11): para(d, "–  " + t, size=size, after=2)

d = base_doc()
h1(d, "Datenaustausch Architekt und Hub")
para(d, "Prinzip für die gemeinsame Bearbeitung der Machbarkeits- und Volumenstudie", bold=True, after=2)
para(d, "Kanonisch auf dem NAS · docs/konzepte · 11. Juni 2026 · Raphael Jans Architekten ETH/SIA", size=10, after=10)

h2(d, "1.  Worum es geht")
para(d, "Heute läuft die Volumenstudie in eine Richtung: Parameter → Volumen. Neu zeichnest Du "
        "selbst – Baufeld, Bauvolumen-Varianten, Firstrichtung, Höhenlinien – und der Hub liest "
        "das zurück, rechnet die Kennzahlen, baut das 3D-Modell und passt die Studie nach Deinen "
        "Vorgaben an. Damit das verlässlich und stationsübergreifend funktioniert, braucht es vier "
        "Dinge: einen gemeinsamen Referenzpunkt, eine feste Schichten-Ordnung, eine zentrale "
        "Ablage auf dem NAS und die saubere Anbindung der lokalen Programme (Cinema 4D, ArchiCAD, "
        "Rhino) samt Höhendaten.", after=6)

h2(d, "2.  Wo alles lebt – die zentrale NAS-Architektur")
para(d, "Alles Konzeptionelle und alle geteilten Werkzeuge liegen kanonisch auf dem NAS. So sehen "
        "alle Stationen und AI-Modelle denselben aktuellen Stand:", after=4)
table(d, [
    ["Was", "Ort auf dem NAS"],
    ["Konzept-/Pipeline-Dokumente", "docs/konzepte/"],
    ["CAD-Connectoren (Cinema/Rhino/ArchiCAD/Terrain)", "connectors/cad/"],
    ["Geodaten-Connector", "skills/planungsgrundlagen/connectors/geo-zh.mjs"],
    ["Kartenportal-Wissen (PL-01-Ablage)", "wissen/planungsgrundlagen/wiki/…sharepoint-ablage.md"],
    ["Projekt-Austauschdateien (DXF/3D)", "Studienordner 05_Visualisierung/CAD-Austausch/"],
], widths=[70, 100])
para(d, "Eine Lese-/Präsentationskopie (PDF) darf zusätzlich in den OneDrive-Output. Die Wahrheit "
        "bleibt das NAS – neu als Dauerregel hinterlegt.", before=4, after=6)

h2(d, "3.  Baustein 1 – Der gemeinsame Referenzpunkt (Lage & Position)")
para(d, "Alles steht in echten Landeskoordinaten LV95 (EPSG:2056). Unverrückbarer Bezug ist das "
        "amtliche Kataster-Polygon der Parzelle (über den Geo-Connector), dazu Koordinatenkreuz mit "
        "LV95-Werten, Nordpfeil, Nachbarparzellen und ein Infoblock (EGRID, Parzelle, Zone, "
        "Massstab, Einheit Meter). Lage und Position sind korrekt, weil sie aus der amtlichen "
        "Vermessung stammen – nicht aus einer Annahme.", after=6)

h2(d, "4.  Baustein 2 – Der Schichtenvertrag (wer zeichnet wohin)")
para(d, "Eine einzige CAD-Datei, feste Layer in drei Klassen; jeder schreibt nur in seine Klasse.", after=4)
para(d, "BASIS_…  Hub erzeugt, Du veränderst nicht (geprüfte Grundlage):", bold=True, size=10, after=1)
para(d, "PARZELLE, NACHBARN, GEBAEUDE_BESTAND, BAULINIE, GRENZABSTAND, GEWAESSER_WALD, "
        "HOEHENLINIEN, NORDPFEIL/KOORD, META.", size=10, after=4)
para(d, "EIN_…  Du zeichnest:", bold=True, size=10, after=1)
para(d, "BAUFELD, VOL_A/_B/_C (Volumen-Grundriss je Variante, geschlossen), FIRST (Firstlinie, "
        "Richtung zählt), HOEHEN (Höhen-Etiketten), HOEHENLINIEN, NOTIZ.", size=10, after=4)
para(d, "AUS_…  Hub schreibt zurück:", bold=True, size=10, after=1)
para(d, "VOL_KONTUR (Rückbestätigung), KENNZAHLEN (Baufeld m², GF, m³ GV, Geschosse, Ausnützung), "
        "KONFLIKT (z. B. Volumen über Baulinie).", size=10, after=4)
para(d, "Layernamen exakt (GROSS, Unterstrich), Einheit Meter, Flächen als geschlossene "
        "Polylinien – diese Striktheit macht das eindeutige maschinelle Auslesen möglich.", after=6)

h2(d, "5.  Baustein 2b – Höhe & Firstrichtung übergeben (2D → 3D)")
para(d, "Ein Grundriss hat keine Höhe. Je Volumen ein kurzes Etikett auf EIN_HOEHEN:", after=2)
para(d, "V-A | TH=12.50 | FH=16.20 | OKT=445.30", bold=True, after=2)
b(d, "TH = Traufhöhe, FH = Firsthöhe (m über OK Terrain), OKT = Kote OK Terrain (m ü. M., optional).")
para(d, "Die Firstlinie auf EIN_FIRST gibt die Dachrichtung. Fehlt sie → Flachdach auf FH; fehlt "
        "das Etikett → Rückmeldung und markierte Annahme. Es wird nie eine Höhe erfunden.", before=2, after=6)

h2(d, "6.  Höhen-/Topografie-Mechanismus (Zugriff auf die Höhenangaben)")
para(d, "Quelle der Wahrheit ist swissALTI3D des Bundes (login-frei, LV95), bezogen über den "
        "Geo-Connector und gekapselt in connectors/cad/terrain.sh. Drei Stufen je nach Zweck:", after=4)
table(d, [
    ["Stufe", "Was / wofür", "Befehl (terrain.sh)"],
    ["Punkt", "eine Kote (m ü. M.) an der Parzelle – OKT", "punkt --adresse \"…\""],
    ["Höhenlinien", "Vektor-Höhenlinien als DXF (Layer BASIS_HOEHENLINIEN)", "hoehenlinien --adresse … --intervall 0.5"],
    ["Terrain-Mesh", "DTM 0.5 m als 3D-Boden für Cinema/Rhino", "dtm --adresse … --out …"],
], widths=[28, 92, 50])
para(d, "Höhenlinien-Mechanik: DTM-GeoTIFF beziehen → gdal_contour → DXF in LV95 → direkt auf den "
        "BASIS_HOEHENLINIEN-Layer. Ergänzend liegen fertige Höhenlinien-Pläne je Gemeinde unter "
        "PL - 01 Kartenportale / Hoehenlinie / <Gemeinde>. Setup-Schritt offen: brew install gdal "
        "(Punkt und DTM laufen schon, Vektor-Höhenlinien erst danach).", before=4, after=6)

h2(d, "7.  Die CAD-Connectoren (lokal verbundene Programme)")
para(d, "Unter connectors/cad/ – Statuscheck mit: bash connectors/cad/cad-status.sh", after=4)
table(d, [
    ["Connector", "Programm", "Automation", "Lizenz (11.06.2026)"],
    ["cinema4d.sh", "Cinema 4D 2026", "headless (c4dpy + Render)", "Maxon-App-Login (GUI)"],
    ["rhino.sh", "Rhino 8.27", "headless + GUI-Open", "lizenziert"],
    ["archicad.sh", "ArchiCAD 27/26/25", "kein CLI → DXF/IFC", "CodeMeter läuft"],
    ["terrain.sh", "swissALTI3D", "Punkt/DTM/Höhenlinien", "login-frei"],
], widths=[28, 38, 56, 48])
para(d, "Warum ArchiCAD nur über Dateiaustausch: ArchiCAD hat keine offizielle Headless-Automation "
        "(nur ein API zur laufenden GUI). Versionsneutral und verlässlich ist der DXF/IFC-Austausch "
        "– exakt der Schichtenvertrag. Cinema 4D und Rhino übernehmen die 3D-Stufe headless.", before=4, after=4)
para(d, "Lizenz-Modell: Cinema = Maxon-App-Login (nur in GUI aktivierbar; Connector meldet nur den "
        "Zustand). Rhino = lokale Lizenz, einmal aktiviert, läuft danach headless. ArchiCAD = "
        "CodeMeter/Graphisoft-ID, prüfen im License Manager Tool oder CodeMeter-WebAdmin "
        "(localhost:22350).", after=6)

h2(d, "8.  Arbeitsablauf (hin & zurück)")
para(d, "1.  Hub erzeugt die Grundlage-Datei: BASIS-Layer gefüllt (inkl. Höhenlinien), EIN-Layer "
        "leer angelegt, Legende → CAD-Austausch/00_Grundlage/.", after=2)
para(d, "2.  Du zeichnest in die EIN-Layer, speicherst als neue Version → 10_Raphael/.", after=2)
para(d, "3.  Hub liest, prüft, rechnet Kennzahlen, baut 3D, schreibt AUS-Layer zurück → 20_Rueck/. "
        "Studie wird angepasst; alte Stände → 99_Archiv/.", after=2)
para(d, "Dateiname nach JANS-Konvention mit Version: 260611-2699Grub-Grundlage-v01.dxf.", size=10, after=6)

h2(d, "9.  Was der Hub beim Zurücklesen prüft")
b(d, "Layernamen exakt · Grundrisse geschlossen · Einheit Meter · LV95 plausibel.")
b(d, "Jedes Volumen hat ein Höhen-Etikett – sonst markierte Annahme.")
b(d, "Volumen im Baufeld, keine Baulinie überschritten – sonst Konfliktmarkierung.")
para(d, "Annahmen werden ausgewiesen; Identifikatoren (EGRID/Parzelle) nie erfunden.", before=2, after=6)

h2(d, "10.  Dateiformat & offene Setup-Schritte")
para(d, "Format: DXF (universell, jedes CAD) empfohlen; Rhino .3dm als Alternative, falls Du in "
        "Rhino arbeitest – selber Schichtenvertrag, ein Konvertierungsschritt weniger.", after=4)
para(d, "Offene Setup-Schritte:", bold=True, size=10, after=1)
b(d, "brew install gdal (für Vektor-Höhenlinien)", size=10)
b(d, "venv ~/.venvs/volumen3d einrichten (rhino3dm/shapely; Sync-Task liegt vor)", size=10)
b(d, "Maxon-App-Login prüfen (für headless Cinema-Render)", size=10)
b(d, "Deine Entscheidung: Austauschformat DXF oder Rhino .3dm?", size=10)
para(d, "Danach: Pilot mit einer realen Parzelle, eine Variante zeichnen, Zyklus einmal komplett "
        "durchspielen → Rückkanal fest im Skill volumenstudie verankern.", before=4, after=6)

jans_footer(d, "CAD-Datenaustausch Machbarkeitsstudie (NAS-kanonisch)", page_numbers=True)
d.save(OUT)
print("DOCX:", OUT)
