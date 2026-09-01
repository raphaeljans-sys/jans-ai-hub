# Wissens-Health-Check: planungsgrundlagen — 2026-09-01

## Methode dieses Laufs

Skill `wissenscheck`, NUR Phase 1 (Audit + Report, keine Aktionen), interaktive Session
(MacBook Pro). Basis ist der letzte Sammel-Health-Check vom **2026-08-03**
(`outputs/2026-08-03_health-check.md`).

**Besonderheit dieses Laufs:** Am selben Tag lief bereits der monatliche Wartungslauf 03
(`planungsgrundlagen-wartung`, Report `outputs/2026-09-01_wartung-03.md`, CHANGELOG-Eintrag
zuoberst), der Endpunkte/Links und die eigenen Connectoren geprüft hat. Dieser Health-Check
baut auf dessen frisch gemessenen Werten auf, hat sie aber **unabhängig nachgemessen**
(`link-zielabgleich.sh` erneut gefahren, Connector-`--hilfe` erneut geprüft), statt sie
blind zu übernehmen (Rule 260729b).

**Prüfumfang:** alle 49 Wiki-Artikel (Frontmatter + Titel vollständig, Volltext bei
Claim-Verifikation und den vom Auftrag benannten Schwerpunkten), `wiki/QUESTIONS.md`
(2'226 Zeilen, sektionsweise), `raw/_INGESTED.md` (220 Zeilen), `CHANGELOG.md` (Kopf +
Struktur), die 8 Outputs seit dem 03.08.2026 dem Titel nach. Mechanische Werkzeuge:
`wiki-konsistenz.sh`, `fehloffen-waechter.py`, `link-zielabgleich.sh` (alle drei live
gefahren, nicht nur zitiert).

**Grenze dieses Laufs:** Audit A wurde nicht als vollständiger paarweiser Neuvergleich aller
49 Artikel gefahren (Budget), sondern über die in `wiki/QUESTIONS.md` geführten Spannungen
plus die seit 03.08. neu geschriebenen Abschnitte. Ein A0 heisst «keine neue Spannung
sichtbar», nicht «bewiesen widerspruchsfrei».

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 0 |
| B Kaputte Backlinks/Orphans/Frontmatter | 0 |
| C Unbelegte Claims | 0 |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel / Connector-Wege | 0 |
| F Schreibregel-Verstoesse | 2 |
| G Promotion-/Ruecklauf-Kandidaten | 0 |

## Top-Befunde (Raphaels Aufmerksamkeit)

1. **Die Umlaut-Konvention driftet in neuen Lauf-Einträgen zurück, obwohl sie 26.07.2026
   KB-weit gefixt wurde.** Der heutige, eigene CHANGELOG-/QUESTIONS-Eintrag des
   Wartungslaufs 03 enthält allein rund **150 ae/oe/ue-Ersatzschreibungen**
   («unvollstaendig», «unveraendert», «fuer», «ueber», «waere» statt «unvollständig»,
   «unverändert», «für», «über», «wäre»). Der Fix vom 26.07. (Run 91, Werkzeug
   `scripts/umlaut-restore.py`) war ein **einmaliger Rückwärtsfix**, kein durchgesetzter
   Standard für künftig geschriebene Texte — die Konvention gilt aber für **jeden** neuen
   Text, auch Lauf-Protokolle (Rule `umlaute-konvention.md` nennt keine Ausnahme für
   CHANGELOG/QUESTIONS bei Neuschrieb; die bestehende Ausnahme «historische Protokolle
   werden nicht rückwirkend umgeschrieben» deckt nur die Vergangenheit, nicht das
   Weiterschreiben). Details unten unter Audit F.
2. **Strukturell weiterhin makellos bei 49 Wiki-Artikeln** — keine toten Backlinks, kein
   fehlendes Frontmatter, keine Orphans, keine Coverage-Lücke. Bestätigt mit frisch
   gefahrenen Werkzeugen, nicht nur aus dem Vorlauf übernommen.
3. **Connector-Wege/Flags aus dem Auftrags-Schwerpunkt decken sich vollständig mit den
   KB-Beschreibungen** (geo-zh.mjs, geo-sz.mjs, behoerden-zh.mjs — Pfad, `--hilfe`, dokumentierte
   Flags wie `--produkt zonenplan/baulinien` stimmen mit dem tatsächlichen Verhalten
   überein). Einziger offener Sachpunkt bleibt **E13** (UTC-Datumsfalle
   `toISOString().slice(0,10)`), bewusst zurückgestellt: `connectors/bexio.mjs` wartet auf
   Raphaels Einzelfreigabe (Rule 260702, buchungsrelevant), und der heutige Wartungslauf hat
   einen zweiten, bislang übersehenen Treffer gefunden (`connectors/ebaugesuche-zh.mjs:426`,
   ausserhalb dieser KB, ebenfalls bewusst nicht angefasst, weil der Connector unbeaufsichtigt
   nicht end-to-end testbar ist). E13 ist damit **weiterhin offen**, wie beauftragt geprüft.

## Details je Audit

### A. Widersprueche

Keine neuen. Alle in `wiki/QUESTIONS.md` historisch geführten Spannungen sind mit `[x]`
geschlossen dokumentiert (VKF-Merkblatt-2001-15-Fassungsstreit, PBG-§49b-Fehlzuordnung,
Umlaut-Frontmatter-Lücke, u.a.). Ein einziger offener Punkt ist keine inhaltliche
Widerspruchsfrage, sondern eine **KB-Führungsfrage**: seit 27.08.2026 (Wissens-Chef Run 45)
steht offen, ob `[[kartenportale-baulinien-abstandslinien-zh]]` einen **direkten**
Rückverweis aus `wissen/baurecht` braucht oder der bestehende indirekte Pfad genügt, und ob
`wissen/koordination/QUERBEZUEGE.md` eine benannte Artikelzuordnung statt nur KB-Namen
bekommen soll. Kein Widerspruch im Inhalt, kein Entscheid dieses Laufs.

### B. Kaputte Backlinks / Orphans / Frontmatter

`bash wissen/tools/wiki-konsistenz.sh planungsgrundlagen` → **keine Befunde**.
`python3 wissen/tools/fehloffen-waechter.py planungsgrundlagen` → **0 Befund(e)**.
Alle 49 Artikel tragen vollständiges Frontmatter (`title`, `status`, `last_updated`,
`sources`, `links` — Stichprobe per grep über alle Dateien: keine fehlt).

### C. Unbelegte Claims

Stichprobe (3 Artikel inkl. der heute korrigierten SIA-Shop-Fundstelle in
`recht-norm-ahb-stadt-zuerich-projektstandards.md` §1.2): jede geprüfte Aussage trägt eine
Quelle oder einen Datenstand-Beleg. Die heutige Korrektur (SIA-Shop-Adressform) ist mit
Abrufdatum, verifiziertem Seitentitel und Fundstelle sauber referenziert.

### D. RAW-Coverage

`raw/_INGESTED.md` (220 Zeilen) führt jede PL-Quelle mit Status `eingearbeitet` /
`teilweise` (mit begründeter Restlücke) / `indexiert`. Keine unbegründete Lücke gefunden.

Der einzige Umfangs-Zuwachs seit dem letzten Health-Check betrifft `PL - 02_Recht_Norm`
(+48 Dateien, gemeldet im heutigen Wartungslauf 03) — bewusst **nicht** von dieser KB
destilliert, weil `PL - 02_Recht_Norm` die kanonische Quelle der KB `normen` ist (Rule
`normen-referenz`) und deren CHANGELOG das Material bereits seit 07.08.2026 führt. Das ist
keine Coverage-Lücke dieser KB, sondern eine bewusste Zuständigkeitsabgrenzung — die
Empfehlung des Wartungslaufs (keine Reaktivierung als grower) wird hier bestätigt, nicht neu
bewertet.

### E. Veraltete Artikel / Connector-Wege (Auftragsschwerpunkt)

**Alter:** Kein Artikel überschreitet die 90-Tage-Schwelle. Ältester Artikel
`kartenportale-sharepoint-ablage.md` (last_updated 2026-06-11, 82 Tage) — noch unter der
Schwelle, kein Fund. Die KB-eigene schärfere 18-Monats-⚠-Markierung ist Teil der
Schreibregel (`CLAUDE.md` Z. 21), kein Verstoss.

**Connector-Wege gegen KB-Beschreibung (Auftragsschwerpunkt):**
- `node skills/planungsgrundlagen/connectors/geo-zh.mjs --hilfe`, `geo-sz.mjs --hilfe`,
  `behoerden-zh.mjs --hilfe` → alle drei `rc=0`, Hilfetext deckungsgleich mit den in den
  Wiki-Artikeln zitierten Aufrufen (Pfad `skills/planungsgrundlagen/connectors/…`, nicht
  `connectors/…` — die Korrektur aus E17 hält).
- Stichprobe `--produkt zonenplan`/`--produkt baulinien` (dokumentiert in
  `kartenportale-zonenplan-zh.md`/`kartenportale-baulinien-abstandslinien-zh.md`): beide
  Werte sind im Connector-Code tatsächlich implementiert (Zeilen 661 ff., 688 ff. in
  `geo-zh.mjs`) — kein Fund, nur eine Falschfährte in der Kurzbeispielzeile des Hilfetexts
  ausgeräumt (die zeigt nicht alle gültigen Werte, das ist keine KB-Aussage).
- `wissen/tools/link-zielabgleich.sh planungsgrundlagen` **live neu gefahren** (nicht nur
  aus dem Wartungslauf-03-Report übernommen): **136 Deep-Links aus 51 Dateien**, 62 landen
  exakt, 13 Prosa-Artefakte übersprungen. **1 KATCHALL** (`geoportal.zh.ch` → `www.zh.ch/de.html`)
  und **1 STARTSEITE** (`mobilityplatform.ch/vss-shop` → `www.mobilityplatform.ch/de`) — beide
  **bereits dokumentiert** (Vertiefungslauf 8 vom 23.08. bzw. an `wissen/baurecht`
  übergeben), **keine neuen** Funde. 22 SOFT404 nachrichtlich (kein Befund, bekanntes
  Muster), 11 harmlose Umleitungen.
- **E13 (UTC-Datumsfalle) — Status geprüft, bestätigt weiterhin offen.** Alle vier
  PL-eigenen Connectoren nutzen unverändert `toLocaleDateString("sv-SE")` (Codeprüfung, nicht
  nur Dateiname). Bewusst offen bleibt `connectors/bexio.mjs` (buchungsrelevant, Rule 260702,
  Freigabe Raphael ausstehend) sowie ein heute neu gefundener Zweittreffer
  `connectors/ebaugesuche-zh.mjs:426` (Kopfzeilen-Datum eines Statusberichts, ausserhalb
  dieser KB, nicht end-to-end testbar ohne Mobile-ID-Login). Kein Rückstand dieses
  Health-Checks — beide Punkte sind als Entscheid-Posten sauber dokumentiert.

### F. Schreibregel-Verstoesse

**F1 — Umlaut-Konvention-Drift in neuen Lauf-Einträgen (neu, substanziell).** Der
Umlaut-Fix vom 26.07.2026 (Run 91) hat die damals bestehenden 51 Wiki-Dateien bereinigt
(2'334 Tokens korrigiert). Seither neu geschriebene Abschnitte folgen dem nicht durchgehend:

- Heutiger CHANGELOG-Kopfeintrag («Wartungslauf 03»): **43** ae/oe/ue-Treffer.
- Heutiger QUESTIONS.md-Abschnitt («Lauf 2026-09-01», Zeilen 95-232): **~150** Treffer
  (u.a. «fuer» 8x, «unveraendert» 7x, «ueber» 7x, «naechsten» 3x, «haelt» 3x, «waere» 2x,
  «unvollstaendig»/«unvollstaendige»/«vollstaendig»/«vollstaendige»).
- Zum Vergleich: der CHANGELOG-Eintrag vom 30.08.2026 (Wissens-Chef Run 48) trägt nur 10
  vergleichbare Treffer, die Abschnitte vom 23.08.2026 in QUESTIONS.md nur 6-19 — die
  Drift ist vorhanden, aber unterschiedlich stark ausgeprägt, am stärksten im heutigen
  Eintrag.

Einordnung: Betroffen sind ausschliesslich **Lauf-Protokolle** (CHANGELOG/QUESTIONS), nicht
die eigentlichen Wiki-Fachartikel — die Ausnahme «historische Protokolle werden nicht
rückwirkend umgeschrieben» (Run 91) ist damit nicht verletzt. Der Fund betrifft das
**Weiterschreiben**: die Rule `umlaute-konvention.md` nennt keine Ausnahme für neu verfasste
Lauf-Berichte. Empfehlung (keine Aktion in diesem Lauf, da Phase 1): künftige Lauf-Prompts
für `planungsgrundlagen-wartung` und vergleichbare Loops sollten echte Umlaute direkt
verwenden, nicht nachträglich per Sonderlauf korrigieren.

**F2 — Symbole ausserhalb der etablierten ⚠/✓-Konvention (klein).** Die KB nutzt
durchgehend ⚠ (184x, Datenstand-Marker, in `CLAUDE.md` vorgeschrieben) und ✓ (92x,
Erledigt-Marker gemäss `wissens-bibliothekar.md`). Daneben vereinzelt: **★** (1x, in
`recht-norm-quellenlandkarte.md` Z. 310, redaktioneller Hervorhebungs-Marker), **✅** (5x,
verteilt über `QUESTIONS.md`, `energie-pv-brandschutz.md`,
`kartenportale-oereb-kataster-system-zh.md`, `recht-norm-regenwasser-gewaesserraum-zh.md` —
funktional wie ✓ verwendet, nur anderes Symbol), **☐** (2x, in
`energie-energienachweis-zh-formulare.md` Z. 75, originalgetreue Wiedergabe einer
Formular-Checkbox-Spalte). Alle acht Vorkommen sind funktional statt dekorativ, aber
inkonsistent zur sonst durchgehaltenen ⚠/✓-Konvention. Geringe Priorität, keine
inhaltliche Fehlerquelle.

**0 ß-Verstösse.** Der einzige `ß`-Treffer (`energie-heizwaermebedarf-waermeerzeugerleistung.md`
Frontmatter `sources`) ist ein wortgetreu zitierter PDF-Quellentitel («Graue Energie —
Größenordnung») — bereits im Health-Check vom 03.08. als Fehlalarm widerlegt, hier bestätigt.

### G. Promotion-/Ruecklauf-Kandidaten

Unverändert **9 emerging / 40 established** seit dem 03.08.2026 — keine neue Beleglage seit
dem letzten Check, die eine Promotion rechtfertigt. Die zwei einzigen offenen
QUESTIONS-Punkte (**D9** — realer MFH-/ZEV-Betriebskostenfall fehlt, wartet auf ein reales
JANS-Projekt; **E13** — UTC-Datumsfalle, s. Audit E) sind beide **nicht durch Recherche
schliessbar** und bleiben bewusst als Entscheid-Posten offen, keine liegen gebliebene
Aufgabe dieses Laufs.

---

*Phase 2 (Aktionen) nicht ausgeführt — Auftrag beschränkte diesen Lauf ausdrücklich auf
Phase 1. Für die Umsetzung eines Befundes (insbesondere F1, Umlaut-Konvention in künftigen
Lauf-Prompts verankern): interaktive Session mit Skill `wissenscheck` und dem KB-Namen, oder
direkte Anpassung des Lauf-Prompts durch Raphael.*
