---
quelle: "Primärquellen je Netzbetreiber: (1) EKZ, Werkvorschriften CH (WV-CH 2025) — Spezielle Bestimmungen der EKZ, Ausgabe April 2026, Anhang 1 «Sperrzeiten für elektrische Raumheizungen»; (2) ewz, Spezielle Anschlussbestimmungen von ewz / Werkvorschriften CH 2021, Datum/Version 01.01.2025/2, Kap. 8.1/8.4; (3) Elektrizitätswerk Wangen SZ, Website-Seite «Werkvorschriften, Reglemente, Sperrzeiten» (ewwangensz.ch); (4) EW Höfe AG, Website-Seiten «Stromnetz entlasten» / «Stromnetz entlasten – Hilfe» (ewh.ch, Flextarif 2026)"
herausgeber: "Elektrizitätswerke des Kantons Zürich (EKZ) · Elektrizitätswerk der Stadt Zürich (ewz) · Elektrizitätswerk Wangen SZ (Bezirk March, Kt. Schwyz) · EW Höfe AG (Gemeinden Freienbach/Wollerau/Feusisberg, Kt. Schwyz)"
ausgabe: "EKZ WV-CH 2025, Stand April 2026 (PDF direkt bezogen); ewz Spezielle Bestimmungen, Stand 01.01.2025 Version 2; EW Wangen SZ und EW Höfe AG ohne explizites Ausgabedatum auf der jeweiligen Website, abgerufen 2026-07-31"
gelesen: "EKZ-PDF vollständig per pdftotext durchsucht (Anhang 1–6); ewz-PDF vollständig per pdftotext durchsucht (Kap. 1–12); EW-Wangen-SZ- und EW-Höfe-Website-Seiten per WebFetch gelesen (Volltext-Extraktion, nicht die verlinkten PDF-Reglemente selbst — siehe Offene Punkte)"
datenstand: 2026-07-31
status: established für EKZ-Zahlen (amtliches Tarifdokument mit Ausgabedatum) und EW-Wangen-SZ-Zeitfenster (explizit auf Werk-Website genannt); speculative für EW-Höfe-Flextarif-Konditionen (Rabattsatz belegt, Sperrstunden nicht öffentlich beziffert) und für die ewz-Einordnung (Rechtspflicht zum Lastabwurf belegt, aber keine öffentlich dokumentierten Stunden-/Uhrzeit-Werte gefunden — echte Lücke, kein Rateergebnis)
last_updated: 2026-07-31
---

# Destillat — Wärmepumpen-Sperrzeiten konkret je Netzbetreiber: EKZ, ewz, EW Wangen SZ, EW Höfe AG

> Vertieft das bestehende Destillat [[stromtarife-waermepumpen-sperrzeiten-ch]] (dort das
> Rechtsprinzip StromVG Art. 17b/17c und die EKZ/AEW-Tabelle) um die **konkreten Uhrzeiten,
> Rundsteuerbefehle und Vertragskonditionen** von vier Netzbetreibern im JANS-Einzugsgebiet
> Zürich/Schwyz. Duplikat vermieden: die Rechtsgrundlage und die Sperrzeiten-Zahlen für AEW
> stehen bereits im Basisdestillat und werden hier nicht wiederholt.

## Das Wichtigste in 1 Satz

Nur **EKZ** und das Schwyzer **EW Wangen SZ** veröffentlichen die Sperrzeiten für Wärmepumpen mit
exakter Uhrzeit und Stundenzahl (EKZ: max. 4 Std./Tag, Einzelblock max. 2 Std., abends, Mo–Fr;
EW Wangen SZ: fix Mo–Fr 10.30–12.00 Uhr, 1,5 Std./Tag); **ewz** und **EW Höfe AG** regeln die
Steuerungspflicht bzw. den Rabatt vertraglich/technisch, machen die konkreten Sperrstunden aber
öffentlich nicht zugänglich — für ein Projekt im ewz- oder EW-Höfe-Netzgebiet muss die genaue
Sperrzeiten-Regel direkt beim Werk erfragt werden, bevor der Pufferspeicher dimensioniert wird.

## Kernbegriffe

- **TRA-Rundsteuerbefehl:** Der Code, mit dem der Netzbetreiber über die Rundsteueranlage das
  Schaltsignal an den Rundsteuerempfänger sendet (bei EKZ z. B. «104-22» für die
  Wärmepumpentarif-Sperrung); je Netzregion/Leistungsreihe unterschiedlich codiert.
- **tS (längste Sperrdauer):** Die maximale Dauer eines einzelnen Sperrblocks (EKZ: 2 Std.).
- **tK (minimale Einschaltdauer):** Die Mindestfreigabe zwischen zwei Sperrungen; bei EKZ
  zwingend **≥ tS** — die vorausgegangene Sperrdauer bestimmt die nachfolgende Mindestfreigabe.
- **ZSK (Zählerstromkreis):** Der separate Messkreis, an den die sperrpflichtige Anlage
  (Wärmepumpe, Elektroheizung) angeschlossen sein muss, damit der Sondertarif greift.
- **Flextarif (EW Höfe):** Vertragsmodell 2026, bei dem der Kunde steuerbare Geräte (WP,
  Elektro-Speicherheizung, Boiler, E-Ladestation) zur Steuerung freigibt und dafür 1 Rp./kWh
  auf den Netznutzungstarif spart; Voraussetzung Smart Meter + Lastschaltgerät.

## Tabelle — Sperrzeiten-Vergleich der vier Netzbetreiber

| Netzbetreiber | Netzgebiet (Kt.) | Sperrzeiten-Regel (Stunden/Zeitfenster) | Einzelblock max. | Häufigkeit | Netztarif-Bezug | Pflicht/freiwillig | Quelle/Status |
|---|---|---|---|---|---|---|---|
| **EKZ** (Netz 400WP, Wärmepumpen-Kompressormotoren) | ZH (grosse Teile) | Tagessperrdauer **1–4 Std., abends**; Rundsteuerbefehl 104-22 | **2 Std.** (tS); Wiederfreigabe ≥ vorausgegangene Sperrdauer | Täglich Mo–Fr | 6,97 Rp./kWh inkl. MWST 2026 (ganztägig, kein HT/NT) — separat belegt im Basisdestillat | Vertraglich (Zustimmung/Opt-in für den Sondertarif; Steuergerät selbst kann nicht untersagt werden) | **established** — EKZ WV-CH 2025, Anhang 1, Ausgabe April 2026 |
| **ewz** (Elektrizitätswerk Stadt Zürich) | ZH Stadt + Teile GR (Nachliefergebiete) | **Nicht öffentlich beziffert.** Reglementarisch nur die Pflicht, Wassererwärmer ≥ 100 l und Wärmepumpen «für einen möglichen Lastabwurf hinter Schaltapparaten» anzuschliessen (Kap. 8.1 Abs. 2) | Nicht dokumentiert | Nicht dokumentiert | Nicht als separater WP-Sondertarif mit Rabattsatz aufgefunden (anders als EKZ 400WP) | Technische Pflicht zur Anschlussfähigkeit; konkrete Aktivierung/Vergütung nicht öffentlich | **Lücke** — ewz Spezielle Bestimmungen, Stand 01.01.2025/V2, Kap. 8.1/8.4 gelesen, keine Stunden-/Uhrzeitangabe gefunden |
| **EW Wangen SZ** (Bezirk March) | SZ (Wangen, March) | Fix **Montag bis Freitag, 10.30–12.00 Uhr** (automatische Abschaltung) | 1,5 Std. an einem Stück (= die genannte Zeitspanne) | Täglich Mo–Fr | Nicht auf der gesichteten Seite beziffert (Reglement/Werkvorschriften-PDF nicht separat gelesen) | Werkseitig fix vorgegeben (keine Opt-in-Formulierung ersichtlich) | **established** für das Zeitfenster (Website-Text explizit) — Primärquelle: ewwangensz.ch, Abschnitt Sperrzeiten |
| **EW Höfe AG** (Freienbach/Wollerau/Feusisberg) | SZ (Höfe) | **Nicht öffentlich beziffert.** Steuerung erfolgt «zeitlich verschoben» via Glasfaser-/Mobilfunksignal an Lastschaltgeräte; bei Komforteinbusse Ausschluss aus der Bewirtschaftung möglich | Nicht dokumentiert | Nicht dokumentiert | **Flextarif 2026: 1 Rp./kWh** Rabatt auf den Netznutzungstarif | Freiwillig (Kunde gibt Geräte «zur Steuerung frei») | **speculative** für die Sperrzeiten selbst (Rabatt belegt, Stunden nicht) — ewh.ch, Seiten «Stromnetz entlasten» / «-hilfe» |

Zum Vergleich (bereits im Basisdestillat [[stromtarife-waermepumpen-sperrzeiten-ch]] belegt, hier
nicht neu recherchiert): **AEW** (Kt. AG) begrenzt die WP-Sperrung auf höchstens 3× pro Werktag für
je 1 Std., mit mindestens 1 Std. Freigabe dazwischen.

## Vertiefung EKZ — technische Anforderungen an die Steuerung (neu gegenüber Basisdestillat)

- **Rundsteuerung ist der alleinige Steuerweg:** «Die Ansteuerung der durch EKZ gesteuerten
  elektrischen Betriebsmittel erfolgt über die Rundsteuerung» (WV-CH 2025, Kap. 1.9). Eine
  netzdienliche Steuerung gilt **bis auf Widerruf** durch den Endkunden; der Widerruf muss
  schriftlich über das EKZ-Kundenportal oder den Kundendienst erfolgen.
- **Wer keinen Leistungstarif bezieht, bekommt auch keine Steuerung/Vergütung.** Ein
  Endverbraucher mit Leistungstarif kann eine Rundsteuer-Nutzung zwar zusätzlich beantragen,
  trägt dann aber Montage- **und** spätere Demontagekosten selbst.
- **Anschlusspflicht ab Leistungsschwelle:** Ein technisches Anschlussgesuch (TAG) ist zwingend
  bei Wärmepumpen mit mehr als **4 kW Kompressorleistung** (Nennleistung A2/W35, W10/W35,
  B0/W35) pro Zählerstromkreis, bei Anlaufströmen über 30 A (3-phasig) bzw. 15 A (1-phasig),
  bei allen WP ausserhalb der Bauzone, sowie bei Gebäuden, deren gesamte
  Raumheizungs-Anschlussleistung 10 kW übersteigt.
- **Sonderfall Notheizungen/selten genutzte Räume:** Für Raumheizungen in nicht ständig
  benutzten Räumen (Kirchen, Zivilschutzräume, Schützenhäuser, Baubaracken, Schulcontainer)
  kann in begründeten Fällen auf eine Sperrung verzichtet werden — **ausdrücklich ausgenommen
  ist jedoch der Wärmepumpentarif EKZ Netz 400WP selbst**, der bleibt sperrpflichtig.
- **Zusätzlich zur WP eigene Sperrlogik für Wassererwärmer** (Anhang 2, hier nicht Kernthema,
  aber relevant bei kombinierten Anlagen): Tagesfreigabedauer je nach Leistungsreihe
  4–8 Std. nachts (Winterhalbjahr) bzw. zusätzlich 3–4 Std. tags (Sommerhalbjahr) — ein
  separates Regime, das bei gemeinsamer Zählerstromkreis-Planung mit der WP kollidieren kann.
- **Der Kunde kann die Installation des Steuergeräts nicht verweigern**, wenn EKZ es zur
  garantierten Nutzung der netzdienlichen Flexibilität einsetzt (Berufung auf StromVG Art. 17c
  Abs. 4 und 5 im EKZ-eigenen Dokument) — deckt sich mit der im Basisdestillat referenzierten
  Opt-out-statt-Opt-in-Regel für Bestandsanlagen.

## Vertiefung ewz — dokumentierte Lücke, kein Rateergebnis

- Die gelesene Primärquelle (ewz Spezielle Anschlussbestimmungen, Stand 01.01.2025/V2) verlangt
  in Kap. 8.1 Abs. 2 lediglich, dass Wassererwärmer ≥ 100 l und Wärmepumpen «für einen
  möglichen Lastabwurf, hinter Schaltapparaten, ggf. mit Einschaltverzögerung» anzuschliessen
  sind — das ist eine **Installationspflicht**, keine veröffentlichte Sperrzeiten-Tabelle wie bei
  EKZ.
- Ein technisches Anschlussschema («Schema Lastabwurf Wärmepumpen Zürich & GR», ewz Netze,
  Erstellung Dez. 2020/Feb. 2021) existiert als reine **Schaltschema-Grafik** ohne extrahierbaren
  Fliesstext zu Stunden/Uhrzeiten — inhaltlich nicht auswertbar, nur als Beleg dafür, dass ewz
  eine Lastabwurf-Logik technisch vorsieht.
- Ein WP-spezifischer Rabatttarif mit Sperrzeiten-Gegenleistung (analog EKZ 400WP) wurde in der
  gesichteten ewz-Tarifübersicht **nicht gefunden**; eine frühere «Wärmepumpen-Rückvergütung des
  Elektrizitätswerks der Stadt Zürich» ist gemäss amtlicher Sammlung der Stadt Zürich
  **aufgehoben** (nicht mehr in Kraft; genaues Aufhebungsdatum hier nicht verifiziert).
- **Für ein ZH-Stadt-Projekt bedeutet das:** Die Sperrzeiten-Konditionen bei ewz sind **vor der
  Heizungsauslegung telefonisch/schriftlich bei ewz Netze zu erfragen** (Rule
  `identifikatoren-verifizieren`) — sie lassen sich anders als bei EKZ nicht aus einem
  öffentlichen Tarifblatt ablesen.

## Vertiefung EW Wangen SZ (Bezirk March) und EW Höfe AG (Höfe)

- **EW Wangen SZ** nennt auf seiner Werkvorschriften-Seite ein **fixes** Zeitfenster
  Montag bis Freitag **10.30–12.00 Uhr**, ausdrücklich begründet mit der Vermeidung von
  Höchstlasten («ausgeglichenere Belastungen und somit tiefere Einstandspreise»). Das ist ein
  **Vormittagsfenster**, nicht abends wie bei EKZ — für die WP-Dimensionierung im Netzgebiet
  Wangen SZ ist also die Mittagsspitze zu überbrücken, nicht die Abendspitze.
- Die auf derselben Seite verlinkten Dokumente («EW Werkvorschriften CH 2021», «EW Werkvorschriften
  CH 2021 – Spezielle Bestimmungen», «EW Wangen Reglement gültig ab 01.07.2024») wurden **nicht
  einzeln als PDF gelesen** — die Uhrzeitangabe stammt aus dem Fliesstext der Website selbst, ein
  eventuell abweichender Wortlaut im Reglement-PDF ist nicht ausgeschlossen (offener Punkt).
- **EW Höfe AG** hat 2026 ein neues Tarifsystem samt **Flextarif** eingeführt: Kundinnen und
  Kunden geben steuerbare Geräte (Wärmepumpe, Elektro-Speicherheizung, Boiler, Ladestation) zur
  Steuerung frei und sparen dafür **1 Rp./kWh** auf den Netznutzungstarif. Voraussetzung ist ein
  Smart Meter plus Lastschaltgerät; das Steuersignal läuft über Glasfaser- oder Mobilfunknetz.
  Bei spürbaren Komforteinbussen kann das Gerät laut Website «aus der Bewirtschaftung genommen
  werden» — das deutet auf eine gewisse Kulanz/Widerrufbarkeit hin, ist aber nicht als fester
  Anspruch formuliert.
- **Weder Stundenzahl noch Uhrzeit noch maximale Einzelsperrdauer** sind auf den beiden
  gesichteten EW-Höfe-Seiten («Stromnetz entlasten» und die zugehörige Hilfe-Seite) genannt —
  im Unterschied zu EKZ und EW Wangen SZ eine echte, dokumentierte Lücke.

## Bauherren-Transfer

- **Vor der Heizungsauslegung das lokale Werk konkret abklären, nicht das Nachbarwerk als
  Analogie nehmen:** Die vier Werke unterscheiden sich fundamental — EKZ liefert eine exakte,
  öffentlich nachlesbare Tabelle (2 Std. Einzelblock, abends), EW Wangen SZ ein fixes
  Mittagsfenster (1,5 Std.), ewz und EW Höfe AG lassen sich nur über direkte Anfrage beziffern.
  Wer für ein Projekt im ewz-Netzgebiet die EKZ-Zahlen übernimmt (oder umgekehrt), verstösst
  gegen die Rule `identifikatoren-verifizieren`.
- **Tageszeit der Sperrung bestimmt die Pufferspeicher-Logik:** Ein Abendfenster (EKZ) trifft
  typischerweise auf die häusliche Komfortspitze (Duschen, Kochen, Heizen nach Feierabend);
  ein Vormittagsfenster (EW Wangen SZ, 10.30–12.00 Uhr) liegt ausserhalb der klassischen
  Morgen- und Abendspitze und dürfte in den meisten Wohnnutzungen leichter zu überbrücken sein
  — das ist eine Plausibilitätsüberlegung, **keine belegte TGA-Bemessung** (vgl. offene Fragen im
  Basisdestillat zur Pufferspeicher-Dimensionierung).
- **EKZ 400WP bleibt sperrpflichtig, auch wenn ein anderer Sonderfall (Notheizung in
  selten genutztem Raum) sonst Erleichterung böte** — bei gemischten Anlagen (WP + Notheizung
  im selben Gebäude) ist das im Devis/Werkvertrag mit der Elektroplanung sauber zu trennen.
- **EW Höfe Flextarif ist ein reiner Rabatt-Anreiz (1 Rp./kWh), kein Zwang:** Solange die
  Sperrstunden nicht beziffert sind, lässt sich die Wirtschaftlichkeit gegenüber dem
  Standardtarif nicht seriös rechnen — vor Vertragsabschluss die konkreten Bedingungen
  schriftlich von EW Höfe einfordern.
- **Bei ewz-Projekten keinen WP-Sondertarif mit Sperrzeiten-Rabatt einplanen**, solange kein
  öffentlich einsehbares Tarifblatt dazu gefunden wurde — die Heizungsauslegung sollte primär
  auf die technische Lastabwurf-Pflicht (Anschluss hinter Schaltapparaten) und nicht auf einen
  unbestätigten Rabatt abstellen.

## Offene Punkte

- **ewz:** Keine öffentlich zugängliche Sperrzeiten-Tabelle (Stunden/Uhrzeit) gefunden, obwohl
  die technische Lastabwurf-Pflicht dokumentiert ist. Direkt bei ewz Netze (Kundendienst
  Geschäftskunden) nachfragen und das Ergebnis hier nachtragen, sobald ein konkretes Projekt im
  ewz-Netzgebiet ansteht.
- **EW Höfe AG:** Flextarif-Rabatt (1 Rp./kWh) belegt, aber keine Stunden-/Uhrzeitangabe
  gefunden. Gleiches Vorgehen: bei EW Höfe AG (055 415 31 11 / info@ewh.ch) das vollständige
  Tarifblatt 2026 bzw. die Flextarif-Vertragsbedingungen anfordern.
- **EW Wangen SZ:** Die Uhrzeitangabe (Mo–Fr 10.30–12.00 Uhr) stammt aus dem Website-Fliesstext,
  nicht aus dem separat gelesenen Reglement-PDF («EW Wangen Reglement gültig ab 01.07.2024») —
  vor einer verbindlichen Zusage an einen Bauherrn das PDF selbst gegenlesen.
  Netznutzungstarif-Rabatt für den Sperrzeiten-Verzicht wurde nicht recherchiert.
  Bei einem konkreten SZ-Projekt zusätzlich prüfen, ob das jeweilige Grundstück tatsächlich im
  Netzgebiet EW Wangen SZ liegt (Bezirk March ist auf mehrere kleine Werke aufgeteilt) — kein
  Netzgebiets-Abgleich in diesem Lauf vorgenommen.
- **Weitere SZ-Netzbetreiber ausserhalb dieses Laufs:** Bezirk Einsiedeln, Bezirk Schwyz
  (Gemeindewerke Schwyz), Bezirk Küssnacht und weitere kleine Gemeindewerke im Kanton Schwyz
  sind hier **nicht** recherchiert — eine Suche zu «Elektrizitätswerk Einsiedeln» lieferte keine
  belastbare Primärquelle (nur eine vermutlich fehlzugeordnete Suchmaschinen-Antwort, die
  tatsächlich die Wangen-SZ-Zahlen wiedergab; deshalb hier bewusst NICHT als Einsiedeln-Wert
  übernommen).
- **Kein Vergleich der Vergütung/Kompensation** für die vier Werke (EKZ: Tarifdifferenz separat
  im Basisdestillat beziffert; die anderen drei nicht) — Kandidat für einen weiteren
  Vertiefungslauf, sobald konkrete Projektanfragen vorliegen.
- **Rundsteuerbefehl-Codes** (z. B. EKZ 104-22/104-23) sind netzregionsabhängig und wurden hier
  nur exemplarisch aus Anhang 1 übernommen; für ein konkretes Bauvorhaben ist der Code über die
  zuständige EKZ-Netzregion zu bestätigen.

**Backlinks:** Basisdestillat (Rechtsgrundlage + EKZ/AEW-Übersicht)
[[stromtarife-waermepumpen-sperrzeiten-ch]] · PV-Eigenverbrauch/EMS-Grundlage
[[wp-pv-eigenverbrauch-lastmanagement]] · WP-Systemwahl/JAZ [[waermepumpe-systemvergleich]].
