# JANS Skill-Contract — verbindliches Schema fuer alle Skills

Dieses Dokument definiert den **einheitlichen Aufbau jedes JANS-Skills**. Es macht den
Harness ganzheitlich: jeder Skill deklariert selbst, womit er ausgeloest wird, was er
braucht, wohin sein Output geht, welche Always-on-Rules er respektiert und in welche
Skill-Kette er gehoert. Vorbild ist der Goldstandard-Skill `ausschreibung`.

Gilt fuer alle `skills/*/SKILL.md` und sinngemaess fuer die Agent-Pendants `agents/*.md`.

---

## 1. Front-Matter (Pflicht)

```yaml
---
name: <skill-name>            # = Ordnername, Kleinbuchstaben, Bindestrich
description: <1 Satz Funktion>. Diesen Skill verwenden wenn der Benutzer fragt:
  "<Trigger 1>", "<Trigger 2>", … . <1 Satz Abgrenzung zum Nachbarskill>.
---
```

- `description` ist das **Routing-Signal** — entscheidet, ob der Skill triggert.
- Trigger-Phrasen: konkret und in der Sprache des Benutzers (so wie er wirklich fragt).
- Echte Umlaute ae/oe/ue → ä/ö/ü, wo es Klartext ist (gemaess `umlaute-konvention.md`).
- **Keine Trigger-Kollision:** ueberschneidet sich eine Phrase mit einem Nachbarskill,
  Abgrenzung im letzten Satz der `description` festhalten (z.B. "Gegenstueck zu …").

## 2. Contract-Kopfblock (Pflicht — direkt nach H1-Titel)

Jeder Skill traegt unmittelbar nach dem `# Titel` diesen Block. Er ist die Kurz-
Vertragsuebersicht; die ausfuehrlichen Sektionen folgen darunter wie gehabt.

```markdown
## Contract

- **Trigger:** <wann dieser Skill greift, 1–2 Saetze>
- **Inputs:** <was der Skill braucht — Dateien, Projektnr., Grundlagen, Vorgaenger-Output>
- **Output-Ablage:** <exakter Pfad + Namensnomenklatur, oder "kein Datei-Output (nur Antwort)">
- **Abhaengige Rules:** <Liste der Always-on-Rules, die zwingend gelten>
- **Vorgelagert:** <Skill(s), die ueblicherweise davor laufen — oder "—">
- **Nachgelagert:** <Skill(s), die ueblicherweise danach laufen — oder "—">
```

### Feld-Regeln

**Trigger** — eine pruefbare Aussage, wann der Skill zustaendig ist (nicht nur Stichworte).

**Inputs** — was vorliegen muss. Wenn ein Vorgaengerskill Output liefert, hier benennen.

**Output-Ablage** — der wichtigste Vertragsteil. Entweder:
- ein konkreter Pfad mit Namensschema (YYMMDD-Prefix gemaess `dateinamen-konvention.md`),
  ggf. **doppelte Ablage** (AI-Hub-Output **und** Projekt-Versandordner) wie bei LVs, oder
- explizit `kein Datei-Output (nur Antwort)` fuer reine Beratungs-Skills.
Nie raten — Pfade aus den bestehenden Rules/Memories ziehen
(`feedback_lv_ablage`, `reference_mwst_ablage`, Output-Ablage-Sektion in CLAUDE.md).

**Abhaengige Rules** — mindestens pruefen, ob diese gelten:
`dokument-layout-standard` (jedes Dokument), `mail-formatierung` (jede Mail),
`umlaute-konvention` (jeder Text), `dateinamen-konvention` (jede Ablage),
`bkp-2017-referenz` (jede BKP-Nummer), `identifikatoren-verifizieren` (jedes Dokument
mit Projektnr./Adresse/Termin), `auftrags-dekomposition` (jeder Mehrfach-Auftrag).
Plus die **Korrektur-Pflicht**: jedes Texterzeugnis vor Ausgabe durch Skill `korrektur`.

**Vorgelagert / Nachgelagert** — die explizite Kette. Beispiel Bauleitungs-Lebenszyklus:
`unternehmerfindung → ausschreibung → offertenpruefung → werkvertrag →
unternehmerkontrolle → kostenkontrolle`. So weiss jeder Skill, woher sein Input kommt
und wohin sein Output weiterfliesst.

## 3. Ausfuehrlicher Koerper (skill-spezifisch)

Nach dem Contract-Block folgt der gewohnte Inhalt: Aufgabe, Wissensbasis, Kernprinzipien,
Workflow, Templates, Defaults, Hinweise. Reifegrad-Vorbild: `ausschreibung/SKILL.md`.

Reife Skills haben zusaetzlich:
- `referenzen/` — hochprioritaere Fachquellen (PDFs), mit `README.md`-Index.
- `wissensluecken.md` — lebende Luecken-Registry (bei Unsicherheit eintragen).
- ein Selbsttraining-Muster (Luecke erkennen → schliessen → integrieren),
  generalisiert im Meta-Lern-Loop `masterclass/harness-review.md`.

## 4. Pflege

- Aenderungen am Schema hier zentral; Skills bei naechster Bearbeitung angleichen.
- Neue Trigger-Erkenntnisse (welche Phrase hat NICHT getriggert) fliessen ueber den
  Meta-Lern-Loop zurueck in die `description`.
- Der Contract-Block ist **Pflicht bei jedem neuen Skill** (siehe `skills/README.md`).
