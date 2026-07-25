# Training Run 66 — Recht & Norm (PL-02), Token-Vollgas

Intensiv-Lauf gemäss `training/PROGRAMM.md` (Token-Vollgas bis 10.08.2026). Domänen-Rotation:
Run 64 = Recht/Norm+Brandschutz, Run 65 = Kartenportale+Energie → dieser Lauf (Run 66) = Recht/Norm
wieder dran, gemäss der expliziten Empfehlung am Ende von Run 65 (SWKI-Backlog). Brandschutz (PL-03)
zeigte im letzten Recht/Norm+Brandschutz-Turnus (Run 64) keinen neuen Fund mehr — dieser Lauf
konzentriert sich daher auf Recht/Norm, wo mit dem SWKI-Backlog ein konkreter, grosser
Vertiefungspunkt vorlag. Direkt in der Hauptsession durchgeführt (Hintergrund-Subagenten stallen auf
OneDrive-Pfaden, Memory `feedback_background_agent_onedrive_stall`).

## Kollisionsschutz (Rule 260724)

Vor Beginn geprüft: nur ein `claude -p`-Prozess für diese Task lief (PID 41144, das ist der
vorliegende Lauf selbst) — keine Zweitinstanz auf demselben Host. `git status` zeigte danach
ausschliesslich die vier von diesem Lauf editierten Dateien.

## Ablauf

1. Stand gelesen: `curriculum.md` (Domäne 3 Recht/Norm R1-R67 vollständig `[x]`, Domäne 4
   Brandschutz B1-B46 vollständig `[x]`), `wiki/QUESTIONS.md` (Sektion B/C ohne offene `[ ]`,
   ausser dem domänenfremden D9/M4), letzter Report (Run 65 — empfiehlt für Run 66 explizit den
   SWKI-VA103-01-Rest Kap. 3-9 sowie eine dateinamensbasierte statt begriffsbasierte Scout-Methode
   auf PL-02).
2. **SWKI VA103-01 Rest gelesen** (S. 26-110 von 110; S. 1-25 waren bereits in Run 64 gelesen) —
   der konkrete Backlog-Punkt aus Run 64/65.
3. **Scout-Abgleich** (vollständiger Ordnerbaum `find -maxdepth 4` gegen `curriculum.md`/
   `_INGESTED.md` gegrept) fand zwei weitere, bisher nie erschlossene Ordnercluster: einen zweiten
   eco-bau-Ordner (`04_Merkblätter/eco/Nachhaltiges Bauen/`, andere Nummerierung als der bereits
   dokumentierte AHB-Ordner) sowie den SZ_Einsiedeln-Ordner mit der Entstehungsgeschichte des
   bereits als Hauptbenchmark genutzten Quartiergestaltungsplans Reckholdern. Beide cloud-only,
   mit `cp` materialisiert (etablierte Methodik aus Run 63/64).

## Funde (R68-R71)

- **R68 — SWKI VA103-01 Rest (Kap. 3-9 + Anhänge A-F):** vollständige Bemessungsmethodik
  (Zoneneinteilung, 5 Benutzer-Kategorien, 4 Korrekturfaktoren fODA/fIDA/fVG/fIH), reale
  Praxisrechnung (100-PP-Garage: Wohnen 3'875 m³/h vs. Angestellte 7'750 m³/h — halbe Luftmenge
  bei Wohnnutzung), Vergleich zur Vorgänger-Richtlinie SWKI 96-1 (neue Werte ca. 30 % tiefer,
  Fahrzeugmix 2015 sauberer als 1996 → ältere Auslegungen bei Umnutzung tendenziell
  überdimensioniert); Material/Ausführung/Brandschutzklappen; Abnahme nach SIA 118 Art. 157-164;
  Betrieb/Instandhaltung/Sicherheit/Rückbau; Anhang A (40-Stationen-SIA-2028-Klimatabelle, Faktor
  0.65-1.66 je Standort); Anhang B (Schneehöhen); Anhang C (Berechnungsformulare); Anhang D (drei
  komplett durchgerechnete Anwendungsbeispiele); Anhang E (CFD-Simulationsnachweis-Methodik,
  Luftqualitätskriterium CO ≤ 100 ppm auf ≥ 99.5 % Fläche, reduziert Abluftvolumenstrom bis auf
  70 %) → NEU §9 [[recht-norm-tiefgarage-erschliessung]]. **Schliesst den seit Run 64 offenen
  Backlog vollständig.**
- **R69/R70 — eco-bau-Cluster:** «Allgemeine bauökologische Submissionsbedingungen» (3.11.R, AHB
  Sept. 2006) präzisiert die bereits dokumentierten Werkleistungs-Vorgaben um harte, LV-taugliche
  Materialverbote (RC-Beton ≥ 60 % rezykliert als Hauptposition, Formaldehydklasse E1/Lignum
  CH 6.5, Tropenholz nur FSC, Fugendichtungsmassen 0 % Lösemittel, Dämmstoffe ohne HFKW/FKW,
  textile Bodenbeläge auf Reaktionsharz-Basis verboten, Montageschäume verboten, Baumaschinen
  ≥ 18 kW Partikelfilter-Pflicht) — bestätigt exakt die bereits dokumentierten Formaldehyd/TVOC-
  Grenzwerte. «Ökologisch Bauen — Merkblätter nach BKP» (3.12.R, Verein eco-bau, 09/2006) enthüllt
  **Verein eco-bau als nationale Trägerschaft** (Bund/KBOB + 18 Kantone + 14 Städte — die
  Stadt-ZH-Dokumente sind lokale Anwendung eines gesamtschweizerischen Systems) plus das
  vollständige BKP-Register der Merkblätter (112-285). Delta-Check «1.11.R Massstäbe» (Mai 2006):
  bestätigter Vorläufer des bereits dokumentierten 7-Meilenschritte-Flyers (2008), kein neuer
  Sachverhalt → NEU §6.6 [[recht-norm-ahb-stadt-zuerich-projektstandards]].
- **R71 — SZ_Einsiedeln-Cluster:** historische Genese des Quartiergestaltungsplans Reckholdern
  (Parzelle 3301, bereits SZ-Hauptbenchmark) — drei Regierungsrats-Genehmigungen 1976/1979/1983
  zeigen Parzellenerhöhung 17→19→21, Kläranlagenkapazität als Etappierungstreiber und, als **realer
  Präzedenzfall**, eine Waldabstand-Reduktion von 20 m auf 15/17 m via Gestaltungsplan-Änderung
  selbst. Historische Ausnützungsziffer-Definition (Art. 17 BauR Einsiedeln 1974) zeigt methodische
  Kontinuität zum heutigen SZ-Recht. **Neuer Einzelfund:** Art. 16 verlangt bei MFH-Neubauten ab
  6 Wohnungen einen Kinderspielplatz von i.d.R. 20 % der Wohngeschossfläche — bisher nirgends
  dokumentierte SZ-Kinderspielplatzpflicht → Ergänzung [[recht-norm-baurechtsanalysen-benchmarks]].

## Brandschutz (PL-03)

Kein neuer Fund in diesem Lauf — Run 64 hatte bereits einen vollständigen Scout-Abgleich für
PL-03 gefahren und keine unentdeckten Ordner mehr gefunden; ein erneuter Durchgang ohne neue
Zeitstempel/Materialisierungen hätte nur Doppelarbeit erzeugt. Kein B5-Refresh in diesem Lauf
(zuletzt Run 60, kein Tagesabstand, der einen neuen WebSearch rechtfertigt).

## Verifikations-Stufe (Rule auto-verbesserungen 260712)

Keine Status-Hebung auf `established` ohne direkte Primärquellen-Lektüre. R68 (SWKI-Rest) auf
`established` — amtliche, direkt gelesene Norm (SWKI-Vorstand genehmigt 25.11.2016, in Kraft seit
1.4.2017). R69/R70 (eco-bau) auf `established` — amtliche AHB-/Verein-eco-bau-Primärquellen,
wörtlich zitiert. R71 (SZ Reckholdern) bleibt im bestehenden `emerging`-Status des Artikels (reale
Verwaltungsakten, aber Einzelfall-Beleg ohne unabhängige Zweitquelle). Kein Adversarial-Verify
nötig (reine Fakten-/Kennzahlen-Extraktion aus Primärquellen, keine strittigen Rechtsfragen).

## Methodische Bestätigung

Der in Run 63/64 entdeckte Cloud-Only-Check (`mdls -name kMDItemNumberOfPages` → `(null)`,
Materialisierung via `cp` nach `/tmp`) funktioniert unverändert zuverlässig — alle neun in diesem
Lauf gelesenen Dateien (SWKI-Rest + 5 eco-bau-PDF + 3 SZ_Einsiedeln-PDF, davon 2 vollständig
gelesen/2 als Kontext geprüft) waren cloud-only und mussten materialisiert werden.

## Token-Vollgas-Bilanz

Vier bearbeitete Punkte (R68-R71) — unter dem Zielkorridor 10-16, aber mit hoher Tiefe je Fund
(SWKI-Rest allein 85 Seiten vollständig gelesen, davon eine 40-Zeilen-Klimatabelle und drei
komplett durchgerechnete Anwendungsbeispiele). Analog zur Begründung in Run 63/64/65: nach 67
Recht/Norm- bzw. 46 Brandschutz-Curriculum-Lektionen ist die Domäne extrem ausgeschöpft; der
tiefenbasierte Scout-Ansatz (maxdepth 4 statt 2) fand trotzdem zwei genuine neue Ordnercluster.
Bewusst keine künstlichen Zusatzfragen erzeugt (Rule wissens-bibliothekar: nichts erfinden, keine
Pseudo-Tiefe).

## Nächster Schritt

Recht & Norm hat nach diesem Lauf keinen bekannten Backlog-Punkt mehr. Für den nächsten
Recht/Norm+Brandschutz-Turnus: den `maxdepth 4`-Scout-Ansatz (statt `maxdepth 2` wie in Run 64)
auch auf PL-03 (Brandschutz) anwenden — möglicherweise liegen dort ebenfalls tiefer verschachtelte,
bisher unentdeckte Cloud-Only-Ordner. Für einen künftigen Kartenportale/Energie-Turnus: dieselbe
`maxdepth 4`-Vertiefung auf PL-01/PL-04 übertragen.
