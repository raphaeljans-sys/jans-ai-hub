# KISPI 2619 — Bodenaufbau-Details Nasszellen / Therapiekueche / Bolon

**Datum:** 2026-08-21 · **Anlass:** Frage Raphael nach den Bodenaufbau-Details 1:2/1:5 auf der
Truninger-Plattform (DS3) samt Produkt-, Farb- und Fugenangaben.
**Sitzung:** claude.ai/code (Cloud-Container). **Zugriffslage:** siehe unten — die Plattform ist
aus dieser Sitzung nicht erreichbar, die Beschaffung laeuft ueber einen Remote-Task auf dem Mac Mini.

## 1 Zugriffslage (warum hier nicht abschliessend beantwortbar)

| Quelle | Status in dieser Sitzung | Grund |
|---|---|---|
| Truninger-Plattform DS3 (`ds3.data-share.ch`) | **nicht erreichbar** | Agent-Proxy beantwortet CONNECT mit 403 (Netzwerk-Policy); zusaetzlich fehlt `~/.truninger-ds3.env` im Cloud-Container |
| OneDrive/SharePoint `2619_KINDERSPITAL` | **nicht vorhanden** | kein CloudStorage-Mount im Cloud-Container |
| NAS `/Volumes/daten` | **nicht gemountet** | NAS-Waechter-Warnung beim Sessionstart |
| Git-Repo (Skills, Wissens-KBs, Logbuch) | vorhanden | daraus stammt alles unter Ziffer 2 |

**Beschaffungsweg:** `remote-tasks/pending/mac-mini/20260821-kispi-bodenaufbau-details.sh`
(Protokoll `remote-tasks/README.md`). Der Task pruefte zuerst DS3 mechanisch (`--test`, `--ls /`)
und laesst danach den vollen JANS-Harness ueber DS3, Projektordner, NAS und Mail laufen; Ergebnis
kommt als `BERICHT.md`/`KURZ.md` unter `remote-tasks/results/` zurueck. Read-only, kein Versand.

## 2 Was heute schon belegt ist

### 2.1 Nasszellen — Plattenbelag (Neubau, Fertignasszellen Patientenzimmer)

| Merkmal | Wert | Fundstelle |
|---|---|---|
| Plattentyp | **Agrob Buchtal Chroma-Plural, 50 x 50 mm** | `logbuch/konversationen/260814-konversationen.md`, Abschnitt 1 — dort zitiert aus «Materialisierung HdM/ARGE KISPI, 28.06.2019» |
| Duschbereich | vollstaendig gefliest, **Gefaelle minus 20 mm** | ebd. |
| Abdichtung | **Verbundabdichtung Klasse A** | ebd. |
| Ablauf Duschen Personal (Apparatetyp 4.0, 70 Stueck) | bodenebener Punktablauf **Dallmer CeraDrain 48**, Edelstahlrost | Apparateliste Sanitas Troesch, Auftrag 303603210, BKP 251, zitiert ebd. |

**Offen:** Farbe/Farbnummer der Platten, Oberflaeche und Rutschfestigkeit (R-Klasse DIN 51130 /
Barfussbereich DIN 51097), Fugenmoertel-Fabrikat mit Farbton und Fugenbreite, Silikonfugen-Fabrikat
und -Farbe, und der Schichtaufbau in mm im Massstab 1:2/1:5. Primaerquelle ist das
Materialisierungsdokument HdM/ARGE vom 28.06.2019 plus die Ausfuehrungsdetails auf DS3 — beides
holt der Remote-Task.

### 2.2 Bodenaufbau PPTS-Umbau (Therapiestation 1. OG) — Hoehenkette

| Schicht / Mass | Wert | Fundstelle |
|---|---|---|
| Unterlagsboden | **85 mm** | Mail RJ 17.08.2026, destilliert in `wissen/twin/wiki/fachsignatur.md` (Zeile ~2364), woertlich: «Der Unterlagsboden ist 85mm.» |
| Deckbelag | **5 mm Bolon** | ebd. |
| Aufbauhoehe bis Trittschalldaemmung, regulaer | **90 mm** | ebd. |
| Aufbauhoehe an der Vertiefung beim Bodenablauf | **70 mm** | ebd. |
| Bodenablauf | **8 cm Konstruktionshoehe**, **1.5 % Gefaelle**, OK fFB 0.00 bis −0.02 | `wissen/twin/wiki/fachsignatur.md` Zeile ~1558 (Koordination Gruner/Kuebler, 23.07.2026) |
| Duschen PPTS | **Duschwanne Aufsatzmontage** — «Grund: Ziel keine Verletzung der Bodenheizung» | `wissen/twin/wiki/fachsignatur.md` Zeile ~2359 (Mail 17.08.2026) |
| Wanne | Schmidlin superflach 2.5 / 3.5 cm, Stahl emailliert weiss, Antislip (ANTIGLISS PRO / AQUAGRIP), VARIO fuer Sondermasse | `logbuch/konversationen/260814-konversationen.md` |
| Ablauf dazu | Viega Tempoplex extraflach, Einbauhoehe 60 mm, Sperrwasser 30 mm, DN 40/50, 0.55 l/s | ebd. |
| Wandanschluss | **Zarge** (30 mm mitemaillierte Aufkantung, 15 mm von den Wandplatten ueberdeckt, fugenlos) statt Silikonfuge; Rohnischenmass = Wannenmass + 10 mm (Einfachbeplankung) bzw. + 35 mm (Doppelbeplankung), Broschuere «Schmidlin Zargen» 2023, S. 10/11 | ebd. |
| Aufbauhoehen-Konflikt | Gruner forderte 9 cm Unterlagsboden; am **18.08.2026 08:14** durch M. Eren geloest (Siphon unter der Decke), damit hinfaellig | `logbuch/fristen.md` |

### 2.3 Der vorhandene Nasszellen-Schnittplan (Massstab 1:20, nicht 1:2/1:5)

- **Plan:** `2619_51_S-ARCJ_8640_DT00_01_NASSZELLEN-UMBAU.pdf` und `.dwg`
- **Inhalt laut Register:** «definitiver Schnittplan der Nasszellen **inklusive Bodenaufbau**»
- **Versand:** Mail rj@ **21.08.2026 00:40**, Betreff «KISPI PPTS: Sanitaerplaene», an R. Guerini
  und I. Suljanovic (KISPI), Cc Eren, Spahic, Spoerri, Wuersch, Ziegel, Stadelmann
- **Fundstelle:** `logbuch/fristen.md` (Eintrag 21.08.2026, 06:55); Honorarblatt dazu
  `260821-2619-Honorar-Nasszellenplan` unter `AR - 01 Projekte/2619_KINDERSPITAL/00_Admin/1 Angebote/`

Das ist heute das naechstliegende eigene Blatt zum Thema — **im Massstab 1:20**. Ein Detail 1:2/1:5
ist damit nicht ersetzt; ob eines auf DS3 liegt, klaert der Remote-Task.

### 2.4 Bolon — Produktspezifikation (belegt)

| Merkmal | Wert |
|---|---|
| Produkt | **Bolon Sisal Plain Sand**, Kollektion **BKB** |
| Form | Bahnenware, Breite **200 cm**; Statnr. 57025039 |
| Dicke | **5 mm** (aus der Hoehenkette RJ 17.08.2026, s. 2.2) |
| Norm | EN 14041:2004 |
| Brandverhalten | **Bfl-s1** (EN 13501-1) — VKF-seitig ueber die Umrechnungstabelle einzuordnen, Beurteilung beim Brandschutz-Fachplaner |
| Gleitwiderstand | **DS (> 0.3)** |
| Formaldehyd | E1 · Elektrisches Verhalten < 2.0 kV · Waermedurchlasswiderstand < 0.17 m²K/W · Wasserdichtigkeit NPD |
| DoP | **005DoP2016-02-10** · CE-Zertifikat 0402-CPR-419004, RISE Research Institute of Sweden |
| Hersteller | Bolon AB, Industrivaegen 12, SE-523 90 Ulricehamn |
| Los / Lieferkette | **LOS 281.20 Bodenbelaege aus Vinyl**, Pfister Professional AG / INEVO AG (Mischa Baldauf) |
| Menge Neubau | 4'750.60 m² (95 Rollen à 25 lfm), Rechnung Bolon 142659 vom 27.01.2022, Bestellung 213812/4010000880 |

**Fundstelle:** `skills/brandschutz/referenzen/praxisfaelle/260520-KISPI-Bolon-Sisal-Bodenbelag-Fluchtweg/README.md`
(mit DoP, Produktspezifikation BKB 2026, Rechnung und Original-Mail als PDF/EML daneben).
**Originale:** `AR - 01 Projekte/2619_KINDERSPITAL/06_Reglemente/Brandschutz Fluchtweg/_Bologn/`.

**Offen bleibt für Bolon:** der Konstruktionsaufbau 1:2/1:5 als Zeichnung, Klebstoff, Nahtbild,
Sockelausbildung und Untergrundvorbereitung.

### 2.5 Therapiekueche — Linoleum

**Nichts belegt.** Im Hub liegt zur Therapiekueche ausschliesslich der Betriebs- und
Geraetestrang (Geraeteliste mit Abluftwerten 08.08.2026, Anschlusswerte-Entwurf 13.08.2026,
Recherchebericht Betriebskonzept 08.08.2026 — alle in `logbuch/fristen.md`), **kein Bodenaufbau,
kein Belagsfabrikat, keine Farbe, keine Rutschfestigkeit, keine Fugenausbildung**. Diese Angaben
muessen aus dem Ausbaubeschrieb/den Ausfuehrungsdetails auf DS3 bzw. aus dem Projektordner kommen.

## 3 Bekannte Struktur der Truninger-Plattform (Stand 13.08.2026)

Aus dem letzten belegten DS3-Lauf (`wissen/normen/outputs/2026-08-12_sia500-duschtasse-nicht-iv-duschen-kispi.md`,
Nachtrag 13.08.2026):

- Pfadmuster: `Projektraum` > `02 Grundlagen` > `02.01 Bauherrschaft` (dort z. B. Projekt-
  pflichtenheft Neubau KISPI V1.0 Arch, 31.05.2014, `File-4953997`; Raumprogramm Soll V10.0,
  18.12.2015, `File-4953993`), daneben `33 Bewilligungsverfahren`.
- **Ein Raumbuch existiert auf der Plattform nicht** (Suche «Raumbuch» ohne Treffer). Material-
  und Fugenangaben sind deshalb im **Ausbaubeschrieb / in den Ausfuehrungsdetails** zu suchen,
  nicht in einem Raumbuch.
- Gespiegelt wird nach `JANS - 2619-KISPI - Dokumente / 0 Plangrundlagen Bestand / 02 Grundlagen`.

## 4 Naechste Schritte

1. Remote-Task auf dem Mac Mini laufen lassen (siehe Ziffer 1). Er liefert je Block Schichtaufbau,
   Produkt-, Farb- und Fugenangaben mit Fundstelle — und benennt ausdruecklich, was auf der
   Plattform **nicht** liegt.
2. Primaerquelle «Materialisierung HdM/ARGE KISPI, 28.06.2019» beschaffen und spiegeln — sie traegt
   die Nasszellen-Plattenwahl und damit vermutlich auch Farbe, Oberflaeche und Fugenfarbe.
3. Falls DS3 kein Detail 1:2/1:5 fuehrt: die Details bei der ARGE/HdM bzw. ueber die Bauherrschaft
   (A. Spahic) anfordern — und fuer den PPTS-Umbau entscheiden, ob JANS das Detail selbst zeichnet
   (das Nasszellen-Blatt 1:20 vom 21.08. waere die Grundlage).
