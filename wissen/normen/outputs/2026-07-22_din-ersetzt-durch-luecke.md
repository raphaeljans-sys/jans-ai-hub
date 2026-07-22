---
titel: "ersetzt/ersetzt_durch-Lücke — DIN-Teilmenge geschlossen (Mac Mini Nachtschicht)"
datum: "2026-07-22"
lauf: "Nachtschicht-Zyklus Mac Mini, ~19:30–20:30"
---

# Ausgangslage

Der normen-Health-Check vom 20.07.2026 (Audit F, protokolliert im CHANGELOG-Eintrag
"2026-07-21 — Audit-F abgearbeitet") hatte notiert: das Frontmatter-Feld `ersetzt`/
`ersetzt_durch` fehlt in 127 Destillaten — bewusst kein mechanischer Fix, da jede Norm
eine eigene Nachfolge-Recherche braucht. Dieser Lauf hat die Mac-Mini-exklusive
Teilmenge (DIN/VSS/RAL, Rule auto-verbesserungen 260714) bearbeitet.

# Vorgehen

1. Alle 67 DIN-/VSS-/RAL-Destillate (`din-*.md`, `vss-*.md`, `sn-64*.md`, `ral-*.md`)
   auf Vorhandensein irgendeines `ersetzt`-Feldes gescannt.
2. Nur 3 Destillate hatten **kein** `ersetzt`/`ersetzt_durch`-Feld: `din-1356-6-2006`,
   `din-276-4-2009`, `din-4102-2-1977`.
3. Je Norm den aktuellen Status bei DIN Media (dinmedia.de, offizielle Vertriebsplattform
   des Beuth Verlags für DIN-Normen) recherchiert und mit dem Dokument-Titelblatt
   (Vorgänger-Angabe) abgeglichen.

# Befunde

**DIN 1356-6:2006** (Bauzeichnungen, Dokumentation von Gebäuden, Teil 6) — Status
`[CURRENT]` bei DIN Media, kein Nachfolgedokument gelistet. Im Titelblatt kein
Vorgänger genannt (Erstausgabe des Teils 6). `ersetzt_durch: keiner`.

**DIN 276-4:2009** (Kosten im Bauwesen, Teil 4: Ingenieurbau) — bei DIN Media als
**zurückgezogen/withdrawn** geführt, ersetzt durch die konsolidierte Fassung
**DIN 276:2018-12** (Teile 1 und 4 wurden 2018 zusammengeführt). Dieselbe Angabe
gilt für den verlinkten Schwesterteil `din-276-1-2008` — dort war `ersetzt_durch`
ebenfalls leer, obwohl das Vorgänger-Feld `ersetzt` bereits gepflegt war. Beide
Destillate ergänzt. Die 2018-Fassung selbst liegt nicht im Bestand (Bring-Schuld,
falls für ein konkretes Projekt benötigt).

**DIN 4102-2:1977** (Brandverhalten von Baustoffen und Bauteilen) — bei DIN Media
weiterhin `[CURRENT]`, ersetzt seinerseits die Ausgabe 1970-02 (Titelblatt, bereits
im Destillat dokumentiert). Die zugehörigen **Prüfverfahren** sind aber teilweise durch
die europäischen Normen DIN EN 1363-1:1999-10, DIN EN 1364-1/-2:1999-10 sowie
DIN EN 1365-1/-2/-3/-4:1999-2000 abgelöst — die nationalen Feuerwiderstandsklassen
(F30–F180) selbst bleiben laut DIN Media gültig. Dies ist konsistent mit der Schweizer
Praxis, DIN 4102 nur als grobe Orientierung zur VKF/EI-Klassifizierung heranzuziehen
(bereits im Destillat vermerkt).

# Ergebnis

4 Destillate aktualisiert (3 aus der Lücken-Liste + 1 Konsistenz-Bonus bei
`din-276-1-2008`), je mit Quellenbeleg (DIN Media-URL, Abrufdatum) statt Vermutung.
`wiki/QUESTIONS.md` nachgeführt: die DIN/VSS/RAL-Teilmenge der 127-Destillate-Lücke ist
geschlossen. Der weit überwiegende Rest (~123 Destillate, SIA/VKF) bleibt für den
MacBook-Pro-Loop offen (Arbeitsteilung Rule 260714).

Quellen: dinmedia.de/en/standard/din-1356-6/87048674,
dinmedia.de/en/standard/din-276-4/119313112,
dinmedia.de/en/standard/din-4102-2/683896 (alle abgerufen 22.07.2026).
