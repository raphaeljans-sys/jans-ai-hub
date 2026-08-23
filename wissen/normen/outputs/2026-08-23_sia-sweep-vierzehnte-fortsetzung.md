# SIA-Sweep, vierzehnte Fortsetzung — SIA 2032:2010→2020 (Titel- und Fassungswechsel) am Original bestätigt, Stub-Fehltitel korrigiert

- **Datum:** 23.08.2026
- **Auftrag Raphael:** SIA-Sweep der KB `wissen/normen` fortsetzen — Register-geführte SIA-Zeilen
  ohne Datei im Haus, Produktdatenblätter mit gültig-ab/gültig-bis beschaffen, Register nachführen,
  Destillate anlegen. Rule `normen-referenz` (Fundstellenpflicht) und `wissens-bibliothekar`
  beachten, jede Aussage belegen, nichts raten, CHANGELOG-Eintrag setzen, nach jedem Schreiben
  `git diff --numstat` prüfen.
- **Vorlauf gelesen:** `CHANGELOG.md` (Kopf: dreizehnte Fortsetzung),
  `outputs/2026-08-23_sia-sweep-zwoelfte-fortsetzung.md`.

## Ausgangslage

Die dreizehnte Fortsetzung hatte SIA 500 Korrigenda C1/C2 abgeschlossen und die drei bereits
erschöpften Sweep-Zweige (Register-Vervollständigung, Blindzone, N-SIASWEEP-2/3) nicht erneut
angegangen. Die zwölfte Fortsetzung hatte für SIA 385/9 dasselbe Muster bearbeitet und als
Positivbeispiel SIA 387/4 genannt (bereits von `energie` selbst verifiziert) sowie empfohlen,
systematisch nach Register-Zeilen zu suchen, deren Bring-Schuld/offene Frage nur auf einer
Sekundärquelle beruht statt auf einer eigenen Direktprüfung der Produktseite.

`ps aux` zeigt einen `claude`-Prozess mit exakt demselben Startprompt wie dieser Lauf (PID 3140,
gestartet 8:21) — das ist dieser Lauf selbst (headless `-p`-Invocation), kein Konkurrent, wie der
Laufauftrag ausdrücklich vorsieht.

Systematisch nach dem Muster «bisher nur … gemeldet» / «nicht am Normtext verifiziert» in
`wiki/QUESTIONS.md` gesucht. Fündig geworden bei **SIA 2032** (Wissens-Chef Run 20, 29.07.2026):
REGISTER führte die Ausgabe 2010 mit einem Fassungsflag, weil zwei unabhängige Sekundärquellen
der KB `energie` seit 26.06.2026 durchgängig mit SIA 2032:2020 rechnen (KBOB-Faktenblatt «Graue
Treibhausgasemissionen», MuKEn-2025-Methodikpapier Modul G) — aber niemand hatte die
SIA-Produktseite selbst abgerufen. Fast vier Wochen stand die Formulierung «Fassungsflag,
Ausgaben-Kette bewusst unverändert» im Register.

## Befund: SIA 2032

**Direktprüfung 23.08.2026:** `shop.sia.ch/normenwerk/architekt/sia%202032/d/2020/D/Product`
(SN 592032) per WebFetch abgerufen. Bestätigt:

- **SIA 2032:2020**, SN 592032, «Graue Energie — Ökobilanzierung für die Erstellung von
  Gebäuden», gültig ab **01.08.2020**, 44 Seiten, 100.00 CHF (Papier oder Download)
- Ersetzt ausdrücklich **SIA 2032:2010** «Graue Energie von Gebäuden», gültig bis 31.07.2020

**Wichtigster inhaltlicher Nebenbefund:** der Titelwechsel ist nicht kosmetisch. 2010 war die
Norm eine reine Grauenergie-Bilanzierungshilfe («Graue Energie von Gebäuden»), 2020 eine
vollständige Ökobilanzierungsnorm («Ökobilanzierung für die Erstellung von Gebäuden») — beide
Ausgaben decken vermutlich nicht dieselbe Grösse ab. Für die Zitierpraxis relevant, sobald der
Volltext einmal vorliegt: nicht einfach das Ausgabejahr austauschen, sondern prüfen, ob die
zitierte Kennzahl (z. B. MJ/m²·a) in beiden Ausgaben dieselbe Bedeutung hat.

Nachgeführt: `wiki/REGISTER.md` Zeile SIA 2032 (Fassungskette + Titelwechsel belegt, Stil
analog der Zeile SIA 2030), `destillate/sia-2032.md`, `wiki/QUESTIONS.md`.

## Nebenbefund: Stub-Fehltitel korrigiert

`destillate/sia-2032.md` war am 07.08.2026 bei der Health-Check-Reparatur toter Backlinks als
Platzhalter angelegt worden und trug den **erfundenen** Titel «Ökobilanzen im Bauwesen» sowie
eine unbelegte Kettenaussage, SIA 2032 sei «Nachfolge-/Bezugsnorm zu SIA 2024 (Recyclingbeton)».
Beides ohne Quellenangabe — ein Verstoss gegen die Belegpflicht, der seit sieben Wochen
unbemerkt im Wiki stand. Im selben Lauf auf den jetzt verifizierten Titel korrigiert; die
SIA-2024-Verknüpfung als **ungeprüft** markiert, nicht gelöscht (der Backlink `[[sia-2024]]`
besteht technisch weiter, die inhaltliche Aussage dahinter ist zurückgenommen). Der Fund ist ein
Beleg dafür, dass auch scheinbar harmlose Health-Check-Reparatur-Stubs der Fundstellenpflicht
unterliegen — sie sind Wiki-Inhalt, kein reines Bookkeeping.

Der Phase-2-Auftrag im Stub (Vollinhalts-Destillation nach Beschaffung) wurde präzisiert: Bezug
auf die beiden konkreten `energie`-Abnehmer, die bereits mit SIA 2032:2020 rechnen
(`kbob-graue-treibhausgasemissionen-2025.md`, `muken-2025-modul-g-co2-grenzwerte.md`), damit die
künftige Destillation direkt weiss, welche Abgrenzungsfrage zuerst zu klären ist.

## Verifikation

`git diff --numstat` nach jedem Schreibvorgang geprüft:

- `wiki/REGISTER.md`: 1/1 — reiner Zeilenersatz, ausschliesslich die eigene SIA-2032-Zeile
- `destillate/sia-2032.md`: 21/7 — vollständige Neufassung des 7-Zeilen-Stubs zu einem
  21-Zeilen-Artikel-Fragment, wie beabsichtigt (kein Fremdanteil, Datei ist einzeln bearbeitet)
- `wiki/QUESTIONS.md`: 10/0 — rein additiv, exakt die eigene Einfügung (✅-Nachtrag bei
  Run-20-Punkt 1). Das Edit-Werkzeug meldete beim Schreiben, die Datei sei seit dem letzten Lesen
  extern verändert worden (paralleler Prozess derselben Station schreibt aktiv in dieselbe
  Datei) — der Edit hat trotzdem sauber angewandt (`old_string` unverändert vorgefunden), und
  der `--numstat`-Wert von 10/0 bestätigt: ausschliesslich die eigene Einfügung steht im Diff,
  keine fremde Änderung wurde überschrieben.
- `CHANGELOG.md`: 66/0 — rein additiv, eigener Eintrag vor dem bisherigen Kopf eingefügt, Kopf
  des vorherigen Eintrags unangetastet stehen gelassen.

Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt.

## Nicht geleistet / offene Bring-Schulden

- Kein Volltext von SIA 2032:2020 (oder :2010) gekauft — bleibt Beschaffungs-Bring-Schuld
  Raphael. Die Vollinhalts-Destillation (Phase 2, LCA-/Ökobilanz-Kennwerte) bleibt offen.
- Der dangling Link `[[sia-2032]]` in `destillate/sia-2040-2017.md:9` bleibt bestehen, bis ein
  echter Inhaltsartikel existiert — reines Bookkeeping, kein Sachfehler.
- Die Abgrenzung SIA 2032:2020 vs. SN EN 15978 vs. KBOB/MuKEn-Modul-G (welche Kennzahlen sich
  decken, welche nicht) wurde nicht geprüft — reiner Ausgaben-/Titel-Befund, kein
  Inhaltsvergleich am Volltext.
- Die drei bereits erschöpften Sweep-Zweige (Register-Vervollständigung, Blindzone,
  N-SIASWEEP-2/3) erneut nicht angegangen.
- **Empfehlung für die Fortsetzung — weitere Kandidaten nach demselben Muster, noch nicht
  abschliessend geprüft:**
  - SVGW-Regelwerk (Wissens-Chef Run 20, Punkt 3) — allerdings eine andere Norm-Familie
    (SVGW, nicht SIA/VKF/DIN/VSS/RAL); vor der Bearbeitung ist zu klären, ob SVGW überhaupt in
    den Sweep-Scope fällt oder eine eigene Familie im Inventar werden müsste (Strukturentscheid,
    ggf. Raphael vorlegen).
  - EN 13487 und EN 12102-1 (Wissens-Chef Run 18, Punkte 2/3) — beide fehlen im Register noch
    vollständig, keine Ausgabe verifiziert, Herstellernormen ohne SIA-Shop-Produktseite (andere
    Beschaffungsroute nötig, z. B. Beuth/DIN-Normenportal).
  - SIA 387/4:2023 laut Register bereits von `energie` selbst direkt verifiziert — als
    Stichprobe eignet sich diese Zeile, um zu prüfen, ob `normen` diese Verifikation
    eigenständig nachvollzogen und ins REGISTER übernommen hat, oder ob dort dieselbe Lücke
    besteht wie bei SIA 2032 vor diesem Lauf.
