# Wissens-Chef — Lauf 61 (17.09.2026, Abendlauf)

**Delta-Basis** `8eca226aa` → `6f72d0334`, Fenster 24 h, **128 Commits**, 54 Wissens- und
Rules-Dateien, nativ im SSD-Klon gemessen. Anschlussprobe an Lauf 60 sauber (dessen HEAD trägt
16.09.2026 23:00). Zuschnitt: Workflow mit **7 Meldern** auf dem Zuwachs, je gemeldetem Befund ein
**adversarialer Verifikator** (13), Gegenprüfung aller tragenden Befunde am Original im
Hauptkontext.

## Das Wichtigste

Zwei Läufe hintereinander zeigt derselbe Fehler dasselbe Gesicht: **eine Korrektur behauptet ihre
eigene Vollständigkeit, statt sie zu messen.** In Lauf 60 erreichte eine Korrektur drei von sechs
Stellen. Heute schreibt die offene Frage `E-R204-2` in `wissen/energie`, zum 30-kW-Deckel stehe
«bis dahin an allen drei Stellen ein ⚠⚠-Vermerk» — tatsächlich fehlte er an **vier weiteren
Fundstellen, davon einer in der führenden KB selbst**. Die praktische Folge ist beziffert und nicht
akademisch: an der Stelle, an der die Zahl beim Dimensionieren gelesen wird, steht der Deckel
unverändert, und bei 6'000 m² EBF trennt das eine 30-kW- von einer 60-kW-Pflichtanlage — Healthcare
und Verwaltung, also genau das JANS-Segment.

Der zweite Befund ist der freundlichere Zwilling davon: sechs Weichen in der Bauherren-FAQ schicken
den Leser beim fossilen Heizverbot an eine KB, die diesen Inhalt regelgemäss gar nicht führen darf —
während die eigene, seit heute vollständige Antwort daneben liegt. Niemand hat etwas falsch
geschrieben; es hat nur niemand die alten Weichen umgelegt, als die eigene Antwort kam.

## Bilanz

| | Zahl |
|---|---|
| Melder / Verifikatoren | 7 / 13 |
| Meldungen | 13 |
| **bestätigt wie gemeldet** | **4** |
| **anderer Zuschnitt** (Kern trägt, Lage anders) | **5** |
| **widerlegt** | **4** |
| geänderte Dateien | 20, alle additiv, keine Löschung |
| offene Entscheide für Raphael | 3 |

Dass **vier von dreizehn** Meldungen an der adversarialen Prüfung scheiterten und **fünf** einen
anderen Zuschnitt bekamen, ist das erwartete Bild: in drei der fünf Fälle lag das echte Problem
**breiter** als gemeldet, zweimal **schmaler**.

## Befunde

### WC61-1 ⭐ energie ↔ planungsgrundlagen · Zuschnitt breiter · **Der 30-kW-Vorbehalt fehlte an vier weiteren Stellen**

`wissen/energie` Run 204 hat am amtlichen BBV-I-Volltext gemessen, dass der 30-kW-Deckel der
Eigenstrompflicht eine **Muster**vorschrift (MuKEn 2014 / EnFK-Formular EN-104) ist und **§ 47b
Abs. 1 BBV I** keinen kW-Deckel kennt — ein `grep` über den ganzen Nachtrag 133 findet «30 kW»
nirgends. Der Befund wurde korrekt nach `planungsgrundlagen` übergeben. Er erreichte dort **einen**
Absatz.

Offen geblieben und heute additiv versehen:

01. `energie/wiki/pv-solar-technologien.md` Z. 44 — «Neubau Kt. ZH: PV ≥ 10 W/m² EBF, max. 30 kW»,
    ohne Vorbehalt, **in der führenden KB selbst**. Das widerlegt die Selbstprüfung des Melders,
    der Mangel liege allein auf der Empfängerseite.
02. `planungsgrundlagen/wiki/energie-pv-eignung-typenwahl.md` Z. 285-288 — der
    «Dimensionierungs-Anker (Eigenstrom-Pflicht Neubau ZH)». Die Stelle, an der die Zahl beim
    Dimensionieren gelesen wird.
03. Dieselbe Datei Z. 647 — Querbezug-Zeile, gleiche Lage, geringeres Gewicht.
04. `planungsgrundlagen/wiki/energie-energienachweis-zh-formulare.md` Z. 131 — keine blosse
    Wiederholung: die Zeile steht unter «Schwellen-Merkposten (belegt, EN-ZH S. 3-4)» und
    **schreibt den Deckel damit dem kantonalen Hauptformular zu**, während dieselbe Quelle zwölf
    Zeilen höher nur die 70-%-Belegung hergibt. Wer dem Verweis aus dem Vorbehalt folgt, findet die
    Warnung und die Entwarnung nebeneinander.

Die Sachfrage bleibt unverändert offen (E-R204-2, Gegenlesung am kantonalen EN-104-ZH steht aus);
keine Zahl wurde gestrichen. Der Nachtrag an E-R204-2 hält die Lehre fest: **eine
Vollständigkeitsaussage über die eigene Korrektur ist zu messen, nicht zu behaupten.**

⚠ Das Register hat den Fehler mitgetragen: `QUERBEZUEGE.md` Z. 5235 und 5281 zertifizieren den
Deckel aus den Läufen 11/12 (Juli 2026) als «alle fassungsgleich» bzw. «übereinstimmend». Beide
Zeilen sind selbst Teil des überholten Stands.

### WC61-2 energie → planungsgrundlagen · bestätigt · **«Erweiterungen sind befreit» ist eine Bagatellklausel**

`planungsgrundlagen/wiki/energie-energienachweis-zh-formulare.md` führte die Befreiung von der
Eigenstrompflicht pauschal. **§ 47b Abs. 3 BBV I** (am amtlichen Wortlaut gegengelesen, Nachtrag
133) befreit nur, wer neu **weniger als 50 m²** EBF schafft **oder höchstens 20 % der EBF des
bestehenden Gebäudeteils und nicht mehr als 1000 m²**. Eine Aufstockung mit 800 m² neu auf 2'000 m²
Bestand sind 40 % — pflichtig, nach der alten Zeile befreit. Additiv präzisiert, mit Führung auf
`baurecht/raw/` für den Wortlaut und `energie/wiki/pv-eigenverbrauch-zev.md` für das Destillat.

### WC61-3 energie-intern (gemeldet als energie ↔ baurecht) · Zuschnitt gedreht · **Sechs stale Weichen**

Der Melder wollte einen BBV-I-Paragraphen in `baurecht` nachtragen. Der Verifikator hat das
zurückgewiesen — und zwar mit dem Register in der Hand: `QUERBEZUEGE.md` Z. 29 untersagt der
Empfänger-KB ausdrücklich, den Erlasswortlaut fortzuschreiben, und Z. 179 weist den
Fossilverbots-**Inhalt** `energie` zu. Der Vorschlag hätte genau die Fortschreibung ausgelöst, die
das Register verbietet.

Der wirkliche Mangel liegt innerhalb von `energie`: sechs Weichen in `wiki/BAUHERREN-FAQ.md`
(Z. 423, 540, 748, 980, 1375, 1479) delegieren das Heizverbot an den Skill `baurecht`. Sie stammen
aus der Zeit, als diese KB zu § 47c nichts hatte. Seit Run 204 hält sie mit **F298** die
vollständige Antwort selbst. Alle sechs zeigen jetzt zuerst auf die eigene Antwort; der bestehende
Verweis bleibt daneben. **An `baurecht` keine Änderung.**

### WC61-4 baurecht ↔ planungsgrundlagen · Zuschnitt korrigiert · **Werkleitungskante fehlte**

`baurecht/wiki/baureife-und-erschliessung.md` führt die Rechtslage zu Anschlusspflicht,
Nebenleitungen, Kostentragung und Eigentumsübergang, sagte aber nicht, **wo die Leitungen liegen**.
Der am 16.09. entstandene §8 Werkleitungskataster (Stadt Zürich, Plananforderung ERZ) war nirgends
zitiert. Zeiger beidseitig gesetzt, `[[kartenportale-werkleitungskataster]]` in die links-Zeile
aufgenommen.

Korrektur am Melder: als Vorbild taugt nicht die Waldabstands-Zeile, sondern die bestehende
**Wasserversorgungs-Zeile** (`QUERBEZUEGE.md` Z. 34) — dasselbe Artikelpaar, derselbe Abschnitt
«Versorgung & Entsorgung», dieselbe Arbeitsteilung Recht ↔ Beschaffung, nur für Trinkwasser statt
Abwasser. Die neue Matrixzeile steht als deren Schwester und verteilt keine Führung neu.

### WC61-5 normen ↔ architektur-fachwissen · bestätigt · **Eine Eigenleistung wurde der falschen KB zugeschrieben**

Der am 16.09. (Lauf 60) gesetzte «Beantwortet»-Vermerk in `normen/destillate/sia-mb-2017.md`
schreibt die Klärung des SIA-2017-Geltungsstands der KB `architektur-fachwissen` zu (Erhebung am
SIA-Shop, 15.09.2026). **`normen` hatte denselben Stand drei Wochen früher selbst**, aus derselben
Primärquelle: `wiki/REGISTER.md` Z. 518, abgerufen 23.08.2026.

Der Verifikator hat den Schwerpunkt verschoben, und zu Recht: der eigentliche Defekt sitzt nicht im
Destillat, sondern in **meinem eigenen Register** — `QUERBEZUEGE.md` Z. 280 («echte Eigenleistung,
die `normen` fehlt») und Z. 283 («Cross-KB-Bringschuld, nie gezogen»). Beide Stellen sind berichtigt,
dazu die Matrixzeile; die datierten CHANGELOG-Protokolle vom 16.09. bleiben stehen und bekommen je
einen neuen Eintrag. **Lehre:** bevor einer anderen KB eine Eigenleistung zugeschrieben wird, im
eigenen Bestand nachsehen — die Bringschuld-Regel misst am Zeiger, nicht am Datum.

Die WC60-5-Doppelspur selbst bleibt unverändert benannt und unaufgelöst (Entscheid Raphael).

### WC61-6 rules → Wege-Register · bestätigt · **Die kanonische ssh-Form stand nur in der Rule**

Rule `auto-verbesserungen` 260917b hält seit heute fest, dass ein Fernbefehl an den Mac Mini blank
abzusetzen ist (`ssh mini '<befehl>'`), weil ein vorangestelltes `-o`-Flag die Präfix-Regel
`Bash(ssh mini *)` bricht und die Verweigerung dann fälschlich als Stationssperre gelesen wird.
`connectors/WEGE.md` — das Register, das genau vor einem «geht nicht» konsultiert werden soll —
kannte die Form nicht; ein `grep` auf 260917b fand null Treffer.

Zwei Einzeiler gesetzt: die kanonische Form im Stationen-Abschnitt (samt dem Nebenbefund, dass
`launchctl bootstrap` über ssh `rc=5` meldet, auch wenn der Job geladen ist), und in Abschnitt 4
ein Vorspann, dass eine Meldung «Remote Shell Writes» zuerst am **Befehlsformat** zu prüfen ist,
bevor sie als harte Sperre verbucht wird. Der Klassifikator selbst bleibt unangetastet.

### WC61-7 Pflichtpaar Kennwerte · bestätigt · **Zwei Referenzzinssätze, einer undatiert**

`skills/machbarkeit/wissensbasis` führt an zwei Stellen und `skills/healthcare-wirtschaftlichkeit`
an einer den **BWO-Referenzzinssatz 1.75 %** — undatiert, im Fliesstext einer Rechenanleitung.
`wissen/immobilienbewertung` belegt **1.25 %**, am Stichtag 01.09.2026 an der Primärquelle
unverändert bestätigt. Die 1.75 % sind der Studienstand des Goldstandards WALD, also als Beleg
richtig und als Rechen-Default falsch; die Zweideutigkeit entsteht, weil der Abschnitt «(Beleg
WALD)» überschrieben ist und zugleich die Annuitätsformel trägt. Wirkung rund **0.30 Prozentpunkte
Annuität p.a.** bei 33 Jahren Laufzeit.

An allen drei Stellen als Studienstand gekennzeichnet, mit Führung auf `investorenmarkt-makro.md`
und dem ausdrücklichen «nicht als Default rechnen». Matrixzeile angelegt. Damit endet die Serie von
zwei Nullbefunden in diesem Pflichtpaar.

### WC61-8 grobkosten ↔ immobilienbewertung · Zuschnitt schmaler · **Parallel geführte Gewichte**

`immobilienbewertung/wiki/lageklasse-landwertanteil.md` rechnet aus den BKP-Gewichten der
ZIW-Revision 2025 den Faktor **1.053** (BKP 2 → BKP 2+4+5), der in eine ganze Spiegelungstabelle
eingeht. Dieselben Gewichte werden in `grobkosten/wiki/kennwerte.md` parallel geführt, ohne dass
eine Stelle die andere kannte — eine Revision der amtlichen Reihe hätte dort nicht mitgezogen.
Zeiger beidseitig gesetzt, **ohne Führungsbehauptung**: beide KBs haben eigenen, registrierten
Zugang zur Primärquelle. Die vom Melder gewünschte Führungszeile im Register wurde **nicht**
gesetzt (siehe offene Entscheide).

Widerlegt am selben Befund: die behauptete zweite Folge (Herkunftsbeschränkung der Erhebungsbasis
nicht mitgereist) — sie steht bereits unter D16 in `wissensluecken.md`, auf das der Artikel selbst
zeigt.

### WC61-9 twin ↔ rules · Zuschnitt gedreht · **Die Rule steuerte richtig, der Auto-Block nicht**

Der Melder wollte die @-importierte `rules/anrede-kontakte.md` mit einem Veraltet-Vermerk versehen,
weil der am 16.09. gesetzte Zugeständnis-Vermerk dort vom Lauf am 17.09. überholt worden sei.
**Nicht ausgeführt** — Linie Run 32, bestätigt in den Läufen 58 und 60: den Wortlaut einer Rule
ändert Claude nicht selbst.

Der Verifikator hat zusätzlich gezeigt, dass die Prämisse nicht trägt: der **Ankerfall der Klausel
selbst** — Besnik, 21.05.2026, Betreff «Gewerke/Empfehlung» — ist dieselbe Gattung am lockersten
Du-Kontakt und **hebt**. Er steht seit dem 29.07.2026 in der Rule. Der Stand ist damit **3:0**, und
falsch gesteuert hat allein der am 16.09. kompilierte Auto-Block, den die Rekompilierung vom 17.09.
bereits korrigiert hat. Ausgeführt wurde in Claudes eigener Domäne: dritter Beleg im
`beziehungsregister`, datierter Nachtrag an `QUESTIONS` 260916b #1, der die Frage präziser stellt.

## Widerlegt (4)

01. **energie ↔ baurecht, ⚠-Korrekturblock doppelt.** Der Melder wollte eine Zeile in
    `baureife-und-erschliessung.md` streichen. Der Verifikator: das ist destruktiv, der Punkt ist
    in `baurecht/outputs/2026-09-01_health-check.md` bereits als offener Befund registriert, und
    die tragende Begründung war zusätzlich sachlich falsch.
02. **baurecht ↔ planungsgrundlagen, Rückkante verspricht zu viel.** Der Melder rechnete mit dem
    falschen Messstand (28.07. statt 24.07.2026); die Zielstelle trägt Kopfstand, fünf datierte
    Refreshes und einen eigenen ⚠-Prüfhinweis.
03. **twin ↔ rules, «die Rüge senkt» gegen Spahic.** Abgedeckt durch den Lauf-58-Vermerk und die
    offene Frage 260917b #1; der Unterschied liegt im Cc, nicht im Register.
04. **Rule 260917b gegen Chronik/Fristen-Register.** Der Melder wollte in zwei täglich gelesene
    Register schreiben, «welcher Hergang stimmt, ist offen». Die Zeitstempel (09:48 lokal gegen
    09:52 Rule) lösen die Abfolge auf — es wäre eine **falsche offene Frage** gewesen.

## Nullbefunde

Keine. Alle sieben Felder haben gemeldet; das ist in dieser Serie ungewöhnlich und erklärt sich aus
dem Delta: drei energie-Läufe, ein Fidelity-Review mit sechs gewachsenen Facetten-Wikis und zwei
neue Rules-Einträge an einem Tag.

## Byte-Riegel (Pflichtmessung)

Auto-Block `rules/jans-dna-facetten.md`: **36'894 B**, selbst nachgemessen. Die Grenze wurde heute
von 34'000 auf **37'000 B** angehoben, dokumentiert im Kopf von `build_dna.py` und im
Fidelity-Bericht. **Reserve 106 B (0.3 %)** — die Anhebung um 3'000 B ist am selben Tag
aufgezehrt worden, und die WARN-Schwelle (34'000) ist um 2'894 B überschritten, der Compiler warnt
also bei jeder Kompilierung. Damit ist der von Lauf 60 vorgelegte Entscheid eingetreten **und**
bereits überholt.

**Kein eigener Befund:** der Twin-Harness hat die Lage selbst gemessen, benannt und die richtige
Empfehlung gezogen — den Block nach Gattung teilen statt die Grenze erneut heben
(`twin/wiki/QUESTIONS.md` 260917b #6). Der Wissens-Chef schliesst hier nur die Rückkante zu seiner
eigenen Vorlage von Lauf 60.

## Offene Entscheide für Raphael

01. **Der Anrede-Rückstau ist von vier auf sechs Kandidaten gewachsen.** Lauf 60 hat vier gemeldet
    (Horeni, Gasser, Würsch, Stadelmann); heute kommen die Eren-Korrektur und Scherbl dazu
    (`twin/wiki/QUESTIONS.md` 260917b #2). Alle sechs sind mehrfach aus eigener Hand belegt, keiner
    steht in `rules/anrede-kontakte.md`. Der Fidelity-Review schlägt selbst vor, sie **in einer
    Vorlage zu bündeln** statt je Lauf eine einzeln zu bringen. Das ist der praktischere der beiden
    Wege — der andere bleibt der 2026 von Run 32 vorgeschlagene Kandidatenlisten-Mechanismus.
02. **Anteilsstruktur BKP: Registerzeile ja oder nein?** `grobkosten` und `immobilienbewertung`
    führen dieselben ZIW-Gewichte parallel, beide mit eigenem, registriertem Zugang zur
    Primärquelle. Eine Führungszeile würde die Struktur einer KB zuweisen; das ist ein
    Koordinationsentscheid, den dieser Lauf nicht fällt. Die Zeiger stehen, die Zeile fehlt
    bewusst.
03. **SIA-2017-Doppelspur, unverändert offen seit Lauf 60.** Die Führung ist benannt, der Text steht
    weiter zweimal da. Eine Verdichtung in `architektur-fachwissen` wäre ein Eingriff in bestehenden
    Wortlaut.

## Schreib-Kontrolle

20 Dateien, **alle Edits ankerbasiert** (Anker gelesen, Anker + Zusatz geschrieben), keine Löschung,
kein globales Ersetzen, kein Eingriff in `raw/`, keinen Rule-Wortlaut geändert. Zwei bewusste
Zeilenersetzungen: die `links:`-Zeile in `baurecht/wiki/baureife-und-erschliessung.md` (um einen
Eintrag erweitert) und die SIA-2017-Matrixzeile im Register (um den Berichtigungs-Halbsatz
erweitert). Commit nativ über `nas-commit-now.sh`, Umfang danach per `--numstat` im SSD-Klon
gemessen.
