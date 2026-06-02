# Regel: Umlaute-Konvention (ä, ö, ü statt ae, oe, ue)

## Hintergrund

In allen Texten, die JANS produziert (E-Mails, Dokumente, Briefe, Skills, Agents, Commands, Output-Dateien), werden die deutschen Umlaute **immer als Umlaut geschrieben**, nicht als Ersatz mit Doppellaut.

Hintergrund: Frühere Skills/Templates haben aus Kompatibilitätsgründen "ae/oe/ue" verwendet. Dies ist nicht mehr nötig — UTF-8 ist überall Standard, und der professionelle Schriftverkehr im Schweizer Architekturbüro verlangt korrekte Umlaute.

## Vorrang

Diese Regel hat Vorrang vor jeder anderslautenden Vorgabe in weiteren Regeln, Templates oder Generator-Skripten (z.B. einer "ASCII-only"-Erwähnung). Im Zweifelsfall gilt immer: echte Umlaute ä/ö/ü im Fliesstext aller Texterzeugnisse.

## Regel

Immer verwenden:
- ä statt ae
- ö statt oe
- ü statt ue
- Ä, Ö, Ü statt Ae, Oe, Ue

Beispiele:
- "geschätzt" (nicht "geschaetzt")
- "Bauherrschaft" (nicht "Bauherrschaft" — keine Umlaute hier, also keine Änderung)
- "Ausführung" (nicht "Ausfuehrung")
- "ergänzend" (nicht "ergaenzend")
- "Möglichkeit" (nicht "Moeglichkeit")
- "Grüsse" (nicht "Gruesse")

## ß bleibt ss

In Schweizer Hochdeutsch wird kein "ß" verwendet — immer "ss":
- "Strasse" (nicht "Straße")
- "grüsse" (nicht "grüße")
- "muss" (nicht "muß")

Diese Konvention bleibt unverändert.

## Gilt für

- E-Mails (Apple Mail Drafts, M365)
- Dokumente (DOCX, PDF, MD)
- Skills, Agents, Commands auf dem NAS
- Output-Dateien
- Antworten in Konversationen, sofern zum Kopieren bestimmt

## Ausnahmen

- Datei- und Ordnernamen — gemäss `dateinamen-konvention.md` (dort sind Umlaute zu vermeiden, weil sie Probleme bei Cross-Plattform-Sync, Git, URLs verursachen)
- Bash-Skripte und Code-Variablen — ASCII-only beibehalten
- Englische Texte — nicht relevant

## Konsistenz mit bestehenden Skills

Bestehende Skills auf dem NAS verwenden teilweise noch "ae/oe/ue". Bei einer Überarbeitung dieser Skills sollen die Umlaute korrigiert werden. Solange ein Skill nicht überarbeitet wird, bleibt der bestehende Text unverändert.

## Verknüpfung

Wird in CLAUDE.md per `@`-Import eingebunden, sodass die Regel automatisch in jeder Claude-Session aktiv ist.
