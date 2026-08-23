# Fortsetzung des QUESTIONS.md-Nachlaufs (Run 157, zwölfte Fortsetzung)

Auftrag: weitere offene Fragen aus `wiki/QUESTIONS.md` abarbeiten, belegt mit Quelle und
Datenstand, danach in die Wiki-Artikel einarbeiten. CHANGELOG und letzten Lauf zuerst gelesen.

## Ausgangslage

Run 156 hatte zum vierten Mal in Folge (nach Run 152, 154, 155) eine vollständige Durchsicht
gemacht und geschlossen: kein aus eigener Kraft lösbarer Rechercheauftrag mehr offen, alles
Verbliebene hängt an einem Entscheid Raphaels, einer externen Freigabe oder einem Normkauf.

Statt einer fünften identischen Durchsicht wurde diesmal geprüft, ob die als „Entscheid Raphael
nötig" geführten Punkte diese Einordnung tatsächlich noch verdienen — also gegen den
tatsächlichen Bestand (Skill-Verzeichnis, Scheduled-Task-Config), nicht nur gegen den
Registerstand.

## Befunde

**E-S1 / Meta-Punkt M2 — geschlossen.** Seit Run 45 (25+ Läufe) wurde wiederholt vermerkt, ein
eigener Skill `energie` sei „spruchreif" und brauche Raphaels Entscheid. Er existiert bereits:
`/Volumes/daten/jans-ai-hub/skills/energie/SKILL.md`, Stand 15.08.2026, im Hub-Wegweiser
`CLAUDE.md` unter den Skills gelistet, in dieser Session direkt aufrufbar. Niemand hatte in den
25 Läufen im Skill-Verzeichnis nachgesehen.

**E-R148-2 — geschlossen.** Run 148 hatte vorgeschlagen, den Loop-Takt von dateilisten- auf
fragengetrieben umzustellen (oder auf wöchentlich zurückzutakten), weil der PL-02-Korpus
erschöpft sei. Tatsächlich war diese Entscheidung am 26.07.2026 bereits gefallen:
`~/.claude/scheduled-tasks/energie-training/SKILL.md` trägt seither `enabled: false` mit dem
Kommentar „EREIGNIS-TRIGGER statt Zeittakt (Entscheid Raphael 26.07.2026) … Einziger Startweg:
scripts/wissens-trigger.sh — feuert nur, wenn sich das Quellmaterial tatsächlich geändert hat."
Zusätzlich ist die vorgeschlagene Alternative bereits gelebte Praxis: alle elf interaktiven
Fortsetzungssessions vom 23.08.2026 (Run 149-156) sowie dieser Lauf arbeiten `QUESTIONS.md` ab,
nicht `pdf-inventar.md`.

**E-R149-4 — inhaltlich unverändert richtig, technisch nicht umsetzbar in dieser Session.** Der
Korrekturvorschlag für die VORAUSSETZUNG-Zeile derselben Task-Datei (falscher lokaler
OneDrive-Pfad-Check → M365-CLI-Zertifikatsweg) liegt seit Run 129 im vollständigen Wortlaut vor.
Der Editier-Versuch wurde vom Harness als sensible Datei (Scheduled-Task-Config) abgelehnt — eine
Berechtigungsgrenze dieser Session, keine neue Sachfrage. Muss ausserhalb dieser Session oder mit
expliziter Freigabe angewendet werden.

## Verbleibend: drei echte Entscheidungspunkte

Keiner der folgenden drei ist aus eigener Kraft (Web, freier PDF-Bestand) lösbar. Alle drei
wurden im laufenden Chat direkt an Raphael gestellt, statt sie ein weiteres Mal nur zu
registrieren:

1. **E103** — Soll für einen Schweizer Flächenkennwert je Pflegeplatz (m²EBF/Platz) die
   JANS-eigene Healthcare-Projektdatenbank (2410 WALD/Nova u.a.) ausgewertet werden? Kennwert
   existiert weder in dieser KB noch öffentlich (BAG, BFE).
2. **E94** — Soll eine reale JANS-Projektofferte (BKP 271 Innendämmung) in
   `wissen/grobkosten/raw/` eingespeist werden, um die seit Monaten fehlende Schweizer
   CHF/m²-Primärquelle für Innendämmung zu schliessen?
3. **E-R148-1** — Normkauf SIA 380/1:2016. Blockiert die U-Wert-/Q_H,li-Tabellenwerte UND (neu
   in Run 148 belegt) die Gebäudekategorien-Zuordnung — damit auch die Healthcare-Einstufung
   E-R140-1 in ihrer formell zitierfähigen Fundstelle (die Sachfrage selbst gilt seit Run 153
   über eine Sekundärquelle als geklärt: Pflegeheim/Altersheim = Kat. VIII, 70 kWh/m²).

## Registeränderungen

- `wiki/QUESTIONS.md`: E-S1 und E-R148-2 auf `[x]` gesetzt, additiv (Ursprünglicher Wortlaut
  jeweils direkt darunter belassen). `git diff --numstat`: 20 Zeilen hinzugefügt, 0 gelöscht.
- `CHANGELOG.md`: neuer Eintrag oben.
- Keine Wiki-Artikel/Destillate geändert — beide Befunde sind Registerpflege, keine neue
  fachliche Aussage zu Energie-Sachfragen.

## Für den nächsten Lauf

Kein weiterer Recherche-Nachlauf ohne neue Eingabe oder eine der drei Entscheidungen oben.
Sollte Raphael E103 oder E94 freigeben, ist der nächste Schritt ein eigener kurzer
Auswertungslauf (Projektdaten sichten, Kennwert ableiten, Destillat schreiben) — kein weiterer
QUESTIONS-Sweep.
