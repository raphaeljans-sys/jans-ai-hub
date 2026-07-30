# Triage — Reglemente-Ordner 2414 Thalwil / Bohlweg 3

**Auftrag Raphael, 30.07.2026:** «durchforsten und schauen, was in das Baurecht-Wiki gehört».
**Umfang:** 243 Dateien (ohne `.DS_Store`), 13 Top-Ordner, ca. 250 MB.
**Quelle:** Mac Mini, OneDrive `…/AR - 01 Projekte/2414 THALWIL/06 Reglemente`.
**Methode:** vollständiges Inventar, dann Volltext-Extraktion der Schlüsseldokumente
(`pdftotext -layout`). **Hinweis für künftige Läufe: auf dem Mac Mini ist `pdftotext` NICHT
installiert** — Dateien zum MacBook holen (`ssh mini 'cat "<pfad>"' > lokal.pdf`) und dort
konvertieren.

---

## Der wichtigste Befund zuerst

### Die StrAV ist seit dem 01.06.2020 aufgehoben — die KB und der Begleitbeschrieb zitieren totes Recht

Die **Strassenabstandsverordnung (StrAV, LS 700.4)** vom 19.04.1978 trägt auf der
zhlex-Erlassseite der Staatskanzlei im Metadatenblock: **Aufhebungsdatum 01.06.2020**; letzte
Fassung Nachtrag 069, «in Kraft bis 01.06.2020». Nachfolgerin ist die
**Verkehrserschliessungsverordnung** (RRB vom 17.04.2019, in Kraft seit 01.06.2020, gleiche
Ordnungsnummer LS 700.4).

Betroffen sind **drei** Bestände gleichzeitig:

1. **Der Begleitbeschrieb Projektänderung Bohlweg 3 vom 30.07.2026** (Ziffer 5.2) stützt die
   ganze strassenrechtliche Argumentation auf «§ 240 PBG i.V.m. StrAV» und zitiert
   §§ 11/12/16 StrAV. Das Dokument geht an die Gemeinde.
2. **Das Merkblatt der Gemeinde Thalwil** «Abstände von Pflanzen, Mauern und Einfriedungen»
   zitiert ebenfalls die StrAV (§§ 14/15/16/17 und § 7). Die Gemeinde führt selbst ein
   veraltetes Merkblatt — das erklärt, woher das Zitat stammt.
3. **Die KB** führte die StrAV in `wiki/baureife-und-erschliessung.md` (Frontmatter `sources`)
   ohne Fassungsvermerk.

**Erledigt in diesem Lauf:** amtlicher Volltext der Nachfolgeverordnung beschafft und abgelegt
als `raw/260730_amtlich_zh_verkehrserschliessungsv.md`.

### Und das ist inhaltlich eine gute Nachricht für den Fall Bohlweg 3

**§ 26 Abs. 1 VerkehrserschliessungsV** (Nachfolger von § 7 StrAV, fast wortgleich):

> «Sofern die Verkehrssicherheit nicht beeinträchtigt wird, dürfen **an die Strassengrenze**
> gestellt werden: a. offene Einfriedigungen, b. in allen Strassenbereichen Mauern und
> geschlossene Einfriedigungen bis zu 0,8 m Höhe, c. **an geraden Strassenstrecken und an der
> Aussenseite von Kurven, Mauern und geschlossene Einfriedigungen von über 0,8 m Höhe.**»

Das kantonale Strassenrecht erlaubt an gerader Strecke eine Mauer über 0,8 m **direkt an der
Strassengrenze**. Die projektierten Sichtschutzmauern stehen **3,5 m zurück**. Das Argument ist
damit ein Erst-recht-Schluss und deutlich stärker als die bisherige Fassung «eine allgemeine
Höhenbeschränkung kennt das kantonale Recht nicht». Ergänzend: § 26 Abs. 2 (Abstand bis 0,5 m
nur, wo ein normgerechter Fussgängerschutz fehlt), § 28 (Innenseite von Kurven), § 23
(Sichtbereiche dauernd freizuhalten, Anhänge 3/4), § 27 (Pflanzenabstände: Bäume 4 m,
Sträucher/Hecken 0,5 m, Reduktion auf 2 m bei Quartierstrassen oder im Interesse des Ortsbildes
— einschlägig für die Eibenhecke und die Spalierbäume).

### Zweiter Fund: § 178 EG ZGB ist im Begleitbeschrieb zu streng wiedergegeben

Der Begleitbeschrieb sagt: «höhere Einfriedungen sind **um das Mass der Mehrhöhe**
zurückzusetzen. Für eine Höhe von 1,8 m genügte demnach eine Rückversetzung von 0,3 m.»

Amtlicher Wortlaut (§ 178 EG ZGB, zitiert im Merkblatt der Gemeinde):

> «Wenn die Einfriedigungen aber jene Höhe überschreiten, so kann der Nachbar begehren, dass
> sie je **um die Hälfte der Höhe über 150 cm** von der Grenze entfernt werden.»

Verlangt ist die **halbe** Mehrhöhe. Bei 1,8 m sind das **0,15 m**, nicht 0,30 m. Der Fehler
geht zulasten des eigenen Arguments (er behauptet eine strengere Pflicht als das Gesetz) und
ändert am Ergebnis nichts — die Mauern stehen 3,5 m zurück. Für die Präzision der Eingabe
gehört er trotzdem korrigiert.

### Dritter Fund: Art. 31 der alten BZO wird durch die Revision aufgehoben

Die Synopse führt zu «Art. 31 Lärmempfindlichkeitsstufen» in der Spalte der Revision:
**«Aufheben. Siehe Empfindlichkeitsstufen in der Zonenübersicht.»** Damit verschiebt sich die
Artikel-Nummerierung — und die Zitate «Art. 31 Abs. 1 revBZO» (Grünflächenziffer) und
«Art. 50 Abs. 1 lit. b revBZO» (Vorgarten) im Begleitbeschrieb sind **gegen die alte BZO nicht
prüfbar**, weil sie sich auf die neue Zählung beziehen. Die Zonentabelle der Synopse bestätigt
immerhin die **Grünflächenziffer 40 %** für die betroffenen Zonen. Der genaue revBZO-Artikel
ist am Synopsen-Volltext noch zu verifizieren (Batch T1).

---

## Triage der 243 Dateien

### A · Gehört ins Wiki (verallgemeinerbar, hoher Wert)

| Datei / Gruppe | Warum | Ziel |
|---|---|---|
| `_BZO-Revision 2025/20250416-BZO-Vorschriften-Synopse.pdf` (51 S., textlesbar) | Alt-/Neu-Gegenüberstellung der **ganzen** BZO Thalwil. Schliesst die grösste belegte Lücke: die KB hat nur die alte BZO. | neuer `raw/`-Volltext + [[zonenkonformitaet]], [[nutzungsziffern]] |
| `_BZO-Revision 2025/20250905-Auslegung-negative-Vorwirkung-BZO-Artikel.pdf` (51 S., textlesbar) | Auslegung, ab wann welche Fassung gilt. Querschnittsthema für **jedes** Projekt in Revisionsgemeinden. | neuer Wiki-Artikel [[negative-vorwirkung-und-bzo-revision]] |
| `00 BZO Merkbaltt Wegleitungen/Merkblatt_Abstaende_Pflanzen_Mauern_und_Einfriedungen.pdf` | Trägt §§ 169/170/174/177/**178** EG ZGB und die Strassenabstände im Wortlaut. Grundlage des fehlenden Wiki-Artikels. **Achtung: StrAV-Teil veraltet.** | neuer Wiki-Artikel [[umgebungsgestaltung-und-einfriedungen]] |
| `00 BZO Merkbaltt Wegleitungen/Merkblatt_Qualitative_Beurteilungskiterien_fur_Bauobjekte.pdf` | Wie die Gemeinde **§ 238 PBG** handhabt — die Einordnung ist die Verteidigungslinie schlechthin. | [[grundlagen-planungs-baurecht]] + neuer Einordnungs-Abschnitt |
| `00 BZO Merkbaltt Wegleitungen/Merkblatt_LEK_Naturnahe_Umgebungsgestaltung.pdf` (3,2 MB) | Vorgarten, Grünanteil, ökologische Anforderungen — direkt § 238a PBG. | [[umgebungsgestaltung-und-einfriedungen]] |
| `00 BZO Merkbaltt Wegleitungen/Merkblatt_uber_Gebaudehohen_Messweise_Neu-_und_Umbauten.pdf` | Kommunale Messweise-Praxis zur Gebäudehöhe. | [[abstaende-und-hoehen]] |
| `00 BZO Merkbaltt Wegleitungen/Wegleitung_BZO_Thalwil_Nachfuhrung_2020_PBK_20201119.pdf` | Die amtliche Wegleitung zur BZO-Nachführung. | [[zonenkonformitaet]] |
| `_SR_700.1_Bau-_und_Zonenordnung_BZO.pdf` (10,3 MB, 19 Einzelseiten daneben) | Die **vollständige geltende BZO Thalwil** als PDF. Die KB hat sie bisher nur als `recht-ch.mjs`-Extrakt. | Abgleich mit `raw/260607_amtlich_zh_bzo-thalwil.md` |
| `Vorach/…/ivhb_leitfaden_01032017.pdf` + `Leitfaden_Harmonisierung-Baubegriffe…` | **IVHB** — die interkantonale Baubegriffs-Harmonisierung. Erklärt die Doppelfassungen (Haupt- vs. Anhangteil PBG), die die KB seit Run 31 mühsam auseinanderhält. | [[abstaende-und-hoehen]], [[gebaeudearten-und-abstandssystem]] |
| `13 Verfügungen/WDV_700.211_Waermedaemmvorschriften_8.6.22_oBgr.pdf` | Die **Wärmedämmvorschriften** — genau der Erlass, der laut BBV-I-Anhang Ziff. 1.11 als einzige verbindliche Verordnungsbestimmung übrig blieb (Run 71). Schliesst den Kreis. | [[grundlagen-planungs-baurecht]], Cross-KB `energie` |
| `_Archiv/11 Brandschutz/Lignatec/Lignatec_brandschutz.pdf` (6,3 MB, 12 Einzelseiten) | Lignatec Brandschutz — die KB `normen` hat dazu einen **offenen Vorrang-Auftrag** (Verifikationsrunde Tab. 3/4). | **Cross-KB: `normen`**, nicht baurecht |

### B · Bedingt — erst nach Prüfung, meist Screenshots ohne Fundstelle

`02 BZO Thalwil/` Einzelthemen-Ordner (`Kniestock/`, `Massgebendes Terrain/`,
`Besonderes Gebäude/`, `Fahrzeugabstellplaetze/`, `Fensterflaechen/`, `Spiel und Ruheflaeche/`,
`Baugespann/`, `Sonderbauvorschrift W3/`, `01 Grundmasse/`) sowie `03 PBG Zuerich/`
(Vordach § 260 Abs. 3/4, anrechenbares UG).

Diese sind überwiegend **Bildschirmfotos** — Belege dafür, *wo* etwas steht, aber kein
zitierfähiger Wortlaut. Regel: Fundstelle entnehmen, den Wortlaut am amtlichen Text
verifizieren. Wo die Einzelseite als PDF vorliegt (`SR_700.1_…-SeiteNN.pdf`), ist sie die
bessere Quelle. `Sonderbauvorschrift W3` und `Spiel und Ruheflaeche` sind für den laufenden
Fall unmittelbar einschlägig.

### C · Bleibt im Projekt, wird nur zitiert (Rule `projekt-ablage-stand`)

`01 Oereb-Auszug/` (Parzellen 6289 und 9568, 11 Dateien) · `Näherbaurecht NBR2008/` (7 Dateien,
SBB-Vereinbarung) · `Kataster Vermessung/` (Situationsplan, Bestellformulare, AGB) ·
`Zonenplan/` (projektbezogener Ausschnitt; der Zonenplan selbst ist öffentlich) ·
`14 Liegenschaftsentwaesserung/` · `IMG_0316.jpeg` · `Anrechenbares Untergeschoss
Abgrabunge/Hoi Stefan.docx` (Korrespondenz).

Das **Näherbaurecht** ist der Grenzfall: die Vereinbarung selbst ist projektgebunden, die
*Systematik* (§ 218 Abs. 2 / § 270 Abs. 3 PBG, Grundbuch-Anmerkung, SBB als Nachbar) gehört als
Muster ins Wiki — ohne Namen und Beträge.

### D · Prüfmaterial, NIE Quelle (Echo-Schutz)

| Datei | Status |
|---|---|
| `260703-Baurecht-Gartenmauern-Thalwil.pdf/.docx` | Claude-Erzeugnis |
| `260703-Baurecht-Besondere-Gebaeude-Thalwil.pdf/.docx` | Claude-Erzeugnis |
| `02 Umgebungsgestaltung/EINFRIEDUNGEN GARTENMAUER/20260609-Factsheet-02-Gartenmauer-Regularien-Bohlweg3.*` | Claude-Erzeugnis |
| `_Zusammenfassungen JANS/260609-Factsheet-01-BZO-Sonderbauvorschriften-Ausnuetzung-Bohlweg3.*` | Claude-Erzeugnis |

Diese vier werden gegen den amtlichen Wortlaut **gegengelesen** und gefundene Fehler gemeldet
— besonders dringlich, weil die StrAV-Zitate darin mit hoher Wahrscheinlichkeit denselben
Aufhebungsfehler tragen wie der Begleitbeschrieb. Nie als Beleg zitieren (Rule `jans-dna`,
eisernes Echo-Verbot).

### E · Gold (authentisch, Raphael selbst) — Fach- UND Stilquelle

`_Zusammenfassungen JANS/Bohlweg 3 Baurecht/200831 BR Grundstück.pdf` ·
`…/260302 BR Grundstück Thalwil.docx` · `250303 Sonderbauvorschriften.docx` ·
`_ref_Seehaldenstrasse/251117 BR Grundstück.docx` · `Vorach/…/251120 Vordachregelung.pdf` ·
`_BZO Revision Abstimmung.docx`.

Raphaels eigene baurechtliche Zusammenfassungen. Doppelt wertvoll: fachlich als
Anwendungsmuster, und für den Twin-Harness als authentischer Korpus (vor-Claude). **Cross-KB an
`twin` melden.**

### F · Anderswohin (nicht Baurecht)

`_Archiv/11 Brandschutz/` (32 Dateien) → Skill `brandschutz` + KB `normen` (Lignatec) ·
`_Archiv/12 PV Anlage/` (28 Dateien, u.a. Swissolar-Leitfaden 19,6 MB, Checkliste Thalwil,
Brandschutzmerkblatt PV) → KB `energie` · `_Archiv/07 Laermschutz/` (8 Dateien, Formular
Schallschutznachweis) → [[laermschutz-und-nichtionisierende-strahlung]] ·
`_Archiv/08 Naturgefahren/` (3 Screenshots) → [[planungsgrundlagen]] ·
`_Archiv/06 Merkblaetter Konstruktion/` (7 Dateien, Flachdach/Abdichtung/Geländer) → **kein
Baurecht**, sondern Konstruktionswissen · `_Archiv/05 VSS NORM/` → KB `normen`.

### G · Duplikate und Ablagerauschen (nicht aufnehmen)

Die `…-SeiteNN.pdf`-Serien neben dem Gesamt-PDF (BZO 19×, OEREB 9×, Lignatec 12×,
Brandschutzmerkblatt PV 15×, Näherbaurecht 4×) · `Merkblatt_Abstande.pdf` dreifach ·
`Merkblatt_uber_Gebaudehohen…` doppelt · `200831 BR Grundstück.pdf` doppelt ·
`https.docx` / `_https.docx` / `_link.docx` (Link-Ablagen) · `.indd`-Arbeitsdateien.

**Grössenordnung:** von 243 Dateien sind rund **90 Duplikate oder Einzelseiten**, ca. **60**
gehören in andere KBs, ca. **35** bleiben projektgebunden. Für das Baurecht-Wiki bleiben
**rund 25 substanzielle Dokumente** — davon 11 mit hohem Wert (Gruppe A).

---

## Was daraus folgt

**Sofort (betrifft ausgehende Post):** Der Begleitbeschrieb Bohlweg 3 sollte vor der Eingabe in
Ziffer 5.2 und 5.3 korrigiert werden — StrAV → VerkehrserschliessungsV (§§ 23/26/27/28), und
§ 178 EG ZGB auf die **halbe** Mehrhöhe. Beides stärkt die Argumentation, statt sie zu
schwächen.

**Für die KB:** Die Queue `training/KORPUS-QUEUE-thalwil-reglemente.md` bleibt gültig,
bekommt aber einen vorgezogenen Batch **T0**: den StrAV-Nachzug KB-weit sweepen
(`grep -rn "StrAV"`), inklusive Fassungsvermerk in
`wiki/baureife-und-erschliessung.md`.

**Methodische Lehre:** Die Leitplanke aus Run 71 («Verweisnormen zweiteilig prüfen») bekommt
eine dritte Ebene. Ein **Merkblatt der Gemeinde** ist eine Verwaltungsverordnung und altert
unabhängig vom Erlass, auf den es verweist — hier zitiert das amtliche Merkblatt seit sechs
Jahren eine aufgehobene Verordnung. Merkblätter sind Fundstellen-**Hinweise**, nie
Zitierquelle.
