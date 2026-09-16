---
title: Synergie-Lauf 37 (Tagestakt) — 16.09.2026
datum: 2026-09-16
lauf: 37
delta_basis: 2026-09-15 17:10
commits_fenster: 116
neue_befunde: [SYN-88, SYN-89]
nachgefuehrt: [SYN-71, SYN-86]
---

# Synergie-Lauf 37 — 16.09.2026

**Delta-Basis** 15.09.2026 17:10 (Lauf 36), Fenster 24 h, **116 Commits**.
Uhr gegen die native Synology-Uhr geprueft: Station 17:10 CEST, letzter selfcommit-Eintrag
17:00:07 — keine Abweichung. Delta nativ im SSD-Klon gegen `origin/main` gemessen (HEAD
`222c38f19`), nie per `git` ueber den SMB-Mount. Anschlussprobe sauber: `3cdbfcc65` (15.09.
17:00, HEAD von Lauf 36) steht direkt vor `21b612ab5` (17:15), dem aeltesten Commit im Fenster.

## Strukturelles Delta

Kein neuer Skill, Agent, Connector, Service, Command oder Rule. Neu im Baum ist allein eine
Skill-Referenz, `skills/terminplanung/referenzen/170606 Planungsplanung Ausfuehrung.pdf`
(`06eb06ecf`); sie stand bereits im `referenzen/README.md` unter «Grobterminplaene /
Phasenplaene» und wurde lediglich nachtraeglich versioniert — kein Verdrahtungsbefund.

Geaendert wurden drei Bausteine:

**01. `rules/jans-dna-facetten.md`** (`e78436e8e`, 16.09. 06:19, 18/29). Der Diff liegt
vollstaendig im Auto-Block `BEGIN/END AUTO: facetten` (Z. 22-368), kompiliert von
`skills/twin/tools/build_dna.py` aus `wissen/twin/wiki/`. Die 29 entfernten Zeilen sind damit
eine gewollte Rekompilierung, kein Zeilenverlust im Sinn von Rule 260811. **Inhaltlich** ist
dieser Commit der Ausloeser von SYN-88.

**02. `rules/betrieb-chronik.md`** (drei Commits). `0a0c15f50` (16.09. 10:25, 20/0) ist neu und
dokumentiert den Rosetta-Eingriff; `e9525b771` und `5cd92b900` sind die Schreibvorgaenge von
Lauf 36 (Eigenrauschen).

**03. `skills/tenant-hygiene/SKILL.md`** (zwei Commits). `8343cf5c7` ist Lauf 36 selbst,
`ecf9b7a91` (15.09. 17:31) der interaktive Vollzug von SYN-86 (e) — die Versionsrichtlinie
wurde delegiert als rj@ gesetzt. Im Eintrag bereits verbucht.

## SYN-88 — Der Auto-Block widerspricht der importierten Anrede-Klausel (Typ 1)

Der Fidelity-Review vom 16.09. mass an der Abgebots-Bitte an Guido Giacometti (23.02.2026
16:06, CHF 1'000 Nachlass) die Anrede «**Grüezi** Herr Giacometti» — bei demselben Kontakt am
Vortag «Guten Tag Herr Giacometti», am Folgetag «Sehr geehrter Herr Giacometti». Die
gewichtigste Mail des ganzen Vorgangs traegt also den **lockersten** Opener.

Daraus kompilierte `build_dna.py` in `rules/jans-dna-facetten.md` die Fassung: «Gewichtig macht,
was ich GEBE (Ergebnis, Recht, Antrag) — nicht Geld, nicht Konflikt und nicht die Bitte um ein
Zugestaendnis». Die importierte `rules/anrede-kontakte.md` sagt an zwei Stellen das Gegenteil:

- die Klausel selbst: «ein verbindliches Ergebnis oder eine **folgenreiche Bitte** zieht
  «Geschaetzte/r \<Vorname\>» auch beim sonst lockersten Du-Kontakt»;
- der Vermerk aus Wissens-Chef Lauf 58 vom 14.09.: «**ein Ergebnis oder eine Bitte hebt**, ein
  Konflikt oder Ultimatum nicht».

Eine Abgebots-Bitte ist eine folgenreiche Bitte. Nach der importierten Fassung muesste sie
heben, nach der kompilierten nicht. `grep` auf «Zugestaendnis|Abgebot|260916|Grüezi|GEBE» in
`anrede-kontakte.md` vor diesem Lauf: **0**.

Bemerkenswert ist, dass die Bringschuld **erkannt** war: die offene Frage 260916b #1 nennt die
Ziel-Rule beim Namen und begruendet zutreffend, warum der Twin-Lauf sie nicht selbst aendert
(«den Wortlaut einer Rule aendert Claude nicht selbst»). Danach landete an der Rule nichts,
waehrend die Facetten-Datei die unbestaetigte Lesart bereits als geltende Feinregel fuehrt.
Die Reichweiten sind dabei asymmetrisch: die Rule laedt in **jede** Session, die Facetten-Datei
liest nur, wer die Pflichtlektuere befolgt.

**Umgesetzt (a), active-with-flagging:** datierter ⚠-Vermerk unmittelbar unter dem Lauf-58-Vermerk,
Wortlaut der Klausel unangetastet — dasselbe Muster, das diese Datei seit dem 23.08. viermal
traegt. Praktische Folge bis zum Entscheid Raphaels: bei einer Bitte um ein Zugestaendnis
(Abgebot, Nachlass, Entgegenkommen, Fristerstreckung) den Routine-Opener des Kontakts halten;
bei Ergebnis, Recht und Antrag bleibt es beim Heben.

**Offen (b):** methodisch fuer den `twin`-Harness — beruehrt ein Fidelity-Marker den Wortlaut
einer **importierten** Rule, gehoert ausser der Frage in QUESTIONS ein grep-faehiger Vermerk an
die Rule selbst. Das ist dieselbe Cross-KB-Bringschuld, die `wissens-bibliothekar` seit dem
23.08. fuer KBs kennt, hier zwischen KB und Rule. **Offen (c):** Frage 260916b #1 in die
naechste Vorlage an Raphael; sie entscheidet ueber Klauseltext und Auto-Block zugleich.

### Adversariale Gegenpruefung

1. **Ist es ein Widerspruch oder nur eine Praezisierung?** Eine Praezisierung waere es, wenn die
   Rule zur Bitte schwiege. Sie tut es nicht — der Lauf-58-Vermerk sagt «eine Bitte hebt»
   ausdruecklich. Die Facetten-Fassung entscheidet denselben Fall umgekehrt.
2. **Traegt ein einzelner Gold einen Vermerk an einer importierten Rule?** Der Vermerk behauptet
   nichts, er referiert die Messung und markiert die Frage als offen. Duenn ist die Basis
   trotzdem — daher «offenbar» im Titel und der Entscheid ausdruecklich bei Raphael.
3. **Existiert der Befund schon?** `anrede-kontakte` ist Beteiligter in SYN-43 (Treffen-Klausel),
   SYN-53 (englische Anrede) und SYN-71 (Reichweite Du/Sie) — **dieselbe Kanal-Familie, anderer
   Sachverhalt**: SYN-71 fragt, WEN die Klausel erfasst, SYN-88 fragt, WAS sie hebt.

## SYN-89 — Zwei Werkzeugketten, ein Grund, nur eine wird zum Check (Typ 3)

Am 16.09. rissen zwei Werkzeugketten aus derselben Ursache, und der Hub behandelte sie
ungleich.

**08:4x — DOCX-Pipeline.** Der Interpreter ohne `docx`-Modul, auf beiden Stationen verschieden
gelagert. Behoben **und** verankert: `scripts/heartbeat.sh` erzeugt seither ein echtes Test-DOCX,
statt `import docx` zu messen (`grep` «md2docx|Dok-Pipeline»: 6 Treffer).

**10:2x — Drucker-Kostenstellen-Dialog.** Das Update auf macOS 27 hatte **Rosetta 2 entfernt**;
alle sieben Konica-Minolta-PDEs sind reine x86_64-Binaries. Der Lauf war vorbildlich: im Chat
angekuendigt, umkehrbar, Chronik und Fristen-Register gesetzt, der Mac Mini per `ssh`
gegengemessen (dort macOS 27 **mit** Rosetta, der Verlust betraf nur das MacBook Pro). Seine
Schlusszeile formuliert eine stationsuebergreifende Lehre: «nach jedem grossen macOS-Update auf
Apple Silicon zuerst Rosetta messen, bevor am Treiber gesucht wird; gilt auch fuer den Mac Mini».

**Diese Lehre erreicht keinen Baustein.** `grep` «arch -x86_64|softwareupdate|oahd» in
`scripts/heartbeat.sh`: **0**. Keiner der 16 heartbeat-Checks misst die lokale
Werkzeug-Architektur. Der Fristen-Eintrag sichert korrekt den **konkreten** Folgepunkt (nativer
Treiber oder AirPrint vor macOS 28, weil Apple Rosetta dann auf Spiele beschraenkt), nicht die
generische Messung. Die Chronik ist nicht importiert und wird laut CLAUDE.md nur gelesen, «wer
an der Automatik arbeitet» — die Lehre richtet sich aber an jede Station nach jedem Major-Update.
Gleiche Familie wie Rule 260807: der Zustand eines Werkzeugs gilt ungeprueft als unveraendert,
bis jemand einen Anlass sieht.

**Empfehlung.** (a) Billiger Architektur-Check im `heartbeat`, neben dem neuen DOCX-Check:
`arch -x86_64 /usr/bin/true` plus OS-Version gegen den letzten bekannten Stand, Meldung nur bei
Wechsel oder Fehlschlag. (b) Allgemeiner: nach einem Major-OS-Update die Werkzeugketten messen,
die auf Binaries Dritter stehen (Druckertreiber, CAD-Plugins, LibreDWG, c4dpy, venvs).
(c) Rolle vor dem Bau bestimmen — maintainer am bestehenden `heartbeat`, kein neuer Baustein.

**Status offen, bewusst nicht gebaut:** eine Aenderung an `scripts/heartbeat.sh` ist ein Eingriff
in den laufenden Aufsichtsbaustein, keine «umsetzbare Kleinigkeit» im Sinn der Skill-Leitplanke.

### Adversariale Gegenpruefung

1. **Ist der Punkt nicht laengst terminiert?** Der Register-Eintrag sichert den **Drucker** vor
   macOS 28. Er misst nicht, ob nach dem naechsten Update eine andere x86_64-Kette faellt — und
   genau das sagt die Lehre.
2. **Waere ein taeglicher Check Rauschen?** Er schlaegt nur bei Wechsel an. Kosten: eine
   Prozessausfuehrung. Der verhinderte Fall kostete einen halben Vormittag Suche am falschen Ort
   (Treiber statt Laufzeit).
3. **Existiert der Befund schon?** `grep` «Rosetta|x86_64|Apple Silicon|macOS-Update» im
   Register: **0**.
4. **Ist die Diagnose des Laufs vielleicht falsch?** Nein, sie ist dreifach belegt: fehlendes
   `oahd`, kein Receipt, dlopen-Gegenprobe («incompatible architecture» nativ, laedt unter Rosetta).

## Gegengeprueft und NICHT zum Befund erhoben

- **Rosetta und der Mac Mini.** Die Chronik-Lehre nennt den Mini ausdruecklich; der naheliegende
  Verdacht einer Ketten-Luecke traegt nicht. Der Fristen-Eintrag enthaelt bereits die
  `ssh`-Gegenmessung vom 16.09. 10:2x: Mini ebenfalls macOS 27, Rosetta dort vorhanden.
- **Die neue Terminplanungs-Referenz.** Sie steht bereits im `referenzen/README.md`; der Commit
  holt nur die Versionierung nach. Ihr Dateiname traegt einen Umlaut und weicht vom
  README-Schema `JJJJMMTT-Projektnr-Typ-Beschreibung.pdf` ab — Altbestand von 2017, unveraendert
  uebernommen, kein Befund dieses Fensters.
- **Der Chronik-Eintrag 260916.** Erfuellt `interaktive-eingriffe` Punkt 1 bis 5 vollstaendig
  (Ankuendigung, Umkehrbarkeit, Chronik-Einzeiler, Fristen-Zeile fuer den offenen Rest).

## Nicht aufgerollt

**Compounding, kein Beteiligter bewegt:** SYN-01 bis SYN-87 ausser SYN-71 und SYN-86. SYN-76
naechste Gegenmessung 21.09.; SYN-85 (b) unveraendert offen, auf beiden Stationen kein Fehlstart.

**Reine KB-Inhaltsarbeit:** `architekten-synobsis` (30 Dateiaenderungen), `energie` (21), `twin`
(19, darunter der Fidelity-Review, der SYN-88 ausloest), `normen` (12), `planungsgrundlagen` (7),
`koordination` (7, Eigenrauschen), `kunde-bopp` (4), `bauprodukte` (3), `claude-code` und
`architektur-fachwissen` (je 2), `spec` (1).

## Schreib-Kontrolle

Nach Rule `auto-verbesserungen` 260811: jeder Edit anker-basiert (`assert count==1`, kein
globales Suchen-und-Ersetzen), NAS-Pfade absolut bzw. mit `|| exit 1` abgesichert (SYN-67),
Umfang vor und nach jedem Schreibvorgang gemessen.

| Datei | vorher | nachher | Kontrolle |
|---|---|---|---|
| `rules/anrede-kontakte.md` | 158 | 178 | Klauseltext und Kontaktliste (23 Tabellenzeilen) unveraendert, vier Altmarker einzeln gegengeprueft |
| `wissen/koordination/SYNERGIE-REGISTER.md` | 1904 | 1947 | SYN-Zeilen 87 → 89, ein in-place-Nachtrag an SYN-71, Fussnote Lauf 37 |

In keiner Datei eine entfernte Zeile.
