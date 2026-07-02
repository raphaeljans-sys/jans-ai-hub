# CHANGELOG — architekten-synobsis

Tool-KB (Katalog statt Wiki): dieses Changelog protokolliert Laeufe, Blocker
und Strukturaenderungen. Der Gesundheits-Indikator ist der Scan-Fortschritt
(`synobsis_scan.py --status`), nicht die 7 Standard-Audits.

## 2026-07-02
- Kuratierung Charge 6/6 (133 Architekten, Slugs Smithson_Peter_Alice bis wang_shu; 132 einsortiert, 1 Katalog-Kollision gigon guyer/Gigon_Guyer als vierte bestaetigte Kollision vermerkt; 7 weitere Leerzeichen-Slugs und die Sonderzeichen-Slugs S_uchov/Tusquet_Llui_s/Soeder ueber zerlegte Katalogdateien aufgeloest, Utzon_Jørn behaelt das Sonderzeichen): THEMEN/INDEX/QUESTIONS erweitert, INDEX final 849 Eintraege = 853 Ordner minus 4 Kollisionen, Kopfzeilen auf «Erstkuratierung komplett (853/853 gescannt, 849 kuratiert, Stand 2026-07-03)» gesetzt; keine neuen Unterkapitel; rund 45 neue offene Punkte (u.a. Zeyer_Albert mit zweitem Haus-Jans-Beleg «Luzern Haus Jans 1930», Doppelordner Steven_Holl/Toyo_Ito/Tadao_Ando/Sou_Fugimoto/Studer_Schneider_Primas/Vinci_Leonardo, Wright-Slug «Lord» statt «Lloyd»); Top-Bestaende Zumthor_Peter (1812 Dateien), Wright (770), Sullivan (201), Ungers (182), Snozzi (162), Wiedemann (135) — Erstkuratierung komplett.
- Kuratierung Charge 5/6 (133 Architekten, Slugs Peruzzi_Baldasare bis Smith_Samuel_Modell; alle 133 einsortiert, 2 Akzent-Slugs ueber zerlegte Katalogdateien aufgeloest (Prouve__Jean, Siza_Vieira_A_lavaro_Leite), 13 Leerzeichen-Slugs ohne neue Kollision): THEMEN/INDEX/QUESTIONS erweitert, Stand 718/853; keine neuen Unterkapitel; rund 45 neue offene Punkte (u.a. Sik-Professur-Archiv als vermutete Quelle der Bibliothek, Salvisberg-Ordner mit historischem Kinderspital Zuerich fuer 2619 KISPI, Doppelordner Reidy und Radic); Top-Bestaende Sik_Miroslav (896 Dateien, Professur-Arbeitsarchiv), Schinkel (359), Semper (292), Shinohara (280), Santi_Raffael (247), Pouillon (213).
- Kuratierung Charge 4/6 (133 Architekten, Slugs Le_Vau_Louis bis Perrot; alle 133 einsortiert, 17 Leerzeichen-Slugs ueber Unterstrich-Katalogdateien aufgeloest, dritte Katalog-Kollision Miller Maranta/Miller_Maranta): THEMEN/INDEX/QUESTIONS erweitert, Stand 585/853; keine neuen Unterkapitel; rund 40 neue offene Punkte; Top-Bestaende MPP (241271 Dateien, Buero-Arbeitsarchiv, groesster Ordner der Bibliothek), Nimbus_Architekten (5778, ein einziges Projekt), Meili Partner (2026, Arbeitsarchiv), Maerkli_Peter (829), Olgiati Valerio (652).
- Kuratierung Charge 3/6 (133 Architekten, Slugs Hankar_Paul bis Le_Corbusier; alle 133 einsortiert, 3 Umlaut-Slugs ueber zerlegte Katalogdateien aufgeloest): THEMEN/INDEX/QUESTIONS erweitert, Stand 452/853; keine neuen Unterkapitel; rund 45 neue offene Punkte; Top-Bestaende Kerez_Christian (43111 Dateien, groesster der Bibliothek), Lampugnani (32946), Jans Raphael (9146, Eigenarchiv), Kollhoff (4455), HdM+Herzog_de_Meuron (1646, Doppelordner inkl. KISPI-Material).
- Kuratierung Charge 2/6 (133 Architekten, Slugs Dyckerhoff_Widmann bis Handa_Heike_Prof; 132 einsortiert, 1 Katalog-Kollision Enzmann Fischer/Enzmann_Fischer): THEMEN/INDEX/QUESTIONS erweitert, Stand 319/853; keine neuen Unterkapitel; Top-Bestaende Emerson_Tom (322 Dateien), Gropius (165), Eberle (159), Foster (150), Haefeli_Moser_Steiger (122).
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
