---
title: "eBKP-H 2012: Gliederungslogik (Hauptgruppe/Elementgruppe/Element), Elementarten und die CRB-Kennwertkataloge OAK/EAK"
status: emerging
last_updated: 2026-08-30
sources: ["/Volumes/daten/02_Architektur_Archiv/03_Bauprozesse_I_II/03_Kostenplanung/05_KV_Deffisierung/Elementbasierter Kostenvoranschlag.pdf (Web-Auszug bauinfos-buch.ch, sinngemäss wiedergegeben, gelesen 30.08.2026)", "/Volumes/daten/02_Architektur_Archiv/03_Bauprozesse_I_II/03_Kostenplanung/08_OAK_Objektkatalog_264.-/OAK_de.pdf (CRB, Objektarten-Katalog OAK Wohnbauten im Vergleich, D/11, Ausgabe 2011-01, Impressum/Inhaltsverzeichnis gelesen 30.08.2026)", "raw/inventar/archiv-fachwissen__03_Bauprozesse_I_II.md Abschnitt Triage"]
links: ["[[ebkp-h-2012-bezugsgroessen-kuerzel-tabelle]]", "[[ebkp-h-2012-musterbeispiel-haus-im-forst-drei-genauigkeitsstufen]]", "[[kostenvoranschlag-merkblatt-oeffentliche-bauherrschaft-reserven-verwaltungskosten]]"]
---

# eBKP-H 2012: Gliederungslogik, Elementarten und die CRB-Kennwertkataloge OAK/EAK

## Kontext

Ergänzt [[ebkp-h-2012-bezugsgroessen-kuerzel-tabelle]] und
[[ebkp-h-2012-musterbeispiel-haus-im-forst-drei-genauigkeitsstufen]] um die **Systematik
dahinter**: wie der eBKP-H 2012 (SN 506 511, CRB) intern gegliedert ist, was eine
Elementart ist, und wo CRB dazu passende Kostenkennwerte publiziert. Quelle für die
Gliederungslogik ist ein sinngemäss zusammengefasster Web-Auszug (bauinfos-buch.ch,
Urheberrecht beim Autor, hier nicht im Wortlaut übernommen).

## Kernaussage: drei Gliederungsebenen

Der eBKP-H 2012 gliedert **elementbasiert**, nicht nach Arbeitsgattung wie der klassische
BKP 2001:

1. **Hauptgruppe** — oberste Ebene, entfernt vergleichbar mit dem BKP 2001 (Begriffe wie
   Grundstück, Vorbereitung, Umgebung, Ausstattung, Nebenkosten kommen in beiden Systemen
   vor, aber mit anderer Binnenlogik).
2. **Elementgruppe** — zweite Ebene, gegliedert nach Bauelement statt Gewerk. Beispiel:
   Hauptgruppe C «Konstruktion Gebäude» zerfällt in Elementgruppen wie C1 «Fundament»,
   C2 «Wandkonstruktion» — wo der BKP 2001 an dieser Stelle Gewerke wie «Rohbau 1»/«Rohbau 2»
   führen würde.
3. **Element** — dritte, konkreteste Ebene. Beispiel: Elementgruppe E2 «Äussere
   Wandbekleidung über Terrain» enthält Elemente wie E2.2 «Aussenwärmedämmung» oder
   E2.4 «Fassadensystem».

## Elementarten: die vierte, nicht genormte Stufe

Elemente lassen sich weiter zu **Elementarten** verfeinern — frei bildbare Unterpositionen,
gebildet aus ausgewählten NPK-Kapitel-Positionen (Quelle: CRB, «Bauleistungen beschreiben
und Baukosten ermitteln», S. 69). Elementarten sind **nicht Bestandteil des eBKP** und
tragen deshalb **keinen normierten Code** — im Unterschied zu Hauptgruppe/Elementgruppe/
Element. Wer einen elementbasierten KV aufbaut, kann bestehende Elementarten übernehmen
oder neue definieren; Beispiel aus der Quelle: «Betonwand, d = 0.20 m, Typ 2» als
Elementart innerhalb des Elements C2.1 «Aussenwandkonstruktion», mit einem Kostenkennwert
von 144.49 Fr./m² (Quelle: CRB, ebd., S. 70; Kennwert schliesst Schalung, Bewehrung, Beton
und übliche Nebenarbeiten als Zuschlag ein) — **dieser einzelne Zahlenwert ist historisch
und dient nur der Illustration der Methode, nicht als aktueller Kennwert**.

## Die CRB-Kennwertkataloge OAK und EAK

CRB stellt zur Gliederungssystematik zwei ergänzende, **urheberrechtlich geschützte**
Kennwertkataloge bereit (Copyright CRB, keine Vervielfältigung/Verwendung ohne schriftliche
Genehmigung — Nachdruck, auch auszugsweise, ist untersagt):

- **OAK — Objektarten-Katalog**: Kennwerte auf Stufe Hauptgruppe/Elementgruppe, anhand
  real dokumentierter Schweizer Objekte. Das vorliegende Exemplar («Wohnbauten im
  Vergleich», D/11, CRB, 1. Auflage 2011-01) dokumentiert neun reale Wohnbauten (Einfamilien-
  und Mehrfamilienhäuser, u. a. in Hombrechtikon, Steinmaur-Sünikon, Zürich-Seebach, Baden-
  Dättwil, Bellikon, Siebnen, Altendorf) mit indexierten Baukosten (auf aktuellen Kostenstand
  übertragbar), Flächen-/Volumen-/Energiekennwerten (nach SIA 2040 «Effizienzpfad Energie»
  und SIA 2032 «Graue Energie von Gebäuden») und Angaben zu Projektbeteiligten und Nutzung.
- **EAK — Elementarten-Katalog**: Kostenangaben auf Stufe Elementart, das Bindeglied
  zwischen dem eBKP-H-Element und der NPK-Position.

**Die konkreten Kennwerte beider Kataloge werden in dieser KB bewusst nicht reproduziert**
(Urheberrecht, siehe `specs/archiv-fachwissen-spec.md` Abschnitt Artikelschema). Wer einen
Wohnbau-Kostenkennwert nach OAK braucht, öffnet das Original unter
`/Volumes/daten/02_Architektur_Archiv/03_Bauprozesse_I_II/03_Kostenplanung/08_OAK_Objektkatalog_264.-/`
bzw. das EAK-Pendant unter `07_EAK_Elementartenkatalog_EAK195.-/`.

## Praxisregel

- Bei einer frühen Kostenschätzung nach Elementmethode zuerst die passende **Hauptgruppe →
  Elementgruppe → Element**-Zuordnung vornehmen (normierter Code), erst danach bei Bedarf
  eine Elementart bilden oder aus OAK/EAK übernehmen (nicht normierter Code, freie Wahl).
- Der elementbasierte KV ist für die Bauherrschaft anschaulicher als der klassische
  BKP-KV, weil Kostenkennwerte direkt an Materialisierungsentscheide (Bodenbelag,
  Fassadensystem) gekoppelt sind — nützlich als Argument, wenn ein Bauherr zwischen
  Gliederung nach Gewerk oder nach Element wählen kann.
- eBKP-H-Ausgabe immer nennen: die Quelle selbst vergleicht die Ausgaben 2009 und 2012 und
  weist auf «kleine, aber vorhandene» Unterschiede hin — ohne genaue Ausgabe ist ein
  eBKP-H-Code nicht eindeutig.

## Offene Punkte

- Beide Kataloge (OAK, EAK) liegen im Archiv nur als vollständige, geschützte CRB-Publikation
  vor; eine Prüfung, ob eine aktuellere OAK-/EAK-Ausgabe existiert, ist aus diesem Bestand
  nicht möglich (Ausgabestand hier: OAK D/11, 2011).
- Ob CRB seit 2012 eine revidierte eBKP-H-Fassung publiziert hat, ist aus diesem Bestand
  nicht ableitbar — vor Verwendung in einer aktuellen Ausschreibung gegen die aktuelle
  CRB-Fassung prüfen.
