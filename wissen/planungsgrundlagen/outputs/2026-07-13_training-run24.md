# Trainingslauf Planungsgrundlagen — Run 24 (2026-07-13)

Schwerpunkt-Domaenen (Rotation nach Run 23 Energie+Recht/Norm): **Kartenportale (PL-01)** +
**Brandschutz (PL-03)**, Token-Vollgas 2 Domaenen.

Hinweis zur Nachfuehrung: Die inhaltliche Recherche dieses Laufs war bereits in den Wiki-Artikeln
festgehalten (Frontmatter/Inhalt trugen bereits den Vermerk "Run 24, 2026-07-13"), die
Registerpflege (CHANGELOG, curriculum.md, QUESTIONS.md, `raw/_INGESTED.md`, dieser Report) war
noch offen und wurde in diesem Durchgang nachgetragen und verifiziert.

## Bearbeitete Fragen (11)

**Kartenportale — K10-Rest (Naturgefahren-Checkliste vertieft) + K12 (Baumkataster, neu):**
1. Was steht im Detail in der VKG/SIA/HEV-Checkliste «Gebaeudeschutzmassnahmen» — welche Norm gilt
   je Naturgefahr? → Tabellarische Zuordnung inkl. **SIA 261 (Neubau) vs. SIA 269/8 (Umbau)** bei
   Erdbeben — praxisrelevante Praezisierung, da JANS ueberwiegend Umbau/Sanierung macht.
2. Was ist das Bauteilkatalog-Prinzip, und welche Marktreferenzen nennt die Checkliste konkret?
   → Hagelregister.ch + HW3-Empfehlung (Deckungsgleichheit mit PV-Modulen), Sturm-Klammerpflicht
   bei hagelrobusten Tonziegeln.
3. Gibt es neben der Naturgefahrenkarte weitere unbearbeitete Quellen im Objektschutz-Ordner?
   → Ja: Grundwasserkarte Kt. SZ (AGI, 1:2'000) — eigenstaendige Planungsgrundlage bei UG/
   Unterkellerung (Weisse-Wanne-Entscheid).
4. Laesst sich der ZH-Endpunkt fuer Naturgefahren/Grundwasser doch noch finden?
   → Nein — `GetCapabilities`-Request an `maps.zh.ch/wfs/OGDZHWFS` liefert "WFS request not
   enabled", Stichwortsuche auf opendata.swiss/geolion.zh.ch ohne Treffer. Ehrlich als offen
   dokumentiert, kein Endpunkt erfunden.
5. Ist der Baumkataster (PL-01-Ordner, bisher unbearbeitet) eine eigenstaendige, automatisierbare
   Planungsgrundlage? → Nein, kommunale GIS-Fachanwendung ohne kantonalen/Bundes-Standard
   (Produktblatt GEOINFO IT AG als einzige Quelle) — niedrige Prioritaet bestaetigt, kein
   Connector-Versprechen.

**Brandschutz — vier neue Sonderbauaufgaben (bisher unbearbeitete PL-03-Unterordner):**
6. Ab wann gilt ein grosszuegiger verglaster Innenraum (Eingangshalle Spital/Pflegeheim) als
   Atrium, und was folgt daraus? → VKF-Erlaeuterung 101-15de: Flaechen-/Geschoss-/Hoehenkriterien,
   3 Typen A/B/C mit je eigenem Massnahmenpaket (Brandabschnittsbildung/RWA/Loeschanlage/
   Fluchtweg-Simulationsnachweis).
7. Welche verschaerften Anforderungen gelten bei Doppelfassaden mit schlafenden Personen dahinter?
   → VKF-Erlaeuterung 102-15de Typ B: BMA-Vollueberwachung zwingend + **kein oeffenbares Fenster**
   zur Zwischenklimazone — Konflikt mit natuerlicher Lueftung, frueh in der Fassadenkonzeption zu
   loesen.
8. Gilt eine kleine alpine Huette/ein kleiner Beherbergungsbetrieb (< 20 Personen) automatisch als
   Beherbergungsbetrieb im Sinn der strengeren QSS-/Tragwerks-Tabellen? → Nein, Schwellenwert
   20 Personen; realer JANS-Benchmark Biwak Grassen zeigt R30 statt R60 + BMA-Erleichterung
   (Rauchwarnmelder statt Alarmaufschaltung) bei Beherbergung [c] ohne Netzstrom.
9. Wie ordnet man ein Holzbauteil korrekt in die VKF-Feuerwiderstandsklassen ein (R/EI/REI, RF1)?
   → Lignum-Dokumentation Themenblock 4: RF1-Grenze bei REI 30/60/90 (nicht 120/180/240),
   Kapselungsregel K30-RF1 mind. 30 Min. unter Gesamtbauteil-Feuerwiderstand, 3 getrennte
   Bekleidungsregister (K/F/BSP).
10. Wo liegt die Schwelle, ab der reine Holzbauweise mit RF1-Bekleidung an ihre Grenzen stoesst?
    → Ab R 90/120 (Hochhaus-Kategorie bzw. Beherbergung ohne Sprinkler) wird es laut Lignum-
    Publikation anspruchsvoll — fruehzeitiger Abgleich Holzbau-Ambition vs. Tragwerksanforderung
    bei Healthcare-Grossprojekten empfohlen.
11. Wie unterscheidet sich ein Innenhof von einem Atrium brandschutztechnisch?
    → Innenhof = unueberdachter Aussenraum, bei Breite < 5 m gelten die Massnahmen von Atrium
    Typ C sinngemaess; Fluchtwege durch das Gebaeude muessen feuerwiderstandsfaehig abgetrennt sein.

## Neue/erweiterte Artikel

- **[[kartenportale-naturgefahren-objektschutz]] erweitert:** neuer §3b (Checkliste im Detail,
  SIA-269/8-Praezisierung), neuer §6 (Grundwasserkarte), §7 Offen-Sektion um ZH-Grundwasser-
  Endpunkt ergaenzt. Status bleibt `emerging` (ZH-Endpunkt weiterhin unbelegt).
- **[[kartenportale-geoportale-uebersicht]] erweitert:** neuer Abschnitt «Baumkataster (K12)».
- **[[brandschutz-pl03-wegweiser]] um vier Abschnitte erweitert:** §4d Atrien/Innenhoefe,
  §4e Doppelfassaden, §4f Kleine Beherbergungsbetriebe/Berghuetten, §5 Holzbau-Brandschutz;
  §6-Wegweiser ("wann Skill brandschutz") um die vier neuen Stichworte ergaenzt. Frontmatter
  (`sources`, `links`) bereits korrekt gepflegt. Status bleibt `established`.

## Verifikations-Stufe (Modell-D-Volltextabgleich)

Alle sechs neu ausgewerteten Quellen (VKG/SIA/HEV-Checkliste, Grundwasserkarte, Baumkataster-
Produktblatt, zwei VKF-Brandschutzerlaeuterungen 101-15de/102-15de, Lignum-Dokumentation
Themenblock 4, realer Fall Biwak Grassen) wurden im Original/PDF direkt gelesen — kein
Sekundaerzitat. Der erfolglose ZH-Endpunkt-Discovery-Versuch ist als solcher dokumentiert (kein
Endpunkt erfunden, keine Automatisierbarkeit vorgetaeuscht). Kein Verdikt "beanstandet".

## Was als naechstes

- **Naechste Domaenen laut Rotation:** Energie + Kartenportale (Prioritaets-Domaenen) fuer den
  naechsten Lauf.
- **Kartenportale:** ZH-Endpunkt fuer Naturgefahren UND Grundwasser weiterhin offen — naechster
  Ansatz ist die direkte AWEL-Fachstellen-Anfrage statt weiterer Discovery-Versuche.
- **Brandschutz:** Domaene nach diesem Lauf sehr weitgehend gesaettigt (7 Sonderbauaufgaben-
  Abschnitte in [[brandschutz-pl03-wegweiser]]); B5 (BSV 2026) bleibt der einzige terminierte
  Refresh-Punkt (politische Vernehmlassung 08/2026).
- **Prozess-Lehre:** kuenftige Laeufe sollten die Registerpflege (Schritte 5-8 im PROGRAMM.md-
  Ablauf) nicht vom eigentlichen Recherche-Schritt trennen lassen — falls eine Session vorzeitig
  endet, bleibt sonst wie hier ein Nachtrag noetig.
