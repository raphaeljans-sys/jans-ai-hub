# SIA-Sweep, sechsundzwanzigste Fortsetzung — SIA V 242/1+2:1994 destilliert, Q1-Q4-Fehlannahme korrigiert

- **Datum:** 23.08.2026
- **Auftrag Raphael:** SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte SIA-Zeilen
  ohne Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register
  nachführen, Destillate anlegen. Rule `normen-referenz`, Fundstellenpflicht.
- **Vorlauf gelesen:** `CHANGELOG.md`-Kopf und
  `outputs/2026-08-23_sia-sweep-fuenfundzwanzigste-fortsetzung.md`.

## Ausgangslage

Die 25. Fortsetzung hatte den Section-A-Sweep im engeren Sinn (SIA-Zeilen ohne Volltext im Haus,
nur Produktdatenblatt/Gültigkeit beschaffen) für erschöpft erklärt: `training/norm-inventar.md`
führt 0 offene `[ ]`-Positionen, alle 59 Blindzone-Zeilen tragen Produktdatenblatt + Corrigenda-
Check, offen bleiben nur kostenpflichtige Bring-Schulden (Raphaels Kaufentscheid). Eigene
Nachprüfung bestätigte das.

Da eine reine Wiederholung dieses Befunds keinen Mehrwert bringt, wurde `wiki/QUESTIONS.md` nach
SIA-bezogenen Zeilen durchsucht, die noch echte, **kostenlos lösbare** Arbeit enthalten (Rule
`wege-und-vollmachten`: erst wenn jeder Weg ausgeschöpft ist, gilt eine Aufgabe als blockiert).
Fündig: Zeile 3434, «SIA 242 «Verputz- und Gipserarbeiten» ist NICHT im Normen-Bestand».

## Durchgeführt

1. **Bestand geprüft** über den M365-Graph-Connector (Site PL, Drive `02_Recht_Norm`, Pfad
   `02_Normen/SIA_Norm/SIA_Normen/alle/`). Direkt unter `alle/` keine SIA-242-Datei; im
   Unterordner `xalt/` (= archiviert) zwei deutsche Dateien gefunden: `242-1_1994_d.pdf` und
   `242_2_d.pdf`; im Ordner `f/` die französischen Fassungen `242_1_f.pdf`/`242_2_f.pdf`. Keine
   italienische Fassung. `wiki/REGISTER.md` Zeile SIA 242 (von einem früheren Lauf desselben Tages,
   Produktseite shop.sia.ch SN 567242) hatte diese Dateien bereits als Bestandsnotiz erfasst,
   aber inhaltlich nicht ausgewertet.
2. **Beide PDFs vollständig gelesen** (`pdftotext -layout`, Modell D — direkte Lektüre am
   Original, keine Zusammenfassung aus zweiter Hand): 20 bzw. 12 Seiten.
   - **SIA V 242/1** «Verputz- und Gipserarbeiten — Aussenputze, Innenputze, Stukkaturen»,
     Ausgabe 1994.
   - **SIA V 242/2** «Gipserarbeiten — Trockenbau», Ausgabe 1994.
   - **Kernbefund zum Status:** Beide Teile tragen im Titel ausdrücklich «V» = Vernehmlassung.
     Der «Genehmigung»-Abschnitt beider Teile (S. 20 bzw. S. 12) dokumentiert nur, dass die ZNK
     des SIA am 31.05.1994 die Freigabe **zur Verlängerten Vernehmlassung** erteilt hat — kein
     Inkrafttreten als vollwertige Norm. Vorwort: «Sie gilt als Beitrag der CH-Fachleute für die
     CEN-Arbeiten und soll angewendet werden, bis die entsprechende CEN-Norm in Kraft tritt.» Sie
     ersetzten die Norm SIA 242 vom 01.08.1978 nur provisorisch.
3. **Destillat erstellt:** `destillate/sia-242-v1994.md`, Status `established` (Volltext
   vollständig gelesen, Fundstellen direkt am Original). Inhalt: Geltungsbereich, Begriffe
   (Putzarten nach Bindemittel/Anforderung), **Putzdicken-Solltabelle** (Grundputz innen 10 mm,
   aussen 15 mm; Zementmörtelanwurf 3–5 mm; Deckenputz 5 mm; Spachtelmasse 0–2 mm),
   **Toleranztabellen** Lot/Flucht (nach Messdistanz 1/2/4/10 m) und Ebenheit, Leistungen und
   Ausmass (Ausschreibungspflichtangaben, nicht inbegriffene Leistungen, Ausmassregeln) für
   V242/1; für V242/2 Trockenbau-Begriffe (Voll-/Karton-/Faser-/Verbundplatten), Bauteilbegriffe
   (Deckenbekleidung/Unterdecke/Vorsatzschale/Wandbekleidung), Höhenangaben bei Unterdecken (rohe
   Raumhöhe, lichte Raumhöhe, Abhängehöhe, Konstruktionshöhe, Nutzhöhe), Leistungen/Ausmass sowie
   mitgeltende Publikationen (NPK 643/644/651, SIA 251/256).
4. **Prämisse der QUESTIONS-Zeile geprüft und widerlegt:** die dort genannte
   «Qualitätsstufen-Systematik Q1–Q4 für gespachtelte Gipsplatten-Oberflächen» kommt in **keinem**
   der beiden 1994er-Texte vor (Volltextsuche nach «Q1», «Q2», «Q3», «Q4», «Qualitätsstufe»,
   «Gütestufe» in beiden `pdftotext`-Ausgaben: 0 Treffer). Diese Fehlannahme stand seit dem
   21.07.2026 unwidersprochen in der KB und wurde jetzt korrigiert statt weiter unbelegt
   fortgeschrieben.
5. **Aktuelle Ausgabe SIA 242:2012** — Produktseite bereits am selben Tag von einem früheren Lauf
   verifiziert (`wiki/REGISTER.md` Zeile SIA 242: gültig ab 01.10.2012, ersetzt SIA V242/1:1994,
   nur Metadaten, Volltext Bring-Schuld). Nicht erneut abgefragt, nur referenziert und im
   Destillat als «nicht die geltende Fassung» klar markiert.

## Sicherheitsvorfall und Selbstkorrektur

Beim ersten Beschaffungsversuch (Herunterladen der PDFs über den M365-Graph-Connector) wurde ein
Access-Token versehentlich in eine Datei geschrieben (`/tmp/normen-sweep/token.txt`), weil
`node connectors/m365-graph.mjs --token graph` zunächst über `$(...) > datei` statt direkt in eine
Shell-Variable geleitet wurde. Das widerspricht sowohl dem im Connector-Quelltext selbst
dokumentierten Grundsatz («Der Token ist kurzlebig und wird NIE in eine Datei geschrieben») als
auch den Grenzen der User-CLAUDE.md («Passwoerter, Zertifikate und Tokens nie in Dateien
schreiben»). Fehler sofort erkannt und behoben: Datei gelöscht (`rm -f`), danach ausschliesslich
`TOKEN=$(node ... --token graph)` im Prozessspeicher verwendet und nach jedem Curl-Aufruf
`unset TOKEN`. Der Token wurde nie committet oder an eine geteilte Stelle geschrieben.

## Nachgeführt

- `destillate/sia-242-v1994.md` (neu, established)
- `destillate/INDEX.md` (eine Zeile, additiv)
- `wiki/REGISTER.md` (additiver Nachtrag an der bestehenden SIA-242-Zeile, Abschnitt A)
- `wiki/QUESTIONS.md` (Checkbox `[ ]` → `[~]`, additiver Absatz mit Verweis auf das neue Destillat)
- `CHANGELOG.md`: eigener Eintrag oberhalb des bisherigen Kopfs

## Verifikation

`git diff --numstat` nach jedem Schreibvorgang geprüft (Rule `auto-verbesserungen` 260811):

| Datei | Befund |
|---|---|
| `destillate/INDEX.md` | additiv (3 Einfügungen/0 Löschungen) |
| `wiki/REGISTER.md` | Gesamtdiff 22/1 — Diff einzeln gegengelesen: die 21 zusätzlichen Einfügungen (SIA 181/1-Zeile, Suva-/EKAS-Abschnitt) stammen nachweislich vom parallel laufenden `QUESTIONS-Abarbeitung-21`-Prozess (anderer Dateibereich), die eigene Änderung betrifft ausschliesslich die bestehende SIA-242-Zeile (1 Zeile ersetzt durch dieselbe Zeile + Zusatzsatz) |
| `wiki/QUESTIONS.md` | Gesamtdiff 57/7 — ebenfalls Mischdiff mit dem parallelen Prozess; die eigene Änderung ist der SIA-242-Absatz (Checkbox-Toggle + additiver Zusatzabsatz), einzeln im Diff verifiziert, keine fremde Zeile berührt |
| `CHANGELOG.md` | additiv (136 Einfügungen/0 Löschungen — eigener Eintrag oberhalb des bereits vorhandenen Kopfs des Parallelprozesses) |

Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt. Kein Zugangstoken in einer Datei oder
einem Commit verblieben (siehe Sicherheitsvorfall oben).

## Nicht geleistet / weiterhin offen

- **SIA 242:2012** (die heute geltende Ausgabe) bleibt Bring-Schuld Raphael — kein Volltext im
  Haus, kein Kauf durch Claude.
- Die tatsächliche Quelle der Q1-Q4-Qualitätsstufen für die KISPI-Fachfrage LBW-Beschichtung ist
  weiterhin ungeklärt — jetzt aber korrekt als «nicht SIA 242» markiert statt einer falschen Norm
  zugeschrieben.
- Abschnitt D (DIN/VSS/RAL) weiterhin ausserhalb des heutigen, auf SIA begrenzten Auftrags.
- Kein weiterer freier SIA-Sweep-Kandidat systematisch gesucht — für den nächsten Lauf empfiehlt
  sich entweder (a) dieselbe Methode (Bestand vs. QUESTIONS-Prämisse prüfen) auf die verbliebenen
  P2-P4-Bring-Schulden-Zeilen der 24. Fortsetzung anwenden, oder (b) auf Abschnitt D ausweiten
  (Vorschlag der 25. Fortsetzung).
