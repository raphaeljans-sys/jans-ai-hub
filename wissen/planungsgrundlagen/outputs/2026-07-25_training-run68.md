# Training Run 68 — Recht/Norm + Brandschutz (Token-Vollgas)

**Datum:** 2026-07-25 · **Rotation:** Recht & Norm (PL-02) + Brandschutz (PL-03) — nach Run 67
(Kartenportale + Energie), gemaess Rotation Kartenportale → Energie → Recht/Norm → Brandschutz.

## Ablauf

1. Stand gelesen: `curriculum.md` (72 Recht/Norm- + 46 Brandschutz-Lektionen, alle `[x]`),
   `wiki/QUESTIONS.md`, letzter Report (Run 67), sowie den letzten Wissens-Health-Check
   (`outputs/2026-07-25_health-check.md`, gefahren 2026-07-25 Nachtschicht).
2. Run 66 hatte fuer diese beiden Domaenen bereits eine erste `maxdepth 4`-Scout-Vertiefung auf
   PL-02 gefahren und im "Naechster Schritt" empfohlen, dieselbe Tiefe auch auf PL-03 anzuwenden.
   Dieser Lauf tut das, ergaenzt um eine dritte, unabhaengige Scout-Methode (Dateinamen-Diff des
   gesamten Ordnerbaums gegen den Wiki-/Curriculum-/Changelog-Korpus statt Begriffs-Grep), plus
   eine Aenderungsdatum-Probe (< 20 Tage) fuer beide Ordner.

## Funde (Recht & Norm, R72)

- Vollstaendiger Ordnerdiff `PL - 02_Recht_Norm` (775 Eintraege bis maxdepth 4) gegen den
  Volltext-Korpus (alle `recht-norm-*.md` + curriculum + QUESTIONS + `_INGESTED.md`).
- **Einziger geprueft-neuer Kandidat:** `10 Lärmschutz/Link Arbeitshilfen.docx` (nur ein bareURL-
  Link `bauen-im-laerm.ch`) — per WebFetch verifiziert: 13-Kantone-Traegerschaft (AG/AR/BS/BE/GL/
  GR/LU/OW/SH/SO/SG/TG/**ZH** + Staedte Bern/Zuerich), Rechner/Grundriss-Tools zu Art. 31 LSV/
  Empfindlichkeitsstufen. **Kein neuer Fund** — derselbe Ordner/dieselbe Quelle ist bereits seit
  Run 53 (R55) vollstaendig unter [[recht-norm-quellenlandkarte]] §Laermschutz erfasst; der
  scheinbare Delta war ein reiner Schreibweisen-Mismatch (Ordner traegt den echten Umlaut
  `Lärmschutz`, der KB-Korpus schreibt `Laermschutz`).
- **DIN_Norm/VSS_Norm/RAL_Norm/SIA_Norm** (Unterordner von `02_Normen/`, ~100+ Dateien): bewusst
  **kein** planungsgrundlagen-Claim — die Schwester-KB `wissen/normen/` hat denselben Ordner
  bereits eigenstaendig inventarisiert (`wissen/normen/wiki/REGISTER.md` bestaetigt "SharePoint
  PL-02 02_Normen/DIN_Norm geprueft, 72 Dateien"). Norminhalte gehoeren dorthin (Rule "Kein
  Doppel", CLAUDE.md dieser KB: "SIA/VKF/DIN-Normen — verlinkt zu `[[baurecht]]`-KB, nicht
  dupliziert").
- Aenderungsdatum-Probe (< 20 Tage): sechs Treffer, alle bereits bekannte Arbeitsdateien aus
  fruehren Laeufen (Zivilschutz-/Arbeitsgesetz-Volltexte aus Run 26, BSV-2026-Normkonzept-PDF aus
  Run 48/52) — kein neuer Inhalt.
- **Fazit R72:** kein echter neuer Fund. Bestaetigt die Erschoepfungsdiagnose aus Run 66 mit einer
  methodisch unabhaengigen Probe.

## Funde (Brandschutz, B47)

- Vollstaendiger Ordnerdiff `PL - 03 Brandschutz` (191 Eintraege bis maxdepth 4) gegen denselben
  Korpus. Ergab ca. 90 scheinbare "neue" Dateien — bei Einzelpruefung erwiesen sich **alle** als
  bereits erfasst, mit derselben Ursache wie beim Laermschutz-Fund: echte Umlaute im Dateinamen
  (ö/ä/ü, z.B. `Löscheinrichtungen.pdf`, `Wärmetechnische Anlagen.pdf`, `Gefährliche Stoffe.pdf`)
  matchen nicht gegen die KB-Schreibweise (`Loescheinrichtungen`/`Waermetechnische`/`Gefaehrliche`,
  bereits unter §5p/§5x/§5z dokumentiert). Ebenso betroffen: der komplette Musterplansatz-
  Unterordner `Brandschutzplaene BSPUB-1394520214-207` (bereits B14/B42 dokumentiert), die
  Projektordner Regensdorf/Thalwil-Bohlweg/Grassen-Biwak/Treppen-Nutzungseinheit (bereits
  B6/B7/B12/B8) und die Lignum-Bauteilblaetter (bereits §5m/§5n).
- Aenderungsdatum-Probe (< 20 Tage): 0 Treffer in PL-03.
- **Fazit B47:** kein echter neuer Fund. Bestaetigt Run 64/66/67s Erschoepfungsdiagnose fuer
  Brandschutz mit einer dritten unabhaengigen Methode.

## Korrektur einer Falsch-Meldung des letzten Health-Checks (M4)

Der Wissens-Health-Check vom 2026-07-25 (Nachtschicht) hatte unter Audit B zwei "echte Coverage-
Luecken" gemeldet: `[[muken-2025-anhang-4-5-daemmstaerken-leitungen]]` und
`[[oelheizung-gasheizung-ersatzpflicht-zh-sz]]`, beide referenziert in
`energie-energienachweis-zh-formulare.md`, aber angeblich "nie geschrieben". Geprueft: **beide
Artikel existieren bereits vollstaendig und `status: established`** —
`wissen/energie/destillate/muken-2025-anhang-4-5-daemmstaerken-leitungen.md` (WDV § 6 Abs. 2/3
+ MuKEn-2025-Anhang-4/5-Vergleich, primaerquellen-verifiziert 2026-07-18) und
`wissen/energie/destillate/oelheizung-gasheizung-ersatzpflicht-zh-sz.md` (ZH § 11 EnerG/BBV I
§§ 47a-47n + SZ § 8d kEnG/KEnV Anhang 6, primaerquellen-verifiziert 2026-07-18). Root Cause: der
Health-Check hatte nur `wissen/energie/wiki/` auf gueltige Cross-KB-Ziele durchsucht, nicht den
Schwesterordner `wissen/energie/destillate/`, wo diese KB ihre Detail-Destillate ablegt (analog
zu den im selben Check korrekt erkannten Cross-KB-Links `[[u-werte-grenzwerte-ch]]` etc., die in
`wissen/energie/wiki/` liegen). **Konsequenz:** kein neuer Artikel noetig, keine Aenderung an
`energie-energienachweis-zh-formulare.md` noetig (Referenz war immer korrekt) — reine
Register-Korrektur in `wiki/QUESTIONS.md` (M4) und `training/curriculum.md` (M4). Die uebrigen
zwei M4-Punkte (KB-weiter Umlaut-Ersatzschreibungs-Befund, 2 Artikel ohne YAML-Frontmatter)
bleiben unveraendert offen fuer einen dedizierten `korrektur`-Lauf.

## Verifikations-Stufe (Rule auto-verbesserungen 260712)

Keine Status-Hebung auf `established` in diesem Lauf (reine Negativ-Bestaetigung + Register-
Korrektur, keine neuen Sachaussagen). Die M4-Korrektur ist durch direkten Dateiexistenz- und
Frontmatter-Check verifiziert (kein Adversarial-Verify noetig, da rein mechanisch pruefbar).

## Methodische Erkenntnis (fuer kuenftige Laeufe aller vier Domaenen)

Der dateinamens-/ordnernamensbasierte Diff-Scout (seit Run 63/65/66 die Standardmethode fuer
ausgeschoepfte Domaenen) hat eine systematische Schwaeche: er vergleicht rohe Dateinamen (mit
echten Umlauten ä/ö/ü) gegen einen KB-Korpus, der durchgaengig die Ersatzschreibung ae/oe/ue
verwendet (derselbe KB-weite Befund, den der Health-Check heute unter Audit F meldet). Das
erzeugt hohe Falsch-Positiv-Raten (in diesem Lauf: 1/2 bzw. ~90/90 Kandidaten). **Empfehlung:**
kuenftige Diff-Scouts sollten vor dem Vergleich beide Seiten normalisieren (ä→ae, ö→oe, ü→ue,
Gross-/Kleinschreibung) statt Dateinamen direkt zu grep-en — reduziert unnoetige Einzelpruefungen
erheblich. Gleichzeitig zeigt dieser Lauf: **wenn die KB einmal die Umlaut-Korrektur durchlaeuft**
(offener M4-Punkt), verschwinden diese Falsch-Positive automatisch als Nebeneffekt.

## Token-Vollgas-Bilanz

Kein neuer Wiki-Fund in den Zieldomaenen (R72/B47 beide "kein Fund" bei hoher Pruefdichte: 775 +
191 Ordnereintraege vollstaendig durchdiffed, ~92 Einzelkandidaten prueft), aber eine echte,
werthaltige Korrektur (M4-Falschmeldung des Health-Checks aufgeloest, verhindert doppelte
Zukunftsarbeit an bereits existierenden Artikeln) plus eine methodische Lehre mit direktem Nutzen
fuer alle vier Domaenen-Scouts. Konsistent mit der Bilanz-Erwartung fuer vollstaendig
ausgeschoepfte Domaenen (Rule wissens-bibliothekar: nichts erfinden, keine Pseudo-Tiefe) — bewusst
keine kuenstlichen Zusatzfragen erzeugt.

## Naechster Schritt

Recht/Norm und Brandschutz haben nach drei unabhaengigen Scout-Methoden (Begriffs-Grep Run
63-65, `maxdepth 4`-Tiefenscan Run 66, Dateinamen-Diff Run 68) keinen bekannten Backlog-Punkt
mehr — echte neue Vertiefung braucht entweder neues SharePoint-Material oder einen realen
Projektfall, der eine der wenigen noch offenen Randfragen aktiviert (z.B. VSS_Norm/RAL_Norm im
Detail, falls ein Tiefgaragen-/Gitterrost-Fall das verlangt — bleibt bewusst bei der
Schwester-KB `normen`). Fuer den naechsten Kartenportale/Energie-Turnus (Run 69): der
Dateinamens-Diff ist fuer PL-01/PL-04 seit Run 67 einmal komplett gelaufen; ein erneuter
Durchgang lohnt sich erst bei neuem SharePoint-Material. Empfehlung an einen kuenftigen
Wissenscheck/Korrektur-Lauf: die in diesem Lauf bestaetigte Umlaut-Normalisierung wuerde nicht
nur Rule `umlaute-konvention.md` erfuellen, sondern auch die Scout-Falsch-Positiv-Rate alle vier
Domaenen strukturell senken.
