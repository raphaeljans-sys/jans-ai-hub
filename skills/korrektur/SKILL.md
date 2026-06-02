---
name: korrektur
description: Qualitätssicherungs-Harness für JEDES Texterzeugnis von JANS, bevor es rausgeht. Jagt das fertige Erzeugnis (Mail-Body, DOCX/PDF, LV, Protokoll, Pendenzenliste, LinkedIn-Post, Website-Text, Chat-Antwort zum Kopieren) durch zwei parallele Prüf-Agenten — `rechtschreibung` (echte Umlaute ä/ö/ü, Schweizer Hochdeutsch, Tippfehler/Grammatik) und `layout` (Dokument-/Mail-Standard, fehlerhafte Umbrüche, sechsstellige Daten) — und gibt eine korrigierte, versandfertige Fassung plus Ampel-Bericht zurück. Diesen Skill verwenden wenn der Benutzer fragt — "Korrektur", "prüfen vor Versand", "QA", "Rechtschreibung prüfen", "Layout prüfen", "Umlaute korrigieren", "ist das versandfertig" — UND automatisch als letzter Schritt, bevor irgendein Erzeugnis als Mail-Draft, Dokument oder zum Kopieren ausgegeben wird.
---

# Korrektur-Harness — QA vor dem Versand

## Contract

- **Trigger:** Greift als erzwungene letzte QS-Stufe automatisch, bevor irgendein Texterzeugnis ausgegeben wird (Mail-Draft, DOCX/PDF, LV, Protokoll, Pendenzenliste, LinkedIn-Post, Website-Text, Chat-Antwort zum Kopieren), sowie manuell auf Zuruf ("Korrektur", "QA", "vor Versand checken", "Umlaute korrigieren").
- **Inputs:** Das fertige Erzeugnis als Klartext (bei DOCX: der extrahierte Textinhalt) plus die Gattung (Mail/Dokument/LV/Post …), damit der passende Standard angewandt wird.
- **Output-Ablage:** kein Datei-Output (nur Antwort) — gibt die korrigierte, versandfertige Fassung plus Ampel-Bericht zurück; die Ablage des korrigierten Erzeugnisses besorgt der aufrufende Skill.
- **Abhaengige Rules:** umlaute-konvention (echte Umlaute ä/ö/ü, ss statt ß — wird hier erzwungen), dokument-layout-standard, mail-formatierung, dateinamen-konvention (sechsstellige Daten); erzwingt diese Rules statt sie nur zu respektieren.
- **Vorgelagert:** ALLE Text-erzeugenden Skills (pendenzenliste, protokoll, brandschutz, terminplanung, honorarberechnung-sia102, ausschreibung, werkvertrag, marketing, …)
- **Nachgelagert:** —

Dies ist die **letzte Stufe** vor der Ausgabe. Kein Erzeugnis von JANS verlässt
das Büro, ohne diese zwei Prüfungen durchlaufen zu haben. Der Harness existiert,
weil eine reine Prosa-Regel (`umlaute-konvention.md`) in der Praxis nicht greift:
ein einzelnes Regel-File verliert gegen tausende ASCII-Gegenbeispiele im Kontext.
Erst ein **erzwungener Prüfschritt** macht die Regel real.

## Wann auslösen

**Automatisch (Pflicht), bevor folgendes ausgegeben wird:**
- E-Mail-Draft (Apple Mail / M365) — Body durch den Harness, dann erst Draft erstellen
- DOCX/PDF (LV, Protokoll, Pendenzenliste, Werkvertrag, Honorarofferte, Factsheet, Brief)
- LinkedIn-Post / Website-Text
- Jede Chat-Antwort, die der Benutzer erkennbar zum **Kopieren** bestimmt hat

**Manuell:** Benutzer sagt „Korrektur", „prüf das", „vor Versand checken", „QA",
„Umlaute korrigieren", „ist das versandfertig".

**Nicht nötig** bei reinen Status-/Gesprächsantworten, Code, Dateinamen,
Bash-Variablen (dort gilt ASCII gemäss `dateinamen-konvention.md`).

## Ablauf (Fan-out → Merge)

1. **Erzeugnis bündeln.** Den finalen Text/Inhalt bereitstellen (bei DOCX: den
   Textinhalt; das File-Handling macht der Layout-Agent direkt).

2. **Zwei Agenten PARALLEL starten** (beide im selben Schritt aufrufen):
   - Agent **`rechtschreibung`** → Orthografie, echte Umlaute ä/ö/ü, ss statt ß,
     Tippfehler, Grammatik, Zeichensetzung. Liefert korrigierten Text + Änderungsliste.
   - Agent **`layout`** → Dokument-/Mail-Standard, fehlerhafte Umbrüche,
     Tabellen-Header, sechsstellige Daten, Dateinamen-/Ablage-Konvention.
     Liefert Layout-Befund + Korrekturen.

3. **Merge.** Die orthografisch korrigierte Fassung von `rechtschreibung` ist die
   Text-Basis; die Layout-Korrekturen von `layout` darauf anwenden. Bei Widerspruch
   gewinnt: Inhalt unverändert, Form/Recht­schreibung korrigiert.

4. **Ausgeben:**
   - Die **finale, versandfertige Fassung**
   - Ein **QA-Bericht** mit zwei Ampeln (Rechtschreibung / Layout) und den wichtigsten
     Korrekturen in Stichworten
   - Erst danach: Draft erstellen / Dokument schreiben / Antwort zum Kopieren liefern

## QA-Bericht-Format

```
✅ Korrektur-Harness durchlaufen

Rechtschreibung: 🟢/🟡/🔴 — <z.B. „14 Umlaute korrigiert, 1 Tippfehler">
Layout:          🟢/🟡/🔴 — <z.B. „Tabellen-Header gegen Umbruch geschützt">

→ Versandfertig.
```

## Wichtig

- Der Harness **korrigiert**, er schreibt nicht um. Ton, Inhalt und Stil bleiben.
- Bei kleinen Erzeugnissen (kurze Mail) dürfen die beiden Prüfungen auch inline
  erfolgen — aber die **Umlaut-Prüfung ist nie verzichtbar**.
- Verwandte Rules: `umlaute-konvention.md`, `dokument-layout-standard.md`,
  `mail-formatierung.md`, `dateinamen-konvention.md`, und der Auto-Eintrag in
  `auto-verbesserungen.md`.
