---
title: eBau SZ — digitales Baugesuchsportal des Kantons Schwyz (Bürgerportal)
status: emerging
last_updated: 2026-07-13
sources:
  - Amt für Raumentwicklung, Baugesuchszentrale Kt. SZ — "Registrierung auf Bürgerportal von eBau"
    (v1.0, 24.03.2022, PL-01/KtSZ Schwyz/ebau-sz.ch/_Registrierung_Bürgerportal_eBau_v1.0.pdf)
  - Realer JANS-Arbeitsnotiz "Baugesuch erstellen auf ebau-sz.ch" (rj, 21.09.2023, Fall
    Reckholdernstrasse 20 Willerzell, Kataster Nr. 3301) — konkrete Feldliste + offene Fragen aus
    der ersten Portal-Anwendung
  - PL-01/KtSZ Schwyz/ebau-sz.ch/230921_Anmeldung_ebau_Logindaten.docx (Kontaktperson
    Baugesuchszentrale, ohne Zugangsdaten übernommen)
links: [[kartenportale-geoportale-uebersicht]] [[kartenportale-naturgefahren-objektschutz]]
  [[recht-norm-quellenlandkarte]] [[kartenportale-grundlagen-checkliste-neue-parzelle]]
  [[behoerden-vorabklaerung]]
---

# eBau SZ — digitales Baugesuchsportal (Bürgerportal)

Schliesst eine bisher unbearbeitete Lücke in PL-01 (Ordner `KtSZ Schwyz/ebau-sz.ch/`): der Kanton
Schwyz reicht Baugesuche nicht mehr papierbasiert bei der Gemeinde ein, sondern über das zentrale,
kantonale **Bürgerportal eBau** (`https://ebau-sz.ch`), betrieben durch die **Baugesuchszentrale**
beim Amt für Raumentwicklung (Bahnhofstrasse 14, 6431 Schwyz, 041 819 20 55). Das ist ein
struktureller Unterschied zu Kt. ZH, wo die Baueingabe weiterhin gemeindespezifisch (Papier oder
gemeindeeigenes eBaugesuch) läuft — bei SZ-Projekten ist eBau der **einzige** Eingabekanal.

## 1. Registrierung (Kap. „Registrierung auf Bürgerportal von eBau", v1.0, 24.03.2022)

- Aufruf `https://ebau-sz.ch` → „Registrieren" → Vorname/Nachname/E-Mail/Benutzername/Passwort.
- **Achtung Benutzername:** nachträglich nicht mehr änderbar (alle anderen Angaben schon) —
  Empfehlung des Amts: **keine** Mail-Adresse als Benutzername wählen.
- Bestätigungsmail mit Verifikationslink (bei Ausbleiben nach ~30 Min. zuerst Spam-Ordner prüfen,
  danach bei der Baugesuchszentrale melden).
- Empfohlene Browser: aktuelle Versionen Firefox/Chrome/Edge; **Internet Explorer wird explizit
  abgeraten** (Darstellungsprobleme).
- Administrativer Ansprechpartner für die Plattform: **Hans Muheim** (`hans.muheim@sz.ch`,
  041 819 20 55) — zuständig für Konto-/Zugangsfragen, nicht für materielle Baurechtsfragen.
- Praxis-Detail: die Plattform generiert aus den erfassten Parzellendaten ein **PNG als
  Parzellen-Nachweis** (Auskunft Hans Muheim) — dient als Beleg der Grundstücksangabe im Gesuch.

## 2. Was ein Planer bei der Vorbereitung eines Baugesuchs konkret ausfüllen muss

Reale JANS-Arbeitsnotiz (Fall Reckholdernstrasse 20 Willerzell, Kataster Nr. 3301, 21.09.2023) zeigt
den tatsächlichen Pflichtfelder-/Beilagen-Katalog von eBau — wertvoller als die reine
Registrierungsanleitung, weil er die **Baueingabe-Checkliste** für ein SZ-Vorhaben vorwegnimmt,
bevor der Bauherr/Planer selbst einreicht:

**Grundinformationen / Vermessungsangaben**
- **Plankote ± 0.00** in m ü. M. (Bezugshöhe des Bauvorhabens) + **Art des Fixpunkts**
  (Höhenfixpunkt oder Lagefixpunkt) — beide Angaben können direkt dem **WebGIS SZ, Geokategorie
  Grundstückskataster** entnommen werden (Fixpunktsystem der amtlichen Vermessung ist dort
  dargestellt: Fixpunktnummer, Höhe, E-/N-Koordinate).
- **Baugespann-Datum** (Errichtung vor Ort).
- **Gebäudevolumen** — eBau verlangt es **doppelt**: nach **SIA 116** UND nach **SIA 416**
  (die beiden Normen liefern unterschiedliche Volumina, vgl. bereits erfasster Unterschied in
  [[kartenportale-gwr-bund]] GVOLNORM 961/962). Offene Praxisfrage aus dem realen Fall: **gehört
  eine Tiefgarage zum SIA-416-Volumen** — im eBau-Formular nicht selbsterklärend, im Zweifel bei
  der Baugesuchszentrale/Katasterplaner nachfragen.
- **Gebäudeversicherungsnummer (GVZ-Nr.)** — wird von der Gebäudeversicherung Kt. Schwyz vergeben,
  nicht vom Gesuchsteller frei wählbar; im realen Fall war unklar, **wann/durch wen** diese Nummer
  zugeteilt wird (offene Frage, vor Einreichung mit GVZ SZ zu klären).
- **Kataster-Nr.** ist in SZ die Grundstücksnummer (identisch, keine separate Katasternummer).
- **Wärmeerzeuger Heizung**: eBau kennt vorgegebene Bezeichnungen (z.B. „Wärmepumpe für ein
  Gebäude"); eine **Erdsondenheizung** war im vorgegebenen Vokabular nicht eindeutig zuordenbar —
  ebenso war unklar, ob die anzugebende **Leistung in kW** sich auf die Wärmequelle, das Warmwasser
  oder den gesamten Heizwärmebedarf des Gebäudes bezieht. Beide Punkte vor Einreichung mit der
  Baugesuchszentrale klären, nicht raten.
- **Grundeigentümerschaft**: Namensschreibweise exakt gemäss Grundbuch/Geburtsdokument verwenden.

**Fachliche Beilagen, die eBau bei entsprechender Ausgangslage einfordert**
- **Naturgefahren/Objektschutz-Auflagen**: Zuständigkeit **Amt für Wald und Natur** (AWN, Bahnhof-
  strasse 9, Postfach 1184, 6431 Schwyz, 041 819 18 31, `awn@sz.ch`) — deckungsgleich mit der bereits
  erfassten Zuständigkeit in [[kartenportale-naturgefahren-objektschutz]].
- **Pfählfundationsplan inkl. Durchflussnachweis**, sofern das Vorhaben im **Gewässerschutzbereich
  A ü** liegt (Grundwasserschutz, direkte Anschlussfrage an Abschnitt 6 in
  [[kartenportale-naturgefahren-objektschutz]]).
- **Beleuchtungskonzept** gemäss ZUDK-Merkblatt „Lichtverschmutzung" (Platzierung/Ausrichtung der
  Leuchten) — eine bisher in der KB nicht erfasste eigenständige Auflage.
- **Entwässerungsplan gemäss SN 592 000**: Pflichtinhalt u.a. Abwasserleitungen/Schächte/Rinnen/
  Abläufe/Abscheideanlagen, Dimensionierung+Materialisierung+Gefälle+Fliessrichtung der Leitungen,
  Materialisierung/Gefälle beregneter/überdachter Flächen, Dimensionierung/Schnitt von
  Versickerungs-/Retentionsanlagen, Bezeichnung oberflächlicher Versickerungen im angrenzenden
  Wiesland, Anschlusspunkte an die öffentliche Kanalisation bzw. Einleitstellen in Gewässer,
  Schnittplan durch die geplante Einleitung in ein Oberflächengewässer, Beschriftung der
  Fallstränge.
- **Oberflächenabfluss-Prüfung**: eigener Hochwasserprozess, der **NICHT in der
  Naturgefahrenkarte** abgebildet ist (Abgrenzung zu Abschnitt 2-4 in
  [[kartenportale-naturgefahren-objektschutz]] — dort geht es um Rutschung/Hochwasser/Murgang als
  Gefahrenkarten-Prozesse, Oberflächenabfluss ist ein **separater** Layer im WebGIS SZ). Führt
  jährlich zu Schäden, ist aber mit einfachen baulichen Massnahmen vermeidbar — Information über
  `schutz-vor-naturgefahren.ch`.
- **Schadstoffermittlung/Selbstdeklaration**: bei **< 200 m³ erwarteten Bauabfällen** kann die
  „Checkliste Gebäudeschadstoffe mit Entsorgungskonzept" von einer Baufachperson (Planer/Architekt)
  selbst ausgefüllt werden; ab **≥ 200 m³** ist eine spezialisierte Fachperson beizuziehen
  (Vermittlung z.B. über `www.fages.org`).

## 3. Workflow-Empfehlung für den Planer (kein Einreichungspflicht-Zwang)

Der reale JANS-Fall zeigt ein nützliches Muster: das Baugesuch **muss nicht sofort eingereicht**
werden, um die Plattform zu nutzen. Man kann die Eingabe **provisorisch** erfassen (alle Pflicht-
felder/Checklisten-Punkte durchgehen), daraus ein **PDF-Zwischenstand** erzeugen und die noch
unsicheren Angaben mit Fachplanern/Bauherrschaft klären — bevor der definitive Einreichungsschritt
ausgelöst wird. Das macht eBau nutzbar als **Vollständigkeits-Checkliste** bereits im Vorprojekt,
nicht erst als Einreichungsformular am Ende.

## 4. Verhältnis zu anderen SZ-Bezugswegen

eBau ist das **Verfahrensportal** (Gesuch/Beilagen/Entscheid) — es ersetzt nicht die
**Geodaten-Bezugswege** aus [[kartenportale-geoportale-uebersicht]] (`map.geo.sz.ch`,
`geoshop.lisag.ch` für AV-Daten) oder den OEREB-Auszug (`oereb-schwyz`-Skill). Die Fixpunkt-/
Höhenangaben für eBau werden aus `map.geo.sz.ch` (WebGIS, Geokategorie Grundstückskataster)
entnommen — eBau selbst liefert keine Geodaten, sondern konsumiert sie als Eingabefeld.

## 5. Offene Punkte

- Kein API-/Automatisierungsweg bekannt oder zu erwarten (Bürgerportal mit Login, formularbasiert,
  keine öffentliche Schnittstelle dokumentiert) — Status bleibt bewusst bei manuellem Workflow,
  kein Connector-Versprechen.
- Die drei offenen Fachfragen aus dem realen Fall (Tiefgarage im SIA-416-Volumen? Zuteilungslogik
  GVZ-Nr.? Bezugsbasis der Wärmeerzeuger-kW-Angabe?) sind bisher nicht mit der Baugesuchszentrale
  abschliessend geklärt — bei nächstem SZ-Baugesuch direkt bei Einreichungsberatung nachfragen und
  hier nachtragen.
- ZH-Äquivalent (eBaugesuch-Plattformen sind in ZH gemeindespezifisch, kein kantonales Pendant zu
  eBau) noch nicht systematisch erfasst — eigene Lücke für einen künftigen Lauf, sofern ZH-Vorhaben
  das erfordern.
