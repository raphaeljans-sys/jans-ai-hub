# Trainingslauf 48 — KB Planungsgrundlagen (2026-07-14, Token-Vollgas)

Run 47 hatte die KB als nahezu gesaettigt eingestuft (alle vier PL-Domaenen mehrfach durchgekaemmt,
nur drei offene Watchlist-Punkte E5/E9/B5) und empfohlen, den naechsten Lauf entweder auf neues
Quellenmaterial oder eine gezielte Vollstaendigkeitspruefung zu stuetzen. Statt eines weiteren
WebSearch-Refresh wurde deshalb zuerst **real geprueft, ob seit Run 46/47 neues Material im
SharePoint abgelegt wurde** (`find ... -newermt 2026-07-08` ueber alle vier PL-Grundordner,
4'000 Dateien insgesamt).

## Fund: echtes neues Primaerdokument statt weiterer Watchlist-Refresh

Der Zeitstempel-Scan foerderte ein am **11.07.2026** neu abgelegtes Dokument zutage:
**«Normkonzept BSV 2026»** (VKF, Autor Alois Keel/Keel & Raster Planungs- und Baurecht GmbH,
Stand 06.10.2022, 170 S.) im Ordner `PL-02/02_Normen/VKF_Norm/07_BSV 2026 Projekt (noch nicht in
Kraft)/`. Das ist genau der Watchlist-Punkt **B5**, den Run 12/19/38/39/46/47 bislang nur per
WebSearch auf **Zeitplan**-Ebene (Vernehmlassungstermine) verfolgt hatten — jetzt liegt die
tatsaechliche **Konzeptgrundlage** mit den materiellen Eckpunkten vor.

Kap. 1-2 (Einleitung, Geschichte, S. 1-15) und Kap. 5 "Die Eckpunkte der Totalrevision"
(S. 90-129, der praxisrelevante Kern) wurden volltext gelesen; die Anhaenge (S. 129-170,
Stakeholder-/Kundenumfrage-Rohmaterial) blieben als niedrige Prioritaet aussen vor.

**38 Eckpunkte destilliert**, davon fuer JANS praxisrelevant:

- **Struktur:** 1 statt 2 Erlassstufen (heute Norm+Richtlinien, kuenftig eine «Schweizerische
  Brandschutzvorschriften (BSV)», max. 200 S.) + separates Vollzugshandbuch «BSV-Erlaeuterung»
  (buendelt die heute auf >20 Einzel-PDF verstreuten Erlaeuterungen/Arbeitshilfen).
- **QSS:** Reduktion von vier auf drei Qualitaetssicherungsstufen (80/15/5-Regel), Zuordnung
  neu direkter an Personensicherheit/Risiko/Komplexitaet statt Gebaeudehoehe/Nutzung.
- **Geltungsbereich:** SIA-500-Kap.8-Uebernahme in die BSV (Hindernisfreies-Bauen-Schnittstelle,
  Healthcare-relevant fuer JANS).
- **Uebergangsrecht:** direkt in der BSV geregelt statt kantonal, mit Bauherren-Wahlrecht
  zwischen integraler BSV2015- oder BSV2026-Anwendung waehrend einer Uebergangsfrist.
- **Bestandesbauten (praktisch wichtigster Punkt):** geplante operationale "rote Linie" fuer
  Nachruestungspflicht unabhaengig vom Umbauvorhaben — heute nur einzelfallweise ueber
  Verhaeltnismaessigkeitspruefung (VGr SO 2005, Baurekursgericht ZH 2021).

Eingearbeitet als neue Sektion **§1a** in [[brandschutz-pl03-wegweiser]] mit dem klaren Vorbehalt:
Konzeptstand 2022, der politische Marschhalt (VKG-MM 06.01.2026) liegt zeitlich NACH diesem
Dokument und kann Details noch aendern — die Richtung ist aber verlaesslich.

## Nebenbefund: Run-47-Nebenfund M3 korrigiert

Beim Aufraeumen des offenen QUESTIONS-Punkts M3 (Run 47 hatte einen Suchtreffer zu einem
"Volksreferendum gegen UmV § 49b PBG" nur als Titel gesehen und ungeprueft als vermutete
"Flexibilisierung der Parkplatzvorschriften" vermerkt) zeigt die WebSearch-Primaerquelle
(stadt-zuerich.ch) etwas anderes: § 49b PBG regelt **preisguenstigen Wohnraum als Gegenleistung
fuer Mehrausnuetzung** bei Auf-/Umzonungen; das Referendum ist **staedtisch** (nicht kantonal) und
betrifft die Zuteilungs-/Verwaltungsregeln dieser Wohnungen in der Stadt Zuerich — Volksabstimmung
**14.06.2026**. Kein Bezug zu Parkierung. Korrektur in `wiki/QUESTIONS.md` (M3, Status auf `[~]`
gesetzt — nur WebSearch-Zusammenfassung, Primaertext der Verordnung noch nicht gelesen) und
als neu relevant fuer `machbarkeit`/`nutzungsstrategie` vermerkt (Mehrausnuetzung via BZO-Revision
kann § 49b-Pflicht ausloesen).

## Verifikations-Verdikt

Kein Wiki-Artikel wurde in diesem Lauf auf `established` gehoben, da der Artikelkopf
[[brandschutz-pl03-wegweiser]] bereits `established` gefuehrt wird — die neue Sektion §1a ist
eine belegte Erweiterung eines bereits reifen Artikels, keine neue Status-Behauptung. Die
Primaerquelle (VKF-Dokument, direkt gelesen) ist die Verifikationsquelle; keine WebSearch-Deutung
noetig.

## Einordnung

Run 47s Saettigungs-Diagnose war richtig fuer den **bekannten** Bestand, aber die Loesung war
nicht "warten auf naechstes Fenster", sondern **aktiv pruefen, ob neues Material abgelegt wurde**
— genau das foerderte den ergiebigsten Einzelfund seit mehreren Laeufen zutage (B5 sprang von
reiner Terminverfolgung zu materieller Substanz). Diese Zeitstempel-Scan-Methode
(`find ... -newermt`) ist fuer kuenftige Laeufe in einer nahezu gesaettigten KB die
effizientere Alternative zu einem erneuten vollstaendigen Ordner-Durchkaemmen.

## Naechste Schritte

- Anhaenge des Normkonzepts (S. 129-170) bei Kapazitaet nachziehen (niedrige Prioritaet,
  Stakeholder-Feedback ohne normativen Gehalt).
- M3 Primaertext (§ 49b-Wortlaut) lesen, sobald ein JANS-Projekt mit Mehrausnuetzung/Aufzonung
  ansteht — dann eigenen Artikel `recht-norm-mehrausnuetzung-wohnraum-zh.md` anlegen.
- Naechster Lauf: erneuter Zeitstempel-Scan (`-newermt`) vor jedem inhaltlichen Lauf als
  Standard-Schritt 0 etablieren, um weitere frisch abgelegte Primaerdokumente nicht zu verpassen.
