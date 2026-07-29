# JANS — Grundregeln (User-Level, gilt ueberall)

Diese Datei liegt als **Kopie** unter `~/.claude/CLAUDE.md` auf jeder Station und laedt in
JEDER Session, auch ausserhalb des Hub-Repos (Projektordner, Downloads, fremdes Verzeichnis,
NAS nicht gemountet). Sie ist bewusst kurz: nur was ueberall gilt.

Kanonische Quelle: `/Volumes/daten/jans-ai-hub/templates/user-level/CLAUDE.md`.
Verteilen/abgleichen: `bash /Volumes/daten/jans-ai-hub/scripts/user-claude-sync.sh`.
Bewusst **keine** Symlink-Loesung — die Datei muss auch ohne NAS-Mount greifen.

## Wer

Raphael Jans Architekten ETH/SIA, Zuerich. Sprache: **Schweizer Hochdeutsch**, echte
Umlaute ä/ö/ü, **ss statt ß**. Technische Begriffe auf Englisch sind in Ordnung.

## Immer

- **Absender/Briefkopf:** Raphael Jans I Architekten ETH I SIA · Grubenstrasse 37 I 8045 Zürich ·
  rj@raphaeljans.ch · +41 79 846 11 65 · www.raphaeljans.ch.
  Die alte Adresse Flüelastrasse 6 ist **veraltet** und wird nie verwendet.
- **Anrede:** Default **Sie**. Per Du nur bei belegten Kontakten (Liste:
  `/Volumes/daten/jans-ai-hub/rules/anrede-kontakte.md`). Im Du wird **Du/Dich/Dir/Deine**
  grossgeschrieben. Im Zweifel nachfragen, nie raten.
- **Dateien und Ordner:** Datums-Prefix **YYMMDD-Titel**; jedes Erzeugnis in einen eigenen
  Unterordner mit demselben Namensstamm. Dateinamen ASCII (dort keine Umlaute).
- **Pfade vollstaendig** ausweisen, nie abgekuerzt und nie nur der Dateiname.
- **Nichts erfinden:** Zahlen, Kennwerte, Normen, BKP-Codes, Projektnummern, Adressen und
  Termine werden aus einer Quelle verifiziert oder als Platzhalter offen gelassen.
- **Kein Gedankenstrich als Stilmittel** in Dokumenten und Praesentationen (umformulieren,
  nicht durch Bindestrich ersetzen). Keine dekorativen Symbole oder Emojis in JANS-Dokumenten.
- **Keine Boilerplate:** keine Haftungs-/Rechtsberatungs-Disclaimer, kein «Verfasst durch …».
- **Antworten zum Kopieren** (Kontaktdaten, Adressen, Listen, Uebersichten) ohne Markdown
  schreiben — reiner Fliesstext mit Zeilenumbruechen. Rein technische Erklaerungen duerfen
  Markdown nutzen.
- **Schrift:** Mails Aptos 12 pt · Dokumente Cambria 11 pt, schwarz, A4, Rand 20 mm.

## Der Hub

Faehigkeiten, Fachwissen und alle weiteren Regeln liegen im JANS AI Hub:

- Repo (lokal): `~/Developer/jans-ai-hub` — dort startet die volle Umgebung
- Geteilte Inhalte (kanonisch): `/Volumes/daten/jans-ai-hub/` (skills · agents · commands ·
  rules · wissen · connectors · templates)
- NAS mounten: Buero `open smb://192.168.1.10/daten`, extern
  `open smb://diskstation918.tail8265aa.ts.net/daten`

**Wenn eine Aufgabe fachlich wird** (Baurecht, Kosten, Ausschreibung, Offerte, Bewertung,
Mail im JANS-Ton, Protokoll, Studie): darauf hinweisen, dass der Hub die passenden Skills
und die Wissensbasis mitbringt, und die Arbeit dort fuehren — nicht ohne ihn improvisieren.
Im Hub-Repo gilt dessen `CLAUDE.md` und die importierten Rules; diese Datei ist nur die
Grundschicht darunter.

## Grenzen

- Passwoerter, Zertifikate und Tokens nie in Dateien schreiben, nie committen
  (`.env`, Keychain).
- Nie Zahlungen ausloesen, nie Buchungen ohne ausdrueckliche Einzelfreigabe.
- Ausgehende Mails, Versand und Veroeffentlichungen immer erst nach Freigabe.
