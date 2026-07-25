# Normen-Nacht-Run 29 — 25./26.07.2026 (MacBook Pro)

## Ausgangslage
Run 28 (25.07.2026) hatte drei P2-"Teil-Destillate" auf ungelesene Seiten IM BEREITS
VORHANDENEN PDF geprueft und empfohlen, dasselbe Muster bei weiteren Teil-Destillaten zu
suchen — namentlich bei `sia-d0165-2000-kennzahlen-immobilienmanagement.md`, wo nur ein
5-Seiten-Fragment (Titelblatt + S.14-17) im Bestand lag, waehrend eine 73-seitige Vollversion
unter `xalt/` bereits vorhanden, aber nie destilliert war.

## Befund: Bestandsfalle wie Run 22
`pdfinfo` + `md5` bestaetigen: `alle/xalt/SIA D0165_2000 Kennzahlen im Immobilienmanagement.pdf`
und die Kopie in `alle/xalt/neu/` sind byte-identisch (MD5 6bd3c2c6e10a92aec8f94278b3de3a77),
73 Seiten, derselbe Scan-Zeitstempel (23.06.2014). SIA D 0165 hat laut Titelblatt/Impressum nur
**eine einzige Ausgabe** (Juli 2000, ISBN 3-908483-29-8, 2. Auflage Druck 2002-06) — kein
Nachfolgestand im Gesamtverzeichnis SIA nachweisbar. "xalt" bedeutet hier also NICHT
superseded, sondern eine reine **Ordner-Fehlklassierung** — dieselbe Fallenart wie in Run 22
(SIA 266/1 im italienischen, SIA 410 im franzoesischen Sprachordner): der Aufenthaltsort einer
Datei ist keine verlaessliche Aussage ueber ihren Fassungsstand.

Der 5-Seiten-Fragment-Scan `d 0165.pdf` (Hauptordner) enthaelt exakt dieselben Seiten wie ein
Ausschnitt der Vollversion (Titelblatt + S.14-17) — kein eigener Inhalt, reine Teilkopie.

## Destillation (4 parallele Lese-Agenten)
Die Vollversion ist ein reiner Bild-Scan ohne Textlayer (`pdftotext` liefert nichts). Vier
Agenten haben je ca. 18-19 Seiten visuell gelesen (1-19, 20-38, 39-56, 57-73) und alle
Definitionen, Formeln, Tabellen mit PDF-Seitenreferenz extrahiert. Das Destillat wurde
komplett neu geschrieben und ersetzt das bisherige 5-Seiten-Teil-Destillat:

- **Kapitel 1** Einleitung (Traegerschaft IPB/VIV/SIA/SVIT/USPI/SHEV/BWO/VZI/KBOB/ETH-Rat)
- **Kapitel 2** Kennzahlen-Kataloge (Flaechen-/Volumenkennzahlen 2.1, Kostenkennzahlen 2.2 —
  alle Kennzahl-Kuerzel/Formeln/Einheiten aus den Originaltabellen)
- **Kapitel 3** Parameter-Definitionen: 3.1 Flaechen/Volumen (GSF/GGF/UF/AGF/GF/KF/NGF/FF/VF/
  NF/HNF/NNF/VMF/VTF/LF/VWAGF/EMF/DMF/ZF/EBF/GV), 3.2 Kosten (IK/BauK/HK/HK3/BMK/BK/EK/GRK/SK/
  ÜK/IHK/ÜIHK/ISK/UHK/ÜUK/UZK/FK/NMK/NK), 3.3 Spezielle Parameter (VZÄ/AP/AZU/AM/EV)
- **Kapitel 4** Berechnungsformulare (zusammengefasst, keine Zusatzdefinitionen)
- **Kapitel 5** zwei durchgerechnete Berechnungsbeispiele (Buero-/Verwaltungsgebaeude,
  Wohn-/Verwaltungsgebaeude) mit allen Zahlenwerten
- **Kapitel 6** Begriffe-Glossar (Anlagewert/Benchmark/Bruttorendite/Ertragswert/Neuwert/
  Nettorendite/Realwert/Verkehrswert etc.)
- **Anhang 1-8**: Flaechenbaum, vollstaendige Zuordnung SIA416↔DIN277 (alle HNF1-6/NNF7/FF8/
  VF9/BUF10-Subcodes), die 6 dokumentierten Abweichungen SIA416/DIN277, Vermietbare-Flaeche-
  Baum, Bemessungs-Spezialfaelle (Bruestungen/Abschraegungen/Treppenlaeufe/Zwischenwaende),
  Kostengliederung DIN18960/GEFMA200 (zusammengefasst), Literaturverzeichnis (17 Positionen)

## Verifikation (3 unabhaengige Refuter-Agenten, Refuter-Prinzip)
Je ein Drittel des Dokuments (S.1-28 / S.29-49 / S.50-73) unabhaengig gegen das Original
geprueft. **13 Befunde**, alle korrigiert:

1. Unvollstaendige Funktionstraeger-Rollenliste (Abb.1) — 5 fehlende Rollen ergaenzt
   (Planer, Projekt-Manager, Dienstleister, Lieferant, Kunde)
2. "begehbar" bei Installationsschaechten (Grundregeln) fehlte
3. "von Konstruktionen" bei nicht zugaenglichen Hohlraeumen (GF-Definition) fehlte
4. "ober- und unterirdisch" bei der EBF-Definition fehlte
5. Unbelegtes BKP-Detail "19-99/W1-W6" (im Original nicht auffindbar) entfernt
6. Nettorendite-Definition: fehlendes "vor Steuern" + fehlerhafte Formel-Verschachtelung
   (Bruttoertrag ist im Original bereits als Nettomietzins-minus-Zahlungsausfaelle definiert)
7. Verkehrswert-Definition: fehlender Bezugssatz zur Wirtschaftlichkeits-Wuerdigung im
   Verhaeltnis zum Anlagewert
8. **Systematischer Seitenzahl-Versatz +1** in allen Anhang-1-bis-7-Zitaten (PDF-Tool-Index
   statt gedruckter Folio verwendet) — alle 7 Anhang-Ueberschriften korrigiert
9. "Fall A3" existiert im Original nicht — dort sind die drei Bruestungs-Panels als A1/A2/A2
   beschriftet (ein Tippfehler des Originaldokuments von 2000, kein A3-Label)
10. Faelschlicher "JANS-"Praefix bei der BUF10-Ergaenzung entfernt — ist eine SIA-D-0165-eigene
    Ergaenzung (Fussnote 44 im Original), keine JANS-Erfindung
11. KFT/KFN-Split faelschlich in den Anhang-1-Flaechenbaum verortet — gehoert im Original nur
    zum Anhang-4-Diagramm ("Vermietbare Flaeche")

Kapitel 4 (Berechnungsformulare) und Kapitel 5 (beide Berechnungsbeispiele, ALLE Zahlenwerte
inkl. Flaechen/Prozentsaetze/CHF-Betraege/Energiekennzahl) sowie die 6 Abweichungspunkte in
Anhang 3 wurden **0-Fehler bestaetigt** — keine Korrektur noetig.

## Status
Bleibt bewusst `speculative` — trotz Vollstaendigkeit kein sauberer Nulldurchgang, da die
Verifikation selbst 13 (grossteils kleinere, aber echte) Befunde fand. Naechste
Verifikationsrunde ohne Beanstandung wuerde `established` rechtfertigen.

## Nachgefuehrt
- `destillate/sia-d0165-2000-kennzahlen-immobilienmanagement.md`: komplett neu geschrieben
  (5 S. → 73 S.), 13 Korrekturen eingearbeitet, Frontmatter aktualisiert
- `training/norm-inventar.md`: 3 Zeilen (`d 0165.pdf` + beide xalt-Kopien) korrigiert,
  Tracker-Kopf Run-29-Eintrag ergaenzt
- `destillate/INDEX.md`: Statuszeile aktualisiert
- `CHANGELOG.md`: konsolidierter Run-29-Eintrag ergaenzt

## Nicht in Scope dieses Laufs (offen)
- Kein Genehmigungsvermerk (Delegiertenversammlung/Datum/Kommission) in den 73 Seiten
  gefunden — evtl. entfaellt er bei SIA-Dokumentationen (Kategorie "D") generell, nicht
  abschliessend geklaert.
- Literaturverzeichnis Position 15: Abkuerzung im Scan nicht zweifelsfrei lesbar
  ("SVKG" vs. moeglich "SVGK") — belassen bei der in `immobilienbewertung` etablierten
  Schreibweise, bei Bedarf am Original nachpruefen.
- Anhang 6 (DIN-18960/GEFMA-200-Kreuztabelle) bewusst strukturiert zusammengefasst statt
  vollstaendig transkribiert (Urheberrechts-Vorsicht bei DIN-Fremdinhalt).

## Empfehlung fuer den naechsten Lauf
Weitere P2/P3-Normen mit Status "Teil-Destillat" im Inventar auf dasselbe Muster pruefen
(ungelesene Seiten im vorhandenen PDF vs. echte Bring-Schulden; insbesondere Ordner-
Fehlklassierungen wie bei SIA D 0165/SIA 266/1/SIA 410 systematisch ausschliessen — ein
Datei-fuer-Datei-MD5-Vergleich aller xalt-Kopien gegen ihre "aktuellen" Pendants koennte
weitere Faelle aufdecken, in denen "xalt" faelschlich Aktualitaet suggeriert, wo keine
Fassungsdifferenz existiert). Workflow-Tool-Fix weiterhin abwarten oder erneut testen.
