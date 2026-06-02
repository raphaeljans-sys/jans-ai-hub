# Wissensbasis: Schweizer Baurecht (Fokus ZH + SZ)

## Was das ist

Eine kompoundierende Wissensbasis zum Schweizer Bau- und Planungsrecht, Schwerpunkt
Kanton Zürich und Schwyz, ausgerichtet auf die Praxis von Raphael Jans Architekten
ETH (Healthcare-Architektur, Umbau im Betrieb). Ziel: jede beantwortete
Baurechtsfrage, jeder Praxisfall und jede Behördenauskunft verdichtet sich hier zu
bleibendem, verlinktem Wissen — statt in Mails und PDFs zu verpuffen.

Diese Wissensbasis ist die lebende Fortsetzung von `docs/baurecht/` und arbeitet mit
dem Skill `baurecht` zusammen (der zusätzlich die Gesetzessammlung auf SharePoint
durchsucht).

## Fokus-Bereiche

1. **Nutzungsziffern & Mass der Nutzung** — AZ, ÜZ, GFZ, BMZ; Berechnung, Streitfälle.
2. **Abstände & Höhen** — Grenz-/Gebäudeabstand, Näherbaurecht, Gebäude-/Firsthöhe,
   Wald-/Gewässerabstand.
3. **Verfahren** — Baubewilligung, Baugespann, Einsprache/Rekurs, Dispens/Ausnahme.
4. **Bauen im Bestand / im Betrieb** — Bestandesschutz, Umbau, Healthcare-Spezifika
   (Spital/Klinik im laufenden Betrieb), Brandschutz-Schnittstellen.
5. **Zonenkonformität** — BZO-Systematik, Zonenarten, Empfindlichkeitsstufen.

Der Bibliothekar nutzt diese Fokus-Bereiche, um zu priorisieren, was vertieft wird.

## Bibliothekar-Rolle

Ich handle als **active librarian** (siehe `rules/wissens-bibliothekar.md`):
- Ich ingestiere, fasse zusammen, schreibe und verlinke **ohne jedes Mal zu fragen**.
- Ich protokolliere jede Änderung in `CHANGELOG.md`.
- Ich schlage proaktiv neue Artikel und Verbindungen vor.
- Ich **pausiere und frage** vor Destruktivem: Artikel umbenennen/mergen/löschen,
  grössere Umstrukturierung.
- Im Zweifel, was ich geändert habe: das CHANGELOG ist die Wahrheit.

## KB-spezifische Schreibregeln

- **Quellenpflicht (streng):** Jede rechtliche Aussage trägt eine Rechtsgrundlage
  (§-Artikel mit Erlass, z.B. `§ 255 PBG`) oder eine belegte Quelle. Unbelegte
  Aussagen werden mit `status: speculative` markiert (verschärft die allgemeine
  Rule `identifikatoren-verifizieren.md` für den Fachinhalt).
- **Kanton kennzeichnen:** Bei kantonal unterschiedlichen Regeln immer ZH/SZ/Bund
  ausweisen — nie eine Kantonsregel als allgemeingültig darstellen.
- **Keine Rechtsberatung-Fiktion:** Wir halten Fachwissen, keine verbindliche
  Rechtsauskunft. Bei heiklen Fällen Verweis auf Behörde/Jurist im Artikel notieren.
- Schweizer Hochdeutsch, echte Umlaute ä/ö/ü, kein ß (Rules `umlaute-konvention.md`,
  `dokument-layout-standard.md`).

## Ordner

- `raw/` — Behörden-PDFs, Mail-Threads zu Baurechtsfragen, Auszüge PBG/ABV/BZO,
  BGE/VGr-Entscheide, Notizen aus Vorgesprächen mit Bauämtern. Reinkippen, nicht ordnen.
- `wiki/` — kompilierte Artikel + `INDEX.md` + `QUESTIONS.md`. Meine Domäne.
- `outputs/` — erzeugte Einschätzungen/Briefings/Health-Checks (JJJJ-MM-TT_titel.md).

## Quellen-Hierarchie (für Verlässlichkeit)

1. Gesetzestext (PBG, ABV, RPG, USG) und Verordnungen
2. Kantonale Rechtsprechung (VGr ZH), Bundesgericht (BGE)
3. Kommentare/Literatur (z.B. Blaues Buch PBG ZH)
4. Behördenauskunft (datiert, mit Amt + Person notieren)
5. Eigene Praxisfälle aus JANS-Projekten
