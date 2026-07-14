---
title: ÖREB-Kataster-System Kt. ZH — Rechtsgrundlagen, Themen-Register, Vorwirkung
status: established
last_updated: 2026-07-14
sources: [Kt. ZH ARE Abt. Geoinformation, "Weisung ÖREB-Kataster Betrieb und Nachführung der Daten", Version 3, 01.12.2022 (73 S.), vollständig ausgewertet Run 44+46]
links: [[kartenportale-oereb-egrid-bezug]], [[kartenportale-geoportale-uebersicht]], [[kartenportale-zonenplan-zh]], [[kartenportale-baulinien-abstandslinien-zh]], [[kartenportale-naturgefahren-objektschutz]], [[kartenportale-denkmalschutz-isos]], [[recht-norm-quellenlandkarte]]
---

# ÖREB-Kataster-System Kt. ZH — Rechtsgrundlagen, Themen-Register, Vorwirkung

Quelle: amtliche Weisung des Kt. ZH (Baudirektion, Amt für Raumentwicklung, Abteilung
Geoinformation), Kataster, Stampfenbachstrasse 12, 8090 Zürich — «Weisung ÖREB-Kataster
Betrieb und Nachführung der Daten», Version 3, 1. Dezember 2022 (ersetzt Version 2 vom
5. April 2017). Regelt Betrieb, Organisation und Nachführungsprozesse des Katasters der
öffentlich-rechtlichen Eigentumsbeschränkungen (ÖREB-Kataster) Kt. ZH. Diese Weisung ist der
**rechtlich-organisatorische Unterbau** hinter allen im Connector `geo-zh.mjs` verwendeten
`ogd-0xxx`-Layer-IDs — sie erklärt, WAS die Nummern bedeuten, WER sie pflegt und WARUM ein
`revision_laeuft`-Flag rechtliche Wirkung hat, bevor es in Kraft ist.

## 1. Amtliches ID-Register aller ÖREB-Geobasisdaten Kt. ZH

Jede ÖREB-relevante Geobasisdatenart hat eine amtliche ID (gemäss GeoIV Anhang 1/KGeoIV
Anhang 1+2) — dieselben IDs, die in der OGD-WFS-Layer-Bezeichnung und in den ÖREB-PDF-Auszügen
wiederkehren. Bundesrecht in Zuständigkeit Kanton/Gemeinde:

| ID | Bezeichnung | Rechtsgrundlage | Zuständige Stelle | Publikation Änderungen |
|---|---|---|---|---|
| 73A | Nutzungsplanung: kantonale/regionale Nutzungszonen | SR 700 Art. 14/26, LS 700.1 §§ 2, 36–44a | ARE | Ja |
| 73B | Nutzungsplanung: kommunale Bau- und Zonenordnung | SR 700 Art. 14/26, LS 700.1 §§ 2, 45–78, 88, 89 | Gemeinden (ARE) | Ja |
| 76 | Planungszonen | SR 700 Art. 27, LS 700.1 § 346 | ARE | Ja |
| 116 | Kataster der belasteten Standorte | SR 814.01 Art. 32c, SR 814.680 Art. 5, LS 712.1 § 30 | AWEL | Nein |
| 130 | Gewässerschutzbereiche | SR 814.20 Art. 19, SR 814.201 Art. 29/30 Anh. 4, LS 711.1 § 3, LS 711.11 §§ 2/3 | AWEL | Ja |
| 131 | Grundwasserschutzzonen | dito | Gemeinden (AWEL) | Ja |
| 132 | Grundwasserschutzareale | SR 814.20 Art. 19, LS 711.1 §§ 3/34/37 | AWEL | Ja |
| 145 | Lärmempfindlichkeitsstufen | SR 814.41 Art. 43, LS 700.21 § 14 | Gemeinden (ARE) | Ja |
| 157 | Statische Waldgrenzen | SR 921.0 Art. 10 Abs. 2/13, SR 921.01 Art. 12a | ALN | Ja |
| 159 | Waldabstandslinien | SR 921.0 Art. 17, LS 700.1 §§ 66/262 | Gemeinden (ARE) | Ja |
| 160 | Waldreservate | SR 921.0 Art. 20 Abs. 4, SR 921.01 Art. 41, LS 921.11 § 9 | ALN | Nein |
| 190 | Gewässerraum | SR 814.20 Art. 36a, SR 814.201 Art. 41a/41b, LS 724.112 § 15 | AWEL | Ja |

Kantonales Recht (Kt. ZH):

| ID | Bezeichnung | Rechtsgrundlage | Zuständige Stelle | Publikation |
|---|---|---|---|---|
| 45-ZH | Gestaltungspläne kantonal und regional | LS 700.1 §§ 44a, 84 Abs. 2 | ARE | Ja |
| 46-ZH | Sonderbauvorschriften und Gestaltungspläne | LS 700.1 §§ 84/85/88/89 | Gemeinden (ARE) | Ja |
| 49-ZH | Gewässerabstandslinien | LS 700.1 § 67 | Gemeinden (ARE) | Ja |
| 50-ZH | Baulinien kantonale Nutzungsplanung (ohne Zürich/Winterthur) | LS 700.1 §§ 96–105/108/110/110a | AFM/ARE/AWEL | Ja |
| 51-ZH | Baulinien kantonale Nutzungsplanung (nur Zürich/Winterthur) | dito | Gemeinden (AFM/ARE/AWEL)¹ | Ja |
| 52-ZH | Baulinien kommunale Nutzungsplanung | LS 700.1 §§ 96–105/108–110a | Gemeinden (AFM/ARE/AWEL)² | Ja |
| 56-ZH | Ski- und Schlittellinien | LS 700.1 §§ 111–113 | Gemeinden (ARE) | Ja |
| 59-ZH | Quartierplan | LS 700.1 §§ 123–177 | Gemeinden (ARE) | Ja |

¹/² Zuständigkeit je nach Art der Baulinie (Verkehr, Betrieb, Versorgung, Gewässer) bei der
entsprechenden Stelle.

**Anwendung:** Diese Tabelle ist das amtliche Nachschlagewerk für JEDE `ogd-0xxx`-Layer-ID, die
in den bereits dokumentierten Connector-Features auftaucht (Zonenplan/BMZ/AZ →
[[kartenportale-zonenplan-zh]] nutzt 73A/73B/145; Baulinien → [[kartenportale-baulinien-abstandslinien-zh]]
nutzt 157/159/49-ZH/50-52-ZH; Grundwasserschutz → [[kartenportale-naturgefahren-objektschutz]]
nutzt 130/131/132/190). Bisher waren diese IDs nur aus den Connector-Antworten bekannt — die
Weisung liefert erstmals die vollständige, amtliche Legende inkl. Rechtsgrundlage.

## 2. Statischer vs. dynamischer ÖREB-Auszug

Der statische Auszug (PDF, rechtliche Grundlage ÖREBKV SR 510.622.4 Art. 10/14) und der
dynamische Auszug (GIS-Browser) folgen denselben Vorschriften; beide zeigen sowohl
rechtskräftige Daten als auch geplante/laufende Änderungen — das Ziel ist schweizweit derselbe
Inhalt, dieselbe Darstellung, ein einheitliches Layout (Weisungen des Bundesamtes für
Landestopografie swisstopo: DATA-Extract, ÖREB-Webservice, Inhalt/Darstellung des statischen
Auszugs).

## 3. Vorwirkung — die Rechtsmechanik hinter dem `revision_laeuft`-Flag

**Zentraler Fund, direkt anschlussfähig an [[kartenportale-zonenplan-zh]] §A6** (Connector meldet
`revision_laeuft` + `grundnutzung_proj[]` bei laufenden BZO-Revisionen):

- **Positive Vorwirkung** (künftiges, noch nicht in Kraft stehendes Recht bereits anwenden) ist
  **grundsätzlich unzulässig**.
- **Negative Vorwirkung** ist **ausnahmsweise zulässig**, wenn eine ausdrückliche gesetzliche
  Grundlage besteht: bestehendes Recht wird vorerst nicht mehr angewendet, soweit es dem
  künftigen Recht widerspricht. **Praktische Folge:** eine laufende Änderung (z.B. eine hängige
  BZO-Revision) kann einem konkreten Bauvorhaben entgegenstehen, indem dieses — auch wenn es
  nach altem Recht möglich wäre — nicht bewilligt werden kann, wenn es nach neuem Recht nicht
  bewilligungsfähig wäre.
- Deshalb ist im ÖREB-Auszug bei geplanten/laufenden Änderungen auf die **Sperrwirkung**
  hinzuweisen: konkret bei planungsrechtlichen Festlegungen gemäss §§ 234/150/264/346 PBG.
  Nähere Auskunft zur rechtlichen Wirkung im Einzelfall: bei kommunalen Themen die zuständige
  Gemeinde, bei kantonalen Themen die zuständige kantonale Fachstelle.

**JANS-Anwendung:** Meldet der Connector bei einer Machbarkeitsstudie (Skill `machbarkeit`,
Studientyp A) eine laufende Zonen-/Baulinien-Revision, ist das keine reine Vorschau-Info,
sondern ein **möglicher Bewilligungs-Blocker schon vor Inkrafttreten** — im Bericht als
Sperrwirkungs-Risiko ausweisen, nicht nur als "künftig gilt X".

## 4. ÖREB-Kataster-System-Architektur (ÖREB-DMT)

Datenmanagementtool auf Basis Geomedia/Geospro (Firma Hexagon), seit Pilotphase 2014 (15
Gemeinden), flächendeckend 2016–2019 eingeführt, seit 2022 im Regelbetrieb. Drei Datenbanken:

- **Rechts-DB** (grün) — rechtskräftiger Zustand.
- **Projekt-DB** (gelb) — aktuelle Arbeitskopien einer Mutation, nicht öffentlich sichtbar.
- **Protokoll-DB** (rot) — publizierte Zwischenstände einer Mutation; im Kataster als
  **projektierte Daten** sichtbar, sobald ein definierter Rechtsstatus erreicht ist (z.B.
  "öffentliche Auflage", "Festsetzung", "Genehmigung"). Entscheid über den Publikationszeitpunkt
  liegt bei der zuständigen Stelle (Gemeinde bzw. kantonale Fachstelle).

**Generischer Nachführungsprozess (4 Phasen):**

1. Auftrag/Entwurf
2. Vorprüfung/öffentliche Auflage
3. Festsetzung/Genehmigung
4. Rechtsmittelverfahren → Übernahme in die Rechts-DB (In-Kraft-Setzung durch die zuständige
   Behörde, oder automatisch rechtskräftig nach Ablauf der Rechtsmittelfrist bzw. rechtskräftigem
   Gerichtsentscheid)

Mögliche Rechtsstatus-Werte im ÖREB-System: **Vorprüfung, Öffentliche Auflage, Festsetzung,
Genehmigung, In Kraft** (plus Zwischenzustand Rechtsmittel). Diese Werte tauchen wortgleich in
realen ÖREB-Auszügen auf (vgl. Benchmark Seuzach Kirchgasse 2 Kat. 2304,
`Aenderung_Bauordnung_Zonenplan`, Auflage 01.11.2024 — jetzt als Phase 2 "Öffentliche Auflage"
im generischen Modell einordenbar).

## 5. Themen-spezifischer Nachführungsprozess — welche Stelle initiiert was

Übersichtstabelle (Auszug, vollständige Matrix S. 17-18 der Weisung) — Spalte = Nachführungsprozess,
X = zuständiger Prozess für diese ID:

| ID | Thema | Nachführungsprozess | Zuständige Stelle |
|---|---|---|---|
| 73A | Kantonale Nutzungsplanung | Kantonale Nutzungszonen und Gestaltungspläne | ARE |
| 73B | Kommunale Nutzungsplanung | Kommunale Nutzungsplanung | Gemeinde (Gde) |
| 76 | Planungszonen | Planungszonen | ARE |
| 116 | Kataster der belasteten Standorte | Kataster belastete Standorte | AWEL |
| 131 | Grundwasserschutzzonen | Grundwasserschutzzonen | Gde |
| 132 | Grundwasserschutzareale | Grundwasserschutzareale | AWEL |
| 145 | Lärmempfindlichkeitsstufen | Kommunale Nutzungsplanung | Gde |
| 157 | Waldgrenzen | Waldgrenzen | ALN |
| 159 | Waldabstandslinien | Kommunale Nutzungsplanung | Gde |
| 160 | Waldreservate | Rodung/Ersatzaufforstung | ALN |
| 190 | Gewässerraum | Gewässerraum | AWEL |
| 45-ZH | Gestaltungspläne kant./regional | Kantonale Nutzungszonen und Gestaltungspläne | ARE |
| 46-ZH | Sonderbauvorschriften/Gestaltungspläne | Kommunale Nutzungsplanung | Gde |
| 49-ZH | Gewässerabstandslinien | Kommunale Nutzungsplanung | Gde |
| 50-ZH | Baulinien kant. Nutzungsplanung (ohne ZH/Winterthur) | Kantonale Verkehrsbaulinien | AFM |
| 51-ZH | Baulinien kant. Nutzungsplanung (nur ZH/Winterthur) | Kommunale Verkehrsbaulinien | Gde |
| 52-ZH | Baulinien kommunale Nutzungsplanung | Kommunale Verkehrsbaulinien | Gde |
| 59-ZH | Quartierplan | Quartierplan | Gde |

**Merkregel:** bei kommunalen Themen initiiert die **Gemeinde** die Mutation, die kantonale
Fachstelle kann zur Vorprüfung beigezogen werden und genehmigt die Festsetzung; bei kantonalen
Themen initiiert die **kantonale Fachstelle**, die Gemeinde wird nur zur Stellungnahme
beigezogen.

## 6. Betriebsorganisation (Rollen)

| Rolle | Aufgabe |
|---|---|
| Katasterleitung (KL) — ARE Abt. Geoinformation, Fachstelle Kataster | Betrieb, Qualitätssicherung, Weiterentwicklung des ÖREB-Katasters; Oberaufsicht (Art. 17 Abs. 2 ÖREBKV, § 7 KÖREBKV); technische Prüfung/Inkraftsetzung von Mutationen |
| Katasterbearbeiter-Organisationen (KBO) | Bearbeitung/Nachführung der ÖREB-Daten auf dem zentralen System: 2 kommunale (Winterthur, Zürich) + 5 private, mittels Submissionsverfahren bestimmt |
| ÖREB-Fachkommission (FK) | Nachfolgeorganisation des ÖREB-Projektausschusses (Pilotphase 2014–2019); seit Regelbetrieb 2022, geleitet von KL, Vertreter kantonale Fachstellen/KBO/Fachspezialisten |
| Kantonale Fachstellen (KFS) | Erstellung der kantonalen Geodatenmodelle (KGDM) auf Basis der Bundes-MGDM; zuständig für Nachführungsprozess bei kantonalen Themen; genehmigen Änderungen kommunaler Themen |
| Gemeinden | zuständige Stelle für kommunale Themen, initiieren den Nachführungsprozess |
| Fachspezialist/in | erarbeitet inhaltliche Grundlagen einer Änderung (z.B. Raumplaner/in, Hydrogeologe/in) |

Meldepflicht: alle beteiligten Stellen (KBO/KFS/Gemeinden/Fachspezialist) müssen die KL bei
Fehlern, fehlerhaften Datensätzen, Sicherheitslücken unverzüglich informieren.

## 7. Datenschutz

Die auf dem ÖREB-Kataster ausgeschalteten Dokumente dürfen keine schützenswerten Personendaten
enthalten (relevant bei der Frage, was in ÖREB-Docs verlinkte Rechtsdokumente enthalten dürfen).

## 8. Themen-Detailprozesse §5.2–5.8 — generisches Muster bestätigt, zwei echte Deltas

Kapitel 5.2–5.8 (S. 20–54) instanziieren je Thema (kommunale Nutzungsplanung NP01–27,
kantonale/regionale Nutzungszonen KNP01–15, überkommunale Gestaltungspläne KGP01–17,
Planungszonen PZ01–11, Quartierpläne QP01–49, kommunale Verkehrsbaulinien BL01–18, kantonale
Verkehrsbaulinien BK01–13) dasselbe generische 4–6-Phasen-Muster aus §4 (Auftrag/Entwurf →
Vorprüfung → Öffentliche Auflage → Festsetzung → Genehmigung → Inkraftsetzung), nur mit
thema-spezifischer Zuständigkeit (Gemeinde bei kommunalen Themen, ARE-RP/AFM bei kantonalen —
bereits in §5 abgebildet). **Kein Delta bei sechs von sieben Themen** — zwei echte Zusatzfunde:

- **Mehrwertausgleich (MWA) als Blocker vor der öffentlichen Auflage:** Bei kommunaler
  Nutzungsplanung (NP03/08–11) und überkommunalen Gestaltungsplänen (KGP04/06/07) muss VOR der
  öffentlichen Auflage geklärt werden, ob der Mehrwertausgleich betroffen ist; falls ja, wird im
  separaten Tool **eMehrwertausgleich** eine Mehrwertprognose berechnet und in den
  RPV-47-Planungsbericht integriert — ohne das ist keine öffentliche Auflage zulässig.
  **JANS-Anwendung:** bei einer Machbarkeitsstudie (Skill `machbarkeit` Typ A) mit laufender
  BZO-/Gestaltungsplan-Revision ist der Mehrwertausgleich ein Kostenfaktor der Bauherrschaft, der
  parallel zum Bewilligungsweg abgeklärt werden muss — nicht nur eine Formalie.
- **Quartierplan (QP01–49) ist der mit Abstand aufwendigste Prozess** (7 Phasen statt 4-6,
  bis QP49): zwei Grundeigentümerversammlungen (QP26/QP32) mit Einbringung/Behandlung von
  Wünschen und Begehren, **notarielle Prüfung der Neuordnung der Rechtsverhältnisse vor
  Festsetzung** (QP35, damit der spätere Grundbuch-Vollzug rechtlich umsetzbar ist), eigener
  Vermessungsplan (QP34) und grundbücherlicher Vollzug nach §§ 161 ff. PBG (QP49) — ein
  Quartierplan ist damit näher an einer Landumlegung als an einer reinen Zonenplan-Revision.

## 9. Statische Waldgrenzen (§5.9) — zwei Änderungswege, KFM in Doppelrolle

Zwei getrennte Prozessabläufe für dieselbe Layer-ID 157 (Waldgrenzen):

- **WG01–14 (Bauzonen-Erstfestsetzung):** läuft flächendeckend seit 2018 für Waldgrenzen
  ausserhalb der Bauzone (innerhalb der Bauzone bereits vor Jahren abgeschlossen). Sobald ALLE
  statischen Waldgrenzen ausserhalb Bauzone festgesetzt sind, entfällt dieser Prozess ganz —
  danach ist der **einzige** Änderungsweg noch die Rodungsbewilligung (RE-Prozess).
- **RE01–12 (Rodung/Ersatzaufforstung):** die einzige Änderung des Waldgrenzenverlaufs nach
  Abschluss der Erstfestsetzung. Wichtig für JANS: die reine **Rodungsbewilligung ändert die
  Waldgrenze noch NICHT** — erst die tatsächlich ausgeführte Rodung (Abnahmeprotokoll RE07/RE10,
  ggf. Jahre nach Erteilung) löst die ÖREB-Nachführung aus. Kommt das Bauprojekt nie zustande,
  bleibt die alte Waldgrenze bestehen, auch wenn eine Bewilligung vorliegt.
- **Rolle:** das ALN, Abteilung Wald, vertreten durch den/die **Kreisforstmeister/in (KFM)**,
  ist gleichzeitig zuständige Stelle UND kantonale Fachstelle (keine Aufsichtstrennung wie bei
  den Nutzungsplanungsthemen) — der/die KFM führt Waldfeststellung, öffentliche Auflage,
  Einsprachebehandlung UND Festsetzungsantrag in Personalunion.
- **JANS-Anwendung:** meldet der Connector eine bewilligte, aber noch nicht abgenommene Rodung
  nahe der Parzelle, ist die Waldgrenze im ÖREB-Auszug noch die ALTE — das künftige Baufeld
  (Skill `machbarkeit`/`baulinien-analyst`) darf sich erst nach Vorliegen des Abnahmeprotokolls
  auf die neue, kleinere Waldabstandslinie stützen.

## 10. Grundwasserschutzzonen (§5.10) — Gemeinde zuständig, Auslöser meist die Wasserversorgung

Layer-ID 131 (bereits im Connector via K10-Rest/Run 33 getestet). Neu aus GW01–20:

- Formale Zuständigkeit liegt bei der **Gemeinde** (Initiative, öffentliche Auflage,
  Festsetzung), Prüfung/Genehmigung beim **AWEL**; **in der Praxis** ist der tatsächliche
  Antragsteller aber meist die **Wasserversorgung oder ein privater Fassungseigentümer**, der
  sich an die Gemeinde wendet — die Gemeinde tritt formal auf, initiiert aber selten aus
  eigenem Antrieb.
- Voraussetzung jeder Ausscheidung/Änderung ist ein **hydrogeologisches Gutachten** (GW02),
  erstellt durch einen Fachspezialisten (Hydrogeologe).
- **Provisorische «Zonen S» (§5.10.5):** stellt das AWEL fest, dass eine neue Trinkwasserfassung
  der Schutzzonenpflicht unterliegt, wird sofort eine projektierte «Zone S» in den ÖREB-Kataster
  aufgenommen — noch bevor Plan/Reglement vorliegen (Status «Entwurf»/«Vorprüfung»). Für JANS
  heisst das: ein Grundstück kann kurzfristig und ohne öffentliche Auflage in eine vorsorgliche
  Schutzzone fallen, bevor die reguläre Ausscheidung überhaupt begonnen hat.

## 11. Grundwasserschutzareale (§5.11) — kantonal statt kommunal, sonst identisches Muster

Layer-ID 132: im Unterschied zur Schutzzone (§5.10, Gemeinde zuständig) ist beim **Areal** das
**AWEL selbst zuständige Stelle UND kantonale Fachstelle** (GA01–12) — die Gemeinde kommt im
Ablaufschema gar nicht vor. Ablauf sonst analog (hydrogeologisches Gutachten, Vorprüfung,
Anhörung der betroffenen Gemeinden/Wasserversorgungen, Festsetzung durch die Baudirektion,
30-tägige Auflage mit Rechtsmittelfrist, erste Rekursinstanz Baurekursgericht).

## 12. Kataster der belasteten Standorte (§5.12) — Nachführung ohne Vorprüfungs-Phase

Layer-ID 116 (KbS): einziges der acht Themen in Kap. 5 **ohne** eigene Vorprüfungs-Phase
(«bei der Nachführung KbS gibt es keinen mit Vorprüfung vergleichbaren Prozess», S. 73).
Auslöser ist immer ein konkreter Anlassfall: Bauvorhaben an einem belasteten Standort, eine
durchgeführte Untersuchung oder eine abgeschlossene Altlasten-Sanierung — die Bauherrschaft
oder der Standortinhaber reicht den altlasten-/abfallrechtlichen Bericht direkt beim **AWEL,
Sektion Altlasten** ein (KBS01–09). Rechtsmittelfrist 30 Tage ab Zustellung der Verfügung an
den Standortinhaber; danach Bereitstellung des rechtsgültigen Zustands über PostGIS/WebService.
**JANS-Anwendung:** bei `ankaufspruefung` ist ein laufendes KbS-Nachführungsverfahren (Status
«provisorisch» im ÖREB) ein Signal, dass sich der Altlasten-Status der Parzelle gerade ändert —
den aktuellen Verfahrensstand beim AWEL abfragen, nicht nur den zuletzt publizierten KbS-Eintrag
werten.

## Herkunft dieses Funds

Datei `PL - 01 Kartenportale/Grundstueckkataster/Allgemein/oereb_weisung_v3.pdf` — bisher nie
ausgewertet vor Trainingslauf 44 (2026-07-14), obwohl der übergeordnete Ordner
`Grundstueckkataster/` seit K1 als Benchmark-Quelle für DXF-/OEREB-Beispiele diente. Run 44
deckte S. 1–19 ab (ID-Register, Vorwirkung, Systemarchitektur); **Run 46 (2026-07-14) hat die
Weisung mit §8–§12 (S. 20–73, alle acht Themen-Detailprozesse) vollständig abgeschlossen.** Die
zwei begleitenden Word-Dateien im selben Ordner (`241122_`/`251122_Vorgehen Datenbezug…`,
`Bezugsorte Amtliche Vermessung Grundstueckkataster.docx`) bleiben **bestätigte Nicht-Funde**
(Delta zu A4/K4).

## Offen

Keine offenen Kapitel mehr in dieser Quelle — die Weisung V3 (73 S.) ist vollständig
ausgewertet (Run 44 + Run 46). Anschlussfähige offene Fragen liegen jetzt bei den referenzierten
Layer-Artikeln selbst (z.B. ZH-Endpunkt Grundwasserschutzzonen-Layer produktiv nutzen,
[[kartenportale-naturgefahren-objektschutz]] §6/§8).
