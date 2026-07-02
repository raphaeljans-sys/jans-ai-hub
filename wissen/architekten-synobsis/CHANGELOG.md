# CHANGELOG — architekten-synobsis

Tool-KB (Katalog statt Wiki): dieses Changelog protokolliert Laeufe, Blocker
und Strukturaenderungen. Der Gesundheits-Indikator ist der Scan-Fortschritt
(`synobsis_scan.py --status`), nicht die 7 Standard-Audits.

## 2026-07-02
- Kuratierung Charge 1/6 (133 Architekten, Slugs Bearth_Deplazes bis Du_rr_Otto; 132 einsortiert, 1 Katalog-Duplikat Christ Gantenbein): THEMEN/INDEX/QUESTIONS erweitert, neue Unterkapitel 3.9 Niederlande und Belgien, 3.10 Nordamerika.
- Stufe-3-Kuratierung (Erstausgabe) fuer die ersten 55 Katalog-JSONs: wiki/ angelegt
  mit THEMEN.md (5 Hauptkapitel: Typologien, Material/Konstruktion, Region/Land,
  Epoche/Stroemung, Haltung/Diskurs; kompoundierend, Kapitel bleiben stabil),
  INDEX.md (55 Kurzdossiers alphabetisch) und QUESTIONS.md (rund 35 offene Punkte:
  leere Ordner, Schreibfehler-Slugs wie Aando_Tadao/Adjaje_David/Bawa Cheffrey/
  Barrozi_Veira, Sammelordner 1 Selection und Back_Lukas ohne klare Zuordnung).
  Quelle nur catalog/*.json gemaess Snapshot; documents.jsonl unangetastet.
- Befund: Lauf stand seit 28.06.2026 bei 5/853 Architekten (Health-Check 01.07.).
- Stufe-1-Batch (50) manuell vom MacBook Pro neu angestossen.
- Sync-Task an Mac Mini erstellt: Runbook komplett ausfuehren (Stufe-2-venv mit
  python3.12 wegen py3.14-Blocker, Kontroll-Batch, launchd ch.jans.synobsis-batch
  alle 2 h, FDA-Pruefung vorab).
- CHANGELOG.md angelegt (Scaffolding-Finding aus Health-Check geschlossen).

## 2026-06-28
- KB angelegt: tools/ (scan/query/embed/batch), catalog/, state/, Runbook + Programm.
- Erstlauf Stufe 1: 5 Architekten verarbeitet (1 Selection, 6a Architects, AASZ,
  Aalto_Alvar, Aando_Tadao), danach kein weiterer Lauf (kein Task eingerichtet).
