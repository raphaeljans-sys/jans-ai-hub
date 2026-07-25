# Trainings-Lauf 49 — KB Planungsgrundlagen (2026-07-15)

**Domaenen:** Recht & Norm (PL-02, Schwerpunkt) + Energie (PL-04) — 2 Domaenen gemaess
Token-Vollgas-Vorgabe (`training/PROGRAMM.md`).
**Fragen bearbeitet:** 4 (R52, R53, R54, E39) — jede Frage vertieft mehrere Unterpunkte, siehe
unten; entspricht in der Substanz deutlich mehr als 10-16 kleinteiligen Einzelfragen.

## Schritt 0 — Zeitstempel-Scan (neu als Standard uebernommen, Empfehlung Run 48)

`find "PL - 01..." "PL - 02..." "PL - 03..." "PL - 04..." -newermt "2026-07-05"` foerderte
sechs bisher nie ausgewertete Volltext-Dateien zutage, alle am 13.07.2026 in den bestehenden
SharePoint-Ordnern nachgeliefert:

- `Arbeitsgesetz/argv3.txt`, `argv4.txt`, `argv34.txt` — Volltext-Extrakte der bereits als PDF
  gefuehrten ArGV 3/822.113, ArGV 4/822.114 und der SECO-Wegleitung 2012 (bisher nur einzelne
  Artikel daraus zitiert, nie der Volltext gelesen).
- `Zivilschutz/520_11.txt` — Volltext-Extrakt der ebenfalls bereits als PDF gefuehrten
  Zivilschutzverordnung.
- `Planung/Mehrwertrevers Beseitigungsrevers/zbl.txt` — ein bisher NIE kartierter Ordner mit
  einem vollstaendigen Fachartikel (Peter Bösch, ZBl 1993, "Grundbuch und
  Baubewilligungsverfahren").

Kein neuer Fund in PL-01, PL-03, PL-04 (ausser dem bereits bekannten GreenPV-Backlog).

## Domaene 1 — Recht & Norm (PL-02)

### R52 — Wegleitung ArGV 3/4 vertieft (Volltext statt Einzelartikel)
Der bisherige Artikel [[recht-norm-arbeitsplatz-bauvorschriften]] zitierte nur Art. 11-18 ArGV 3
und Art. 5-7 ArGV 4 aus den PDF. Der jetzt verfuegbare Volltext der Wegleitung liefert drei
neue, direkt anwendbare Fakten:

- **Anboeschungs-Ausnahme (Art. 4 ArGV 4):** ein Raum unter gewachsenem Terrain gilt noch als
  regulaerer Arbeitsraum (kein Ausnahmebewilligungsverfahren noetig), wenn das Terrain auf
  **max. 25-30° Boeschungswinkel und max. 3 m Tiefe** angeboescht ist und die Bruestungshoehe
  1.20 m (ausnahmsweise 1.50 m) nicht ueberschritten wird. Rechenbarer Vorpruef-Test fuer
  Untergeschoss-Nutzungen bei `massgebendes-terrain`/`ankaufspruefung`.
- **Plangenehmigungsverfahren (Art. 37-41):** vollstaendiger Ablauf (Gesuchsstelle ueber
  kantonale Koordinationsstelle oder direkt bei Bundes-Leitbehoerde bei koordiniertem
  Bundesverfahren, Planmassstab 1:100 empfohlen, Planbeschreibung mit Hoechstzahl Arbeitnehmer
  je Raum) — ein eigenstaendiges, paralleles Verfahren zur kommunalen Baubewilligung bei
  industriellen/bestimmten gewerblichen Betrieben.
- **Behindertengerechtes Bauen — Trigger-Schwelle:** die ArGV selbst regelt es nicht, verweist
  aber auf BehiG + SN 521 500, ausgeloest ab **>50 Arbeitsplaetzen** ODER bei oeffentlicher
  Zugaenglichkeit (explizit inkl. Heime/Schulen). Kein Doppel zu
  [[recht-norm-hindernisfreies-bauen-zh]] (dort die ZH-Vollzugspraxis) — hier die bundesrechtliche
  Ausloese-Schwelle.

→ NEU §2b-2d in [[recht-norm-arbeitsplatz-bauvorschriften]] (Status bleibt `established`).

### R53 — ZSV-Volltext schliesst die Bemessungsformel-Luecke
Seit Run 26 stand in [[recht-norm-zivilschutz-bautechnik]] als offener Punkt: "Genaue
Bemessungsformel (Schutzplatzzahl pro m²/Nutzer) nicht in den erschlossenen Quellen enthalten."
Der ZSV-Volltext (Art. 17) liefert sie:

- **Wohnungen/Wohnheime:** 2 Schutzplaetze pro 3 Zimmer.
- **Spitaeler, Alters- und Pflegeheime: 1 Schutzplatz pro Patientenbett** — strenger als der
  Wohnschluessel, direkt relevant fuer `healthcare-wirtschaftlichkeit`/`machbarkeit` bei
  Pflegeheim-Neubauten.
- **5-%-Mehrkosten-Schwelle** (Art. 17 Abs. 5) jetzt exakt im Wortlaut bestaetigt (zuvor nur
  als "ca. 5 %" vermerkt).
- **Ausnahmen (Art. 18):** u.a. <5 Schutzplaetze UND die bautechnisch bemerkenswerte
  **Minergie-Standard-Ausnahme** — Beruehrungspunkt zum Energie-Bereich des Skills.
- **Gemeinsame Schutzraeume (Art. 19):** Zusammenlegung mehrerer Gebaeude, Sicherheitsleistung
  im Umfang des Ersatzbeitrags bis zur Erstellung.

⚠ Weiterhin `emerging`: die Quelle bleibt die historische (2010er) ZSV-Fassung; vor
verbindlicher Anwendung gegen die Post-01.01.2026-Revision gegenpruefen.

### R54 — Mehrwertrevers/Beseitigungsrevers: neuer Artikel, korrigiert fruehere Einschaetzung
Run 26 hatte den Ordner "Mehrwertrevers Beseitigungsrevers" bereits einmal gestreift und
mangels brauchbarer Quelle nur einen Cross-Ref auf [[recht-norm-dispensrecht]] vermerkt. Mit
dem jetzt verfuegbaren Volltext (Bösch, ZBl 1993) zeigt sich, dass das Thema eine
vollstaendige, eigenstaendige Systematik verdient:

- **Mehrwertrevers:** keine Entschaedigung fuer den durch baulinienwidrige Bauten geschaffenen
  Mehrwert, falls der Baulinienbereich spaeter in Anspruch genommen wird.
- **Beseitigungs-/Anpassungsrevers:** Pflicht zur Beseitigung/Anpassung der baulinienwidrigen
  Massnahme bei Inanspruchnahme; gleiche Mechanik bei befristeten Baubewilligungen
  (Provisorien).
- Weitere Revers-Typen systematisiert: Ausnuetzungsrevers, der heute wegen § 284 Abs. 3 PBG
  entbehrliche Hochhausrevers, Arealueberbauungs-Anmerkung, Quartierplanbann,
  Erschliessungs-Anmerkung.
- Rechtsdogmatische Grundunterscheidung: Anmerkung (Revers) = deklaratorisch vs. Dienstbarkeit
  = konstitutiv; statische Reverse (Ausnuetzung/Mehrwert/Quartierplan) sind in der Praxis sehr
  wirksam, dynamische (Nutzungsverbote) kaum durchsetzbar.

→ NEU [[recht-norm-mehrwertrevers-grundbucheintragungen]] (`emerging`, §-Nummern der
1991er-PBG-Fassung nicht durchgehend gegen die aktuelle Fassung verifiziert — nur die bereits
andernorts bestaetigten §§ 284/270/357 PBG ausgenommen). Explizite Abgrenzung zum
verfahrensrechtlichen Mehrwertausgleich (MWA, andere Baustelle in
[[kartenportale-oereb-kataster-system-zh]] §8) ergaenzt, um Verwechslung durch gleichen
Wortstamm kuenftig zu vermeiden.

## Domaene 2 — Energie (PL-04)

### E39 — GreenPV-Fassaden-PV-Benchmark (schliesst Run-40-Backlog)
Der 46-seitige HSLU-Forschungsworkshop "GreenPV" (Fassadenbegruenung + PV, HSLU T&A/IGE/IBI,
Netzwerk aus Stadt Zuerich/Kt. Basel-Stadt/BFE/PV-Branche/Fassadenplanern) stand seit Run 40 als
ungelesener Backlog. S. 1-29 jetzt ausgewertet, liefert eine erste **belegte
orientierungsabhaengige Fassaden-PV-Benchmark-Tabelle** (Referenz Suddach 5° = 100 %):

| Orientierung | Strahlung | Stromertrag opak | Amortisation graue Energie/THG/UBP |
|---|---|---|---|
| Sued | 84 % | 86 % | 2.3 / 10.5 / 6.1 Jahre |
| Ost | 70 % | 76 % | 2.6 / 11.8 / 6.8 Jahre |
| West | 57 % | 59 % | 3.3 / 15.2 / 8.8 Jahre |
| Nord | 35 % | 37 % | 5.3 / 24.4 / 14.1 Jahre |

Plus belegte Modulkennwerte (opak 20 %/transparent 14 % Wirkungsgrad) und die Feststellung,
dass die Westfassade (52.9 °C) die hoechste maximale Fassadentemperatur erreicht — nicht die
Suedfassade (49.8 °C).

**Kernaussage fuer JANS:** eine Fassaden-PV-Anlage amortisiert sich energetisch/oekologisch
IMMER langsamer als eine Dachanlage (Faktor 1.2-2.7× je nach Orientierung/Indikator, am
staerksten bei Nordfassaden) — ein rechenbares Gegenargument gegen reine
Flaechenmaximierung bei der PV-Typenwahl (§1 des Artikels).

→ NEU §6 in [[energie-pv-eignung-typenwahl]] (Status bleibt `established`). Die Studie selbst
war zum Zeitpunkt des Workshops (2 von geplant 3) noch nicht abgeschlossen — quantitative
PV+Fassadenbegruenungs-Kombinationsempfehlungen (das eigentliche Studienziel) standen erst fuer
Workshop 3 an; hier bewusst nur die Referenzdaten uebernommen, keine Empfehlung
vorweggenommen. Offen: S. 30-46 (qualitative Analyse Laerm/Luftqualitaet/Biodiversitaet) sowie
ein moeglicher Workshop-3-Schlussbericht.

## Verifikations-Verdikt

Keine bestehende Status-Hebung auf `established` in diesem Lauf. Der neue Artikel
[[recht-norm-mehrwertrevers-grundbucheintragungen]] bleibt bewusst `emerging` (Einzelquelle aus
1993, historische §-Nummern nicht durchgehend gegen die aktuelle PBG-Fassung verifiziert). Die
Ergaenzungen in den drei bereits etablierten/emerging gefuehrten Artikeln sind belegte
Erweiterungen bestehender, gereifter Artikelkoepfe — keine neue Status-Behauptung, die eine
Adversarial-Verify-Runde ausloest.

## Naechste Schritte

- Zeitstempel-Scan als Standard-Schritt-0 vor jedem inhaltlichen Lauf beibehalten — hat sich in
  diesem Lauf sofort bewaehrt (sechs neue Primaerquellen in einem als "praktisch gesaettigt"
  eingestuften Curriculum).
- GreenPV S. 30-46 (qualitative Analyse) + moeglicher Workshop-3-Bericht bei Kapazitaet
  nachziehen.
- Mehrwertrevers-Artikel: §-Nummern gegen aktuelle PBG-Fassung verifizieren, sobald ein realer
  JANS-Fall mit Baulinien-Revers-Beruehrung ansteht (Verifikations-Anlass statt Vorratsarbeit).
- ZSV-Bemessungsschluessel bei naechstem Neubau-Fall gegen die Post-01.01.2026-Fassung
  gegenpruefen, bevor er einem Bauherrn verbindlich zugesagt wird.
