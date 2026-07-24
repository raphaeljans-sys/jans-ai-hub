# Training Run 58b — Recht/Norm + Brandschutz Datenstand-Refresh (2026-07-24, KOLLISIONS-BEWUSST)

**Vorgabe:** Scheduled Task `planungsgrundlagen-training`, Intensivphase/Token-Vollgas.
Rotation nach Run 56/57 → **Recht/Norm (PL-02) + Brandschutz (PL-03)**. Beide Domaenen sind nach
R1–R56 / C1–C36 durch systematische Ordner-Sweeps faktisch ausgeschoepft; der ehrliche
Rest-Substrat sind die **zeitkritischen regulatorischen Datenstand-Checks** (Leitplanke „Datenstand
zwingend / >18 Mt → ⚠"). Diese sind per WebSearch/WebFetch verifizierbar — anders als der
OneDrive-Mount, der in Run 52/53/56 wiederholt mit EDEADLK ausfiel.

## ⚠ KOLLISION — parallele Run-58-Instanz auf demselben Host

**Befund mitten im Lauf:** `ps aux` zeigt eine zweite, aktive Claude-Instanz (PID 41841, gestartet
00:30) mit identischem Auftrag:
`claude -p "Fuehre EINEN Intensiv-Lauf des Planungsgrundlagen-Trainings aus … Register und CHANGELOG
nachfuehren, Report nach outputs/, vor Commit git pull, dann committen und pushen"` (headless
Dispatch-Run, `--max-budget-usd 25 --fallback-model sonnet`). Diese Instanz hat **„Run 58" bereits
beansprucht** und schrieb waehrend meines Laufs aktiv an den geteilten Dateien:
`brandschutz-pl03-wegweiser.md` (Frontmatter/sources bereits mit Run-58-Funden: BSR 28-15
Anerkennungsverfahren, VST-Merkblatt 012 „Tueren in Fluchtwegen", VKF „Allgemein anerkannte
Bauprodukte" V12.0), `QUESTIONS.md` (mtime 00:42:05), `INDEX.md`, `recht-norm-arbeitshilfen-
planungsdetails.md`. Wir haben unabhaengig **dieselbe Domaenen-Rotation** gewaehlt; die andere
Instanz ist weiter fortgeschritten.

**Reaktion (Rule `sync-kanonische-quelle`: keine zwei konkurrierenden Git-Schreiber, keine
Register-Kollision):** Dieser Lauf **steht zurueck** —
- **Keine Register-Edits** (CHANGELOG/curriculum/QUESTIONS/INDEX bleiben der Run-58-Instanz
  ueberlassen; CHANGELOG „neueste zuoberst" + QUESTIONS sind die heissesten Merge-Konfliktzonen).
- **Kein `git commit`/`push`** durch diesen Lauf (vermeidet index.lock-Race mit dem `git pull` +
  commit + push der anderen Instanz). Meine additiven Wiki-Edits bleiben im Working Tree; der
  native **nas-selfcommit** (ext4, alle 15 Min, Rule sync-kanonische-quelle ausdruecklich erlaubt)
  sichert sie kollisionsfrei, bzw. der breite `git add` der anderen Instanz sweept sie mit.
- Meine Edits sind **chirurgische Exact-String-Ergaenzungen** in anderen Artikel-Regionen als die
  der anderen Instanz (ich: §1 Datenstand des Wegweisers + Recht/Norm-Artikel; sie:
  Frontmatter/sources + §5-Sektionen) — geringe Textueberlappung. **Zum Zeitpunkt des Reports alle
  meine Edits per grep auf Disk bestaetigt vorhanden.**

## Verifizierte Funde (alle mit Quelle; in die Wiki-Artikel eingearbeitet)

### Recht/Norm (PL-02)

1. **RPG 2 / kantonaler Richtplan ZH — echter datierbarer Delta.** Die **PBG**-Anpassung an RPG 2
   hat weiterhin **kein** publiziertes Fertigstellungsdatum (unveraendert seit Run 37). NEU
   praezisiert der **kantonale Richtplan** (eigener Strang): **Teilrevision 2022 (TR2022)** vom
   Regierungsrat am **12.03.2025 in zwei Vorlagen** an den Kantonsrat ueberwiesen, dort **in
   Beratung** (nicht festgesetzt) — **Vorlage 6012** (Siedlung/Landschaft/Oeffentliche Bauten) +
   **Vorlage 6013** (Verkehr); zum Verkehrskapitel **KEVU-Kommissionsvorlage 6013a am 03.03.2026**.
   Bundesrat genehmigt anschliessend nach Art. 11 Abs. 1 RPG. → `recht-norm-quellenlandkarte.md`
   (RPG-2-Abschnitt, Refresh Run 58). Quelle: zh.ch „Laufende Verfahren kantonaler Richtplan"
   (WebFetch) + Erlaeuterungsbericht Vorlage 6013 (regierungsratsbeschluss-unterlagen 2025/263).

2. **Denkmalschutz-PBG-Revision ZH — unveraendert.** Weiterhin beim Kantonsrat **in Beratung**
   (zh.ch-MM 02.07.2026 „Bauliche Weiterentwicklung von Baudenkmaelern soll einfacher werden";
   Heimatschutz warnt medial). Kein neuer Verfahrensschritt seit Run 53. → `quellenlandkarte.md`
   (Denkmalschutz-Abschnitt, Refresh Run 58, WebSearch).

3. **§ 220a „Erleichtertes Bauen im Bestand" — unveraendert + Delta.** Vernehmlassung 16.01.2026
   abgeschlossen, weiterhin keine Kantonsratsvorlage publiziert. Bestaetigt: **Buendelung mit dem
   Neuerlass der kantonalen Stoerfallverordnung** (bauimmorecht.ch „PBG-Revision: Bauen im Bestand
   und Neuerlass der kantonalen Stoerfallverordnung"; beide im selben Vernehmlassungsbrief
   25.09.2025). RZU begruesst die Vorlage grundsaetzlich. → `recht-norm-pbg-revision-bauen-im-
   bestand.md` (Verfahrensstand-Tabelle + sources, Refresh Run 58).

4. **§ 49b PBG / UmV Stadt Zuerich — bestaetigt, kein Aenderungsbedarf.** Gemeinderat 17.09.2025,
   Referendum zustande 21.11.2025 (2'600 Unterschriften), **Volksabstimmung 14.06.2026, 57.1 % Ja,
   UmV in Kraft** — deckt den bereits in Run 55 erfassten Stand (57.14 %). Keine KB-Aenderung noetig.
   Quelle: stadt-zuerich.ch MM „Volksreferendum … zustande gekommen" + Tagesanzeiger.

### Brandschutz (PL-03)

5. **BSV 2026 Terminplan — unveraendert + PRAEZISIERUNGS-KORREKTUR.** Primaerquelle bsvonline.ch
   (WebFetch): politische Vernehmlassung **08–11/2026**, IOTH-Genehmigung **03/2027**, Inkrafttreten
   **„jetzt fuer 2027 vorgesehen"** — **ohne Quartalsangabe**. Die in Run 19/39/47 notierte Angabe
   **„Herbst 2027" ist quellenseitig nicht gedeckt** und wurde auf **„2027 (Quartal offen)"**
   zurueckgenommen (De-Eskalation einer Ueberpraezisierung; die Verschiebung 2026→2027 selbst bleibt
   belegt). bsvonline.ch begruendet die Verschiebung mit „Detailabstimmungen/Konsolidierungsphase",
   **nicht** mit dem Marschhalt (separat, VKG-MM 06.01.2026). → `brandschutz-pl03-wegweiser.md` §1
   (Refresh Run 58) + zwei Folgestellen (Zeile ~115 / §1a-Vorsicht) konsistent angepasst.

6. **Crans-Montana — verifizierte Fakten (erklaeren den Marschhalt, bestaetigen KB-Lehren).** Brand
   **01.01.2026**, Bar „Le Constellation", **41 Tote / 115 Verletzte**. Ursache: Deko-
   Sprueh-/Feuerfontaenen an Champagnerflaschen entzuenden **brennbare Deckenverkleidung** →
   **Flashover**; erschwerend **keine jaehrliche Brandschutzkontrolle 2020–2025**, moeglicherweise
   hochentflammbares schalldaemmendes Material, **eine einzige enge Fluchttreppe** aus dem UG.
   Strafermittlungen „werden Jahre dauern" (kein amtlicher Untersuchungsbericht) → erklaert, warum
   IOTH/VKG keinen neuen BSV-2026-Terminplan setzen. **JANS-Lehre = bestehender KB-Stand, kein neuer
   Kennwert:** die drei Ursachen sind exakt die dokumentierten Pflichten — Dekorations-/Ausstattungs-
   RF (§5v/BSR 12-15), oberste Schicht/Deckenbekleidung RF1 (§4b/§5o), Fluchtweg-Redundanz
   (§4b/§4c/§5u/BSR 16-15). → `wegweiser` §1 (Hintergrund-Absatz Run 58). Quelle: de.wikipedia.org
   „Brandkatastrophe von Crans-Montana" + zdfheute.de (WebSearch 2026-07-24).

## Verifikations-Stufe

Alle Funde stammen aus amtlichen/primaeren Quellen (bsvonline.ch + zh.ch je WebFetch,
stadt-zuerich.ch, Wikipedia/ZDF fuer den oeffentlich breit belegten Brandhergang). **Keine
Status-Hebung auf `established`** ausgeloest — die Artikel bleiben established/emerging wie zuvor;
die „Herbst 2027"-Korrektur ist eine **De-Eskalation** (Entfernung einer nicht gedeckten
Praezisierung), kein neuer Claim. Damit keine Adversarial-Verify-Runde noetig.

## Register NICHT nachgefuehrt (Kollision) — Aufgabe fuer den naechsten Lauf

Falls die parallele Run-58-Instanz diese Datenstand-Funde **nicht** ebenfalls abgedeckt hat, muss
der naechste Lauf sie registrieren (sonst „Fund ohne Registrierung = unsichtbar", Lehre Run 56):
- `curriculum.md`: R6-Refresh (RPG-2 Richtplan-Vorlagen 6012/6013/6013a) + B5-Refresh (BSV-2026
  „Herbst 2027"-Korrektur + Crans-Montana-Faktenbeleg).
- `wiki/QUESTIONS.md` B-/C-Sektion: dieselben Refreshes.
- `CHANGELOG.md`: Eintrag fuer 2026-07-24 (drei Recht/Norm-Refreshes + BSV-Korrektur + Crans-Montana).
- **Erst pruefen, ob meine Wiki-Edits den Parallel-Commit ueberlebt haben** (grep auf die
  Marker „Vorlage 6012.*Vorlage 6013", „Hintergrund Crans-Montana — verifizierte Fakten (Run 58",
  „Herbst 2027.*quellenseitig nicht gedeckt", „24.07.2026 (Run 58).*Unveraendert bestaetigt");
  falls durch einen Full-Write der anderen Instanz geloescht, aus diesem Report re-applizieren.

## Lehre (→ auto-verbesserungen)

Der scheduled `planungsgrundlagen-training`-Task und ein paralleler `claude -p`-Dispatch-Run koennen
**gleichzeitig auf demselben Host** feuern und beide dieselbe Run-Nummer/Domaene beanspruchen — genau
das Kollisionsmuster, das Rule 260720 fuer Stationen beschreibt, hier host-intern. Der Loop sollte
beim Start eine **laufende Zweitinstanz erkennen** (ps/Lockfile) und zuruecktreten, bevor er eine
Run-Nummer belegt. Eintrag in `rules/auto-verbesserungen.md` ergaenzt.

## Naechster Lauf
- Rotation weiter: naechster inhaltlicher Schwerpunkt Kartenportale/Energie (beide nahe
  Ausschoepfung → eher Register-Audit als Neu-Recherche) bzw. der noch offene Connector-Bau
  `geo-zh.mjs --produkt grundwasserkarte` (ZH-Grundwasserisohypsen §6, aus Run 57 vorgemerkt).
- **Vor Beginn: `ps` auf laufende Zweitinstanz pruefen** (siehe Lehre).
