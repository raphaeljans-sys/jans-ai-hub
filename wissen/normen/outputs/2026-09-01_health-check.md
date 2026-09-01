# Wissens-Health-Check: normen — 2026-09-01

## Methode dieses Laufs

Monatlicher Sammellauf (Skill `wissenscheck`), Phase 1 (Audit + Report, unbeaufsichtigt-faehig).
Phase 2 (Aktionen) bewusst NICHT ausgefuehrt — keine Reparaturen, keine Stubs, kein
Umbenennen/Loeschen/Merge, kein Status-Wechsel an Destillaten.

Basis ist der letzte Health-Check vom **2026-08-03**. Diese KB ist untypisch fuer das
Drei-Ordner-Schema: `raw/` bleibt nach KB-Design bewusst leer (Quell-PDFs bleiben auf
SharePoint), der eigentliche Bestand liegt in `destillate/` (484 Dateien, davon 462
Destillate + 20 QA-Fragenprotokolle in `destillate/qa/` + 2 `INDEX.md`), `wiki/` traegt nur
8 Synthese-/Register-Artikel. Grundzahlen wurden per grep/awk erhoben, nicht durch
Volltext-Lektuere aller 462 Destillate; gezielt gelesen wurden alle 8 `wiki/`-Artikel,
`INDEX.md`, `REGISTER.md` (Kopf), `QUESTIONS.md` vollstaendig (6'487 Zeilen, Schwerpunkt auf
den seit 03.08. neu dazugekommenen Eintraegen), `CHANGELOG.md` (12'927 Zeilen, Kopf +
Stichproben), sowie `training/n62-3-pruefstand-kandidaten.md` und `training/norm-inventar.md`
vollstaendig.

**Grenze dieses Laufs, ausdruecklich benannt:** Audit A (Widersprueche) wurde nicht als
vollstaendiger paarweiser Neuvergleich aller ~470 Dateien gefahren — das sprengt das
monatliche Budget bei 19+ KBs im Hub. Geprueft wurden die in `wiki/QUESTIONS.md`
registrierten, noch offenen Spannungen und die seit dem 03.08. neu protokollierten Runs. Ein
A0 heisst «keine neue Spannung sichtbar», nicht «bewiesen widerspruchsfrei». Audit F
(Umlaute) beruht auf einem Stichproben-Grep auf haeufige ae/oe/ue-Ersatzwoerter, nicht auf
einer Vollpruefung jeder Datei.

## Grundzahlen

| Messung | Wert |
|---|---|
| Destillate gesamt (`destillate/*.md`, ohne `qa/` und `INDEX.md`) | 462 |
| davon `status: established` (alle Schreibweisen) | 307 |
| davon `status: speculative` (alle Schreibweisen) | 104 |
| davon `status: emerging` | 1 |
| davon `status: superseded` (Fassungs-Sweep Run 58) | 26 |
| davon `status: destilliert` (nicht-kanonisches Vokabular) | 17 |
| davon sonstige Freitext-Status (Vokabular-Entscheid seit Run 52 offen) | 7 |
| Destillate mit Pruefstand-Vermerk im Text | 35 (davon 8 mit vollstaendiger Abdeckungsrunde, Stand Run 66/67) |
| QA-Fragenprotokolle (`destillate/qa/*-fragen.md`) | 21 (zu 20 unterschiedlichen Normen) |
| `wiki/`-Artikel (ohne INDEX/QUESTIONS/REGISTER) | 8 |
| ⚠-Marker «Kernbefund, Nachpruefung ausstehend» | 0 gefunden (Suchmuster liefert keinen Treffer — dieser exakte Marker-Wortlaut scheint in dieser KB nicht verwendet zu werden; die vergleichbare Warnfunktion traegt hier das ⚠-Symbol mit KB-eigenem Freitext, s. Audit C) |
| `raw/_INGESTED.md` | 0 Eintraege (KB-Design: `raw/` bleibt leer) |
| `training/norm-inventar.md` offene `[ ]` | 0 im PL-02/PL-03-Scope dieser Station |

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 0 neu (2 bereits erfasste, weiterhin ungeloeste Spannungen: N63-3, N46-3/N65-5) |
| B Kaputte Backlinks/Orphans | 0 real (3 Treffer des Skripts sind Falsch-Positive, s. Details) |
| C Unbelegte Claims / speculative-als-Quelle | 3 |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 3 |
| G Promotion-Kandidaten | 0 |

## Top-3 (Raphaels Aufmerksamkeit)

1. **`sia-416-2003.md` (SIA 416 Flaechen/Volumen, Grundnorm) traegt seit 28.08.2026 `status:
   speculative`, aber die 12 abhaengigen Konsumenten zitieren sie weiterhin ohne
   Warnhinweis** — u.a. `agents/flaechen-nachweis.md` (nennt sie direkt als Fundstelle fuer
   GF/GV/HNF/NNF/FF/KF/VF), `agents/volumen-rechner.md`, `skills/machbarkeit/`. Das ist ein
   direkter Verstoss gegen Rule `normen-referenz` Ziff. 1b («ein Destillat mit `status:
   speculative` ist eine Warnkarte, keine Zitierquelle») und seit N46-3 (28.08.) bzw. N65-5
   (29.08.) in `wiki/QUESTIONS.md` bekannt, aber unveraendert offen.
2. **Das Status-Vokabular ist seit Run 52 (vor rund vier Wochen) nicht normiert** — 17
   Destillate tragen `status: destilliert` (kein kanonischer Wert), weitere 7 Freitext-
   Varianten. Das macht die Zaehlung «307 established» nach oben und unten unscharf und
   blockiert die in `training/n62-3-pruefstand-kandidaten.md` Abschnitt 6 vorgeschlagene
   Stichprobenrunde fuer den rund 300 Dateien grossen Mittelbau ohne Pruefstand — die Frage
   liegt weiterhin bewusst bei Raphael, nicht selbstaendig gestartet.
3. **143 von rund 492 Dateien in `wiki/`+`destillate/` verwenden noch ae/oe/ue statt echter
   Umlaute** (Rule `umlaute-konvention`) — Stichproben-Grep auf haeufige Ersatzwoerter, keine
   Vollpruefung. Anteilig aehnlich hoch wie beim letzten Check (65/271 am 24.07.2026, dort
   als Vollaudit gemessen); keine sichtbare Verbesserung trotz starkem Bestandswachstum.

## Details je Audit

### A. Widersprueche

- **Keine neue Spannung** in den seit 03.08.2026 protokollierten Runs (Run 61-76 plus
  Schub-Lane-Eintraege) gefunden.
- **N63-3 (weiterhin offen):** `wiki/synthese-sia-vkf-fachskills.md` traegt Frontmatter
  `status: established`, `last_updated: 2026-07-17`, stuetzt sich aber laut eigenem
  Fliesstext auf `destillate/sia-118-1991.md` und inzwischen (26./27.08.) auf
  `destillate/sia-102-2020.md` — beide seither auf `speculative` herabgestuft. Der Artikel
  traegt dafuer fuenf inline gesetzte ⚠-Vorbehalte statt einer Gesamtdurchsicht. Spannung
  zwischen Frontmatter-Status und Inhalt, seit N63-3 (27.08.) bekannt, durch N65-5 (29.08.)
  ein zweites Mal bestaetigt.
- **N46-3/N65-5 (weiterhin offen):** Statuswechsel `established` → `speculative` bei
  `sia-416-2003.md` hat weder die zwoelf bekannten hub-weiten Konsumenten noch (bei
  N65-5 nachgewiesen) den eigenen Querschnitts-Artikel automatisch erreicht — die Frage, ob
  ein Statuswechsel bei bekannter Konsumentenliste eine Benachrichtigungspflicht ausloesen
  soll, ist seit N46-3 unbeantwortet.

### B. Kaputte Backlinks & Orphans

- `wissen/tools/wiki-konsistenz.sh normen` meldet 3 Treffer: `[[din-1961-2012]]`,
  `[[sia-180]]`, `[[sia-2024]]`, alle in `wiki/QUESTIONS.md`. **Gegengeprueft: Falsch-
  Positive.** Es handelt sich um Zitate in der historischen Protokoll-Prosa, die den bereits
  am 24.07.2026 (Mac-Mini-Nachtschicht) durchgefuehrten Fix beschreiben («`[[sia-2024]]` →
  korrigiert auf `[[sia-mb-2024-2006]]`» usw.). Die tatsaechlichen Zieldateien
  `destillate/din-1961-2010.md`, `destillate/sia-180-2014.md`,
  `destillate/sia-2024-2021.md`/`sia-2024-korrigenda-c1-c2.md` existieren und sind korrekt
  verlinkt; im `destillate/`-Ordner selbst liefert das Skript keine Treffer mehr fuer diese
  drei Muster. Das Skript unterscheidet nicht zwischen Protokoll-Zitat und lebendem Link —
  bekannte Grenze des Werkzeugs, kein neuer Handlungsbedarf.
- `python3 wissen/tools/fehloffen-waechter.py normen`: 0 Befunde.
- **Orphans:** keine. Alle 8 `wiki/`-Artikel sind in `INDEX.md` gefuehrt; `INDEX.md` verweist
  zusaetzlich auf `destillate/INDEX.md` und `training/norm-inventar.md`.
- `REGISTER.md` verlinkt `[[sia-register-2013]]` — Ziel existiert
  (`destillate/sia-register-2013.md`), Link ist korrekt (KB-Architektur erlaubt
  Querverweise `wiki/` → `destillate/`).

### C. Unbelegte Claims

- **sia-416-2003 als ungekennzeichnete Zitatquelle** — siehe Top-Finding 1. Konkret
  bestaetigt per Grep: `agents/flaechen-nachweis.md` Z. 14-15 nennt
  `wissen/normen/destillate/sia-416-2003.md` als Fundstelle ohne Vorbehalt;
  `skills/machbarkeit/wissensbasis/01_flaechen-volumen-faktoren.md` und
  `agents/volumen-rechner.md` referenzieren SIA 416 ebenso ohne erkennbaren Hinweis auf den
  `speculative`-Status.
- **synthese-sia-vkf-fachskills als established mit speculative Quellen** — siehe Audit A,
  N63-3. Dieselbe Ursache wie oben, hier als Belegkette (Frontmatter vs. Inhalt) statt als
  Widerspruch zwischen zwei Artikeln gezaehlt.
- **Vokabular-Unschaerfe als Belegproblem:** 17 Destillate mit `status: destilliert` sind
  weder klar `speculative` noch `established` — bei einer Zitierentscheidung nach Rule
  `normen-referenz` 1b ist unklar, ob sie als Warnkarte oder als Quelle zu behandeln sind.
  Gehoert zum selben, seit Run 52 offenen Vokabular-Entscheid.
- **Cross-KB-Eintrag N-E171-1 (KB `energie`, 31.08.2026):** drei Beleuchtungsnormen
  (EN 12464-1, EN 12193, SLG 305 Teil 5), die die KB `energie` bereits als Fundstelle
  zitiert, kommen in `wiki/REGISTER.md` null Mal vor. Bereits sauber als Cross-KB-Bringschuld
  in `QUESTIONS.md` eingetragen — kein neuer Fund dieses Laufs, hier nur bestaetigt als
  weiterhin offen (keine Reaktion seit 31.08. erkennbar, aber erst einen Tag alt).

### D. RAW-Coverage

- `raw/` bleibt nach KB-Design bewusst leer (0 Eintraege in `_INGESTED.md`) — die Original-
  PDFs bleiben auf SharePoint, das ist keine Luecke, sondern die dokumentierte Architektur
  dieser KB (`CLAUDE.md`, Abschnitt Architektur, Ebene 3).
  **Aequivalente Coverage-Messung** fuer diese KB ist `training/norm-inventar.md`: 0 offene
  `[ ]`-Grunddestillate im PL-02/PL-03-Scope dieser Station (SIA/VKF) — deckt sich mit den
  wiederholten CHANGELOG-Vermerken der Schub-Lane (Run 68-76). Der DIN-/VSS-Bestand liegt
  bewusst im Mac-Mini-Scope (Stations-Split, Rule 260712) und wurde hier nicht mitgeprueft.

### E. Veraltete Artikel

- Alle 8 `wiki/`-Artikel liegen unter der 90-Tage-Schwelle (aeltester: 2026-07-16,
  Schwellenwert waere 2026-06-03). Kein Fund nach der strengen Definition (Alter UND neuere
  Evidenz). Die inhaltliche Staleness von `synthese-sia-vkf-fachskills.md` (Quellen seit
  Frontmatter-Datum zweimal downgegradet) ist bereits unter Audit A/C (N63-3) erfasst und
  wird hier nicht doppelt gezaehlt.

### F. Schreibregel-Verstoesse

- **Umlaute-Konvention:** Stichproben-Grep auf haeufige ae/oe/ue-Ersatzwoerter
  (geschaetzt/Ausfuehrung/Moeglichkeit/Gruesse/gemaess/zusaetzlich/Waermeschutz/Pruefung/
  fuer/ueber/Erlaeuterung) findet Treffer in 143 von 470 Dateien in `wiki/`+`destillate/`
  (492 Dateien gesamt minus INDEX/QUESTIONS/REGISTER-Sonderfaelle). Kein Vollaudit; Anteil
  (~30 %) liegt in der Groessenordnung des letzten Vollaudits vom 24.07.2026 (65/271, ~24 %).
- **Status-Vokabular nicht kanonisch:** `WISSEN-CLAUDE.md` sieht `speculative | emerging |
  established` vor; 17 Destillate tragen `destilliert`, 7 weitere Freitext-Varianten ohne
  klare Zuordnung. Vokabular-Entscheid seit Run 52 unveraendert bei Raphael pendent
  (`wiki/QUESTIONS.md` Z. ~1290 ff., zuletzt bestaetigt in N61-2).
- **CHANGELOG-Reihenfolge lokal invertiert:** der oberste Eintrag ist datiert 2026-08-29
  (Run 76), unmittelbar gefolgt vom Eintrag 2026-08-30 (Run 66) — bei «neueste zuoberst»
  waere die umgekehrte Reihenfolge erwartet. Wahrscheinliche Ursache: parallele
  Schub-Lane-Laeufe auf unterschiedlichen Stationen schreiben zu unterschiedlichen
  Wanduhrzeiten, das im Text genannte Datum folgt nicht zwingend der Schreibreihenfolge.
  Kosmetischer Befund ohne Informationsverlust, keine Handlungsempfehlung ausser Kenntnisnahme.

### G. Promotion-Kandidaten

- Keine gefunden. Die acht Destillate mit vollstaendiger Abdeckungsrunde (Run 66/67:
  `sia-416-2003`, `vkf-ah-1001-15-wohnbauten`, `vkf-brl-16-15-flucht-rettungswege`,
  `vkf-allgemein-anerkannte-bauprodukte-2017`, `sia-102-2014`, `sia-451-1992`, plus die
  frueheren `sia-416-1-2007` und `sia-118-1991`) haben bewusst **keinen** Statuswechsel
  erhalten — die Pruefstand-Runden waren Vollstaendigkeitspruefungen an bereits gehobenen
  Destillaten, keine Erstpromotionen. `sia-416-2003` bleibt trotz vollstaendigem Pruefstand
  absichtlich auf `speculative`, bis N46-3/N65-5 (Konsumenten-Benachrichtigung) geklaert ist.
- Kein QUESTIONS-Eintrag mit explizitem Promotion-Vorschlag offen.

## Auffaelligkeiten (ausserhalb der sieben Audits)

- Die KB ist der aktivste Nachtbetrieb im Hub, den dieser Lauf gesehen hat: 12'927 Zeilen
  CHANGELOG, 6'487 Zeilen QUESTIONS, 484 Destillate. Der oberste CHANGELOG-Eintrag (Run 76,
  29.08.) vermerkt selbst «neunter Doppel-Dispatch, weiterhin Nullbefund» — mehrere
  identische Auftraege derselben Schub-Lane ohne neuen Ertrag, in Uebereinstimmung mit dem
  in Rule `auto-verbesserungen` 260830 beschriebenen Leerlauf-Muster. Der Eintrag zeigt, dass
  die KB das selbst erkannt und vermerkt hat; ob der zugehoerige Leerlauf-Waechter
  zwischenzeitlich gegriffen hat, ist Sache der Betriebs-Chronik, nicht dieses
  Wissens-Health-Checks.
- Der oben unter Audit F genannte ⚠-Marker-Wortlaut «Kernbefund, Nachpruefung ausstehend»
  aus dem Auftrag dieses Laufs kommt in dieser KB in dieser exakten Form nicht vor; die KB
  nutzt stattdessen freitextige ⚠-Bloecke mit Fallbezug (z.B. N63-3). Kein Fehlbefund, nur
  eine Formulierungsabweichung zwischen Auftrag und KB-Praxis, die fuer den naechsten Lauf
  festgehalten wird.
