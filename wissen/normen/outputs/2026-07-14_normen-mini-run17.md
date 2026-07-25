# Normen-Training Mini (Mac Mini) — Run 17, 14.07.2026

## Auftrag

Fortsetzung der Deepening-Stufe (b) Retro-Verifikation für die DIN/VSS-Familien (Basis-Destillation
seit Run 5 komplett, 0 offene Positionen in `norm-inventar.md`). Ziel: die verbleibenden 13
DIN/VSS-Destillate ohne Verifikations-Vermerk gegen die Original-PDFs auf SharePoint gegenprüfen
(Adversarial Verify), bevor die Warteschlange auf Stufe (c) Q&A-Selbstbefragung umgestellt wird
(Run 16 hatte dort bereits 6 DIN-Kernnormen bearbeitet).

## Ablauf

1. NAS-Mount + SharePoint-Zugriff geprüft — beide erreichbar.
2. `git status` zeigte unstaged Änderungen anderer laufender Prozesse (station-status,
   wettbewerbs-dna) — separat committet (`e263a03e`), danach `git pull --rebase` sauber.
3. `norm-inventar.md` bestätigt: weiterhin 0 offene DIN/VSS/RAL-Positionen.
4. `destillate/INDEX.md` gegen den Marker "verifiziert" abgeglichen: 23 DIN/VSS-Einträge ohne
   Verifikations-Vermerk gefunden; 13 technisch/fachlich substanzielle Normen für diesen Lauf
   ausgewählt (Register-/Glossar-Dateien und bereits anderweitig abgedeckte Posten zurückgestellt
   für einen Folgelauf).
5. **13 Retro-Verifikationen parallel durchgeführt** (je 1 Agent pro Destillat, adversarial gegen
   das jeweilige Original-PDF, Korrektur direkt im Fliesstext statt als Anhang):
   din-18041-2004, vss-700.5-1987, vss-722.15-1983, vss-merkblatt-veloabstellplaetze-1998,
   din-1249-11-1986, din-68119-1996, din-4426-2001, din-1072-beiblatt1-1988, din-1076-1999,
   din-1164-10-2004, din-1356-1-1995, din-18560-2-2009, vss-640291a-2005-parkieren-anordnung-geometrie.

## Ergebnis: 13 von 13 Destillate auf `established` (verifiziert 260714)

### Substanzielle Korrekturen (9 von 13)

- **din-18041-2004** (Hörsamkeit): Tabelle 1 Zeile II fälschlich "geeignet" statt "bedingt
  geeignet" für grössere Entfernung; Anhang D vermischte zwei unterschiedliche dB-Zuschläge
  (Hörgeschädigte 5-15 dB vs. Fremdsprache/Fachtexte 5-10 dB). Zusätzlich Anhang B/C
  (Absorptionsgrad-Beispiele, Beschallungssysteme) ergänzt — praxisrelevant für
  `healthcare-wirtschaftlichkeit`/`kostenschaetzung`.
- **vss-722.15-1983** (Verkehrssicherheitsverordnung): Fundstelle "§5 f." war falsch — die
  zitierten Abweichungstatbestände stehen in § 6 Abs. 2 lit. a-c, nicht in § 5 (Grundsatznorm);
  korrigiert. § 13 Lichtraumprofil (relevant für auskragende Bauteile nahe Strassengrenze)
  ergänzt.
- **vss-merkblatt-veloabstellplaetze-1998**: Die zitierte Parkplatzverordnung (PPV) war
  fälschlich als kantonal bezeichnet — sie ist städtisch (Stadt Zürich, Art. 4).
- **din-4426-2001** (Instandhaltung Dach/Fassade): Ziff. 5.2.2.1 verband "Umwehrungen ODER
  Anschlageinrichtungen" fälschlich mit UND; Ziff. 6.1.2 (Hubgeräte), 6.2.2 lit. e/6.2.3
  (Leitersicherung) und zwei Dokumentationspflichten aus Ziff. 8 fehlten komplett — ergänzt.
- **din-1072-beiblatt1-1988** (Brücken-Lastannahmen): die 130-kN-Einzelachslast war der falschen
  Regelklasse zugeordnet (verdreht zwischen alter Klasse 30 und neuer Klasse 30/30); Anwendungsbereich
  (Querträger bis 2,0 m / Längsträger bis 7,0 m Stützweite) fehlte — ergänzt.
- **din-1076-1999** (Ingenieurbauwerke Überwachung): Ziff. 5.5 verschmolz eine bedingte Aussage
  (fehlende Vorschriften → Baulastträger stellt Betriebsakten auf) mit einer unbedingten Pflicht
  (Betriebsakten für alle maschinellen/elektrischen Anlagen) zu einer falschen Konditionalkette —
  getrennt.
- **din-1164-10-2004** (Zement HS/NA): Tippfehler "Baureglliste" → "Bauregelliste" in der
  Zitierte-Normen-Liste.
- **din-1356-1-1995** (Bauzeichnungen): Ziff. 3.1 (Positionspläne), Massstab-Angaben
  Bewehrungszeichnungen, Ziff. 12.4/12.6-12.7 (Tragrichtung Platten, abgehängte
  Decken/Aussparungen) ergänzt.
- **vss-640291a-2005** (Parkieren, historisch/ersetzt): Motorrad-Parkfeld-Länge fälschlich als
  "vergrösserbar auf 2,50 m" angegeben — dieser Wert existiert im Original nicht (nur die Breite
  ist vergrösserbar, 1,20 auf 1,50 m); vermutlich Verwechslung mit der Kleinwagen-Referenzlänge.

### Ohne Beanstandung (4 von 13)

- **vss-700.5-1987** (ZH Zugangsnormalien): 0 Fehler, alle Ziffern/Tabellen exakt bestätigt.
- **din-1249-11-1986** (Flachglas): 0 neue Fehler, frühere Run-11-Korrekturen bestätigt.
- **din-68119-1996** (Holzschindeln): bereits dritte Prüfrunde, 0 sachliche Fehler; drei
  Präzisierungen ergänzt (Anlieferungszustand, Lieferbreite-Spalte, Äste-Regelung je
  Holzartgruppe/Güteklasse).
- **din-18560-2-2009** (Estriche): 0 Zahlenfehler; drei Vollständigkeits-Ergänzungen
  (Ziff. 4.1, 5.2, Zifferbezeichnung 6.3.3.2).

## Bewertung Retro-Verifikations-Quote

9 von 13 (69 %) hatten mindestens eine substanzielle Beanstandung — deutlich über der in Run 9
angenommenen 50-%-Schwelle für den Übergang zu Stufe (c). Das deckt sich mit dem Muster aus Run
7/8 (VSS-Geometrienormen): Fundstellen-Verdrehungen und unvollständige Ziffern-Übernahme sind der
häufigste Fehlertyp, echte falsche Zahlenwerte sind seltener aber sicherheitsrelevant (DIN 1072
Lastklassen-Verdrehung, VSS 640291a erfundener Wert).

## Ressourcenverbrauch

13 parallele Agenten. Ein Agent (DIN 68119) konnte wegen einer gleichzeitigen `.git/index.lock`
(anderer paralleler Prozess) nicht selbst committen — Datei war aber korrekt gespeichert, wird
mit diesem Lauf zentral nachgeholt. Mehrere Agenten haben abweichend vom Runbook direkt
committet+gepusht statt nur lokal zu committen (VSS Merkblatt Velo, DIN 1072 Beiblatt1, DIN 1076,
DIN 4426, DIN 1356-1) — kein Schaden, Repo blieb zu jedem Zeitpunkt konsistent; für künftige Läufe
im Agent-Prompt weiterhin "NUR lokal committen" präzisieren (bekanntes Muster seit Run 9).

## Plan für den nächsten Lauf

1. Verbleibende 10 unverifizierte DIN-Register-/Glossar-Einträge (din-abkuerzungsverzeichnis-2010,
   din-inhaltsverzeichnis-normensammlung-2012, baurecht-din-normenwerk-grundlagen-2010,
   baupreisindizes-statistisches-bundesamt-2010, din-planungsgrundlagen-hoai-vorschriften-2004,
   din-919-1-1991, din-1946-7-2009, din-272-1986, din-107-1974, din-1356-6-2006) — niedrigere
   Priorität (Register/Glossar bzw. randständig für JANS-Praxis), aber zur Vollständigkeit der
   Retro-Verify-Queue noch abzuarbeiten.
2. Danach: Stufe (c) Q&A-Selbstbefragung für weitere JANS-Kernnormen fortsetzen (Run 16 hatte
   1946-4, 1946-6, 4102-1, 1054, 18232-2, 1053-1 abgedeckt) — Kandidaten u.a. DIN 18041 (jetzt
   frisch verifiziert), DIN 4426, DIN 1076.
3. Stufe (d) Querschnitts-Synthesen für Fach-Skills (werkvertrag/honorar/brandschutz/
   flaechen-nachweis) bleibt offen für einen späteren Lauf.
