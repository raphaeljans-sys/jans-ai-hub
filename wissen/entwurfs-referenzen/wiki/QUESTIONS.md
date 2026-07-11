# Offene Fragen — Entwurfs-Referenzen

## Seed-Import
- [ ] Welche Inhalte liegen in `05_Architekten_Synobsis`? (Bücher, Projekte, Materialien, Vorlesungen?)
- [ ] Gibt es bereits strukturierte Daten (Excel, CSV) oder nur PDFs/Bilder?
- [ ] Welche Typologien sind am häufigsten vertreten?

## Parameter-Sets
- [ ] Sollen Parameter-Sets auch Rendering-Vorgaben enthalten (Kamerawinkel, Lichtstimmung)?
- [ ] Wie granular sollen Fassaden-Parameter sein? (Nur Material oder auch Detaillierung?)
- [ ] Braucht es Parameter-Sets für Sanierung/Umbau oder nur Neubau?

## Integration
- [ ] Soll `volumen_generator.py` ein `--parameter-set` Flag bekommen?
- [ ] Wie fliesst die Rückkopplung aus realen Projekten am besten zurück? (Manuell oder via Output-Compounding?)
- [ ] Braucht es einen eigenen Scheduled Task für den Compounding-Loop?
