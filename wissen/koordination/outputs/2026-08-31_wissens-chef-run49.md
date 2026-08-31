# Wissens-Chef Run 49 — 31.08.2026

**Zuschnitt:** 6 Melder (`model: sonnet`) + 4 adversariale Verifikatoren (Hauptmodell) = 10 Agenten,
1'715'310 Token, 136 Werkzeugaufrufe, 24,1 Min, 1 Agent mit API-Fehler abgebrochen.
Zielauswahl nach der Empfehlung von Run 48: **frisch destillierte Sektionen** statt mtime-Delta.

**Bilanz: 0 bestaetigt · 2 teilweise · 1 widerlegt · 1 unverifiziert · 4 Nullbefunde.**

---

## 1. Der wichtigste Befund ist ein eigener Fehler

Ein Melder meldete mit Schwere «hoch»: `planungsgrundlagen/wiki/recht-norm-ahb-stadt-zuerich-projektstandards.md`
§14.2 fuehre eine AHB-Lux-Tabelle von 2007 als Devisierungsgrundlage weiter, waehrend `energie` am
24.08.2026 die Nachfolgetabelle (AHB-Merkblatt 376, August 2025, `established`) destilliert habe;
Healthcare-Raeume wuerden dadurch zu dunkel ausgeschrieben.

**Der Hauptkontext hat den Befund geprueft — aber nur an den beiden Dateien, die der Melder nannte.**
Beide Zitate stimmten woertlich, die Zeilennummern exakt, die Zahlen wichen sichtbar voneinander ab.
Der Befund wurde als BESTAETIGT eingestuft und **umgesetzt**: additiver Vorbehalt in §14.2 (+19/−0)
und Rueckkante im energie-Destillat (+7/−0).

**Der adversariale Verifikator hat danach getan, was keiner von beiden getan hatte: die Norm
geoeffnet.** `normen/destillate/sia-387-4-2017.md` Z. 61 (SIA 387/4:2017, `established`) fuehrt

| Raum | E_vm | k0 | E0 |
|---|---|---|---|
| Bettenzimmer | 100 | 3 | 300 |
| Stationszimmer | 300 | 1,67 | 500 |
| Behandlungsraum | 500 | 1,5 | 750 |

Die Werte in `planungsgrundlagen` sind **deckungsgleich mit der heute geltenden Norm**. Die
gemeldete Abweichung war die Bezugsgroessen-Falle **E_vm gegen E0**: 300 × 1,67 = 500 gegenueber
500 × 1,0 = 500 — dieselbe Anforderung, zwei Bezugsgroessen. Die «Verdreifachung» paarte zusaetzlich
zwei verschiedene Labels (2007 «einfache Untersuchungen» 300 lx senkt unter den Grundwert ab,
2025 «Untersuchung» 1000 lx hebt darueber an; der Grundwert Behandlungsraum ist beidseitig 500 lx).

**Beide Eingriffe sind zurueckgenommen.** Diff gegen das Vorbild: 0 geloescht, 0 neu. Der
Fehl-Edit wurde **nie committet** — keine Station hat ihn je gesehen.

Erschwerend: `koordination/QUERBEZUEGE.md` Z. 49 warnt woertlich vor genau dieser Falle
(«vor jeder Uebernahme klaeren, ob E_vm oder E0 gemeint ist»). Die Warnung wurde im Lauf sogar
gelesen — sie steht aber an einem anderen Registereintrag als die Tabelle, an der sie gebraucht wird.
Zusaetzlich abgewehrt: der Melder-Vorschlag haette ein staedtisches Eigentuemer-Dokument zur
fuehrenden Quelle fuer Normwerte gemacht, gegen Rule `normen-referenz` und gegen die schon in
Run 27/28 abgewehrte gleichartige Fuehrungs-Verschiebung.

**Regel daraus, als Registerzeile gesetzt (Ergaenzung zur Run-48-Regel):**
Ein Cross-KB-Zahlenwiderspruch ist erst bestaetigt, wenn die **fuehrende Norm** selbst geoeffnet
wurde, nicht nur die beiden KB-Dateien des Melders. Wo zwei Quellen dieselbe Groesse verschieden
beziffern, ist die erste Frage nicht «welche ist neuer», sondern **«messen beide dasselbe»**.

---

## 2. twin → Rules: eine Regel, die das Gehirn nie erreicht

Der Fidelity-Lauf vom selben Tag belegt «**Dear** gehoert dem Team, **Hi** der Person»
(Gold B, 05.05.2026, «Dear HLEB team»). Zwei Melder-Befunde, beide TEILWEISE:

**Adressat weiter als gemeldet.** Die einachsige Klausel «die englische Anrede haengt am Kontakt»
steht **doppelt**: `rules/anrede-kontakte.md` Z. 80 (Hleb-Zeile) und `rules/jans-dna-facetten.md`
Z. 83-88. Die zweite wiegt schwerer — sie wird vor **jedem** ausgehenden Texterzeugnis gelesen.
Beide Stellen sind richtig, aber unvollstaendig.

**Ursache berichtigt.** Der twin-CHANGELOG legt die fehlende Kompilierung dem «Wachstums-Riegel»
zur Last (Reserve 24 B). Tatsaechlich liest `build_dna.py` je Facette **nur den Do/Don't-Block**,
und die Dear/Team-Regel steht in einem Fidelity-Abschnitt (`beziehungsregister.md` Z. 3630) — im
Do/Don't-Block 0 Treffer. Es fehlt zuerst die **Promotion**, nicht die Reserve; eine blosse
Anhebung der Grenze kompilierte nichts. Derselbe Lauf hat den «namenlos»-Marker sehr wohl
promoviert: zwei Befunde desselben Tages, ungleich behandelt.

**Ausgefuehrt:** Bring-Schuld additiv in `wissen/twin/wiki/QUESTIONS.md` als **260831c** (+34/−0).
**Nicht ausgefuehrt:** die Promotion selbst. Sie laeuft unmittelbar in die 24-B-Reserve, und welcher
bestehende Marker dafuer weicht, ist eine Abwaegung ueber Raphaels Stimme, kein Aufsichts-Entscheid
(Rule `wissens-bibliothekar`, Pause vor Umstrukturierung). **Kein Rule-Eingriff durch Claude.**

---

## 3. `links:`-Schema: Run-48-Zahl praezisiert, keine Ausbreitung

Run 48 nannte «rund 7 von 272». Nachgemessen ueber **394** Wiki-Artikel mit Frontmatter:
**13 Artikel in 7 KBs** (afw 3, projekt-lessons 3, planungsgrundlagen 2, grobkosten 1,
immobilienbewertung 1, auflagebereinigung 1, dazu 2 Grenzfaelle unter `sources:`). Die Praxis ist
breiter und aelter als angenommen und nicht auf `architektur-fachwissen` beschraenkt. Das schaerft
den offenen Schema-Entscheid (`architektur-fachwissen/wiki/QUESTIONS.md` #64), aendert ihn nicht.

**Nullbefund mit Wert:** die drei afw-Faelle tragen unveraendert `last_updated: 2026-08-29` (Run 47).
**48 afw-Artikel wurden seit dem 30.08. geschrieben oder geaendert, keiner hat das Muster
uebernommen.** Der von Run 48 befuerchtete Folgeschaden ist nicht eingetreten.

**Werkzeug-Merksatz:** der erste Zaehlversuch ergab 4 Treffer und sah nach einem sauberen Befund
aus. Der Parser sah nur Block-Listen und war blind fuer die **Inline-Array-Schreibweise**
(`links: ["…", "…"]`), in der die afw-Faelle stehen. Ein kleines Suchergebnis ist zuerst eine
Aussage ueber das Werkzeug (Rules 260730b, 260807).

---

## 4. Vier Nullbefunde mit Aussage

- **energie ↔ normen** (SIA 380/1 Kat. XII Hallenbaeder, Zuwachs Run 171): Fuehrung bei `energie`
  ist im Register Z. 6-8 autorisiert und in `normen/wiki/QUESTIONS.md` Z. 5641 bestaetigt;
  SIA 387/4 destilliert vorhanden; EN 12464-1 / SLG 305 seit 05.08.2026 als **E-122-6** registriert.
- **grobkosten ↔ immobilienbewertung ↔ wettbewerbs-dna** (Healthcare CHF/m3): die gestrige
  Fuehrungsklaerung ist **beidseitig angekommen** — `grobkosten` weist die Fuehrung Z. 21-24 und
  Z. 530-542 ausdruecklich zurueck, `realwert-sachwert.md` weiss Z. 561-563 dass es fuehrt und
  traegt den 1'285-Vorbehalt Z. 569-572 identisch. Keine Zahlendivergenz.
- **normen → Konsumenten** (SIA 416 Figurenanhang, Run 66): die drei neuen Darstellungsregeln und
  zwei Praezisierungen widersprechen keiner Konsumentenaussage.
- **baurecht ↔ planungsgrundlagen** (Zuwachs THALWIL-Lane): der Baulinien-Querverweis aus Lauf 29c
  schliesst den von Run 45 offen gelassenen Punkt, beide Richtungen gemessen vorhanden; kein totes
  Recht bei Waldabstand/Gewaesserraum.

---

## 5. Offen, an Raphael

1. **Person/Kollektiv-Achse der englischen Anrede** — Nachtrag in `rules/anrede-kontakte.md` Z. 80
   **und** `rules/jans-dna-facetten.md` Z. 83-88. Claude aendert Rule-Wortlaut nie selbst.
   Beleg: `twin/wiki/QUESTIONS.md` 260831b #1 und neu 260831c.
2. **Promotion der Dear/Team-Regel in den Do/Don't-Block** — braucht einen Entscheid, welcher
   bestehende Marker der 24-B-Reserve weicht.
3. **`links:`-Schema** — Entscheid offen (afw QUESTIONS #64), jetzt mit belastbarer Zahl: 13/394.
4. **`/etc/nsmb.conf` fehlt auf dem MacBook Pro** — siehe Abschnitt 6. Braucht Raphaels Passwort,
   Claude kann es nicht setzen.

## 6. Betrieb (nicht Wissens-Layer)

Der SMB-Mount fiel waehrend dieses einen Laufs **dreimal** aus (23:13, 23:29, 23:41). Der Waechter
`nas-auto-mount.sh` heilte jedes Mal selbst, `ensure-nas-mounted.sh` gab je rc 0 — der Schutz
funktioniert. Ursache dahinter: **`/etc/nsmb.conf` fehlt**, obwohl die Haertung gegen genau diese
Idle-Stalls (notify_off/mc_on/signing plus 60-s-Keepalive) dokumentiert ist; der Keepalive-Job
laeuft (`com.jans.nas-keepalive`, PID 27220), die SMB-Konfiguration dazu nicht. Gemessen: **59
WARN-Zyklen** am 31.08.2026 in `~/Developer/jans-ai-hub/.git/nas-auto-mount.log`, rund alle
15 Minuten einer, je etwa 4 Minuten ohne `/Volumes/daten`.

Alle Messungen und Schreibvorgaenge dieses Laufs liefen darum **nativ per ssh** auf
`/volume2/daten/jans-ai-hub` (Praezedenz: Chronik 260831). Der Ordner `/Volumes/daten-1` besteht als
Leiche weiter und ist der Keim des naechsten Fehl-Mounts. Details: `rules/betrieb-chronik.md` 260831b.
