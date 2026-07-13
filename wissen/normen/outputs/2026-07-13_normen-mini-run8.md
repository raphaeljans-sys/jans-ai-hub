# Normen-Training Mini (Mac Mini) — Run 8, 13.07.2026

## Auftrag
Fortsetzung Deepening-Stufe (b) Retro-Verifikation gemaess Plan aus Run 7: die verbleibenden
unverifizierten DIN/VSS-Destillate stichprobenartig gegen das Original gegenpruefen.

## Ablauf
1. NAS-Mount + SharePoint-Zugriff geprueft — beide erreichbar.
2. Unstaged Aenderungen anderer Prozesse (Heartbeat-Dateien, Synobsis-Batch) committet, dann
   `git pull --rebase` — Repo war aktuell.
3. `norm-inventar.md` bestaetigt: 0 offene DIN/VSS/RAL-Positionen (Basis-Destillation seit
   Run 5 komplett).
4. **12 Destillate parallel verifiziert** (Volltextabgleich, je 1 adversarialer Pruef-Agent):
   din-18065-2000, din-18299-2010, din-4844-2-2001, vss-640060-1994, vss-640066-1996,
   vss-640281-2006, vss-640578-2006, vss-40291-2021, vss-640065-2011, din-v-105-100-2005,
   din-v-106-2005, komm-din18024-t1-bayern-2001.

## Ergebnis: 12 von 12 (100%) BEANSTANDET

Alle 12 Stichproben hatten reale Korrekturen — deutlich mehr als die 50%-Quote aus Run 7.
Fehlerbild durchweg: falsche Fundstellen-Zuordnung (Ziffer X statt Y), vermischte
Tabellenspalten (B mit F verwechselt bei vss-40291, Kapazitaeten bei vss-640066),
unvollstaendige "vollstaendig"-Deklarationen (fehlende Ziffern trotz Vollstaendigkeitsanspruch:
din-18065-2000 Ziff. 6.5-6.8/6.10.2, vss-640060-1994 Ziff. 5+Tab.1, vss-640281-2006 Ziff. 3,
vss-40291-2021 Abschnitt D, komm-din18024 Abschnitt 7+9) sowie eine Bedeutungsumkehr
(din-18065-2000: Tragbolzentreppen faelschlich als ausgeschlossen statt als Bauart-Beispiel
MIT erfasst dargestellt).

Alle Korrekturen wurden direkt als "Verifikations-Hinweis"-Abschnitt an das jeweilige
Destillat angehaengt (Original-Fundstelle + Korrekturtext, keine Ersetzung des Fliesstexts
aus Zeitgruenden) und der Frontmatter-`status` auf "beanstandet, korrigiert siehe
Verifikations-Hinweis, 260713" gesetzt — bewusst NICHT auf `established` gehoben, da die
Korrekturen noch nicht in den Fliesstext eingearbeitet sind (naechster Schritt).

Zusaetzlich geklaert: `komm-din18024-t1-bayern-2001.md` war in `destillate/INDEX.md`
faelschlich als "Teil-Destillat (S.1-40/68)" gefuehrt — Volltextpruefung bestaetigt
Vollstaendigkeit (S.1-68/68), INDEX.md korrigiert.

## Fazit

Die Retro-Verifikations-Quote von 100% (12/12) ist deutlich hoeher als die 50% aus Run 7 —
kein Zufall, sondern Hinweis, dass der urspruengliche Destillations-Batch dieser Familie
(v.a. VSS-Tabellenwerke mit vielen Zahlenspalten) systematisch fehleranfaelliger war. Die
Verifikations-Pflicht (Rule 260712) bleibt substanziell notwendig; unverifizierte
"destilliert"-Eintraege sollten in Fach-Skills (planungsgrundlagen, machbarkeit) mit
Vorsicht behandelt werden, bis der Fliesstext korrigiert ist.

## Plan fuer den naechsten Lauf

1. **Prioritaet:** Die 12 heute angehaengten Verifikations-Hinweise in den jeweiligen
   Fliesstext einarbeiten (Ersetzungen statt Anhang) und Status auf `established` heben.
2. Weitere Retro-Verifikation der uebrigen DIN/VSS-Destillate (grosser Rest noch
   unverifiziert, u.a. alle DIN 5034-Reihe, DIN 1053-Reihe, DIN-EN-Normen).
3. Danach Uebergang zu Stufe (c) Q&A-Selbstbefragung fuer die DIN/VSS-Kernnormen.
4. DIN EN 1627:2011 bleibt offen (nur Teilbestand im SharePoint-Ordner).

## Ressourcenverbrauch
12 parallele Verifikations-Agenten (Volltextabgleich, ~140-240k Tokens/Agent). Aus
Budgetgruenden wurden Korrekturen als Anhang statt als Fliesstext-Ersetzung dokumentiert —
Nacharbeit im naechsten Lauf explizit eingeplant.
