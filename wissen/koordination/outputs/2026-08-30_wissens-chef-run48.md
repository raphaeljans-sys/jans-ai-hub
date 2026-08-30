---
titel: Wissens-Chef Run 48 — die Aufsicht misst ihren eigenen Fussabdruck als Konvention
datum: 2026-08-30
lauf: 48
zuschnitt: 6 Melder (model sonnet) + 6 adversariale Refuter (Hauptmodell) + Hauptkontext-Strang
---

# Wissens-Chef Run 48 (30.08.2026)

**Zuschnitt:** 12 Agenten, 2'149'167 Token, 204 Werkzeugaufrufe, 6,8 Min, **0 Fehler**.
Delta-Basis: Run 47 vom 29.08.2026. Gemessenes 24-h-Delta im Wissens-Layer: `architektur-fachwissen`
**+45 Wiki-Artikel** (Bestand 99), `energie` 24 Dateien, `normen` 13, `twin` 11, `baurecht` 6.

**Bilanz: 0 bestaetigt · 4 teilweise · 2 widerlegt · 2 Nullbefunde.**
Kein einziger Melder-Befund ueberstand die adversariale Stufe unveraendert. **Das ist das
Ergebnis dieses Laufs, nicht sein Mangel** — in vier von sechs Faellen war der Sachverhalt echt und
Adressat, Beleg, Schwere oder vorgeschlagene Aktion falsch.

---

## 1. Der Befund, der die Aufsicht selbst betrifft

Ein Melder wollte vier `architektur-fachwissen`-Artikel um Cross-KB-Pfade im `links:`-Frontmatter
ergaenzen und berief sich auf eine «hausuebliche Konvention». Der Refuter mass nach: hub-weit tragen
**rund 7 von 272 Artikeln** einen KB-Pfad im `links:`-Feld — in `energie` 0 von 40, in `normen`
0 von 10, in `baurecht` 0 von 30. Und die drei afw-Belege des Melders stammen **saemtlich aus den
Eingriffen von Wissens-Chef Run 47 vom Vortag**.

Der Melder hat also den Fussabdruck des eigenen Aufsichtslaufs zur Norm erhoben und wollte ihn
ausweiten. Zirkelschluss — Vorschlag nicht ausgefuehrt.

**Der Folgeschaden ist trotzdem echt und liegt bei Run 47.** `wissen/WISSEN-CLAUDE.md` Z. 50/60-61
definiert `links:` ausschliesslich als `[[artikel-name]]` auf einen anderen Wiki-Artikel **derselben**
KB; Pruefung B des Skills `wissenscheck` validiert genau das. Die drei Run-47-Eintraege werden beim
naechsten Wissenscheck dieser KB als **tote Backlinks** gemeldet — Falschbefunde, die ein
Aufsichtslauf selbst erzeugt hat.

**Regel daraus, als Matrixzeile gesetzt:** ein Aufsichtslauf darf seinen eigenen Eingriff vom Vortag
nicht als Konvention messen. Die Konvention steht im Schema, nicht im letzten Diff.

**Kein Eingriff durch Run 48** — die Aufloesung ist ein Schema-Entscheid, nicht Registerpflege:
entweder die drei Eintraege zurueckfuehren, oder den KB-Pfad als zweite Eintragsart aufnehmen und
**zuerst** Pruefung B in `skills/wissenscheck/SKILL.md` anpassen. Vorgelegt als
`architektur-fachwissen/wiki/QUESTIONS.md` **#64**.

## 2. Ausgefuehrte Korrektur mit Aussenwirkung: qE50 → qa50

`energie` Run 168 fuehrte am 30.08. die RiLuMi auf Ausgabe **2026.1** nach und zog den Symbolwechsel
in `wiki/BAUHERREN-FAQ.md` **F63** nach. **F115 blieb stehen**, ebenso drei Index-/Schwesterzeilen.
Quelle ist das eigene `established`-Destillat: Symbol **qa50** seit RiLuMi 2024.1, Messung nach
**SIA 180.206 «Verfahren 3»** statt SN EN ISO 9972 — eine **Verfahrensaenderung**, keine blosse
Umbenennung. Das Destillat haelt selbst fest, dass bei **Ausschreibungstexten und Pruefberichten**
die neue Bezeichnung zu verwenden ist; dort liegt die Aussenwirkung, denn der Skill `energie` speist
Bauherren-Antworten und eine Messnorm wandert in einen Messauftrag.

Korrigiert: **5 Stellen in 4 Dateien**, ankergenau, null Loeschungen. Zahlenwerte unveraendert.
Der historische FAQ-Journal-Block (Z. 3621) blieb als Zeitstand stehen.

**Zwei Messkorrekturen an der Meldung:** der Melder behauptete fuenf qE50-Vorkommen in F115 — es sind
**drei**; wer nach seiner Angabe blind ersetzt, sucht zwei Treffer, die es nicht gibt. Und er uebersah
zwei Live-Dateien (Refuter) sowie eine dritte, `wiki/INDEX.md`, die erst der Hauptkontext fand.
**Muster:** eine Fassungsnachfuehrung wird an der prominenten Antwort gemacht und an den Index- und
Schwesterzeilen vergessen — dieselbe Klasse wie die Uf-Propagation aus Run 44.

## 3. Die 14 Tage offene GT-RL1-Kante ist gesetzt

Der gemeldete Widerspruch (afw «veraltet» gegen planungsgrundlagen «established») ist **widerlegt**:
`established` ist ein Artikel-Status, keine Fassungsaussage. Real und seit dem 16.08.2026 registriert
war etwas anderes: zwischen den neun `energie`-Destillaten `ahb-zuerich-gt-rl1..9` und §12-§14 des
pg-Artikels bestanden **null Kanten in beide Richtungen**. Additiver Rollen-Block in §12.1 gesetzt
(+11 Z.), der alle drei KBs mit Rolle und Fassung benennt. Die uebrigen acht GT-RL bleiben im
Cluster — bewusst nicht einzeln angefasst, sonst wird die dortige Fortschrittsmessung unbrauchbar.

## 4. Zwei Nullbefunde mit Aussage

Gegen `normen` und gegen die Kennwert-/BKP-Achse geprueft: **alle drei Run-47-Befunde sind am Original
geheilt** (SIA 102 zeilengenau gegen `sia-102-2014.md` Ziff. 7.7; die fRsi-Berichtigung trifft sogar
die Nuance zwischen Ziff. 6.2.1.4 und 6.2.2.1; BKP-Warnblock steht; kein weiterer Phantom-Code).
Der neue `uw-wert`-Artikel traegt die **geltenden** Uf/Uli-Werte — der Fehler von Run 47 ist **nicht**
reproduziert.

**Aussage daraus:** der 24-h-Zuwachs ist derselbe Schub, den Run 47 bereits geprueft hat
(`last_updated` ueberwiegend 2026-08-29). Die Lieferlane ist schneller als die Fehlerklassen-Findung
der Aufsicht. **Empfehlung fuer Run 49:** auf **frisch destillierte Sektionen** zielen, nicht auf das
Datei-mtime-Delta.

## 5. Was nicht getan wurde, und warum

- **Die afw-Destillat-Lane nicht angehalten.** Ein Melder schlug vor, bis zum Abgrenzungs-Entscheid
  keine weiteren Artikel anzulegen. Rule `rollen-taxonomie` Ziff. 3: gemessen und berichtet, nie
  automatisch durchgesetzt — die Drosselentscheidung bleibt bei Raphael. **Ein Aufsichtslauf drosselt
  keine Lieferlane.**
- **Kein `links:`-Eintrag ergaenzt**, auch nicht der im GT-RL1-Fall vorgeschlagene: er haette genau
  den Schema-Widerspruch vergroessert, den derselbe Lauf eine Ebene darueber aufgedeckt hat.
- **Kein Artikeltext in `architektur-fachwissen` geaendert.** Alle vier Vorschlaege dazu hielten der
  Pruefung nicht stand.
- **Keine Loeschung, kein Ueberschreiben** (Matrix Z. 53). Alle Eingriffe additiv oder gewollte
  Zeilenersetzung mit gemessenem Delta.

---

## OFFENE ENTSCHEIDE FUER RAPHAEL

**E1 — Schema `links:` (neu, mittel).** Darf ein KB-Pfad ins `links:`-Frontmatter, oder bleibt es
reine `[[wikilink]]`-Zone? Drei Dateien haengen daran, und der naechste Wissenscheck von
`architektur-fachwissen` produziert sonst drei Falschbefunde. Bei Variante «ja» ist **zuerst**
Pruefung B in `skills/wissenscheck/SKILL.md` anzupassen.
→ `architektur-fachwissen/wiki/QUESTIONS.md` #64.

**E2 — Abgrenzung afw ↔ entwurfs-referenzen (praezisiert, leicht).** Die Ebenen-Trennung ist als
Matrixzeile gesetzt; offen sind zwei namentlich belegte Doppelbewirtschaftungen. Zu entscheiden ist
die **Absicht**, nicht der Ort. → QUESTIONS #65/#66.

**E3 — twin: der Wachstums-Riegel ist voll, vierter Lauf ohne Wirkung (fortgeschrieben, mittel).**
`rules/jans-dna-facetten.md` steht bei **33'952 von 34'000 B** (48 B Reserve). Die vier neuen
Formmarker des Fidelity-Laufs vom 30.08. sind belegt, aber **nicht** in die Do/Don't-Bloecke
promoviert; der Auto-Block ist byte-identisch zum Vorlauf. Der Zwilling lernt weiter und misst weiter,
**aber seit vier Laeufen erreicht nichts davon die Regel, die das Verhalten steuert.**
Kein Wissens-Chef-Befund — liegt seit dem 29.08. als `twin/wiki/QUESTIONS.md` 260829b #4 vor und wird
hier nur hochgestuft, weil es dieselbe Klasse ist wie Rule 260830: ein Lauf, der laeuft und nichts
liefert. Entscheid: Riegel anheben, oder Verdichtungsrunde beauftragen, oder Lernen drosseln.

---

## Unabhaengig gegengeprueft, nicht doppelt gemeldet

`logbuch/vollgas/schub/synobsis.prompt` behauptet weiterhin einen Fortschrittsstand
(«Charge 2 und folgende sind offen»), waehrend die Lane seit Runde ~318 und noch im CHANGELOG-Kopf
vom 30.08. «keine offene Position in den vier Prioritaeten» meldet. Die vier Schwester-Prompts sind
am 30.08. korrigiert bzw. stillgelegt (`.orig-260830` gesichert), `synobsis.prompt` als einziger
nicht (mtime 29.08. 18:52). **Bereits registriert als SYN-63 durch Synergie-Lauf 23 vom selben Tag** —
hier nur als unabhaengige Bestaetigung vermerkt, keine Zweitmeldung (Rule 260803).

## Betriebsbefund am Schluss des Laufs (nativ gemessen)

Der Commit dieses Laufs landete auf der Synology (`763bccbc7`, Arbeitsbaum sauber, kein offener
Merge), **erreichte GitHub aber nicht**: `nas-commit-now.sh` meldete rc=1 mit **neun** Merge-
Konflikten. Nativ per ssh nachgemessen: **372 Commits lokal voraus, 251 zurueck**. Tagesreihe
191/105 (07:45) → 293/186 (17:0x) → 372/251 (23:3x). **Alle Arbeit ist gesichert, nur die Weitergabe
steht.** Neu und entscheidungsrelevant: die Konflikte liegen inzwischen **nicht mehr nur in
CHANGELOG-Dateien**, sondern in `architektur-fachwissen/raw/inventar/` (drei Dateien), in
`wiki/QUESTIONS.md`, in `baurecht/training/KORPUS-QUEUE-…` und als `add/add`-Konflikt auf einem
Wiki-Artikel — also **inhaltliche Konflikte in Wissensbestaenden**, die beim Zusammenfuehren gelesen
werden muessen. Ein blosser Rebase reicht nicht mehr, und die afw-Lane schreibt derzeit rund
45 Artikel pro Tag in genau diese Pfade.
**Kein Eingriff** (Git-Interna, unbeaufsichtigter Lauf). Als datierter Nachtrag an den bestehenden
P1-Vorgang in `logbuch/fristen.md` geschrieben, nicht als Zweitmeldung (Rules 260803, 260805).

## Gemessene Eingriffe (alle Deltas positiv oder null, null Loeschungen)

| Datei | Delta |
|---|---|
| `energie/wiki/BAUHERREN-FAQ.md` (F115) | +4 |
| `energie/wiki/INDEX.md` | ±0 (Zeilenersetzung) |
| `energie/destillate/blower-door-test-kosten-ch.md` | +1 |
| `energie/destillate/INDEX.md` | ±0 (Zeilenersetzung) |
| `planungsgrundlagen/wiki/recht-norm-ahb-stadt-zuerich-projektstandards.md` | +11 |
| `architektur-fachwissen/wiki/QUESTIONS.md` | +46 |
| `koordination/QUERBEZUEGE.md` (3 Matrixzeilen + Gepruefte Paare + Z.-58-Berichtigung) | +111 |
| CHANGELOG energie / afw / planungsgrundlagen | +24 / +29 / +18 |
