# CHANGELOG — Wissensbasis Auflagebereinigung

Jede Änderung des Bibliothekars, datiert, neueste zuoberst.

## 2026-06-04 — Gewerk SPR (Sprinklerplaner) ergänzt

- `wiki/auflagentypen-gewerkzuteilung.md`: neues Kürzel **SPR — Sprinklerplaner**
  (Fall 2619: Tim Harder, JOMOS Brandschutz AG) in die Kürzel-Tabelle aufgenommen.
- Zuteilungs-Matrix gesplittet: **Sprinkleranlage (II.26) → SPR** (wenn eigener
  Sprinklerplaner beauftragt ist; sonst SAN); Sanitär-Leitungsabschottung bleibt **SAN**.
  Erkenntnis: Sprinkler ist häufig ein eigenes Gewerk (Brandschutz-Spezialfirma),
  nicht Teil der Sanitärplanung.
- Generator `skills/auflagebereinigung/tools/build_auflagenliste.py`: SPR als Rubrik
  ergänzt, Sprinkler-Zeile von SAN nach SPR verschoben; XLSX 2619-KISPI neu exportiert
  (45 Deliverables, 8 Rubriken).

## 2026-06-04 — KB angelegt (Seed aus Fall 2619-KISPI)

- KB `auflagebereinigung` erstellt (CLAUDE.md, Ordner raw/ wiki/ outputs/).
- Quelle eingearbeitet: Vorabzug Bauentscheid Stadt Zürich, Projekt 2619-KISPI
  «Neue Psychosomatische Therapiestation für Jugendliche», Lenggstrasse 30, 8008 Zürich
  (33 Auflagen + Vorbemerkungen Ziff. II.1–3, kant. Verfügung BVV 26-1211 vom 18.05.2026).
- Seed-Artikel erstellt:
  - `aemter-stadt-zuerich.md` (Adressaten und Zuständigkeiten)
  - `auflagentypen-gewerkzuteilung.md` (Thema → Gewerk BRA/HLK/SAN/ELE/FKO/ARC/BAU)
  - `fristenlogik-bauentscheid-zh.md` (Einreichungszeitpunkte, Vorbemerkungen-Mechanik)
  - `brandschutz-auflagen-qss.md` (QSS-Stufen, Übereinstimmungserklärung, Integral-Test)
  - `vorgehen-auflagebereinigung.md` (JANS-Standardprozess + Plan-/Dokumentenliste)
- Output abgelegt: `outputs/2026-06-04_2619-kispi-plan-dokumentenliste.md`
  (Begleitnotiz zur generierten XLSX-Liste mit 45 Deliverables).
- INDEX.md und QUESTIONS.md initialisiert.
