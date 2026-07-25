# Konversations-Destillat 23.07.2026

MacBook Pro 28 Sessions · Mac Mini nicht erfasst (SSH-Timeout, siehe unten) · Cloud 0 ·
Dispatch 9 (Routine, alles Nachtschicht-/Radar-Zyklen Mac Mini, keine Handy-Auftraege) —
Fenster 26h (22.07. ca. 04:13 bis 23.07. 06:13).

Zaehlweise: nur Sessions mit echten, von Raphael getippten Eingaben oder substanziellen
Ergebnissen zaehlen als Gespraech. Reine Trainings-/Routine-Laeufe sind unten nur als
Einzeiler-Summe gefuehrt, Besonderheiten nur bei echten Blockern.

## Kernbefund des Fensters: keine echten Gespraeche

In den letzten 26 Stunden hat Raphael kein inhaltliches Gespraech mit Claude gefuehrt. Alle
28 MacBook-Pro-Sessions sind Scheduled Tasks bzw. autonome Loops (Wissens-Chef Run 11 + 12,
Hub-Chef-Lauf 22.07., Immobilienbewertung Training-Run 41, twin-fidelity-review 22.07.,
Umlaut-Korrektur, Konversations-Log selbst, ein `korrektur`-Skill-Aufruf sowie zahlreiche
leere/abgebrochene Resume-Sessions). Die im Rohextrakt als «RAPHAEL:» erscheinenden Zeilen
sind durchweg maschinell: sechs Stop-Hook-Umlaut-Meldungen und Skill-Basisverzeichnis-
Injektionen, plus eine einzige echte Tastatureingabe «Antworte nur mit: OK», die mit
«OAuth session expired and could not be refreshed» scheiterte (Session 05:15, MacBook).
Kein Handy-Dispatch, keine Cloud-/Remote-Task-Ergebnisse.

## Abdeckungsluecke: Mac Mini nicht erfasst

Der Mini-Extrakt konnte nicht gezogen werden — `ssh mini` lief in einen Timeout
(«connect to host 100.120.219.12 port 22: Operation timed out»). Der Mini war ueber die
Dispatch-Radar-Zyklen aber nachweislich aktiv (9 stuendliche Laeufe 04:30 bis 21:30, alle
autonom im Nachtschicht-Budget). Die reine Anzahl Mini-Sessions fehlt in diesem Destillat;
inhaltlich sind die Mini-Ergebnisse ueber die Dispatch-Logs unten abgedeckt. Falls der Mini
laenger nicht per SSH erreichbar bleibt, waere das ein eigener Betriebspunkt.

## Radar-relevanter Befund: Umlaut-Regel fehlt in den Mac-Mini-Scheduled-Tasks (neu)

Radar-relevant: ja. Der Nachtschicht-Zyklus Mac Mini (~19:00, 22.07.) hat eine seit dem
19.07. bestehende Nebenwirkung der «Minimum Viable Model»-Umstellung (mechanische Lern-Loop-
Stufen an Haiku/Sonnet-Subagenten delegiert) verifiziert und als CONFIRMED bestaetigt: die
fuenf lokalen Mac-Mini-Scheduled-Task-Prompts enthalten die Umlaut-Regel nicht, und die
Subagenten erben sie nicht. Folge: ASCII-Ersatzformen (ae/oe/ue) in den echten Outputs aller
fuenf betroffenen KBs (baurecht, energie, planungsgrundlagen, normen, architekten-synobsis) —
auch `normen-training-mini`, das zuvor faelschlich als Gegenprobe fuer «nicht betroffen»
galt. Dasselbe Muster erklaert die sechs Stop-Hook-Umlaut-Korrekturschleifen im
MacBook-Extrakt (Wissens-Chef Run 11/12). Der Fix ist klar (ein Satz Umlaut-Regel je
Scheduled-Task-Prompt), wurde aber nicht autonom umgesetzt, weil es eine Infrastruktur-/
Config-Aenderung ist, die `logbuch/AKTIONS-WHITELIST.md` verbietet — vorgemerkt fuer das
naechste Hub-Chef-Briefing bzw. Raphael direkt. Verifikationsreport in
`wissen/baurecht/outputs/`, Cross-Reference in den vier weiteren KBs. Zusammenhang: das ist
die Kehrseite des bereits gefuehrten Register-Punkts «Restposten Kontext-Diaet: Minimum
Viable Model». Ins Fristen-Register neu aufgenommen (Quelle: Gespraech/Nachtschicht Mac Mini
22.07.).

## Bereits im Register gefuehrt (kein neuer Eintrag)

- Twin-KB Rohmaterial-Verlust: von 60 in `raw/_INGESTED.md` gefuehrten Quelldateien fehlen
  33 physisch, darunter eine am selben Tag in vier von sechs Facetten-Artikeln zitierte.
  Vom ersten Wissenscheck der KB `twin` am 22.07. gefunden und bereits am 22.07. ins
  Fristen-Register aufgenommen (Status: zu klaeren, braucht dedizierten Lauf). Hier nur zur
  Vollstaendigkeit, kein Doppeleintrag.

## Routine-/Trainings-Laeufe (Einzeiler-Summe)

28 MacBook-Pro-Sessions + 9 Mac-Mini-Dispatch-Zyklen, ausschliesslich Routine: Wissens-Chef,
Hub-Chef, Immobilienbewertung-Training (Run 41), twin-fidelity-review, Umlaut-Korrektur,
Fristen-/Pendenzen-Radar, KB-Health-Checks und Nachtschicht-Wissensarbeit (u.a. normen
DIN/VSS/RAL `ersetzt`-Feld-Nachpflege, QUESTIONS-Recherche `auflagebereinigung`). Keine
Besonderheiten ausser dem oben gefuehrten Umlaut-Befund und der SSH-Abdeckungsluecke.
