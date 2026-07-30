Zeige den Rollen-Haushalt des JANS AI Hub (Taxonomie prototyper · builder ·
sweeper · grower · maintainer).

1. Rollen-Bilanz fahren: `bash /Volumes/daten/jans-ai-hub/scripts/rollen-bilanz.sh 30`
   Zuerst die Aktualitaet der Datenquelle vorlesen. Ist sie veraltet, das
   ausdruecklich sagen: die Zahlen sind dann ein historischer Befund, kein
   Betriebszustand.
2. Nutzungs-Radar fahren: `bash /Volumes/daten/jans-ai-hub/scripts/nutzungs-radar.sh 90`
   (braucht rund zweieinhalb Minuten, durchsucht die Transcripts beider Stationen)
3. Schutzmechanik-Selbsttest fahren:
   `bash /Volumes/daten/jans-ai-hub/scripts/schutzmechanik-selbsttest.sh`

Dann berichten, in dieser Reihenfolge:

- Aktualitaet der Quelle
- Lauf-Qualitaet: geliefert gegen abgewuergt gegen Fehlstart. NIE die Summe als
  "Laeufe" berichten (Rule rollen-taxonomie, Punkt 4)
- produktive Zeit je Rolle plus Abweichung von den Zielbaendern im Konzept
- Nutzung: aufgerufene Skills, Kaltliste getrennt nach "erwartet" und "zu klaeren"
- Befunde des Selbsttests

Reports liegen in `logbuch/rollen/`. Das Register `logbuch/rollen/rollen-map.tsv`
ist die kanonische Zuordnung; fehlt dort ein Baustein, weist die Bilanz das
selbst aus und der Eintrag wird nachgetragen.

Keine Drossel- oder Stilllegungsentscheidung selbst treffen. Quoten werden
gemessen und berichtet, entschieden wird von Raphael.
