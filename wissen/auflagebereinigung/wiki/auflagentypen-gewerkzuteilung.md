---
title: Auflagentypen → Gewerk-Zuteilung (BRA/HLK/SAN/ELE/FKO/ARC/BAU)
status: emerging
last_updated: 2026-07-22
sources: [Vorabzug Bauentscheid 2619-KISPI Stadt ZH, GRUNER-Adressliste 2619 PPTS KISPI, wissen/normen/destillate/sia-181-2006.md]
links: [[aemter-stadt-zuerich]], [[fristenlogik-bauentscheid-zh]], [[brandschutz-auflagen-qss]], [[vorgehen-auflagebereinigung]]
---

# Auflagentypen → Gewerk-Zuteilung

Kern der Auflagebereinigung: jede Auflage dem **zuständigen Gewerk/Planer** zuordnen,
damit klar ist, **wer** das Deliverable liefert. Die Gewerk-Kürzel kommen aus der
Projekt-Organisation (hier GRUNER-Adressliste 2619). Die folgende Matrix ist der
wiederverwendbare Zuteilungsschlüssel — sie wächst mit jedem Projekt.

## Gewerk-Kürzel (Projekt 2619-KISPI)

| Kürzel | Rolle | Person | Firma |
|---|---|---|---|
| BRA | Brandschutzexperte | Jens Ziegel | Gruner AG |
| HLK | Heizung-, Lüftung-, Kälteplaner | Cekdar Duran | Gruner AG |
| SAN | Sanitärplaner | Mustafa Eren | Gruner AG |
| SPR | Sprinklerplaner | Tim Harder | JOMOS Brandschutz AG |
| ELE | Elektroplaner | Yasarcan Cetin | Gruner AG |
| FKO | Fachkoordination | Benjamin Kübler | Gruner AG |
| ARC | Architekt | Raphael Jans | Raphael Jans Architekten ETH |
| BAU | Bauleitung | Albin Spahic | KISPI (Bauherr/Technischer Dienst) |

> Kürzel sind projektspezifisch — bei neuem Projekt aus der jeweiligen Adressliste
> ziehen. Die **Thema→Gewerk-Logik** unten ist dagegen projektübergreifend.

## Zuteilungs-Matrix (Thema → Gewerk)

| Auflagen-Thema | Stichworte im Entscheid | Gewerk |
|---|---|---|
| Brandschutzkonzept / -pläne, Brandabschnitte EI30, Schiebetüren, Innenwand-Details, Abschottungskonzept, QSS, Übereinstimmungserklärung | «Brandschutz», «EI30», «VKF-Anerkennung», «Feuerpolizei» | **BRA** |
| Lüftung/Klima: mech. Lüftung, Fortluft, Aussenluftansaugung, Lüftungskonzept, lufttechn. Anlagen, Energienachweis (EN-ZH/Lüftung/Kühlung), Abwärmenutzung, SIA 180/382 | «Lüftung», «Klima», «luft-/kältetechnisch», «Energie», «Abwärme» | **HLK** |
| Sprinkleranlage (SPA): Anpassung nach VKF-RL/GVZ-Weisung, Projektunterlagen an GVZ | «Sprinkler», «Sprinkleranlage», «SPA» | **SPR** (wenn eigener Sprinklerplaner; sonst SAN) |
| Sanitär-Leitungsabschottung, sanitäre Installationen | «Sanitär», «Leitung» | **SAN** |
| Brandmeldeanlage (BMA), Brandfallsteuerung (elektroseitig), Elektro-Leitungsabschottung | «Brandmeldeanlage», «BMA», «Steuerung», «Elektro» | **ELE** |
| Gewerkeübergreifende Koordination, Integral-Test-Organisation, Schnittstellen Brandschutzkonzept, Schottkonzept-Koordination | «Schnittstellen», «integrale Tests», «Koordination» | **FKO** |
| Abgeänderte Architektur-Pläne (Fluchtweg, Raumgeometrie), Hindernisfreiheit SIA 500, Schallschutz SIA 181 (Bau), Ausführung gemäss bewilligten Plänen | «abgeänderte Pläne», «hindernisfrei», «Schallschutz Bauteile», «bewilligte Pläne» | **ARC** |
| Bauinstallation/Bauzufahrt, öffentlicher Grund, Baumbestand, Luftreinhaltung Baustelle, Baubeginn-/Bauvollendungsmeldung, Bauabfall, org. Brandschutz Bauzeit | «vor Baubeginn … in Verbindung treten», «Baustelle», «Bauabfälle», «Baubeginn melden» | **BAU** |

## Querschnitt-Auflagen (mehrere Gewerke)

Manche Auflagen verlangen **Beiträge mehrerer Gewerke**, mit einer federführenden Stelle:

- **Abschottungen Leitungsdurchführungen** (RF1/EI30): Konzept → BRA; Beiträge HLK/SAN/ELE
  (je eigene Leitungen); Koordination → FKO.
- **Brandfallsteuerung / Integral-Test**: Konzept/Matrix → BRA; elektrische Umsetzung →
  ELE; Testorganisation + Protokoll → FKO.
- **Schallschutz SIA 181**: Bauteile → ARC/Bauphysik; haustechnische Anlagen → HLK.

In der Liste erhält jedes beitragende Gewerk eine **eigene Zeile** mit Vermerk
«via BRA / via FKO» (federführende Einreichung), siehe [[vorgehen-auflagebereinigung]].

### Schallschutz SIA 181 — Federführung im Detail (belegt, SIA 181:2006)

> **Fassungs-Vorbehalt (Cross-KB Run 12, 2026-07-22):** Die Ziff.-Referenzen unten (4.2/4.3/4.4,
> 2.2.3/2.2.4) beziehen sich auf **SIA 181:2006**. In der KB `normen` ist eine neuere Ausgabe
> **SIA 181:2020** geflaggt (Re-Destillat ausstehend); bei dessen Landung die Ziffern-Verweise
> gegenprüfen (mögliche Umnummerierung). Führend für den Norminhalt bleibt
> `wissen/normen/destillate/sia-181-2006`.

SIA 181 selbst weist die Federführung **keinem Gewerk organisatorisch zu** — die Norm
regelt nur die bauakustischen Anforderungswerte und Nachweisformeln (Ziff. 4), nicht
Zuständigkeiten. Die Gewerk-Zuteilung ist deshalb JANS-Praxiskonvention, aber an der
Nachweis-Systematik der Norm ausgerichtet:

- **Bauteile (Luft-/Trittschall, Ziff. 4.2/4.3)**: betreffen Aussen-/Trennbauteile,
  Fassade, Geschossdecken, Wandaufbauten — Konstruktionsentscheide, die beim
  Architekten liegen (ARC); bei anspruchsvollen Fällen (Spezialanforderungen Ziff.
  2.2.3, Healthcare-Ruheräume) zieht ARC einen Bauphysiker als Fachplaner bei, der
  den rechnerischen Nachweis (Ziff. 4.2.2/4.3) führt.
- **Geräusche haustechnischer Anlagen (Ziff. 4.4)**: der Nachweis (Prognose +
  Kontrolle am Bauwerk) betrifft explizit die eingebauten Anlagen selbst — damit
  federführend beim Gewerk, das die Anlage liefert (HLK/SAN/ELE, je nach Anlage;
  nicht pauschal HLK).
- Ist die Anforderungsstufe im Werkvertrag nicht explizit festgelegt (Ziff. 2.2.4,
  siehe `wissen/normen/destillate/sia-181-2006.md`), gilt keine Stufe automatisch als
  vereinbart — vor der Devisierung klären, nicht annehmen.

Praxis-Faustregel: **kein eigener Bauphysiker beauftragt** → ARC führt den
Bauteil-Nachweis mit; **Bauphysiker im Projektteam** → er ist federführend für Ziff. 4
gesamthaft (Bauteile UND Koordination der Haustechnik-Anlagenwerte), die
Fachplaner liefern nur ihre anlagenspezifischen Werte zu.

## Heuristik bei Unsicherheit
1. Welche Fachnorm/VKF-RL nennt die Auflage? → bestimmt das Fachgewerk.
2. Geht es um abgeänderte/bewilligte **Pläne** ohne Fachgewerk-Bezug? → ARC.
3. Geht es um **Baustelle/öffentlichen Grund/Termine**? → BAU.
4. Geht es um **gewerkeübergreifende** Tests/Schnittstellen? → FKO.
Bleibt es unklar → in [[QUESTIONS]] eintragen und im Projekt klären, nicht raten.
