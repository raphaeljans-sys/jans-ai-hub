# Wissens-Chef Run 43 — 25.08.2026

*Koordinationsinstanz über den Wissensbasen. Fan-out und Verifikation über das Workflow-Tool
(6 Melder `model: sonnet` nach Rule `modellwahl-routine`, 6 Refuter im Hauptmodell mit dem
ausdrücklichen Auftrag zu widerlegen); Urteil, Aktionen, eigene Prüfungen und Registerpflege im
Hauptkontext.*

## 1 · Lauf-Rahmen

Delta-Basis 24.08.2026 23:11, Fenster **24,0 h**, **115 Commits**, HEAD `f89dc1051`,
**71 geänderte Dateien in `wissen/`** (energie 19 · baurecht 18 · twin 16 · normen 8 ·
koordination 6 · planungsgrundlagen 5 · übrige 12).

Uhr-Kontrolle bestanden: Station 23:11 CEST gegen nativen Synology-Selfcommit 23:03:38 (Rule
`auto-verbesserungen` 260730b). NAS gemountet, Selfcommit-Kette gesund (push OK 23:15:05), keine
Repo-Divergenz.

**Zuschnitt:** 6 Melder + 6 Refuter = **12 Agenten**, 2'081'458 Token, 192 Werkzeugaufrufe,
7,3 Minuten, 0 Fehler. **6 Befunde gemeldet, 5 bestätigt, 1 widerlegt, 2 Nullbefunde bestätigt.**
Dazu vier eigene Funde im Hauptkontext. **16 Dateien geändert, alle additiv oder zeilenneutral.**

## 2 · Der harte Befund: die RPV-Schwellen ausserhalb der Bauzone

`baurecht` hat am 24.08. (Buch-Run 140) einen eigenen Destillationsfehler korrigiert: die Formel
«max. 30 % der aBGF bzw. max. 100 m²; Erweiterungen **ausserhalb** des Volumens nur halb
angerechnet» ist in beiden Teilen falsch. Art. 42 Abs. 3 RPV kennt **zwei getrennte Schwellen** —
**lit. a innerhalb** des Gebäudevolumens **+60 %** der aBGF, **lit. b ausserhalb** weder 30 % noch
100 m², und **die Erweiterungen innerhalb werden halb angerechnet**. Die Anrechnungsrichtung war
umgekehrt, die 60-%-Innenschwelle fehlte ganz.

**Die Korrektur erreichte `planungsgrundlagen` nicht.** Dort führt
`wiki/recht-norm-rechtsprechung-vg-zh.md` Z. 195-196 die alte Formel unverändert — in einem
Abschnitt, der ausdrücklich zum Nachschlagen an dieser Stelle einlädt («bei Bedarf … hier
nachschlagen»), Status `established`, `last_updated` 14.07.2026.

Der Refuter hat den Befund am amtlichen Volltext gegengelesen und **zwei Punkte ergänzt, die der
Melder nicht hatte**: massgeblicher Vergleichszustand ist nach **Art. 42 Abs. 2 RPV** der Zeitpunkt
der Zuweisung zum Nichtbaugebiet — der Stichtag 1.7.1972 gilt nur für altrechtliche Bauten nach
Art. 41 RPV, nicht als starrer Referenzzustand; und lit. a kennt seit 1.1.2026 (AS 2025 659) eine
Überschreitungsmöglichkeit bis 100 m² aBGF bei altrechtlicher Erstwohnung.

**Aussenwirkung:** Wer die alte Zeile einer Bauherrschaft gibt, halbiert ihr den
Innenausbau-Spielraum und rechnet den Anbau zu günstig.

**Gesetzt:** Nachtrag +16/−0 nach Z. 200, alle drei Korrekturen mit Fundstelle, Verweis auf die
führende KB. Innerhalb `baurecht` selbst ist die Korrektur vollständig durchgezogen (Kap. 20, 21,
Wiki, QUESTIONS geprüft, kein Rest-Vorkommen).

## 3 · Der gespiegelte Fehler: Art. 229 StGB in zwei Destillaten

Beide bfu-Destillate der KB `normen` geben den Strafrahmen von Art. 229 StGB mit «bis zu drei
Jahren» für **beide** Tatbestände wieder. Richtig ist: **Abs. 1 vorsätzlich bis fünf Jahre**,
Abs. 2 fahrlässig bis drei. **Es ist derselbe Fehler, den `baurecht` in Buch-Run 101 an sich selbst
korrigiert hat** — der Abs.-2-Wert wandert auf den praktisch massgeblicheren Vorsatzfall.

Der Refuter fand die zweite Fundstelle, die der Melder übersehen hatte
(`bfu-sicherheit-im-wohnungsbau.md` Z. 45), und wies nach, dass der dortige `status`-Vorbehalt sie
**nicht** deckt: er ist auf **kantonales** Recht vor dem 1.1.2011 gemünzt, Art. 229 StGB ist
Bundesrecht. Er zog ausserdem die Grenze des Vermerks: der Wert zur fahrlässigen Missachtung bleibt
richtig, die Kumulationspflicht ist nicht nachgeprüft und wird weder bestätigt noch verworfen.

**Gesetzt:** zwei Rechtsstands-Vorbehalte, je +12/−0, Quellenwerte unverändert. Führend für den
Strafrahmen ist `baurecht`; die bfu-Kurzinfo 02.2011 ist nachrangige Fachpublikation.

## 4 · Wo der Refuter die Aktion gedreht hat

Ein Melder meldete, Art. 58 OR, Art. 229 StGB, BauPG und PrSG fehlten in `baurecht` ganz, und
schlug einen Verweis von `baurecht` auf ein `speculative` normen-Destillat vor. **Der Refuter hat
das umgedreht:** alle vier stehen belegt in derselben KB, in
`buecher/band-2/13-weitere-grundanforderungen-teil2.md` Z. 35-36, samt BGE 91 II 208 — mit
**stärkerem** Beleg als der vorgeschlagene Zielort. Der echte Mangel war ein anderer: der
Wiki-Artikel `bauausfuehrung-und-baukontrolle.md` deckt § 239 PBG nur aus der
Bd.-1-Kap.-8-Perspektive ab und zeigte nicht auf die eigene Bd.-2-Faktenbasis; der Satz «primäre
Verantwortung bleibt bei Bauherr/Unternehmer/Planer» stand ohne jeden Beleg.

**Gesetzt:** Zeiger-Nachtrag +15/−0 auf die eigene Quelle, das normen-Destillat nur als
ausdrücklich nachrangig genannt. **Das Verhältnis hält an: der Refuter korrigiert die Aktion
häufiger, als er sie bloss bestätigt** (Run 40: einmal, Run 41: zweimal, Run 42: dreimal von sechs,
Run 43: zweimal von sechs plus eine vollständige Widerlegung).

## 5 · Zwei Nullbefunde, beide aussagekräftig

**(a) Die Uf-Entwertung ist nicht gesickert.** `energie` hat am 25.08. (Run 163) belegt, dass die
Uf-Fallback-Tabelle des BFE-Bauteilekatalogs 2002 (Holz 1,9 / Kunststoff 2,5 / Verbundprofil 3,3)
seit 08.2009 amtlich abgelöst ist (Merkblatt Fenster 805.107.d: 1,8 / 2,2 / 2,8). Geprüft wurden
`planungsgrundlagen/wiki/` vollständig, `normen/wiki/` und rund 300 Destillate, `baurecht/wiki/`,
die Skills `energie`, `planungsgrundlagen`, `kostenschaetzung` sowie `references/`. **Einziger Fund
ausserhalb `energie` trägt den Vermerk bereits** — `normen` hat ihn am selben Tag gesetzt. Das ist
die Gegenprobe zum Run-41-Befund, wo die Entwertung ihren Abnehmer nicht erreichte: **die
Cross-KB-Bringschuld nach Rule `wissens-bibliothekar` hat hier funktioniert.**

**(b) Der Giebelweg-Fehlertyp ist ein Einzelfall.** Übergabepunkt 3 aus Run 42 verlangte einen
Sweep über die «beantwortet»-Sektionen aller QUESTIONS.md. Geprüft in acht KBs, **kein zweiter
Fall**. Der Sweep muss nicht wiederholt werden, solange keine neue Teil-Nachführung protokolliert
wird.

## 6 · Was die Aufsicht sich selbst eingebrockt hat

Fünf Artikel in `planungsgrundlagen` tragen datierte Nachträge, die **jünger sind als ihr eigenes
`last_updated`** — bis zu sechs Wochen. Urheber sind die Wissens-Chef-Läufe **39, 41 und 42**: sie
haben fremde Artikel additiv korrigiert und das Frontmatter nicht nachgezogen. **Die
Frische-Anzeige der KB verrottete durch genau die Läufe, die sie prüfen.**

Alle fünf nachgezogen (je 1/1, alter Stand mitgeführt): `energie-uebersicht` 07-30 → 08-24 ·
`energie-heizwaermebedarf-waermeerzeugerleistung` 07-25 → 08-24 ·
`energie-minergie-referenzprojekt-maison-climat` 07-13 → 08-21 ·
`energie-energienachweis-zh-formulare` 07-30 → 08-21 · `brandschutz-pl03-wegweiser` 08-23 → 08-24.

**Arbeitsregel ab Run 43: wer einen fremden Wiki-Artikel additiv korrigiert, zieht dessen
`last_updated` im selben Lauf nach.**

## 7 · Drei Wochen Standzeit für drei Messfehler

Der `wissenscheck` meldete in `auflagebereinigung` am **01.08., 03.08. und 25.08.** denselben
«toten Backlink `[[[fristenlogik-bauentscheid-zh]]`». Der Zielartikel existierte die ganze Zeit.

Ursache: zwei Dateien im Hub schreiben die `links:`-Zeile mit zusätzlicher YAML-Listenklammer
(`links: [[[a]], [[b]], pfad]`), die `tools/wiki-konsistenz.sh` als Teil des Linknamens liest.
Hubweit schreiben 65 Artikel die Form ohne äussere Klammer, zwei mit — und beide sind betroffen.
Zweiter Befund derselben Datei: `quellen:` statt `sources:` im Frontmatter (hubweit 296 zu 3); die
drei GVZ-Weisungen waren vollständig da, nur unter dem falschen Feldnamen.

Angeglichen (je 1/1). `auflagebereinigung` und `projekt-lessons` melden erstmals seit dem 01.08.
**keine Befunde**. Die beiden Dateien verweisen zudem aufeinander — die Cross-KB-Kante war für das
Werkzeug unsichtbar.

**Lehre: ein Befund, der dreimal unverändert wiederkehrt, ist zuerst am Werkzeug zu prüfen, nicht
an der Wissensbasis.** Phase 2 des `wissenscheck` läuft nur interaktiv; deshalb lagen zwei
Zwei-Minuten-Korrekturen drei Wochen.

**Nicht behoben, gemessen und vorgelegt** (Vorschlag Abschnitt 10): `wiki-konsistenz.sh` nimmt von
der Frontmatter-Pflicht nur `INDEX|QUESTIONS|CLAUDE` aus; Registerdateien wie
`immobilienbewertung/wiki/wissensluecken.md` fallen durch, obwohl der INDEX sie korrekt als Pfad
führt. Ebenso melden bewusste Vorwärtsreferenzen auf geplante Artikel (`kunde-bopp`, dort als
*(geplant)* gekennzeichnet) als tote Links.

## 8 · Zwei established-Artikel waren unauffindbar

`normen/wiki/INDEX.md` führte 6 von 8 Sachartikeln. Nicht registriert waren
`synthese-sia-vkf-fachskills` (established seit 17.07.) und `vkf-beherbergungskategorien`
(established seit 25.07., **zweifach adversarial geprüft**). Der zweite hat einen direkten
Abnehmer: der Skill `brandschutz` nennt «Beherbergung a/b/c» wörtlich in seiner eigenen
Beschreibung. Der INDEX ist der Auffindungsweg des Skills `normen` — ein nicht registrierter
Artikel wird beim Routen nicht gefunden. Beide nachgetragen (+2/−0).

## 9 · Offener Entscheid für Raphael

**Die Steinmann-Zeile in `rules/anrede-kontakte.md` sagt das Gegenteil des Gemessenen.**

Die Zeile führt: «Salut Roman» warm; **fällt bei Mahn-/Geldkontext auf «Guten Tag» zurück».
Der Korpus misst dreimal das Gegenteil, jeweils «**Geschätzter Roman,**»: 17.07.2026
(KV-Zusammenstellung mit eigener Rechnung), 29.07.2026 (Baubeschrieb zum KV) und 24.08.2026 17:02
(Terminzusage «Mitte September den revidierten KV unterbreiten»). Der **einzige** Beleg für den
Rückfall ist eine **Mahnung** (Zahlungserinnerung 19.03.2026). Die Zeile ist also nicht falsch,
sondern **zu weit gefasst: «Geld» ist nicht gleich «Mahnung»**, und im Anlassgewicht-Fall steigt
die Stufe, statt zu fallen — im Einklang mit der Klausel «Gewicht des Anliegens schlägt den
Routine-Default» im Kopf derselben Rule.

Der Vermerk an der Rule-Zeile **wurde vom Auto-Mode-Klassifikator zurückgehalten**. Nicht umgangen
(Rule `wege-und-vollmachten`: wer dort hängenbleibt, legt den fertigen Befehl vor). Fertiger,
additiver Wortlaut, anzuhängen an das Ende der Notiz-Spalte in Z. 85, Regelwortlaut unverändert,
Form analog Z. 47 und Z. 86 derselben Datei:

> ⚠ **Rückfall-Halbzeile durch drei neuere Belege eingegrenzt (Vermerk 25.08.2026, Wissens-Chef
> Run 43; Regelwortlaut unverändert, Rückfragepflicht).** Der Rückfall auf «Guten Tag» ist nur für
> die **Mahnung** belegt (Zahlungserinnerung 19.03.2026). Bei Kostenvoranschlag, Rechnung und
> Terminzusage misst der Korpus dreimal die Stufe **hinauf**: «Geschätzter Roman» am 17.07., 29.07.
> und 24.08.2026 — im Einklang mit der Anlassgewicht-Klausel oben. «Geld» ist also nicht gleich
> «Mahnung». Belege: `wissen/twin/wiki/beziehungsregister.md`, Abschnitte «Batch 104» und
> «Fidelity 260825»; Entscheid vorgelegt als `wissen/twin/wiki/QUESTIONS.md` 260825b #3.

Die Sachfrage liegt bereits als `twin/wiki/QUESTIONS.md` 260825b #3 bei Raphael. Der Vermerk wäre
nur die Absicherung, bis er antwortet — bis dahin wirkt die zu weite Zeile in jeder Session.

## 10 · Was gemessen, aber nicht angefasst wurde

- **`tools/wiki-konsistenz.sh`:** Ausnahmeliste um Registerdateien erweitern (Kriterium: eine
  `wiki/*.md` ohne Frontmatter, die im INDEX als Backtick-Pfad statt als `[[Link]]` geführt wird),
  und Vorwärtsreferenzen mit dem Zusatz *(geplant)* nicht als tote Links melden. **Bewusst nicht
  selbst geändert:** das Script ist das Messwerkzeug dieser Reihe; wer daran schraubt, verschiebt
  die Messlatte mitten in der Messreihe. Hubweiter Stand nach diesem Lauf: 44 → 41 Befunde, davon
  der grösste Teil Platzhalter in QUESTIONS (`[[slug]]`, `[[F16]]`, `[[…]]`).
- **`tools/datenstand-waechter.py` (angelegt 23.08.):** meldet hubweit **420 Befunde** —
  planungsgrundlagen 78 · immobilienbewertung 71 · twin 54 · firmengruendung-ch 40 · energie 39 ·
  baurecht 34 · projekt-lessons 29 · bauprodukte 29 · übrige 46. **Die 54 in `twin` sind
  systematischer Fehlalarm:** diese KB zitiert CHF-Beträge als *Stilbelege* (Tausender-Apostroph,
  Satzlänge), nicht als alternde Kennwerte. Vorschlag analog zur bereits eingebauten Ausnahme für
  Rechts- und Norm-Destillate: `twin` von der Datenstand-Prüfung ausnehmen. Der Rest ist ein echter
  KB-interner Wartungsposten, kein Cross-KB-Thema.

## 11 · Ausgeführte Aktionen (16 Dateien)

| Datei | Wirkung |
|---|---|
| `planungsgrundlagen/wiki/recht-norm-rechtsprechung-vg-zh.md` | +16/−0 RPV-Schwellen-Nachtrag |
| `planungsgrundlagen/wiki/energie-uebersicht.md` | 1/1 `last_updated` |
| `planungsgrundlagen/wiki/energie-heizwaermebedarf-waermeerzeugerleistung.md` | 1/1 `last_updated` |
| `planungsgrundlagen/wiki/energie-minergie-referenzprojekt-maison-climat.md` | 1/1 `last_updated` |
| `planungsgrundlagen/wiki/energie-energienachweis-zh-formulare.md` | 1/1 `last_updated` |
| `planungsgrundlagen/wiki/brandschutz-pl03-wegweiser.md` | 1/1 `last_updated` |
| `baurecht/wiki/bauausfuehrung-und-baukontrolle.md` | +15/−0 Zeiger auf Bd. 2 Kap. 13.3.2 |
| `normen/destillate/bfu-sicherheit-rechtliche-aspekte.md` | +12/−0 Strafrahmen-Vorbehalt |
| `normen/destillate/bfu-sicherheit-im-wohnungsbau.md` | +12/−0 Strafrahmen-Vorbehalt |
| `normen/wiki/INDEX.md` | +2/−0 zwei established-Artikel nachregistriert |
| `twin/wiki/beziehungsregister.md` | +5/−0 Zeiger-Berichtigung #4 → #3 |
| `auflagebereinigung/wiki/aemter-stadt-zuerich.md` | 1/1 Link-Notation |
| `auflagebereinigung/wiki/gvz-einreichung-bma-sprinkler.md` | 1/1 `quellen:` → `sources:` |
| `projekt-lessons/wiki/kispi-behoerden-zustaendigkeitswechsel-1171-26.md` | 1/1 Link-Notation |
| `kunde-bopp/wiki/profil-christoph-bopp.md` | 1/1 Vorwärtsreferenz gekennzeichnet |
| `koordination/QUERBEZUEGE.md` | +72/−0 (6 Prüfeinträge, 2 Matrixzeilen) |

Dazu sieben KB-CHANGELOGs (planungsgrundlagen, baurecht, normen, twin, auflagebereinigung,
projekt-lessons, kunde-bopp) und dieser Bericht. **Jede Schreiboperation mit Zeilenzahl gemessen
(Rule `auto-verbesserungen` 260811); keine Datei hat Zeilen verloren, kein globales
Suchen-und-Ersetzen, keine Löschung.**

## 12 · Übergabe an Run 44

1. **Der nächste ganzflächige Sweep:** `energie-uebersicht.md` ist mit diesem Lauf erledigt (Feld C
   fand nur den Frontmatter-Verzug, keine materielle Abweichung — die KB hält sich sauber an die
   Rollen-Matrix). Der nächste Kandidat nach demselben Muster ist
   `baurecht/wiki/bauausfuehrung-und-baukontrolle.md`, jetzt frisch angefasst, oder ein
   `established`-Artikel über 1'000 Zeilen, der fremden Normwortlaut materiell wiedergibt.
2. **Der Fehlertyp dieses Laufs verdient eine eigene Suche:** *dieselbe Verwechslung, zweimal in
   verschiedenen KBs*. Art. 229 StGB (Abs. 1 gegen Abs. 2) trat in `baurecht` und in zwei
   normen-Destillaten auf; die RPV-Anrechnungsrichtung in `baurecht` und `planungsgrundlagen`. Wenn
   eine KB an sich selbst einen Destillationsfehler korrigiert, ist die Wahrscheinlichkeit hoch,
   dass dieselbe Quelle den Fehler anderswo hinterlassen hat. **Ein Lauf, der die
   Selbstkorrekturen der letzten Wochen als Suchmuster über den ganzen Hub legt, wäre der nächste
   ertragreiche Sweep.**
3. **Rotation:** offen bleiben `normen ↔ planungsgrundlagen` (Estrich-PAV-Merkblätter E 02/05/11/16/17,
   PAV-A 01/03) · `immobilienbewertung ↔ entwurfs-referenzen ↔ wettbewerbs-dna` (wartet auf die
   Ingest-Einarbeitung) · `wettbewerbs-dna` und `bauprodukte` waren lange nicht an der Reihe ·
   `architektur-fachwissen` wird beim ersten **Destillat** fällig (weiterhin nur Inventar) · das
   Kostendreieck bleibt gesättigt.
4. **Zwei Werkzeug-Vorschläge liegen in Abschnitt 10** und brauchen einen bewussten Entscheid, weil
   sie die Messlatte verändern.

---

*Bericht des Wissens-Chefs, Run 43, Lauf 25.08.2026. Keine Mail — stiller Lauf nach Rule
`auto-verbesserungen` 260803. **Ein offener Entscheid für Raphael** (Abschnitt 9), den der
`hub-chef` ins Tagesbriefing nimmt.*
