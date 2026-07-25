---
title: Wissens-Chef Run 9 — Cross-KB-Konsistenzpruefung (energie ↔ normen / planungsgrundlagen / baurecht)
datum: 2026-07-19
lauf: Run 9
methode: Workflow-Fan-out 3 Lese-Agenten → 13 adversariale Verifikations-Agenten (Widerlegungsauftrag)
ergebnis: 16 Befunde gemeldet, 12 CONFIRMED, 4 REFUTED
---

# Wissens-Chef Run 9 — Bericht

## Kurzfassung

Der Lauf hat den frischen Stoff der energie-Runs 79/80 (18.07.2026) gegen drei Nachbar-KBs gezogen.
**Ergebnis: 12 bestaetigte Befunde, davon vier von hoher Schwere — darunter zwei falsche
Rechtszuschreibungen, die bis in die Bauherren-FAQ durchgeschlagen waren.** Vier Befunde wurden von
der Verifikationsstufe widerlegt und nicht umgesetzt.

Der Lauf lief gedrosselt gemaess Rule 260714 (Wochenlimit): schlanker Fan-out mit drei Lesern,
danach ein Refuter je Befund.

## Die vier schwersten Befunde (alle CONFIRMED, alle korrigiert)

**1. Die 5-Jahres-Betriebsoptimierung war kein Zuercher Recht.** Die Bauherren-FAQ F100 und das
Modul-7-Destillat behaupteten, im Kt. Zuerich gelte seit 1.9.2022 die Pflicht, «alle 5 Jahre» eine
dokumentierte Betriebsoptimierung durchzufuehren — mit § 13d EnerG als Beleg. Der amtliche
Volltext kennt das nicht: § 13d Abs. 1 EnerG verlangt die Optimierung nur «innerhalb dreier Jahre
nach Inbetriebsetzung», und die Ausfuehrungsverordnung §§ 48a-48c BBV I regelt Befreiung, Inhalt,
Bericht und Aufbewahrung — **aber keine Wiederholung**. Die fuenf Jahre stammen aus dem
MuKEn-Musterrecht (Art. 7.4 MuKEn 2025 / Art. 8.4 MuKEn 2014) und sind fuer ZH erst mit einer
kuenftigen Umsetzung verbindlich. Das ist der teuerste Fehlertyp, weil eine Bauherren-Antwort eine
Betreiberpflicht behauptet, die es so nicht gibt.

**2. Das Fossilfrei-Gebot stand am falschen Paragrafen.** Die energie-KB schrieb das Verbot fossiler
Brennstoffe im Neubau durchgehend § 10a EnerG zu — an acht Stellen, inklusive Bauherren-FAQ und
Formularmatrix. Amtlich steht es in **§ 11 Abs. 1 EnerG**; § 10a ist die Effizienz- und
Delegationsnorm («moeglichst wenig Energie»). Beide Bestimmungen wurden durch dasselbe Gesetz vom
19.04.2021 per 1.9.2022 in Kraft gesetzt, es gibt also kein Fassungsfenster, das die Zuschreibung
retten wuerde. Eine falsche Fundstelle in einer Bauherren-Antwort oder einem Behoerdenschreiben
faellt sofort auf.

**3. Eine Bring-Schuld, deren Antwort seit Wochen im Haus lag.** Das Modul-7-Destillat fuehrte den
200'000-kWh-Schwellenwert als offenen Punkt mit dem naechsten Schritt «beim AWEL anfragen». Die
KB `baurecht` haelt den amtlichen Verordnungstext bereits: § 48c Abs. 1 lit. a BBV I nennt den Wert
woertlich. Die Anfrage haette nichts erbracht, was nicht schon im Hub stand.

**4. Der Bemessungswert-Zuschlag, den es nicht gibt.** Das am Vortag entstandene
Naturdaemmstoff-Destillat war aus Shop-Metadaten und Sekundaerquellen gebaut und behauptete, der
Bemessungswert sei «immer hoeher» als der Nennwert, weil ein Sicherheitszuschlag eingerechnet werde
— die exakte Zuschlagsformel blieb als offener Punkt stehen. SIA 279:2018 Ziff. 3.2.2.1 sagt fuer
den Regelfall das Gegenteil: Bemessungswert = Nennwert, **ohne Zuschlag**; ein Zuschlag ist nur fuer
Ortdaemmstoffe vorgesehen (Ziff. 3.2.2.2). Die Sicherheiten stecken bereits in der Ermittlung des
Nennwerts. Die gesuchte Formel existiert nicht — der «offene Punkt» war eine Scheinluecke.
Verschaerfend: der Normvolltext lag im JANS-Bestand und war seit dem 12.07.2026 in `normen`
destilliert. Das Destillat wurde neben der bereits vorhandenen, besseren Quelle gebaut.

## Ausgefuehrte Aktionen

| # | KB | Datei | Aktion |
|---|---|---|---|
| 1 | energie | `wiki/BAUHERREN-FAQ.md` (F100) | 5-Jahres-Kadenz auf ZH-Stand zurueckgenommen, Abgrenzungskasten MuKEn ↔ ZH |
| 2 | energie | `destillate/muken-2025-modul-7-...` | 1-Satz + Bauherren-Transfer + Zielgruppen-Absatz bereinigt; Bring-Schuld 200'000 kWh geschlossen (§ 48c BBV I) |
| 3 | energie | 5 Dateien (`wiki/`, `destillate/`) | § 10a → **§ 11 Abs. 1 EnerG** (Fossilfrei-Gebot), 7 Fundstellen |
| 4 | planungsgrundlagen | `wiki/energie-energienachweis-zh-formulare.md` | 8. Fundstelle § 10a/§ 11 korrigiert; VHKA-Querbezug; WDV-Verweis; EN-120-Verweis |
| 5 | energie | `destillate/naturdaemmstoffe-...` | Bemessungswert-Systematik am Normvolltext korrigiert; Frontmatter auf SIA 279:2018; Querbezuege `normen`; RF-Terminologie; Negativbefund praezisiert; 1 offener Punkt geschlossen, 1 praeziser neu gefasst |
| 6 | normen | `wiki/REGISTER.md` | SIA-2024-Zeile: freie amtliche Interims-Quelle vermerkt, Bring-Schuld auf Anhang A/F verengt |
| 7 | energie | `destillate/vhka-...`, `destillate/oelheizung-...` | Rueckverweise auf die Formular-/Verfahrensebene in `planungsgrundlagen` |
| 8 | baurecht | `wiki/baureife-und-erschliessung.md` | EnerG-Nummerierung vom Buchstand 2019 auf Nachtrag 129 nachgefuehrt (§ 13 aufgehoben) |
| 9 | koordination | `QUERBEZUEGE.md` | 3 Paar-Eintraege; Rotationsliste entruempelt (4 von 6 Zeilen waren Karteileichen) |

## Widerlegt — und deshalb NICHT umgesetzt (4)

Die Verifikationsstufe hat erneut ein Viertel der Befunde gekippt. Ohne sie waeren vier korrekte
Stellen «wegkorrigiert» worden:

1. **«Tabelle 6 der SIA 380/1» sei eine unverifizierbare Norm-Fundstelle.** Es ist eine
   Erlass-Aussage (WDV § 2 Abs. 1 lit. b) und am Erlass vollstaendig belegbar — keine Uebergabe an
   `normen` noetig.
2. **«planungsgrundlagen behauptet faelschlich eine verschaerfte SZ-VHKA-Anforderung».** Die
   tragende Praemisse des Lesers («SZ ist in allen Parametern milder») ist am energie-Destillat
   selbst falsch: § 27 EnV 1 SZ kennt keine Minergie-Befreiung, ZH schon — dort ist SZ strenger.
3. **«Bruecke zur Oel-/Gasheizungs-Ersatzpflicht fehlt».** Sie existiert eine Ebene hoeher, im
   Wiki-Artikel statt im Destillat; der Leser hatte nur auf Destillat-Ebene gesucht.
4. **«planungsgrundlagen laesst die 5-Jahres-Pflicht weg».** Genau umgekehrt: das Weglassen war
   korrekt, die Behauptung stand bei `energie`. Zwei unabhaengige Agenten sind ueber dieselbe
   Stelle gestolpert und haben sie aus entgegengesetzter Richtung beschrieben — erst die
   Verifikation hat die Richtung geklaert.

## Struktur-Muster (fuer den Synergie-Orchestrator)

**Das Muster «neben der besseren Quelle gebaut» hat sich wiederholt — jetzt zum vierten Mal.**
Run 79 hat ein Destillat aus Shop-Metadaten und einer deutschen Sekundaerquelle gebaut, obwohl der
Schweizer Normvolltext im Haus lag und sechs Tage zuvor destilliert worden war. Die eigene KB
wusste den Weg sogar: `energie/wiki/daemmstoffe-lambda.md` verweist auf genau dieses
normen-Destillat. Das ist dieselbe Mechanik wie bei den VKF-Wortlaut-Fortschreibungen (Runs 3, 4, 6)
und bei SIA 180 (Run 6): **die Rule `normen-referenz` greift beim SCHREIBEN nicht, sondern wird
erst im Cross-KB-Lauf nachtraeglich durchgesetzt.** Der Preis ist hier sichtbar geworden — es blieb
nicht bei einem fehlenden Link, sondern es entstand eine **fachlich falsche Aussage**.

Empfehlung an den Synergie-Orchestrator: vor der Neuanlage eines Destillats einen Pflicht-Schritt
«grep die anderen KBs nach der Norm-/Erlassnummer» setzen. Der Aufwand ist ein Suchbefehl, der
Ertrag in diesem Lauf waeren zwei vermiedene Fehlaussagen gewesen.

**Zweites Muster (neu): «Rechtsanker driftet vom Erlass weg».** Beide falschen Zuschreibungen
(§ 10a statt § 11 Abs. 1; 5-Jahres-Kadenz aus MuKEn ins ZH-Recht) sind demselben Typ: eine
Fachaussage ist korrekt, nur der daran geheftete Paragraf bzw. der Geltungsraum stimmt nicht. Beide
haben sich anschliessend ueber mehrere Dateien vererbt (8 bzw. 3 Fundstellen). Der Fehler ist billig
zu machen und teuer zu finden — er faellt nur auf, wenn jemand gegen den amtlichen Volltext liest,
also genau in diesem Lauf.

## Offene Entscheide fuer Raphael

**E1 — Doppelspur Energierecht ZH (bestaetigt, nicht selbst aufgeloest).** Die KB `energie` gibt die
Fuehrung im Energierecht ausdruecklich an `baurecht` ab («Energierecht (EnerG/BBV) → Skill
`baurecht` (nicht doppeln)»), fuehrt aber in drei Rechts-Destillaten
(`vhka-...`, `elektroheizungs-ersatzpflicht-...`, `oelheizung-gasheizung-ersatzpflicht-...`)
ZH-EnerG-Paragrafen auf Absatz- und Fassungsstand-Ebene — dieselben §§, die `baurecht` gegen den
amtlichen Volltext verifiziert hat. Heute stimmen beide Seiten inhaltlich ueberein; das Risiko ist
die naechste EnerG-Revision, die dann an zwei Orten nachgezogen werden muesste. Zu entscheiden:
Trimmen der energie-Destillate auf Fundstellen-Verweise (sauber, aber ein Eingriff ueber
KB-Grenzen), oder bewusstes Belassen mit Pflege-Vermerk. Die SZ-Paragrafen sind nicht betroffen —
dort gibt es keine Doppelspur, `energie` ist allein zustaendig.

**E2 — § 8a EnerG.** Beim Nachfuehren des baurecht-Artikels blieb offen, ob § 8a EnerG noch besteht:
die vorliegende amtliche raw-Datei deckt nur §§ 9-14 ab. Der Verweis wurde deshalb **nicht**
gestrichen, sondern mit Fassungsvermerk markiert. Schliessbar mit einem gezielten Nachtrag der
raw-Datei im naechsten baurecht-Buch-Run.

**Weiter offen aus frueheren Laeufen:** VKF-16-15-Matrix nach `normen` uebernehmen (Run 8),
Volltext-Destillation der 2022er-BSR-Fassung (Run 8), normen-Dublette Solaranlagen (Run 6),
GSchV-Doppelspur (Run 7), Bring-Schulden SIA-380/1-Volltext und SIA 180-C2:2020.

**Kleiner Nebenbefund (selbst schliessbar im naechsten energie-Run):** im WDV-Destillat ist die
Klammer «(Heizwaermebedarf, § 3)» auf «Verweis in WDV § 2 Abs. 1 lit. b» zu korrigieren.
