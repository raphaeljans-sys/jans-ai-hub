# Wissens-Chef — Run 17 (Cross-KB-Konsistenz)

**Datum:** 27.07.2026, 21:50–22:40 (Station MacBook Pro)
**Verfahren:** Workflow-Fan-out, 5 parallele Lese-Agenten + 10 adversariale Verifikatoren
(15 Agenten, ~2.17 Mio. Subagent-Token, 256 Tool-Calls, 14:08 Min Laufzeit)
**Delta-Basis:** alles, was seit Run 16 (26.07., 00:45) gewachsen ist — praktisch jede KB hat am
27.07. geschrieben: energie Run 116 (vier neue Abwärme-Destillate), normen Run 30/34/35 (sechs neue
Brandschutz-Destillate), baurecht Buch-Run 63–68, wettbewerbs-dna Etappe 3 abgeschlossen,
entwurfs-referenzen `wohnen-mfh-urban.json` v2.0, twin Batch 80, firmengruendung-ch, spec Run 36/37.
**Kollisionsschutz (Rule 260724):** vor Beginn geprüft — kein zweiter Wissens-Chef-Lauf (Run 16 war
der jüngste CHANGELOG-Eintrag). Die Lese-Agenten hatten kein Schreibrecht; alle Edits stammen vom
Chef selbst.

---

## Bilanz

| | Anzahl |
|---|---|
| Gemeldete Befunde | 17 |
| Davon adversarial verifiziert | 10 |
| **Bestätigt** | **8** (davon 5 materiell) |
| **Widerlegt** | **2** |
| Zusätzlich vom Chef selbst am Original nachverifiziert | 1 (§§ 44/126 WsG) |
| Direkt korrigiert/gesetzt | 15 Stellen in 12 Dateien |
| Offene Entscheide für Raphael | 2 (beide Rule-Änderungen) |

Der wichtigste Unterschied zu Run 16: **die adversariale Stufe hat wieder gebissen.** Beide Befunde
des Kennwerte-Paars fielen — und zwar zu Recht. Das ist kein Qualitätsverlust, sondern das Gegenteil:
der Zuschnitt lag diesmal bewusst auf einer KB, die in Run 15/16 zweimal auffällig war, und die
Verifikation hat belegt, dass sie den Fehler **nicht** wiederholt hat (Details Teil 3).

---

## Teil 1 — Materielle Fehler (bestätigt und korrigiert)

### M-1 Unterdimensionierte Brandschutzbekleidung (`planungsgrundlagen`)

Der PL-03-Wegweiser führte die Kapselungsregel für RF1-Holzbauteile als: «minimaler Feuerwiderstand
der Kapselung **K beträgt 30 Minuten**, mindestens jedoch K30-RF1 und **mindestens 30 Minuten weniger
als** der Feuerwiderstand des Gesamtbauteils».

Das kehrt die Norm um. K ist ein **Rechenwert nach unten** — Feuerwiderstand des Gesamtbauteils
minus 30 Minuten, Untergrenze K30-RF1. In der Wegweiser-Fassung erschien K als fixe 30 Minuten mit
der Differenz als blosser Obergrenze. Praktische Folge: bei einem **REI 90-RF1**-Bauteil sah eine
Bekleidung **K30-RF1** zulässig aus, obwohl Tab. 232-2 dort zwingend **K60-RF1** verlangt.

Das ist keine Formulierungsunschärfe, sondern eine **unterdimensionierte Brandschutzbekleidung**, die
aus einem Vorprojekt-Grobcheck direkt in eine Ausschreibungsklausel oder ein Brandschutzkonzept
wandern kann. Die führende Fassung in `normen` ist in sechs unabhängigen Refuter-Runden gegen den
300-dpi-Originalscan gegengelesen; der Wegweiser-Absatz stammte aus Run 24 (13.07.) und war nie am
Original verifiziert.
→ Regel an den Normwortlaut angeglichen (K30-RF1 bei 30 und 60 Min., **K60-RF1 ab 90 Min.**,
ab 120 Min. kein brennbarer Kern mehr), Korrekturvermerk und Fundstellenverweis gesetzt. Die Zeile
«REI 60-RF1, Bekleidung mind. K30-RF1» weiter unten ist nach Tab. 232-2 korrekt und blieb unberührt.

### M-2 Wandtraglast auf den falschen Systemtyp verallgemeinert (`planungsgrundlagen`)

Derselbe Artikel zählte die sieben Lignum-Wandsysteme korrekt auf und hängte dann eine Lastannahme
an, die nur für **eines** davon gilt: «Tragende Lastannahme **durchgehend** q'd = 20 kN/m' (30 Min.)
bzw. 50 kN/m' (60/90 Min.)».

Die Norm bemisst q'd,fi **je Systemtyp**, nicht je Feuerwiderstandsklasse. Der Fehler lief in beide
Richtungen: bei **Blockbauwänden** wurden im 60-Minuten-Bereich 50 statt der zulässigen 20 kN/m'
unterstellt (**unsichere Überschätzung**), bei **Brettstapelwänden** 20 statt 70 kN/m' (unnötig
konservativ, verteuert den Vorentwurf). Der Absatz ist ausdrücklich als Grundlage für die
Vorprojekt-Dimensionierung «ohne vorab einen Holzbauingenieur beizuziehen» deklariert — also genau
die Stelle, an der die Zahl in Kubatur und Kosten wandert.

Bemerkenswert: `normen` hatte denselben Fehler in Refuter-Runde 31 bei sich bereits korrigiert
(«Traglast je Systemtyp statt je Klasse»). In der Abnehmer-KB lief er unbemerkt weiter.
→ Werte je Systemtyp eingesetzt (Ständerkonstruktionen 20/50, Brettstapel 70, Blockbau 20,
Massivholzplatten 50 kN/m'), fehlende Traglastangaben für Fachwerk- und Holzwerkstoffplattenwände
ausgewiesen, dazu der zweite übersehene Punkt: **90-Minuten-Tabellen bestehen nur für zwei der
sieben Systeme.** Der Verifikations-Agent hat die Tabellen am Original (S. 46–51) im Bild geprüft.

### M-3 Ein aufgehobener Erlass als geltende Bewilligungsgrundlage (`baurecht`)

Der ergiebigste Befund des Laufs, und der einzige, bei dem die **führende** KB im Unrecht war.

`energie` schrieb im neuen Abwasser-Destillat, das WsG habe das EG GSchG abgelöst — hatte diese
Aussage aber ungeprüft aus dem Glossar der AWEL-Planungshilfe 2025 übernommen und im selben Atemzug
vermerkt, ob das WsG überhaupt in Kraft sei, sei «nicht separat verifiziert». `baurecht` — laut
Rollen-Matrix führend für den ZH-Erlassstand — führte demgegenüber **§ 8 EG GSchG** unverändert als
geltende AWEL-Bewilligungsgrundlage für Wärmenutzung aus Wasser.

Weil dieser Befund einen KB-weiten Eingriff nach sich zieht, habe ich ihn **nicht** auf die
Agenten-Aussage gestützt, sondern das amtliche PDF selbst gezogen (`724.1_12.12.24_133.pdf`, zhlex)
und drei Stellen im Volltext gegengelesen:

- **§ 126:** «Die nachstehenden Gesetze werden aufgehoben: a. **Einführungsgesetz zum
  Gewässerschutzgesetz vom 8. Dezember 1974**, b. Wasserwirtschaftsgesetz vom 2. Juni 1991.»
- **Fn. 2:** «Inkrafttreten: 1. Juni 2026.» (OS 81, 145)
- **§ 44 Abs. 1 lit. a Ziff. 3:** Die Direktion bewilligt Bauten und Anlagen, «die der Nutzung von
  Boden, Untergrund oder **Abwasser** zur Gewinnung von **Energie** oder zur Kühlung dienen».

Damit steht fest: **das EG GSchG (LS 711.1) ist seit dem 1. Juni 2026 aufgehoben**, und die
Abwasserenergienutzung ist im Nachfolgeerlass sogar ausdrücklich erfasst — was sie im alten Recht
nicht war. `energie` hatte sachlich recht, aber ohne Beleg; `baurecht` hatte den Beleg im Bestand und
zitierte trotzdem aufgehobenes Recht.

**Wie das durchrutschen konnte — und das ist die eigentliche Lehre:** Der WsG/WsV-Nachzug aus
Buch-Run 50 hat nur nach dem Suchbegriff **«HWSchV»** gesweept und wurde in Run 64 ausdrücklich als
«bleibt geschlossen» verbucht. § 126 hebt aber **zwei** Erlasse auf. Die 17 EG-GSchG-Zitate der KB
blieben unberührt stehen, und der Nachzug galt als erledigt.
**Verallgemeinerte Regel: nach dem Nachfolge-Erlass sweepen, nicht nach dem einen Erlass, der den
Anlass gab.**

→ Korrigiert: `energie`-Destillat auf § 44 Abs. 1 lit. a WsG als geltendes Recht umgestellt (mit
historischem Vermerk), der «offene Punkt» geschlossen, ein Setzfehler «§ EGSchG» ohne Nummer
bereinigt. In `baurecht` die beiden konsumierten Stellen direkt korrigiert
(`buecher/band-2/17-haustechnische-anlagen-teil3`, `wiki/baureife-und-erschliessung`). Die
verbleibenden 15 Fundorte als **Priorität (a) im Arbeitsregister** angemeldet — mit Fundortliste,
Erledigt-Kriterium (`grep` liefert nur noch Stellen mit Aufhebungsvermerk) und den bekannten
§-Zuordnungen (§ 8 → § 44 WsG, §§ 35/36 → §§ 45/46 WsG, § 52 → § 122 WsG). Der Buchtext (6. Aufl.
2019) bleibt dabei quellentreu, es kommt nur der Aufhebungsvermerk dazu — dasselbe Muster wie beim
HWSchV-Nachzug.

**Neu und enger gefasst als offener Punkt stehen geblieben:** Ob die **KGSchV (LS 711.11)** ebenfalls
aufgehoben ist, ist nicht belegt — § 126 WsG hebt nur *Gesetze* auf. Die Materie von § 35 KGSchV
steht heute in § 92 WsV, was die Aufhebung indiziert, aber nicht beweist.

### M-4 Die einzige gesetzliche Frist des Bauentscheids fehlte ganz (`auflagebereinigung`)

`fristenlogik-bauentscheid-zh.md` ist die Frist-Wahrheit dieser KB — die Einreichungszeitpunkte sind
im JANS-Standard eine eigene Spalte der Plan-/Dokumentenliste. Der Artikel listete sechs
Einreichungszeitpunkte und **keine einzige gesetzliche Frist**. Ein grep über die ganze KB nach
«Rechtsmittel», «anfechten», «Anfechtung» und «Rechtsschutz» lieferte **null** Treffer.

Fehlend war die **Rekursfrist von 30 Tagen** (§ 22 Abs. 1/2 VRG, Rekursinstanz Baurekursgericht nach
§ 329 Abs. 1 PBG, Verwirkung nach § 316 Abs. 1 PBG). Materiell: wer die Auflagen nur «bereinigt»,
akzeptiert sie faktisch, während die Frist parallel läuft und verwirkt — und Verhandeln mit dem Amt
oder ein Wiedererwägungsgesuch hemmt sie nicht.

Ebenfalls gefehlt hat der Zusammenhang, der die Spalte «vor Baubeginn» überhaupt lesbar macht: ein
hängiger Rekurs hemmt den Baubeginn grundsätzlich (§ 25 Abs. 1 VRG), aber nur soweit der
Verfahrensausgang die Bauausführung beeinflussen kann (§ 339 Abs. 1 PBG) — mit möglicher
**Teilfreigabe** (Abs. 2). In diesem Zustand ist «vor Baubeginn» gegen den freigegebenen Teil zu
lesen, nicht gegen das Gesamtprojekt.
→ Abschnitt «Vorgelagert: die einzige gesetzliche Frist» eingesetzt, inkl. der zweiten fehlenden
Frist (Erlöschen der Bewilligung nach drei Jahren, § 322 PBG). Im Prozessartikel ein **Frist-Gate vor
Schritt 1** gesetzt: je Auflage zuerst entscheiden, ob abgearbeitet **oder angefochten** wird.

### M-5 Veraltete Quelle mit Vorrang vor geltendem Recht empfohlen (`planungsgrundlagen`)

Der PL-03-Wegweiser wies an, «direkt Tabelle 3 dieser Quelle **statt** der generischen
VKF-BSR-Tabelle» zu konsultieren — ohne Ausgabenummer, ohne Erscheinungsjahr, ohne Vorbehalt. Die
Quelle ist **Lignatec 17/2005**, TKB-VKF-anerkannt bezogen auf die **VKF-Ausgabe 2003**: zwei
Vorschriftengenerationen vor dem BSV 2015, das derselbe Artikel in §1 selbst als geltend führt. Die
führende KB `normen` kennzeichnet dieselbe Publikation seit dem 26.07. ausdrücklich als «VERALTET».
Zwei KBs, dasselbe PDF, gegenläufige Handlungsanweisung.
→ Vorbehalt gesetzt, Ausgabe präzisiert, Vorrang umgekehrt (massgeblich bleiben BSR 15-15 und
AH 1001-15; Tabelle 3 nur als holzbauspezifische Lesehilfe). Festgehalten, dass die daraus
abgeleiteten Healthcare-Aussagen belastbar bleiben — aber **nur weil §4b sie unabhängig aus der
geltenden BSR 15-15 belegt**.

---

## Teil 2 — Zwei bestätigte Struktur-Befunde

**S-1 Handoff ins Leere (`baurecht` → `auflagebereinigung`).** Der einzige Verweis von `baurecht` auf
diese KB leitete die «vor Baubeginn fälligen Auflagen» über die
[[ausnahmebewilligung-und-bestandesschutz]]-Linie. Jener Artikel behandelt aber ausschliesslich
Dispens (§ 220 PBG) und Bestandesschutz (§ 357 PBG) — zu «Baubeginn» und «Auflage» keine Fundstelle.
Zuständig ist § 321 PBG, also [[nebenbestimmungen-und-reverse]]; die Gegenrichtung war korrekt
gesetzt, nur die Hinrichtung griff ins Leere.
→ Handoff umgehängt, § 326 lit. a PBG als Stütze ergänzt, Gegenverweis im Zielartikel gesetzt. Der
Verweis auf die Ausnahmebewilligungs-Linie bleibt im Abschnitt «Verwandte Artikel» stehen — dort ist
er richtig.

**S-2 Die Rule `normen-referenz` greift beim Schreiben weiterhin nicht — fünfter Fundort.** Keine der
fünf neuen `energie`-Dateien vom 27.07. enthielt **einen einzigen** Verweis auf `baurecht` oder
`planungsgrundlagen` (grep-Zähler je 0), obwohl beide Matrix-Zeilen berührt sind. Dasselbe bei den
neuen Lignum-Destillaten in `normen` Richtung `planungsgrundlagen`. Das Muster ist seit Run 3
dokumentiert und wird jedes Mal nachträglich im Cross-Lauf durchgesetzt, nie beim Verfassen.
→ Querbezug-Blöcke beidseitig gesetzt. Der Block im führenden Lignum-Destillat benennt ausdrücklich
die zwei Fehler (M-1, M-2), die aus genau dieser fehlenden Verbindung entstanden waren — damit eine
künftige Änderung an Tab. 232-2 oder den Traglasttabellen nicht wieder an der Abnehmer-KB vorbeiläuft.
Ebenso ein Abnehmer-Block in `grobkosten/wiki/kennwerte.md` (zuvor null Treffer für seine zwei neuen
Abnehmer), mit der ausdrücklichen Abgrenzung, dass diese KB für Healthcare **nicht** führend ist.

---

## Teil 3 — Was NICHT stimmte: zwei widerlegte Befunde

Beide Befunde zum neuen Wohnbau-Parameter-Set fielen in der adversarialen Stufe — und das ist die
eigentliche Nachricht dieses Abschnitts.

Der Finder meldete, das CHF/m²-HNF-Band des Sets liege ~25 % unter dem führenden Wert der
`immobilienbewertung` und der schärfste Kaveat der Quelle («Zielkostendach, vom Sieger verfehlt») sei
beim Transfer verloren gegangen — also im Kern derselbe Vorwurf, der beim Healthcare-Set in Run 15/16
zutraf.

Der Verifikations-Agent hat beides verworfen. Der Kaveat steht vollständig im Set, im Array
`entwurfs_regeln`, inklusive Projektname (MOERAKI) und Fundstellenverweis auf die Bausteine B4/B6.
Die Bandbreiten-Differenz erklärt sich aus verschiedenen Bezugsgrössen und Scopes, nicht aus einem
Übertragungsfehler.

**Der Befund ist damit ein Positiv-Ergebnis:** Der KB-Loop hat beim Wohnbau-Set genau das richtig
gemacht, was er beim Healthcare-Set falsch gemacht hatte. Zwei aufeinanderfolgende Cross-Läufe haben
dieselbe Fehlerklasse an derselben KB gesucht — beim zweiten Mal war sie nicht mehr da. Das ist
belegter Fortschritt, kein Fehlalarm.

Offen bleibt dort nur ein struktureller Nebenpunkt (nicht verifiziert, an den KB-Loop): `kosten_referenz`
nennt nur **eine** `quelle_kb` (`grobkosten`, für CHF/m³ korrekt) — für die ebenfalls enthaltene
m²-HNF-Dimension fehlt der Zeiger auf die dafür führende KB.

---

## Teil 4 — Der Nachlauf aus Run 16: die Strukturregel wirkt (erster Wirkungsnachweis)

Run 16 hatte diagnostiziert, dass Übergaben in die **Fragenliste** einer KB folgenlos bleiben, weil
die Loops ihre Arbeit aus dem **Arbeitsregister** wählen — und die vier `baurecht`-Bring-Schulden
entsprechend umgehängt.

**Das lässt sich heute erstmals messen.** Der normen-Loop hat in Run 30 (27.07.) zwei der vier
Inventar-Zeilen tatsächlich abgearbeitet: SIA 491 und SN EN 12193 tragen jetzt den Vermerk «Bestand
geprüft 260727 (Run 30): weder in PL-02 noch in PL-03 vorhanden — bleibt externe Bring-Schuld», bei
EN 12193 zusätzlich «Nachfolgeausgabe weiterhin abzuklären». Dieselben vier Normen waren zwei Runs
lang unberührt geblieben, solange sie nur in der Fragenliste standen. **Die Diagnose ist damit
verifiziert, nicht nur plausibel: der Ort der Anmeldung entscheidet, nicht die Qualität des Eintrags.**

**Und derselbe Lauf hat den siebten Fundort desselben Musters gefunden.** Die Bring-Schuld «SIA
181:2020 re-destillieren» steht seit **Run 3 (13.07.2026)** — vierzehn Tage — ausschliesslich in
`normen/wiki/QUESTIONS.md` und war nie im Inventar. Entsprechend ist nichts geschehen, während
`energie` (Ausgabe 2020, +4 dB) und `normen` (Ausgabe 2006, +3 dB) unverändert nebeneinander laufen.
→ als Inventar-Zeile mit **Priorität P1** nachgetragen — höher als die vier baurecht-Schulden, weil
die Rule `normen-referenz` für LV und Werkvertrag die 2006er Fundstelle zieht. Die Beschaffung selbst
bleibt Bring-Schuld von Raphael (SIA-Shop, kostenpflichtig).

**Ebenfalls erledigt:** Offener Punkt 1 aus Run 16 (Fassungsbezeichnung im
Grossverbraucher-Destillat). Das Frontmatter sagte «EnerG ZH Nachtrag vom 19.4.2021» und widersprach
damit dem Quellenverzeichnis derselben Datei — «Nachtrag» ist im Kanton Zürich die Nummer der
konsolidierten Fassung, nicht das Datum des Änderungserlasses. An die führende Quelle angeglichen
(Nachtrag 129, Stand 1.7.2025; §§ 13a/13d eingefügt durch G vom 19.4.2021).

---

## Teil 5 — Offene Entscheide

### Für Raphael: zwei Rule-Änderungen (nichts Blockierendes)

Beide betreffen `rules/anrede-kontakte.md`, die per @-Import immer aktiv ist und laut ihrer eigenen
Konvention **vor** dem twin-Wiki konsultiert wird. Rule-Änderungen an dieser Datei sind laut twin-
CHANGELOG 2026-07-25j an deine Freigabe gebunden — **ich habe deshalb nichts geändert**, sondern lege
vor:

**(1) Eine generelle Klausel im Abschnitt «Konvention»** — das ist die wirksamere der beiden
Änderungen, weil sie alle Zeilen zugleich heilt statt einer:

> Die Notiz-Spalte nennt den **Routine-Default**. Die Anrede-Stufe folgt zusätzlich dem **Gewicht des
> konkreten Anliegens**: ein verbindliches Ergebnis oder eine folgenreiche Bitte zieht «Geschätzte/r
> <Vorname>» auch beim sonst lockersten Du-Kontakt, danach fällt der Faden wieder auf den
> Routine-Opener zurück.

Dreifach unabhängig belegt (Stefan Tschopp, Besnik/fsgbau, Levi Hiltmann). Der konkrete Anlass: die
Liste führt Besnik starr als «nackter Vorname-Opener», während der authentische Beleg vom 21.05.2026
(Betreff «Gewerke/Empfehlung») zeigt, dass du bei gewichtigem Anliegen «Geschätzter Besnik» + direkten
FG-Block wählst. Der twin-Loop hatte das erkannt und die Korrektur wörtlich ausformuliert, sie aber
korrekterweise nicht selbst in die Rule geschrieben.

**(2) Felix Stählin — welche Firma?** Die Liste führt «Karl Wächter AG, Ausführender»; zwei jüngere,
unabhängige twin-Batches (60/61, Belege 02.–13.07.2026) nennen «Stählin AG Sanitär», einmal mit
Gewerkbezug «Waschküche». Die Anredeform (Du) stimmt überein, die Firmenzuordnung nicht — und das
Wiki ist an dieser Stelle selbst uneinheitlich. **Sind das zwei Firmen desselben Mannes oder zwei
Personen mit demselben Vornamen?** Aus dem Korpus nicht entscheidbar. Nach Rule
`identifikatoren-verifizieren` ist ein Firmenname ein Identifikator, der unverändert in Anschreiben,
Adressblatt, Submittentenliste und Werkvertrag wandert; eine falsche Firma beim richtigen Vornamen
fällt erst beim Empfänger auf. Bis zur Klärung gilt: vor jeder Verwendung in einem Dokument
verifizieren.

### An die KB-Loops (kein Chef-Entscheid)

1. **`baurecht`** — der EG-GSchG-Nachzug (15 offene Fundorte) steht als Priorität (a) im
   Arbeitsregister. Zusätzlich prüfen, ob die **KGSchV (LS 711.11)** ebenfalls aufgehoben ist, und
   `planungsgrundlagen` mitziehen (führt «LS 711.1 §§ 3/34/37» als geltende ÖREB-Rechtsgrundlage der
   Themen 130/132).
2. **`normen`** — Re-Destillat **SIA 181:2020**, jetzt P1 im Inventar. Solange es fehlt, laufen zwei
   Ausgaben parallel; die ⚠-Flags halten den Zustand sichtbar, lösen ihn nicht.
3. **`entwurfs-referenzen`** — im Wohnbau-Set einen zweiten Quellenzeiger für die m²-HNF-Dimension
   setzen (aktuell nur `grobkosten`, das für CHF/m³ korrekt ist).
4. **`energie`** — die Anrechnungsregel Duschwasser-WRG wird hier fortgeschrieben, obwohl
   `planungsgrundlagen` für Nachweisregeln und Formulare führend ist. Übergeben.

---

## Verfahrenshinweis

Bei M-3 habe ich die Agenten-Aussage **nicht** übernommen, sondern das amtliche PDF selbst gezogen
und §§ 44/126 sowie die Inkrafttretens-Fussnote im Volltext gegengelesen, bevor ich in `baurecht`
etwas geändert habe. Das war richtig: der Befund kehrte die Richtung um, die der Finder vorgeschlagen
hatte (nicht `energie` lag falsch, sondern die führende KB), und er zieht einen KB-weiten Eingriff
nach sich. **Bei einem Befund, der eine führende Quelle korrigiert oder eine Sweep-Aktion auslöst,
prüft der Chef selbst am Original nach** — die adversariale Agentenstufe allein reicht dafür nicht.
