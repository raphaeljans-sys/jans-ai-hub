Führe eine vertiefte Recherche mit parallelen Agenten durch.

Frage/Auftrag: $ARGUMENTS

## Ablauf

1. **Frage fixieren.** Die Frage in einem Satz spiegeln. Ist sie mehrdeutig oder fehlt
   der Zweck (Entscheid? Dokument? Überblick?), genau EINE Rückfrage stellen — sonst
   direkt starten. Bei projektgebundenen Fragen zuerst PROJEKT-STAND.md lesen.

2. **Suchwinkel bestimmen** (3–5, je nach Frage):
   - Web allgemein (mehrere Suchbegriffe, auch Englisch)
   - Amtliche/verbindliche Quellen (Fedlex via Filestore-URL, Geoportale, Normen-KB,
     Gemeinde-/Kantonsseiten)
   - Hub-Wissenslayer (`wissen/` — passende KB zuerst, INDEX.md)
   - NAS-Archiv und SharePoint-Projektablage (bei Projekt- oder Bürobezug)
   - Connectoren: VOR jeder Handabfrage `connectors/README.md` konsultieren (Rule 260729)

3. **Parallel ausschwärmen.** Je Suchwinkel EINEN `recherche`-Agenten starten (alle in
   einem Aufruf, damit sie gleichzeitig laufen). Jede Übergabe enthält: die Frage, den
   zugewiesenen Winkel (nur diesen!), die Quellenpflicht (jede Aussage mit Quelle und
   Datum, nichts erfinden, Lücke als Lücke ausweisen) und das Rückgabeformat
   (Befund · Quelle · Verlässlichkeit · Offenes).

4. **Gegenprüfen.** Entscheidungsrelevante oder überraschende Befunde nie ungeprüft
   übernehmen (Regel 260729b): an der Originalquelle selbst verifizieren oder einen
   zweiten Agenten mit Widerlegungs-Auftrag ansetzen. Widersprüche zwischen Agenten
   offen ausweisen, nicht glätten.

5. **Konsolidieren.** Ein Bericht: Kernergebnis zuerst, dann Befunde je Themenblock mit
   Quellen, dann Widersprüche/offene Punkte. Schweizer Hochdeutsch, echte Umlaute,
   keine Boilerplate.

6. **Ablage** (nur bei substanziellem Ergebnis, Rule wissens-ruecklauf):
   - projektgebunden → Projektordner `09_Dokumente/CLAUDE/` (Dateinamen-Konvention YYMMDD)
   - verallgemeinerbar → `wissen/<kb>/outputs/JJJJ-MM-TT_titel.md` + CHANGELOG-Eintrag
   - Ungeklärtes → `<kb>/wiki/QUESTIONS.md`
   - reine Auskunft ohne Wiederverwendungswert → nur Chat-Antwort, keine Ablage

7. **Antwort im Chat:** TLDR in 2–3 Sätzen, dann die wichtigsten Befunde mit Quellen.
   Soll die Antwort kopiert werden, ohne Markdown formatieren (Rule antwort-formatierung).
