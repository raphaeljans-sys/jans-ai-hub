# QUESTIONS-Abarbeitung 20 (23.08.2026)

**Auftrag:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten. Fundstelle je Aussage mit
Norm, Ausgabe und Ziffer; Verifikationsstatus des Destillats lesen, nur `established` ist
zitierfähig. CHANGELOG und Report des letzten Laufs (Abarbeitung 19) zuerst gelesen, dort
weitergemacht. Rule `wissens-bibliothekar` beachten, jede Aussage belegen, nichts raten,
CHANGELOG-Eintrag setzen, nach jedem Schreiben `git diff --numstat` prüfen.

**Kollisionsprüfung:** kein Hinweis auf einen zweiten Prozess mit identischem Lauf-Namen in
dieser Session; die KB zeigt aus früheren Läufen bekannte Parallelaktivität (SIA-Sweep-Läufe,
weitere QUESTIONS-Läufe), aber innerhalb dieser Session keine Kollision am Schreibvorgang
festgestellt.

## Methodik dieses Laufs

Anders als die vorherigen Läufe (die primär neue Web-Recherche betrieben) hat dieser Lauf
**Bestandsabgleich** gemacht: mit `grep -n "^- \[ \]"` alle 50 offenen Checkbox-Punkte
aufgelistet und geprüft, ob eine Antwort inzwischen **anderswo in der KB** (REGISTER, INDEX,
Wiki-Artikel, Inventar) bereits existiert, aber nie auf die QUESTIONS-Zeile zurückverlinkt
wurde. Grund: die KB wächst sehr schnell (mehrere parallele SIA-Sweep-Fortsetzungen und
QUESTIONS-Läufe pro Tag), und mehrere Recherchen der letzten Wochen haben denselben
Sachverhalt gelöst, ohne die ursprüngliche Frage zu schliessen.

## Bearbeitet (vier Punkte geschlossen, ein Cross-KB-Nachweis nachgetragen)

**1. Cross-Link-Lücke `sia-en-13200-1-2019.md` → SIA 500 (Zeile ~3742) — GESCHLOSSEN.**
Der Eintrag behauptete, SIA 500 sei noch nicht destilliert. Tatsächlich existiert
`destillate/sia-500-2009.md` seit Langem (`established`, verifiziert 260712, seither um
Anhang E und alle vier Korrigenda C1-C4 erweitert), und der Cross-Link war laut
`training/norm-inventar.md` Z. 524 bereits am 25.07.2026 (Run 20) geschlossen worden — nur
die QUESTIONS-Zeile war seither nicht nachgezogen.

**2. SN 640 052 Cross-KB-Bringschuld an `wissen/baurecht` (Zeile ~4228 ff.) — GESCHLOSSEN.**
Ein früherer Lauf hatte den ⚠-Vorbehalt («SN 640 052 seit 31.03.2019 ausser Kraft») zwar
recherchiert, aber notiert «hier nicht selbst editiert (fremde KB)». Geprüft: der Vorbehalt
steht inzwischen tatsächlich in `wissen/baurecht/wiki/baureife-und-erschliessung.md`
(git-verifiziert, Commits `fd4ef28d`/`b1533e82`, 23.08.2026) — die Bringschuld ist erfüllt,
nur der QUESTIONS-Nachtrag war noch nicht nachgezogen.

**3. SN EN 520 «fehlt im Bestand» (Zeile ~4182) — GESCHLOSSEN.** Der Eintrag (22.07.2026)
verlangte, Plattentypen und Rohdichte-Kriterium zu klären und zu belegen. Ein unabhängiger
Mini-Run (23.07.2026, Mac Mini) hatte dieselbe Lücke bereits bearbeitet:
`wiki/en-520-gipsplattentypen.md` (`established`) dokumentiert Typ D (≥ 800 kg/m³, zwei
Sekundärquellen) und Typ F samt Praxisregeln; `wiki/REGISTER.md` Z. 860 führt den
Bestandsbefund. Bleibt offen (im Artikel selbst vermerkt): der Zahlenwert selbst ist nur über
Sekundärquellen belegt, nicht über den SN-EN-520-Wortlaut (kostenpflichtiger Volltext).

**4. SIA 240:1988 „aktuellere Ausgabe verifizieren" (Zeile ~3457) — TEILWEISE GESCHLOSSEN.**
Die geforderte Verifikation ist bereits am 23.08.2026 im laufenden SIA-Sweep erfolgt:
`wiki/REGISTER.md` Z. 290/379 (Produktseite `shop.sia.ch`, SN 507240) bestätigt **SIA
240/2012** als aktuell geltende Ausgabe, ersetzt SIA 240:1988. Als Teilbefund vermerkt: Z. 900
desselben Registers führt SIA 240 noch unter der 1988er-Zeile als „gilt (Bestand)" — ein
interner REGISTER-Konsistenzpunkt (welche Zeile massgebend ist), nicht in diesem Lauf gelöst,
da reine Registerpflege, keine offene Sachfrage. Volltext 2012 bleibt Bring-Schuld Raphael.

## Geprüft, aber nicht verändert (bereits korrekt / kein Mehrwert)

- **SIA 242** (Zeile ~3434): Bestandsbefund «kein Volltext im Haus» in `wiki/REGISTER.md`
  Z. 381 (SIA-Sweep 23.08.2026) bestätigt exakt denselben Sachverhalt wie die QUESTIONS-Zeile —
  keine Änderung nötig, beide Quellen sind konsistent und die Zeile bleibt zu Recht offen.
- Zeile ~3912 (VKF-BRL 16-15 „Stand 01.12.2022" destillieren): der umgebende Textblock
  (Zeilen 3883-3911) zeigt, dass diese Frage bereits mehrfach (Run 22/23, QUESTIONS-Abarbeitung
  23.08.2026) vollständig beantwortet wurde — nur die ursprüngliche Checkbox selbst blieb aus
  Gründen der Nachvollziehbarkeit stehen (Ursprungswortlaut wird bewusst nicht gelöscht). Keine
  weitere Bearbeitung nötig, reine Formatierungsfrage, kein Rechercheauftrag.

## Nicht geleistet / weiterhin offen

Alle in Abarbeitung 19 als „Nicht geleistet" benannten Punkte bleiben unverändert offen
(NIN-Geschirrspüler, N60-1/N60-2, SIA 491/SN EN 12193 — kostenpflichtige Bring-Schulden ohne
Kaufberechtigung, mehrfach verifiziert, kein neuer Anlauf ohne Mehrwert). SN 641 400 (VSS)
bleibt nach zwei unabhängigen Web-Anläufen eine externe Bring-Schuld (siehe Abarbeitung 19).
Die grosse Zahl übriger offener Checkbox-Punkte (~40) betrifft P3/P4-Prioritäten,
Raphael-Entscheide (Duplikat-Merges, Kaufentscheide) oder DIN/VSS/RAL-Themen ausserhalb des
in diesem Lauf gewählten Fokus — nicht einzeln neu geprüft.

## Verifikation (`git diff --numstat` nach jedem Schreibvorgang, Rule `auto-verbesserungen` 260811)

| Schritt | Kumulativ (Einfügungen/Löschungen) |
|---|---|
| Nach Edit 1 (SIA-500-Cross-Link geschlossen) | 11 / 4 — additiv |
| Nach Edit 2 (SN-640-052-Cross-KB-Nachweis) | 20 / 5 — additiv |
| Nach Edit 3 (SN-EN-520 geschlossen) | 36 / 13 — additiv |
| Nach Edit 4 (SIA-240 teilgeschlossen) | 46 / 15 — additiv |

Alle Löschungen sind Ersetzungen des ursprünglichen `[ ]`-Zeilenblocks durch den erweiterten
`[x]`/`[~]`-Block an derselben Stelle (Kontextverschiebung), keine inhaltliche Löschung fremder
Einträge. Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt; Commit läuft über den
15-Minuten-`nas-selfcommit`-Cron bzw. `scripts/nas-commit-now.sh`.

## Nächster Schritt (Empfehlung)

- Die in diesem Lauf angewandte Methode (Bestandsabgleich statt neue Web-Recherche) hat sich
  als ergiebig erwiesen — bei einer stark parallel bearbeiteten KB entstehen laufend
  „bereits gelöst, aber nicht zurückverlinkt"-Fälle. Für den nächsten Lauf empfiehlt sich,
  dieselbe Methode auf die verbleibenden ~40 offenen Checkbox-Punkte anzuwenden, bevor neue
  externe Recherche versucht wird — insbesondere die P2/P3-Punkte im Abschnitt
  „SIA-Sweep"-Nachträge (Zeilen 3300-4020), die am ehesten Doppelarbeit enthalten.
- Echte, noch ungelöste Web-Recherche-Kandidaten für den nächsten Anlauf: keine neuen
  identifiziert in diesem Lauf (Fokus lag auf Bestandsabgleich).
