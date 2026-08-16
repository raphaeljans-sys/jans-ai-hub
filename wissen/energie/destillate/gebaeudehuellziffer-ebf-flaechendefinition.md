---
quelle:
  - PL - 02_Recht_Norm/06_Richtlinien/Minergie/Nuetzliche Unterlagen/Gebaeudehuellziffer/Gebaeudeform.pdf
  - PL - 02_Recht_Norm/06_Richtlinien/Minergie/Nuetzliche Unterlagen/Gebaeudehuellziffer/Flächendefinition.pdf
  - PL - 02_Recht_Norm/06_Richtlinien/Minergie/Merkblaetter/Definition Energiebezugsflaeche.pdf
herausgeber:
  - "Gebaeudeform.pdf: EnergieSchweiz (Infoblatt EnerCoach), Co-Branding Energiestadt / European Energy Award (beide Logos im Kopf, kein separater Textvermerk)"
  - "Flächendefinition.pdf: RHYMO Immobilien AG, St. Gallerstrasse 23, CH-9470 Buchs (private Immobilienfirma, keine Normstelle)"
  - "Definition Energiebezugsflaeche.pdf: BaFa, Zusammenschluss der Bauten-Forschungsanstalten EAWAG/EMPA/WSL/PSI"
ausgabe:
  - "Gebaeudeform.pdf: Version 20170908_AG, rechnet mit SIA 380/1:2009 und SIA 2031:2008"
  - "Flächendefinition.pdf: keine Datums- oder Versionsangabe im Dokument selbst"
  - "Definition Energiebezugsflaeche.pdf: EBF_DEFINITIONHP, Seite 1 von 1, 10.06.2005/TSt; zitiert wörtlich «Norm SIA 180/4 Energiekennzahl» (Wortlaut des Dokuments — siehe Offene Punkte)"
gelesen: "alle drei vollständig (Gebaeudeform.pdf 1 Seite, Flächendefinition.pdf 2 Seiten, Definition Energiebezugsflaeche.pdf 1 Seite)"
datenstand: "2005–2017, teils veraltete Normfassung ⚠ (Gebaeudeform.pdf rechnet mit der SIA-380/1:2009-Klimareferenz 8,5 °C / 8 % pro K; im Kt. ZH gilt heute SIA 380/1:2016 mit 9,4 °C / 6 % pro K, siehe [[muken-2025-anhang-1-3-uwert-heizwaermebedarf]])"
status: emerging
last_updated: 2026-08-03
links:
  - [[muken-2025-anhang-1-3-uwert-heizwaermebedarf]]
  - [[sia-380-1-heizwaermebedarf-berechnung]]
  - [[bauphysik-heizwaermebedarf-kennwerte]]
  - [[sia-380-1-2016-aenderungen-gegenueber-2009]]
---

# Destillat — Gebäudehüllziffer, Energiebezugsfläche und Flächendefinitionen

## Das Wichtigste in einem Satz

Die Gebäudehüllziffer Ath/AE (Verhältnis Gebäudehüllfläche zu Energiebezugsfläche) fliesst
direkt und mit grossem Gewicht in den zulässigen Heizwärmebedarf-Grenzwert ein — eine
kompaktere Gebäudeform (kleineres Ath/AE) senkt den erlaubten Grenzwert Qh,li, verlangt also
tendenziell weniger Aufwand an der Hülle, während die Energiebezugsfläche EBF selbst über die
Geschossflächen (beheizt/klimatisiert, brutto nach SIA 416) ermittelt wird und in ihrer Raum-
Zugehörigkeit klar abgegrenzt ist (was zählt, was nicht).

## 1. Gebäudehüllziffer Ath/AE

- **Definition (Gebaeudeform.pdf):** «Die Gebäudehüllzahl Ath/AE entspricht dem Verhältnis
  zwischen der Gebäudehüllfläche Ath und der Energiebezugsfläche AE. Sie wird beeinflusst durch
  die Grösse des Gebäudes sowie durch die Gebäudeform.»
- **Formel (Gebaeudeform.pdf, Grenz-/Ziel-/Standardwerte nach SIA 380/1:2009 und SIA
  2031:2008):**
  Qh,li = (Qh,li0 + ΔQh,li · (Ath/AE)) · (1 − ((θea − 8,5) · 0,08))
  mit Qh,li Heizwärmebedarf-Grenzwert, Qh,li0 Basiswert, ΔQh,li Steigungsfaktor, Ath/AE
  Gebäudehüllzahl, θea mittlere Jahres-Aussenlufttemperatur der massgebenden Klimastation.
  Die Grenzwerte gelten für θea = 8,5 °C und werden um 8 % pro K höherer bzw. tieferer
  Jahresmitteltemperatur reduziert bzw. erhöht.
  ⚠ Diese Klimareferenz (8,5 °C / 8 % pro K) ist die **Vorgänger-Ausgabe SIA 380/1:2009**.
  **SIA 380/1:2016 führt 9,4 °C und 6 % pro K** — belegt im Volldestillat
  `wissen/normen/destillate/sia-380-1-2016.md` (Ziff. dort Z. 122 und 227: «neu 9,4 °C statt
  8,5 °C», Temperaturkorrektur «neu 6 %/K»). *(Berichtigt Wissens-Chef Run 23, 03.08.2026: der
  frühere Satz schrieb die Zahlen der Ausgabe 2016 zu und war zudem grammatikalisch defekt.)*
  Die KB führt 9,4 °C / 6 % pro K bereits als aktuelle Basis (siehe
  [[muken-2025-anhang-1-3-uwert-heizwaermebedarf]] und Abschnitt "Offene Punkte" unten) — die
  Grundstruktur der Formel (Basiswert + Steigungsfaktor × Gebäudehüllzahl) ist unverändert
  aktuell, die Klimazahlen im vorliegenden Infoblatt sind die Vorgänger-Ausgabe.
- **Grössenordnung des Einflusses:** «Qh,li0 und ΔQh,li sind Werte ähnlicher Grössenordnungen
  (+/-30 % je nach Gebäudekategorie), was den grossen Einfluss der Gebäudehüllzahl auf die
  Bezugsgrössen aufzeigt» (Gebaeudeform.pdf).
- **Gebäudeform-Kategorien** (Seitenverhältnis + Verwinkelung, als Einflussgrössen auf Ath/AE):
  - Kompakt: Seitenverhältnis kleiner 1:2, wenig Verwinkelungen.
  - Mittel: Seitenverhältnis kleiner 1:3, einige Verwinkelungen.
  - Komplex: Seitenverhältnis grösser 1:3, grosse Verwinkelungen.

## 2. Energiebezugsfläche (EBF) — Ermittlung und Raum-Zugehörigkeit

Quelle: Definition Energiebezugsflaeche.pdf (BaFa, 10.06.2005), Auszug wörtlich zitiert als
«Norm SIA 180/4 Energiekennzahl» (siehe Offene Punkte zur Normnummer).

- **Grunddefinition:** «Die Energiebezugsfläche EBF ist die Summe aller ober- und
  unterirdischen Geschossflächen, für deren Nutzung ein Beheizen oder Klimatisieren notwendig
  ist.» Sie wird brutto berechnet, das heisst aus den äusseren Abmessungen einschliesslich
  begrenzender Wände und Brüstungen, nach der Empfehlung SIA 416.
- **Verhältnis zur BGF:** Bei reinen Wohnbauten entspricht die EBF im Normalfall der für die
  Ausnützungsziffer verwendeten Bruttogeschossfläche BGF. Ist nur die Nettogeschossfläche NGF
  bekannt, wird die EBF «genügend genau durch eine Erhöhung der NGF um 10 % bis 15 %» erhalten.
- **Zur EBF gehörende Räume** (auch wenn unbeheizt, sofern Beheizen dort sonst üblich wäre):
  Treppenhäuser und Korridore, falls gegen die Aussenluft abgeschlossen; Schlafzimmer (wie alle
  übrigen Wohnräume).
- **Nicht zur EBF gehörende Räume:** Waschküchen und Trockenräume; Heizräume und
  Maschinenräume für Lift-, Belüftungs- und Klimaanlagen; Räume für Brennstofflagerung (Heizöl,
  Kohle usw.); Garagen; Einstellräume für Velos, Kinderwagen und dergleichen; Abstellräume im
  Dach- und Untergeschoss oder unter der Dachschräge von Wohngeschossen; nach aussen offene
  Flächen wie Laubengänge, Terrassen, Balkone, Durchgänge und dergleichen.
  ⚠ **Möglicher Rückausnahme-Vorbehalt zu den Abstellräumen** (gesetzt 16.08.2026, Wissens-Chef
  Run 34): `[[sia-416-1-2007]]` Ziff. 3.2.2 führt eine flächenabhängige Gegenregel — kleine
  Abstellräume und Ver-/Entsorgungsschächte unter 10 m², die von AE-Flächen oder der
  thermischen Hülle umschlossen sind, zählen dort **doch** zur AE. Das ist **kein belegter
  Widerspruch**, sondern ein Prüfauftrag aus zwei Gründen: die Liste hier stammt aus dem
  BaFa-Merkblatt von 2005 (Bezug SIA 180/4), die Gegenregel aus der Nachfolgenorm — und das
  Ziel-Destillat trägt `status: speculative` und ist nach Rule `normen-referenz` Ziff. 1b eine
  **Warnkarte, keine Zitierquelle**. Vor jeder Verwendung am Original SIA 416/1:2007 nachlesen.
- **Korrekturfaktoren in speziellen Fällen** (komplexe Gebäudenutzungstypen, gemischte
  Nutzung): Teilzeit-Korrekturfaktor fz, Temperatur-Korrekturfaktor ft, Raumhöhen-
  Korrekturfaktor fh. Bei ganzjährig belegten reinen Wohnbauten sowie bei Schulen,
  Verwaltungs- und Bürogebäuden soll grundsätzlich auf Korrekturfaktoren verzichtet werden;
  Ausnahmen bei saisonaler Nutzung oder grossem Anteil bloss temperierter Räume (Archive,
  Lager).
- **Ergänzung zur Berechnung im Planon** (BaFa-intern, nicht normativ, aber als Praxisbeleg
  belassen): im Planon-System sind detaillierte Nettogeschossflächen pro Raum erfasst, dazu
  generell 8 % Zuschlag für die Konstruktionsfläche (Wert für Gebäude mit relativ grossen
  Räumen). Bei Räumen über 3 m Höhe wird der Korrekturfaktor nach der Formel h/3 angepasst —
  eine voll beheizte Halle von 9 m Höhe geht mit dem 3-Fachen der Grundfläche in die EBF ein.

## 3. Flächendefinitionen nach SIA 416 (Erläuterung RHYMO Immobilien AG)

Diese Erläuterung stammt von einer Immobilienfirma (nicht vom SIA selbst) und dient dort der
Verkaufs- und Mietdokumentation — als Begriffshilfe zur Norm SIA 416 brauchbar, aber keine
Primärquelle der Norm.

- **GF (Geschossfläche):** allseitig umschlossene und überdeckte Grundrissfläche inklusive
  Konstruktionsfläche.
- **NGF (Nettogeschossfläche):** Teil der GF zwischen den umschliessenden oder innenliegenden
  Konstruktionsbauteilen.
- **KF (Konstruktionsfläche):** Grundrissfläche der innerhalb der GF liegenden umschliessenden
  und innenliegenden Konstruktionsbauteile wie Aussen- und Innenwände, Stützen und
  Brüstungen; unterteilt in KFT (tragend) und KFN (nichttragend).
- **NF (Nutzfläche):** Teil der NGF, der der Zweckbestimmung und Nutzung des Gebäudes im
  weiteren Sinn dient; unterteilt in HNF (Hauptnutzfläche, Zweckbestimmung im engeren Sinn) und
  NNF (Nebennutzfläche, ergänzt die HNF zur Nutzfläche, je nach Zweckbestimmung zu definieren).
- **VF (Verkehrsfläche):** Teil der NGF, der ausschliesslich der Erschliessung dient.
- **FF (Funktionsfläche):** Teil der NGF, der für haustechnische Anlagen zur Verfügung steht.
- **Aussen-Pendants** (in der Grafik zusätzlich ausgewiesen, ohne separaten Erläuterungstext):
  AKFT/AKFN (Aussen-Konstruktionsfläche tragend/nichttragend) und Aussen-Nutzfläche ANF.

### Vermarktungsbegriffe (Verkauf/Vermietung), abweichend von der reinen SIA-416-Gliederung

- **Wohnfläche** (wie in Verkaufs-/Mietdokumentationen meist verwendet) = Hauptnutzfläche der
  Wohnung, exklusive wohnungsinterner Konstruktionsfläche (tragend und nichttragend),
  exklusive wohnungsinterner Funktionsfläche (z. B. Schächte), exklusive wohnungsinterner
  Nebennutzflächen (z. B. Reduit).
- **Nutzfläche** (Vermarktungsbegriff) = Nebennutzfläche (Reduit und Keller der Wohnungen /
  Keller, Reserve- und Technikräume der Reiheneinfamilienhäuser).
- **Nutzfläche nach SIA 416** = Hauptnutzfläche + Nebennutzfläche = Summe der Raumbereiche.
- **Raumbereiche:** Flächen einzelner Räume (Zimmer, Bad usw.), definiert durch die sie
  begrenzenden Wände (oder Abschnitte).
- **Aussenfläche:** die begehbare Aussenfläche (Sitzplatz, Loggia, Dachterrasse) wird separat
  ausgewiesen, nicht in die Wohn-/Nutzfläche eingerechnet.

## Bauherren-Transfer

- Die Gebäudehüllziffer ist der Hebel, mit dem die **Gebäudeform** direkt auf den zulässigen
  Energiekennwert wirkt: ein kompakter Baukörper (Seitenverhältnis knapp, wenig Verwinkelungen)
  hat ein kleineres Ath/AE und damit einen strengeren, aber leichter erreichbaren Grenzwert —
  weniger Aussenfläche pro beheizter Fläche bedeutet weniger Wärmeverlustfläche UND weniger
  teure Fassadenkonstruktion/-dämmung pro Quadratmeter Nutzfläche. Ein verwinkelter, gegliederter
  Baukörper mit grossem Ath/AE bekommt zwar einen grosszügigeren Grenzwert zugestanden, muss
  aber real mehr Hüllfläche dämmen und mehr Wärmeverlust kompensieren — der gestalterische
  Mehraufwand einer aufwendigen Kubatur hat damit auch eine energetische und eine
  Kostenkonsequenz an der Fassade, nicht nur eine architektonische.
- Für die Grobkosten-/Machbarkeitseinschätzung lohnt sich ein früher Blick auf Ath/AE parallel
  zur Volumenstudie: ein Volumen mit vielen Vor-/Rücksprüngen erhöht sowohl die BKP-2-Kosten
  (mehr Fassadenfläche) als auch den Energieaufwand, bei gleicher Energiebezugsfläche.
- Bei der EBF-Ermittlung in der frühen Phase (nur NGF bekannt, noch keine Detailplanung):
  Belegter Faustwert NGF × 1,10 bis 1,15 für die EBF — nützlich für eine erste
  Grössenordnung, ersetzt aber die spätere raumweise Zuordnung (beheizt/unbeheizt) nicht.
- Was in die EBF fällt, entscheidet mit über die Grenzwert-Anforderung: unbeheizte
  Nebenräume (Garage, Veloraum, offene Laubengänge, Dachabstellraum) zählen NICHT zur EBF und
  müssen daher auch nicht gegen den Energiekennwert gerechnet werden — ihre Fläche darf aber
  auch nicht als «gratis warme Fläche» genutzt werden, ohne dass dies energetisch auffällt.

## Offene Punkte

- **Widerspruch/Alterung der Klimareferenz in Gebaeudeform.pdf:** Das Dokument (Version
  20170908_AG) rechnet mit SIA 380/1:2009 und SIA 2031:2008 (Referenz 8,5 °C, Korrektur 8 %
  pro K). Die KB führt in `[[muken-2025-anhang-1-3-uwert-heizwaermebedarf]]` bereits die
  aktuelle Basis SIA 380/1:2016 (Referenz 9,4 °C, Korrektur 6 % pro K) für den Kt.-ZH-Vollzug.
  Beide Quellen wurden hier bewusst NICHT geglättet — die Grundformel (Qh,li = Qh,li0 +
  ΔQh,li · Ath/AE) bleibt strukturell gültig, nur die Klimazahlen der 2009er-Ausgabe sind
  überholt. Ob und wie stark sich die konkreten Qh,li0-/ΔQh,li-Werte zwischen den Ausgaben
  unterscheiden, ist mit den drei vorliegenden PDFs nicht zu klären.
- **Normbezeichnung in Definition Energiebezugsflaeche.pdf — geklärt:** Das Dokument zitiert
  wörtlich «Auszug aus der Norm SIA 180/4 Energiekennzahl». **Diese Norm existiert:
  SIA 180/4:1982, zurückgezogen, Nachfolgenorm SIA 416/1:2007** — belegt im Normen-Register
  `wissen/normen/wiki/REGISTER.md` (Z. 140 und 335) und in
  `wissen/normen/destillate/sia-d0165-2000-kennzahlen-immobilienmanagement.md` (Z. 165, EBF-
  Definition ausdrücklich «Quelle SIA 180/4»). *(Berichtigt Wissens-Chef Run 23, 03.08.2026: hier
  stand «Eine SIA-Norm mit dieser Nummer ist nicht bekannt; naheliegend wäre ein Schreibfehler für
  SIA 380/4» — die Existenzverneinung und die Schreibfehler-Vermutung sind beide widerlegt.)*
  Der Wortlaut ist also quellentreu; **beim Zitat in einem Aussendokument ist statt der
  zurückgezogenen Norm die Nachfolgenorm zu nennen** (Rule `normen-referenz.md`,
  Ausgaben-Disziplin).
  **Nachtrag Wissens-Chef Run 33 (15.08.2026):** Die Nachfolgenorm liegt seit dem 15.08.2026
  als eigenes Destillat vor — `wissen/normen/destillate/sia-416-1-2007.md`
  (`[[sia-416-1-2007]]`), das die Energiebezugsfläche AE in Ziff. 3.2 normativ definiert; bis
  dahin verwies diese Stelle nur auf das REGISTER und ein Immobilienmanagement-Destillat.
  **Zwei Vorbehalte:** das Destillat trägt `status: speculative` und ist damit nach Rule
  `normen-referenz` Ziff. 1b eine Warnkarte, keine Zitierquelle; und die EBF-Grunddefinition
  weiter oben in diesem Destillat (Z. 70 ff.) ist **noch nicht** gegen Ziff. 3.2 abgeglichen —
  das ist ein offener Punkt, keine bestätigte Übereinstimmung.
- **Alter der EBF-Quelle:** Definition Energiebezugsflaeche.pdf datiert vom 10.06.2005 und
  damit deutlich vor SIA 380/1:2009 und :2016. Ob die Raum-Zugehörigkeitsliste (Ziffer 2 32/2
  33) seither unverändert übernommen wurde oder in neueren SIA-380/1-Ausgaben abweicht, ist mit
  den vorliegenden Unterlagen nicht zu prüfen.
- **Flächendefinition.pdf ohne Datum:** Das RHYMO-Infoblatt trägt keine Versions- oder
  Ausgabeangabe; die skizzierten SIA-416-Begriffe (GF/NGF/KF/NF/VF/FF/HNF/NNF) sind seit
  Langem stabil, eine Prüfung gegen die aktuell gültige SIA-416-Ausgabe wurde hier nicht
  vorgenommen. Zudem ist die Quelle eine private Immobilienfirma, keine Normstelle — als
  Erläuterung brauchbar, nicht als Normzitat.
  **Nachtrag 16.08.2026 (Wissens-Chef Run 34):** Die Norm-Gegenprobe ist beschaffbar, ohne das
  Original zu ziehen — `[[sia-416-2003]]` in der KB `normen` trägt `status: established` und
  führt die Hierarchie GSF → GF (= NGF + KF) → AGF sowie NGF = NF + VF + FF und die
  HNF/NNF-Abgrenzung mit Ziffer. Der Abgleich der RHYMO-Begriffe gegen SIA 416:2003 Ziff. 2
  bleibt zu leisten; bis dahin gilt der Vorbehalt oben unverändert.
- **Zahlenwerte Qh,li0/ΔQh,li je Gebäudekategorie** werden in Gebaeudeform.pdf nicht
  tabelliert (nur die qualitative Aussage "ähnliche Grössenordnung, +/-30 %"); die konkreten
  Kategorie-Werte stehen in `[[muken-2025-anhang-1-3-uwert-heizwaermebedarf]]` (Tabelle C,
  aktuelle Basis).
