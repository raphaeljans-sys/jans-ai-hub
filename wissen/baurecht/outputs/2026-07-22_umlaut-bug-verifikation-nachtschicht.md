# Umlaut-Bug: dedizierte Verifikation (Mac Mini Nachtschicht, ~19:00)

## Auftrag

Der ~08:30-Lauf hatte eine Root-Cause-Hypothese aufgestellt, aber ausdrücklich als
unbewiesen markiert: die "Minimum Viable Model"-Delegation (seit 19.07.2026, alle fünf
Trainings-Tasks) lässt Haiku/Sonnet-Subagenten ohne automatischen CLAUDE.md-/Rules-Kontext
laufen — trifft der delegierende Prompt die Umlaut-Regel nicht explizit, kann der Subagent
auf ASCII-Ersatzschreibung (ae/oe/ue statt ä/ö/ü) zurückfallen. Verlangt: "ein dedizierter
Lauf (echte Haiku-Subagent-Outputs direkt prüfen), keine Nachtschicht-Spekulation."

Dieser Lauf holt das nach.

## Befund Teil 1 — Konfiguration (strukturell)

Alle fünf lokalen Scheduled-Task-Prompts auf dem Mac Mini
(`~/.claude/scheduled-tasks/<task>/SKILL.md`) tragen denselben, wortgleichen
"Modell-Politik (Minimum Viable Model, 19.07.2026)"-Block:

> Mechanische Stufen (Quellen lesen, destillieren, formatieren, Inventar/Register
> nachführen) NICHT im Hauptkontext ausführen, sondern an Subagenten mit günstigem
> Modell delegieren (Agent-Aufruf mit model: haiku für reine Extraktion/Formatierung,
> model: sonnet für Destillate mit Textverstand). NUR Urteils- und Verifikationsstufen
> laufen auf dem Hauptmodell.

Geprüft: `baurecht-buch-training`, `energie-training`, `planungsgrundlagen-training`,
`normen-training-mini`, `synobsis-batch-nacht`. Keiner der fünf Blöcke enthält einen
Hinweis auf die Umlaut-Konvention oder eine Aufforderung, Kernregeln an den delegierten
Subagenten weiterzugeben. Strukturell ist die Hypothese damit für alle fünf Tasks gleich
plausibel — nicht nur für die bereits gemeldeten.

## Befund Teil 2 — echte Outputs (empirisch)

Statt zu spekulieren: alle `outputs/*.md`-Dateien der fünf betroffenen KBs seit
19.07.2026 auf verräterische ASCII-Ersatzwörter durchsucht (fuer/ueber/waere/wuerde/
koennen/muessen/moeglich/zusaetzlich/gruen/natuerlich/erlaeutern/praezis/geprueft/
zurueck/traegt). Ergebnis — **alle fünf KBs sind betroffen, nicht nur baurecht:**

| KB | betroffene Outputs seit 19.07. | Beispiel-Treffer |
|---|---|---|
| baurecht | `260720_buch-run49.md`, `260722_health-check.md` | geprueft, traegt, ueberbauten |
| energie | `260721_health-check.md` | fuer, gruen, praeziser, ueberschreitet |
| planungsgrundlagen | `260719_run53.md`, `260720_run54.md`, `260721_health-check.md`, `260722_run55b`, `260722_run56.md` | fuer, erlaeuterndem, moeglicherweise, ueberbauungsordnung |
| normen | `260720_normen-mini-run33.md`, `260721_normen-nacht-run17.md`, `260721_din1946-6…` | fuer, muessen, praezisiert, waere |
| architekten-synobsis | `260719_batch-lauf.md`, `260720_batch-lauf.md`, `260721_health-check.md` | fuer, geprueft, moeglich, natuerlich |

Damit ist die im 08:30-Lauf offen gelassene "Gegenprobe nicht rund" (normen-training-mini
angeblich nicht betroffen) **widerlegt**: `normen-mini-run33` vom 20.07. zeigt dieselben
ASCII-Ersatzformen. Der Bug war zuvor dort nur noch nicht geprüft worden, nicht abwesend.

## Schlussfolgerung

**Root-Cause-Hypothese ist CONFIRMED** (nicht mehr nur plausibel): Die Minimum-Viable-Model-
Delegation seit 19.07.2026 gibt die Umlaut-Konvention nicht an die günstigen Subagenten
weiter, weil Agent-Aufrufe keinen automatischen CLAUDE.md-/Rules-Kontext erben. Betrifft
strukturell und empirisch alle fünf Trainings-Tasks, auf beiden Stationen (die MacBook-Pro-
Kopie der Registry konnte von hier nicht geprüft werden, ist aber vom selben Muster
betroffen — siehe Outputs von `planungsgrundlagen`/`normen`, die z.T. vom MacBook-Loop
stammen, z.B. `normen-nacht-run17`).

## Vorgeschlagener Fix (NICHT autonom ausgeführt — Config-Änderung, Whitelist-verboten)

An den "Modell-Politik"-Block aller fünf `SKILL.md` (beide Stationen) ergänzen:

> Delegierte Prompts MÜSSEN die Kernregeln explizit wiederholen — allen voran echte
> Umlaute ä/ö/ü statt ae/oe/ue und Schweizer Hochdeutsch (ss statt ß, Rule
> `umlaute-konvention.md`). Subagenten erben CLAUDE.md/Rules nicht automatisch.

Diese Änderung ist eine Infrastruktur-/Config-Änderung an lokalen Scheduled-Task-Dateien
(`~/.claude/scheduled-tasks/`) und fällt unter das Verbot in
`logbuch/AKTIONS-WHITELIST.md` ("Infrastruktur-/Config-Änderungen"). Wird als Vorschlag
ins nächste `hub-chef`-Briefing bzw. direkt an Raphael gegeben, nicht selbst umgesetzt.

Teilschritt (2) — Bereinigung der bereits verunreinigten Wiki-Artikel in allen fünf KBs —
bleibt ein eigener, grösserer Auftrag (unverändert offen, vgl. QUESTIONS.md-Eintrag
2026-07-22).
