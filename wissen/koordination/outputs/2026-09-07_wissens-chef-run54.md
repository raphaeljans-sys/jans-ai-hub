# Wissens-Chef Lauf 54 — 07.09.2026 (Abendlauf)

**Zuschnitt.** 6 Melder (`model: sonnet`) auf dem Zuwachs seit Lauf 52/53, 9 adversariale
Verifikatoren im Hauptmodell, dazu sieben eigene Nachmessungen im Hauptkontext. **15 Agenten**,
Fan-out über das Workflow-Werkzeug (Melder → Verifikation als Pipeline, ohne Barriere).

**Bilanz: 5 Befunde bestätigt (alle eingeschränkt) · 2 widerlegt · 1 Nullbefund mit Aussage ·
1 Reststand, den der Verifikator fand und nicht der Melder.** 12 Dateien geändert, alle additiv,
**0 entfernte Zeilen** — je Datei gegen eine vor dem Eingriff gezogene Kopie gedifft.

---

## 1. Was seit Lauf 52 gewachsen ist

Fenster 03.09. 23:00 bis 07.09. 23:00, gemessen im SSD-Klon (`git diff --numstat`, nicht über den
Mount). Zeilendelta je KB: `energie` **+4530/-119** (Runs 176-185, Minergie-ECO-Vorgabenkatalog,
KBOB, Radon, Gründach, Tageslicht) · `twin` **+1636/-22** (Batches 114/115, Fidelity-Review) ·
`normen` **+1366/-26** (Normen-Nächte Run 79/80, Ersatzmassnahmen-Matrix) · `planungsgrundlagen`
**+237/-9** · `projekt-lessons` **+126** (bbase-Raster-Audit Bauleitungs-Harness) · `bauprodukte`
**+110/-15** · `auflagebereinigung` **+79/-13** · `grobkosten` **+72** · `immobilienbewertung` **+64** ·
`architektur-fachwissen` **+59** · `baurecht` **+55**.

Den Ertrag dieses Laufs trugen `energie`, `grobkosten`/`immobilienbewertung` und `twin`.

---

## 2. Befund in eigener Sache: Lauf 53 hat keine Spur hinterlassen

**Der erste Befund des Laufs betraf den Vorgängerlauf.** Lauf 53 hat am 07.09. gegen 08:26 in vier
Wissensbasen und drei Skills gearbeitet (Commit `c53c79a6e`), aber

- **keinen Laufbericht** unter `outputs/` — `find` nach `*run53*` über den ganzen Baum trifft nur
  gleichnamige Läufe anderer KBs (`normen` 16.08., `baurecht` 25.07., `planungsgrundlagen` 19.07.,
  `energie` 13.07.);
- **keinen Eintrag** in `koordination/CHANGELOG.md`;
- **keine Zeile** in `QUERBEZUEGE.md` — `grep` nach «07.09.2026» dort: null Treffer.

Die Unterbrechung fällt zeitlich mit dem NAS-Ausfall um 08:52 zusammen, der am selben Morgen den
Synergie-Lauf 29 zwischen Skill-Reparatur und Registerschritt traf. Anders als dort gab es hier
keine Nachtrags-Ablage: Lauf 53 hinterliess nichts, was ein späterer Lauf hätte einspielen können.

**Sein Protokoll ist im CHANGELOG dieser KB rekonstruiert** (Eintrag «Lauf 53, Vormittag;
nachgetragen durch Lauf 54»), aus den vier KB-CHANGELOG-Einträgen, den Artikelvermerken und dem
Commit-Numstat. Diese Rekonstruktion ist ein Protokoll **aus den Artefakten, nicht die
Selbstauskunft des Laufs** — was er gemessen und wieder verworfen hat, ist verloren.

**Ein toter Zeiger daraus ist berichtigt:** `normen/wiki/QUESTIONS.md` WC53-1 schliesst mit
«Bericht `wissen/koordination/outputs/2026-09-07_wissens-chef-run53.md`». Diesen Bericht gibt es
nicht. ⚠-Vermerk mit dem Ort der Rekonstruktion gesetzt; der Sachbefund WC53-1 bleibt gültig.

**Die Lehre, die über den Einzelfall hinausgeht:** ein Lauf, dessen Arbeit nur in fremden
CHANGELOGs steht, ist für die Aufsicht unsichtbar. Der Synergie-Lauf 29 konnte Lauf 53 nur deshalb
prüfen, weil er ohnehin das Commit-Delta las — nicht, weil das Register ihn führte. Der
Registerschritt gehört nicht ans Ende eines Laufs, sondern neben jeden Eingriff. (Das ist dieselbe
Familie wie Rule `auto-verbesserungen` 260805, «Fristen gehören ins Register, nicht in den
Laufbericht» — hier fehlte beides.)

---

## 3. Bestätigt und gesetzt

### 3.1 Drei Registerlücken derselben Familie in zwei Tagen

SIA 2060 (Lauf 53, WC53-1), **SWKI VA104-01** und **SN EN 17037** (dieser Lauf, WC54-1). Alle drei
entstehen gleich: die KB `energie` destilliert Sekundärquellen — Minergie-ECO-Vorgabenkatalog,
KBOB-Ökobilanzdaten, AHB-Richtlinien —, die ihrerseits Normen zitieren, und diese Zitate erreichen
das Normen-Register nie. **Der Befund ist nicht die einzelne Norm, sondern der fehlende Rückkanal
aus dem Destillat ins Register.**

**SWKI VA104-01** «Hygiene-Anforderungen an raumlufttechnische Anlagen und Geräte» wird im Hub
durchgehend als feststehende Referenz zitiert: `normen/destillate/sia-382-1-2014.md` Z. 131/148
(Hygieneerstinspektion, Anhang F.5), `normen/destillate/swki-va103-01-2017.md` Z. 59/549/553/898
(VA103-01 gilt **zusätzlich zu, nicht anstelle von** VA104-01 und verweist für die Filterklasse
vollständig dorthin), `normen/outputs/2026-07-28_therapiekueche-…` Z. 97/129/193 — und neu aus
Minergie-ECO 110.02 (`energie` Run 184). Eine Registerzeile gab es nie.

Der Verifikator hat den Melder-Vorschlag in zwei Punkten korrigiert, und beide sind in die gesetzte
Zeile eingegangen: der Volltext ist **belegt nicht im Haus** (`training/norm-inventar.md`:
`06_Richtlinien/SWKI` enthält genau ein PDF, VA 103-1) — wer dem Melder gefolgt wäre, hätte im
Hausbestand gesucht; und die Ausgabe ist **strittig**, nicht bloss unbekannt: BAG/BLV Modul 14
zitiert VA104-01:2006, das ZH-Kantonslabor-Merkblatt MD-00038 (gültig ab 31.10.2025) zitiert
VA104-01:2019 (`energie/destillate/ruckkuehlwerk-kuehlturm-legionellen-bewilligung-ch.md`
Z. 327-328). Die Zeile trägt deshalb **keine Gültigkeitsaussage** — so, wie es die Hausregel im
Kopf der SWKI-Tabelle für im Haus fehlende Volltexte verlangt.

**SN EN 17037** «Tageslicht in Gebäuden» kommt hub-weit ausschliesslich in acht `energie`-Dateien
vor; `normen` und `planungsgrundlagen` haben null Treffer. Der am 07.09. in Run 185 angelegte
Artikel `energie/wiki/tageslicht-minergie-eco.md` hält die Bringschuld in seiner eigenen Warnkarte
fest. **Abgrenzung, die der Verifikator beigesteuert hat:** `normen` führt fünf
`established`-Destillate der DIN-5034-Reihe zum selben Thema — eine deutsche Norm mit anderer
Bezugsgrösse, die laut dem eigenen Syntheseartikel nicht als CH-Anforderungswerte taugt. Die Lücke
betrifft die **Norm**, nicht das Thema; ohne diese Präzisierung hätte die Meldung wie ein
Doppelspur-Fall ausgesehen.

**Gesetzt:** Registerzeile in `normen/wiki/REGISTER.md` (+1), WC54-1 in `normen/wiki/QUESTIONS.md`
(+34 samt Zeiger-Berichtigung).

### 3.2 SYN-72 war bei vier von sechs Stellen nicht angekommen

Vorgeschichte: Lauf 52 lieferte den SIA-416-Aussenflächenbefund an fünf Bausteine aus und gab als
Abhilfe «zusätzlich über CHF/m2 vergleichen» mit. Der Synergie-Lauf 28 hat diese Abhilfe am 04.09.
widerlegt (**SYN-72**) und die Korrektur bei `immobilienbewertung/wiki/realwert-sachwert.md`
gesetzt; Lauf 53 zog sie am 07.09. in `grobkosten/wiki/kennwerte.md` nach.

Gemessen (`grep` auf `SYN-72` über `skills/`, `agents/`, `wissen/`): **zwei von sechs Stellen
trugen den Zeiger, vier nicht** — `skills/grobkosten-onepager/SKILL.md` Z. 48-50,
`skills/machbarkeit-studio/SKILL.md` Z. 70-71, `agents/grobkosten-rechner.md` Z. 31-32 und
`immobilienbewertung/wiki/flaechendefinitionen-sia.md` Z. 172.

**Die schärfste Stelle nannte kein Melder, sie kam aus der eigenen Nachmessung.**
`flaechendefinitionen-sia.md` Z. 172 behauptet die widerlegte Aussage **positiv**: «Ein
Variantenvergleich über CHF/m3 GV erfasst sie also gar nicht, **einer über CHF/m2 schon**». Die drei
anderen formulieren sie als Empfehlung, diese eine als Tatsache über die Norm. Beide Melder dieses
Feldes hatten sie übersehen; sie fiel erst auf, als ich das Suchraster von `SYN-72` auf die
Formulierung selbst umstellte.

**Adversarial eingeschränkt, in die gesetzten Texte eingegangen:** die Zuspitzung «beide ohne jeden
Vorbehalt» trifft für `grobkosten-onepager` nicht — dort steht seit Lauf 52 die
Grössenordnungs-Dämpfung (±25-%-Band). Sie betrifft die Materialität des blinden Flecks, nicht die
Tragfähigkeit der Abhilfe; der Kernbefund bleibt. **Nicht übernommen** wurde der Löschvorschlag
eines Melders: der Sachentscheid über den Ursprungssatz in `normen/destillate/sia-416-2003.md` ist
ausdrückliche Bringschuld der KB `normen` (SYN-72 Massnahme c) und wird hier nicht vorweggenommen.

**Gesetzt:** additiver ⚠⚠-Vermerk in allen vier Stellen (+13 / +8 / +11 / +14), Wortlaut darüber je
unangetastet. Damit tragen sechs von sechs Stellen den Zeiger.

### 3.3 Rotationspunkt Run 21 (bfu-Destillate): der Teilstand war falsch gebucht

Run 43 meldete den Punkt am 25.08.2026 als «eingelöst» und deckte davon **eines** der vier
Zielobjekte (rechtliche Aspekte, Art. 229 StGB); Lauf 52 löste am 03.09. Treppen ein. Nachgemessen
hatten `bfu-glas-in-der-architektur-2020.md` und `bfu-tueren-und-tore.md` hub-weit **keine einzige**
Kante nach `wissen/baurecht`, weder im `links:`-Frontmatter noch im Fliesstext, und keines der
beiden war im ganzen Register je Gegenstand einer Prüfung.

**Der Verifikator hat zwei Zuspitzungen des Melders am Original widerlegt**, und beide sind
methodisch interessant: «der einzige unverlinkte Rest» ist falsch (es sind zwei), und der als
beidseitig verlinkt angeführte Zwilling `bfu-gelaender-und-bruestungen.md` trägt im Frontmatter nur
`[[REGISTER]]` — der Melder mass die eine Seite am Frontmatter, die andere am Fliesstext. Das ändert
den Sachkern nicht, erinnert aber daran, was eine Cross-KB-Kante hier überhaupt ist: nach Zeile 126
der Führungsmatrix **nicht** das `links:`-Feld, sondern der Verweis im Text plus die Registerzeile.

**Gesetzt:** Absatz «Glasbrüstungen, Abgrenzung» in
`baurecht/wiki/ausnahmebewilligung-und-bestandesschutz.md` (+15) mit dem Schwellenwert 1,0 m nach
SIA 358 aus der bfu-Fachdokumentation 2.006.01 (12.2020) — und mit **beiden** Vorbehalten im Text:
das Destillat ist `speculative` und am SIA-358-Normtext nicht gegengeprüft (SIA 358 nicht im Haus,
Bring-Schuld der KB `normen`), und es beantwortet **nicht dieselbe Frage** wie die 15-%-Schwelle
der Stadt-Zürcher Richtlinie. Die Rotationszeile in `QUERBEZUEGE.md` trägt jetzt den gemessenen
Teilstand; der Journaleintrag von Run 43 bleibt als datierter Snapshot unangetastet.

**Offen bleibt `bfu-tueren-und-tore.md`** — kein erkennbarer PBG-Gegenpart. Eine Kante um der
Vollständigkeit willen wäre eine erfundene, deshalb stehengelassen statt ausgetragen.

### 3.4 Das Messinstrument behauptete, was die KB seit drei Wochen widerlegt

`skills/twin/tools/stilmetrik.py` Z. 63 trägt im Kommentar zum Unterstrich-Bullet: «Der Zwilling
setzt es nie; damit ist die Luecke messbar statt nur beschrieben.» Die KB widerlegt das zweifach —
seit dem 17.08.2026 (`twin/wiki/fachsignatur.md` Z. 2307-2311, Batch 96: der Marker steht in
Raphaels Fassung **und** im Hub-Entwurf desselben Vorgangs) und erneut am 07.09. (`arbeitsweise.md`
Z. 4355-4361, Batch 115: alle drei Unterstrich-Bullets im vorbereiteten Block).

**Der Fund kam vom Verifikator, nicht vom Melder** — der Melder hatte einen Rule-Widerspruch
gemeldet, den es nicht gibt (siehe 4.2), und dabei die eine Datei nicht angesehen, in der die
veraltete Aussage tatsächlich noch steht.

**Gesetzt:** additiver Kommentar (ASCII, Code-Datei nach Rule `umlaute-konvention`), der Zähler
selbst unverändert. Er bleibt gültig als Stil-Kennzahl und taugt nicht als Authentizitätssignal.

---

## 4. Widerlegt

### 4.1 QSS-Fassungsbefund gegen den Brandschutz-Wegweiser — zweite Fehlmeldung derselben Art

Gemeldet: `planungsgrundlagen/wiki/brandschutz-pl03-wegweiser.md` §3 (Z. 475) zitiere die abgelöste
Fassung 01.01.2015 der VKF-BSR 11-15 ohne die 2019-Korrektur.

**Am Original widerlegt, und zwar aus der Beleg-Quelle des Melders selbst:** die zitierten Ziff. 2.3,
3.3.1 und 3.4.1 liegen im Bereich, den `normen/destillate/vkf-brl-11-15-fassung-2019-delta.md` in
seiner eigenen Prüfstand-Tabelle als «Ziff. 1-3, keine materielle Abweichung» ausweist. Der
Systemwechsel betrifft Kap. 4.1 und die Anhänge, die materielle Neuerung die Massnahmentabelle im
Anhang zu Ziff. 5 — beides reproduziert §3 nicht. Zusätzlicher Datierungsfehler des Melders: die
Lockerung ● → ○ bei QSS 3 stammt aus der Fassung 01.01.2017, nicht 2019.

**Verschärfend: dieselbe Behauptung wurde am 20.08.2026 (Run 38) schon einmal gegen
`skills/brandschutz/SKILL.md` erhoben und zurückgewiesen.** Es ist die zweite Fehlmeldung derselben
Art gegen dieselbe Ziffer, nur an einem anderen Baustein — ein Melder, der ein Delta-Destillat
sieht, schliesst zu leicht auf Betroffenheit.

**Was richtig ist und trotzdem keinen Eingriff trägt:** der Wegweiser nennt in Quellenzeile und
Frontmatter die Fassung 01.01.2015 und verweist nirgends auf das Delta-Destillat. Das ist eine
**Auffindbarkeits-, keine Richtigkeitslücke.** Ein Warnhinweis «Fassung 2019 nicht eingearbeitet»
würde eine Betroffenheit behaupten, die widerlegt ist, und die bereits zurückgewiesene Fehlmeldung
in einen zweiten Baustein einschreiben. Bewusst **nicht** gesetzt; nur als Registereintrag geführt.

**Regel daraus, im Register festgehalten:** ein Fassungs-Delta ist erst dann ein Befund am
zitierenden Artikel, wenn die **zitierten Ziffern** im geänderten Bereich liegen. Die blosse Existenz
eines Delta-Destillats genügt nicht.

### 4.2 Der «verbrannte» Unterstrich-Bullet steht in keinem Konflikt mit der Bullet-Regel

Gemeldet: der Befund «`_ `-Bullet als Herkunftssignal verbrannt» (Batch 115) widerspreche der
Positionslisten-/Bullet-Regel in `rules/dokument-layout-standard.md` und `auto-verbesserungen` 260814c.

**Widerlegt:** beide Fundstellen der KB nehmen die **Erzeugung** ausdrücklich von der Entwertung aus
— «als Stilmerkmal bleibt er gültig» (`arbeitsweise.md` Z. 4358-4359), «als Stilvorgabe bleibt er
richtig, als Detektor nicht» (`fachsignatur.md` Z. 2311). Entwertet ist der Marker als **Detektor**,
nicht als Stil; die Regeln regeln die Erzeugung. Kein Rule-Eingriff, keiner war nötig — und der
Wortlaut einer Rule wäre ohnehin Raphaels Entscheid, nicht der eines Laufs.

---

## 5. Nullbefund mit Aussage: baurecht ↔ planungsgrundlagen

Der ganze Zuwachs des Fensters ist in diesem Paar sauber. Zweiseitig gemessen: `grep` nach
`Portal|WFS|Layer|OGD|geo.admin|map.geo|maps.zh` im baurecht-Artikel trifft nur Verweiszeilen auf
`planungsgrundlagen` (Z. 339, 357-359), `grep` nach `§|Rechtsfolge|Bauverbot|Frist` im
planungsgrundlagen-Artikel nur Verweiszeilen zurück (Z. 27-29, 159). Der Waldabstands-Fall aus Lauf 52
ist auf **beiden** Seiten angekommen, mit demselben Beleg und je korrekter Delegation: das Mass
(§ 66 PBG) führt `baurecht`, die Linienlage (Witikon, docid 17431, Auflage seit 03.12.2025) führt
`planungsgrundlagen`. **Die Auslieferung von Lauf 52 hat in diesem Paar vollständig getragen** — das
ist die Gegenprobe zu 3.2, wo dieselbe Auslieferung vier Stellen verfehlte.

---

## 6. Gesetzt — Dateiliste

Alle Eingriffe additiv, je gegen eine vor dem Eingriff gezogene Kopie gedifft, **0 entfernte Zeilen**.

| Datei | Delta | Was |
|---|---|---|
| `wissen/normen/wiki/REGISTER.md` | +1/-0 | Registerzeile SWKI VA104-01, ohne Gültigkeitsaussage |
| `wissen/normen/wiki/QUESTIONS.md` | +34/-0 | WC54-1 (SN EN 17037) + ⚠-Vermerk am toten Zeiger in WC53-1 |
| `skills/grobkosten-onepager/SKILL.md` | +13/-0 | SYN-72-Vermerk |
| `skills/machbarkeit-studio/SKILL.md` | +8/-0 | SYN-72-Vermerk |
| `agents/grobkosten-rechner.md` | +11/-0 | SYN-72-Vermerk |
| `wissen/immobilienbewertung/wiki/flaechendefinitionen-sia.md` | +14/-0 | SYN-72-Vermerk (schärfste Stelle) |
| `wissen/baurecht/wiki/ausnahmebewilligung-und-bestandesschutz.md` | +15/-0 | Glasbrüstungen/SIA 358, beide Vorbehalte |
| `wissen/koordination/QUERBEZUEGE.md` | +151/-0 | 6 Paar-Einträge + Teilstand an der Rotationszeile |
| `wissen/twin/wiki/QUESTIONS.md` | +12/-0 | Selbstfrage #6 «Geschätzter Simon» |
| `skills/twin/tools/stilmetrik.py` | +7/-0 | veralteter Kommentar berichtigt (Syntax geprüft) |
| KB-CHANGELOGs `normen`, `immobilienbewertung`, `baurecht`, `twin` | additiv | je ein Eintrag |
| `wissen/koordination/CHANGELOG.md` | additiv | Lauf-54-Eintrag + Lauf-53-Rekonstruktion |

---

## 7. Offene Entscheide für Raphael

**Nichts Neues aus diesem Lauf.** Unverändert bei ihm liegen:

- **SYN-72 (c)** — der Sachentscheid über den Ursprungssatz in `normen/destillate/sia-416-2003.md`
  (Bringschuld der KB `normen`). Alle sechs Abnehmerstellen tragen jetzt den Vorbehalt, damit bis zum
  Entscheid niemand mit der widerlegten Abhilfe rechnet.
- **SYN-74 (b)** — die Planerhaftung nach Art. 367 Abs. 1bis lit. b OR in
  `honorarberechnung-sia102` (Synergie-Lauf 29, 07.09.).

Nicht entscheidungsbedürftig, aber erwähnenswert: der Registerschritt von Lauf 53 fiel aus, ohne dass
es jemandem aufgefallen wäre — bemerkt hat es dieser Lauf beim Lesen des eigenen Stands, nicht ein
Wächter. Wer eine Gegenmessung dafür will, misst am einfachsten, ob zu jedem `wissens-chef`-Commit
ein gleichnamiger Bericht unter `outputs/` existiert.
