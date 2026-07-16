# Wissens-Chef — Lauf 6 (16.07.2026)

**Modus:** gedrosselter Lauf (Rule 260714) — schlanker Fan-out mit 3 Lese-Agenten + 2 adversarialen
Verifikations-Agenten statt grossem Workflow. Kein neuer Scheduled Task.
**Geprueft:** der seit Run 5 (gestern 17:07) neu gewachsene Stoff — energie **Run 73/74** (16.07.,
MuKEn-2025-Volltext, sommerlicher Waermeschutz SIA 180, Holzfeuerung LRV, BHKW), planungsgrundlagen
**Run 50** (16.07., GreenPV-Schlussbroschuere §6b), normen **Mini-Run 30/31** (15./16.07.).

---

## Das Wichtigste in drei Saetzen

Der neue Stoff war an drei Nahtstellen ueberschneidungsgefaehrdet, und alle drei trugen echte Befunde:
**ein Sachfehler** (energie schrieb ein Vollzugs-Kontingent der Norm SIA 180 zu), **eine unnoetige
Wissensluecke** (energie fuehrte Grenzwerte als «offener Punkt», die in `normen` seit drei Tagen
ziffern-genau bereitlagen) und **eine Fuehrungs-Umkehr** (planungsgrundlagen ist beim GreenPV-Stoff an
`energie` vorbeigezogen). Die **adversariale Verifikation hat sich bezahlt gemacht**: der zuerst
gemeldete *schwerste* Befund wurde widerlegt — die «100 Uebertemperaturstunden» sind amtlich belegt,
nicht erfunden. Alle Korrekturen sind gesetzt und verlinkt; **ein Entscheid liegt bei Raphael** (Dublette
in `normen`).

---

## 1 — Bestaetigte Befunde und was getan wurde

### 1.1 energie ↔ normen ↔ planungsgrundlagen — SIA 180 (sommerlicher Waermeschutz)

Das gestern in energie Run 74 entstandene Destillat `sommerlicher-waermeschutz-sia180-nachweisverfahren`
hat die Norm-Fundstellen aus **Vollzugshilfen rekonstruiert**, statt sie aus der KB `normen` zu ziehen —
obwohl das Destillat `sia-180-2014` (aus dem Original-PDF) **drei Tage aelter** war. Das ist ein Verstoss
gegen die Rule `normen-referenz` und die Wurzel beider Befunde.

| Befund | Status | Aktion |
|---|---|---|
| V3-Zeile: «Nachweis ueber Uebertemperaturstunden» unter der Ueberschrift «Die drei Nachweisverfahren (SIA 180:2014)» — normativ gilt Ziff. 5.2.6.3 / Fig. 3 (**0 h**) | bestaetigt | Zeile korrigiert: Norm-Kriterium und Vollzugs-Abweichung sauber getrennt |
| gtot-Grenzwerte als «offener Punkt / Normtext kostenpflichtig, nicht eingesehen» | bestaetigt | **Fig.-12-Formeln aus `normen` uebernommen** (Ziff. 5.2.4.1: N ≤ 0,20/fg · NE/NW ≤ 0,13/fg · E/SE/S/SW/W ≤ 0,07/fg); offener Punkt auf **Fig. 13** eingeschraenkt |
| EN-ZH-/EVEN-Verfahren materiell in energie gefuehrt (planungsgrundlagen fuehrend) | bestaetigt | Querbezug-Block gesetzt; Doppel-Lueckenbuchhaltung «EVEN-Migration» per Verweis geschlossen |
| normen-REGISTER Z. 106 widersprach **sich selbst**: SIA 180 «1999 · vermutlich aktuell» vs. Tabelle C + Destillat «2014» | bestaetigt | auf **«✓ Bestand 2014 als geltend BESTAETIGT»** nachgefuehrt (Beleg lag in der eigenen KB) |

**Nebenfund:** Die **Korrigenda C2:2020 zu SIA 180 existiert** — die Stadt-ZH-Wegleitung zitiert sie in
Ziff. 4.1.1 ausdruecklich. Das normen-Destillat fuehrte bisher «ob nach 2014 eine Korrigenda publiziert
wurde, nicht verifiziert». Existenz jetzt belegt, **Inhalt offen**.

### 1.2 energie ↔ baurecht — MuKEn 2025 Modul 11 (Daemmung und Nutzungsziffern)

Hier lagen **Luecken auf beiden Seiten**, aber kein Sachwiderspruch:

- **energie** fuehrte Modul 11 (35-cm-Kappung bei BMZ/GFZ) als «Grundsatz seit 2005 bekannt, erstmals mit
  Zahlenwert kodifiziert / planungsrechtlich direkt relevant fuer JANS» — **ohne ZH-Kontext**. Im Kt. ZH
  gilt die Kappung aber bereits seit **1.4.2013** (§ 256 Abs. 2 UEZ, § 257 Abs. 3 GrFZ, § 258 Abs. 4 BMZ,
  § 253a PBG; § 12 Abs. 3 ABV). Fuer JANS ist Modul 11 in ZH also **keine Neuerung** — die urspruengliche
  Formulierung legte das Gegenteil nahe.
- **baurecht** — und das wiegt schwerer — fuehrte die Kappung im **fuehrenden** Artikel `nutzungsziffern`
  **ueberhaupt nicht**. Der Stoff lag ungehoben im eigenen Buch-Destillat `14-nutzungsdichte-ausnuetzung`
  und war nie ins Wiki promotet worden.

**Aktion:** energie-Zeile skopiert (Muster-Ebene vs. ZH-Ist), unbelegtes «seit 2005» gestrichen, ZH-Sonderfall
§ 253a Abs. 2 PBG als *weitergehend* benannt (nachtraegliche Daemmung fuer BMZ/UEZ/GrFZ **ganz unbeachtlich**,
ohne 35-cm-Deckel); baurecht `nutzungsziffern` um die Sektion «Aussenwaermedaemmung und Nutzungsziffern» +
Querbezug + `sources` ergaenzt; zusaetzlich Modul-12-Querbezug (E-Mobilitaet ↔ Abstellplatz-Recht) gesetzt.

Zwei Praezisierungen, die vorher nirgends im Wiki standen und fuer die Praxis zaehlen:
**fuer die AZ (§ 255 PBG) gilt KEINE 35-cm-Kappung**, und die GFZ steht in ZH gar nicht zur Verfuegung.

### 1.3 energie ↔ planungsgrundlagen — GreenPV/Fassaden-PV

Dieselbe HSLU-Studie wird in **beiden** KBs materiell gefuehrt (identische Kennwerte: Modul-Wirkungsgrade
20/14 %, NOCT 42±2 °C, Begruenung 30 kg/m², Referenzgebaeude-U-Werte) — **ohne Widerspruch, aber redundant**.
Der eigentliche Befund ist eine **Fuehrungs-Umkehr**: nach Matrix ist Energie-Fachstoff `energie`-Sache;
faktisch hat planungsgrundlagen gestern die **Schlussbroschuere vom 27.08.2024** volltext ausgewertet und ist
auf `established`, waehrend energie auf dem **Workshop-Zwischenstand von 2022** steht — samt drei «offenen
Punkten» (Endergebnisse, kWh/kWp je Orientierung, Kosten CHF/m²), die **alle drei laengst beantwortet sind**,
und einem Verweis auf einen «noch ausstehenden Schlussbericht», den es seit zwei Jahren gibt.

**Aktion:** Aktualitaets-Flag in energie (inkl. der drei erledigten Punkte); bidirektionale Querbezuege;
**«Querbezug KB normen»-Block** vor der VKF-Hoehen-/RF-Staffel in §6b; **Divergenz-Flag** — der Jahres-
Minderertrag der Sued-Fassade steht in §6 mit **−14 %** und in §6b mit **−20 %** (beides dieselbe Studie,
verschiedene Publikationsstufen; massgebend ist die **finale Broschuere: −20 %**).

---

## 2 — Was die Verifikation verhindert hat

Beide Refuter-Agenten haben ihre Befunde ernsthaft angegriffen, und das hat den Lauf zweimal korrigiert:

**Der schwerste gemeldete Befund wurde WIDERLEGT.** Gemeldet war, die «max. 100 Uebertemperaturstunden
(SIA 180 Figur 4)» seien eine falsche Zuschreibung, weil SIA 180 fuer V3 kein Stundenkontingent kennt und
Fig. 4 die Behaglichkeitsfigur ist. Der Verifier hat die **amtlichen Primaerquellen selbst beschafft** und
im Volltext gelesen — die **Stadt-ZH-Wegleitung** schreibt in Ziff. 4.1.1 woertlich vor: «Die Beurteilung
der thermischen Behaglichkeit erfolgt immer … **nach Figur 4 (Ziffer 2.3.2)**. Dabei darf die obere
Grenzwertkurve … waehrend maximal **100 Stunden pro Jahr bei Neubauten** … **400 Stunden** … ueberschritten
werden.» Die **HBA-Richtlinie** deckt die 400 h ueber SIA 382/1. Figur 4 ist dort eine **bewusste Abweichung**,
die Zahlen sind korrekt und amtlich. Haette ich den Befund ungeprueft umgesetzt, waeren belegte Vollzugswerte
«wegkorrigiert» worden. Uebrig blieb ein enger, echter Kern: **eine** Tabellenzeile schrieb die Abweichung
der Norm zu. Genau die wurde korrigiert — die Zeilen mit den Zahlen blieben unangetastet.

**Der MuKEn-Befund schrumpfte von «Fehler» auf «Praezisierung».** «Erstmals kodifiziert» bezieht sich auf die
**Muster-Ebene** (Spalte «Neu ggue. MuKEn 2014») und ist nicht widerlegbar — der MuKEn-2014-Modultext liegt
nicht in der KB. Ebenso wurde die Kritik an «BMZ/**GFZ**» widerlegt: MuKEn ist Musterrecht fuer **alle**
Kantone, und die GFZ ist ein IVHB-Begriff, den andere Kantone fuehren — energie zitiert das Muster korrekt.
Bestaetigt blieben nur der fehlende ZH-Kontext und das unbelegte «seit 2005». Der Verifier hat zusaetzlich die
Gegenprobe gemacht: die 35-cm-Kappung steht in **beiden** PBG-Regimes (Hauptteil und Anhang «Stand 28.02.2017»)
— kein Schlupfloch — und fuer die AZ existiert sie in **keinem**.

---

## 3 — Offene Entscheide fuer Raphael

> ### ENTSCHEID NOETIG — Dublette in der KB `normen`
> `destillate/vkf-merkblatt-2001-15-solaranlagen.md` und `destillate/vkf-brm-2001-15-solaranlagen.md`
> destillieren **dieselbe PDF** (identische `quelle:`, beide `ausgabe: 06.03.2015`, beide
> `last_updated: 2026-07-13`, beide `established`). `planungsgrundlagen/wiki/energie-pv-brandschutz`
> referenziert bereits **beide nebeneinander**, was die Zielwahl kuenftiger Querlinks unsauber macht.
> **Merge/Loeschung ist destruktiv** → gemaess Rule `wissens-bibliothekar` nicht autonom.
> **Frage:** Welches ist das kanonische Destillat — soll ich das andere zu einem Verweis eindampfen
> (nicht loeschen), oder beide bestehen lassen?

Sonst **keine** Entscheide — alle uebrigen offenen Punkte sind Bring-Schulden der Fach-Loops (unten).

---

## 4 — Offene Punkte (Loop-/Bring-Schulden, kein Entscheid noetig)

| # | Punkt | Zustaendig |
|---|---|---|
| 1 | **Korrigenda SIA 180 C2:2020** — Existenz belegt, Inhalt nicht verifiziert; beruehrt moeglicherweise Ziff. 5.2.4.1/5.2.6.3 (Indiz auf Umnummerierung, unbewiesen) | normen-Loop (SIA-Shop) |
| 2 | **EN-102-Ausgabe 2018 vs. 2020** KB-uebergreifend klaeren — energie fuehrt beide unverbunden; `planungsgrundlagen` nennt fuer EN-102a/b bereits SIA 380/1:**2016**, an 2 anderen Stellen noch **2009** | energie- + planungsgrundlagen-Loop |
| 3 | **GreenPV-Schlussbroschuere in `energie` re-destillieren** — danach **kehrt die Fuehrung um**, und §6/§6b in planungsgrundlagen sind auf das Planungs-Framing zu kuerzen | energie-Loop |
| 4 | **§ 33a ABV in `baurecht` widerspruechlich** — 2 Wiki-Artikel fuehren ihn als **geltende** Grundlage der 35-cm-Regel, 2 andere Stellen als **15 cm / aufgehoben** (§ 253a PBG hat die Funktion uebernommen) | baurecht-Loop |
| 5 | **Moeglicher veralteter Numerierungsstand** in `baurecht/wiki/nutzungsziffern`: BMZ als «§ 254 PBG (geltend)», raw fuehrt die BMZ in **beiden** Regimes unter **§ 258**; analog Freiflaechen-/Gruenflaechenziffer (FN 70, G vom 08.04.2024) — beruehrt die Uebergangsmechanik (BZO-Anpassung je Gemeinde) | baurecht-Loop |
| 6 | **Swissolar-Uebergangsdokument «PV an Fassaden»** galt laut §6b **bis 31.12.2024** — 19 Monate abgelaufen; Nachfolge/Stand-der-Technik-Papier in **keiner** der drei KBs geprueft | energie- oder planungsgrundlagen-Loop |
| 7 | **Trims** (Umstrukturierung, bewusst nicht autonom): §6b VKF-Staffel auf Planungs-Framing kuerzen; §1 PV-EIV (offen seit Run 5); §1a Normkonzept BSV 2026 (offen seit Run 4) | nach Rueckfrage |

---

## 5 — Strukturbefund (fuer den Synergie-Orchestrator)

Run 6 liefert den **dritten Fundort** desselben Musters: VKF-Wortlaut wird in `planungsgrundlagen`-Artikeln
materiell fortgeschrieben, statt aus `normen` gezogen zu werden (`brandschutz-pl03-wegweiser` Run 3 → dessen
§1a Run 4 → `energie-pv-eignung-typenwahl` §6b Run 6). Neu kommt das **analoge Muster in `energie`** dazu
(SIA-180-Fundstellen aus Vollzugshilfen rekonstruiert, obwohl das Norm-Destillat aelter war).

Die Diagnose ist damit stabil genug, um sie zu benennen: **Die Rule `normen-referenz` greift beim SCHREIBEN
der Fach-Artikel nicht — sie wird erst im Cross-KB-Lauf nachtraeglich durchgesetzt.** Jeder Trainings-Loop
schreibt fuer sich selbst korrekt und belegt, aber ohne den Seitenblick auf die fuehrende KB. Der Wissens-Chef
raeumt hinterher auf, was gar nicht erst entstehen muesste. Ein Vorschlag zur Behebung (z.B. ein
Pflicht-Schritt «fuehrende KB pruefen» in den Trainings-PROGRAMM.md der Fach-KBs) gehoert in den
`synergie-orchestrator` — hier nur als Befund registriert, im Kasten von `QUERBEZUEGE.md` festgehalten.

---

## 6 — Geaenderte Dateien

**energie:** `destillate/sommerlicher-waermeschutz-sia180-nachweisverfahren.md` (4 Korrekturen + 2 Querbezug-
Bloecke + Frontmatter) · `destillate/muken-2025-verabschiedet.md` (Modul-11-Zeile) ·
`destillate/greenpv-fassade-pv-begruenung-hslu.md` (Aktualitaets-Flag, 3 Punkte erledigt) ·
`destillate/e-mobilitaet-ladeinfrastruktur-gebaeude-ch.md` (Querbezug) · `CHANGELOG.md`
**normen:** `wiki/REGISTER.md` (Z. 106) · `destillate/sia-180-2014.md` (C2:2020) · `CHANGELOG.md`
**baurecht:** `wiki/nutzungsziffern.md` (neue Sektion + Querbezug + `sources`) · `CHANGELOG.md`
**planungsgrundlagen:** `wiki/energie-pv-eignung-typenwahl.md` (VKF-Querbezug, Divergenz-Flag,
Querbezuege-Sektion) · `CHANGELOG.md`
**koordination:** `QUERBEZUEGE.md` (3 neue Paare + 1 KB-interner Befund + Matrix um 2 Zeilen + Muster-Kasten) ·
`CHANGELOG.md` · dieser Bericht

**Nicht angetastet (bewusst):** `raw/` (nie editieren) · Buecher-Destillate in `baurecht` (quellentreu) ·
`outputs/2026-07-16_energie-run74.md` (datierter Laufbericht — dort eskaliert die Modul-11-Aussage ohne
Muster-Kontext, aber Berichte sind historische Belege und werden nicht rueckwirkend umgeschrieben; die
lebende Wahrheit ist das korrigierte Destillat) · §6-Tabellenwert −14 % (Trim = Umstrukturierung).
