---
titel: "QUESTIONS-Abarbeitung 24.08.2026 — drittes VKF-Duplikat-Paar (BSV2015-Bericht) gegengelesen"
datenstand: "2026-08-24"
status: established
---

# QUESTIONS-Abarbeitung 24.08.2026 — BSV2015-Duplikat-Paar geschlossen, KB-Sättigung bestätigt

## Auftrag

Weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten. Fundstelle je Aussage mit Norm, Ausgabe
und Ziffer; nur `established`-Destillate zitierfähig. Rule `wissens-bibliothekar` beachten
(nichts raten, jede Aussage belegen, CHANGELOG-Eintrag setzen, `git diff --numstat` nach jedem
Schreibvorgang prüfen).

## Befund

Der Reconcile-Duplikate-Block (`wiki/QUESTIONS.md` Z. 4009 ff.) listet vier Datei-Paare mit
identischer Quelle, die aus dem KB-Reconcile vom 02.06.2026 doppelt destilliert übrig geblieben
sind. Drei Paare (Brandmauern, Solaranlagen, AFC-Synopse 2017/N60-1) waren bereits inhaltlich
gegengelesen. Das vierte Paar trug seit dem Reconcile den unveränderten Vermerk «evtl. inhaltlich
verschieden … vor dem Merge kurz gegenlesen»:

- `destillate/vkf-bsv2015-bericht-aenderungen.md` (13.07.2026, 90 Zeilen)
- `destillate/vkf-bsv2015-vernehmlassungsbericht.md` (21.07.2026, 200 Zeilen)
- Gemeinsame Quelle: `PL - 02_Recht_Norm/02_Normen/VKF_Norm/02_Brandschutzrichtlinien 2015/BSV2015-Bericht und Änderungen.pdf`

## Vollständiger Inhaltsabgleich

Beide Dateien vollständig gelesen und gegen folgende Kennwerte geprüft — in beiden identisch,
kein Widerspruch:

- Hochhausgrenze 25 m → 30 m (IVHB-Messweise)
- Fluchtwegdistanz vorher max. 20 m Raum + 35 m inkl. Korridor → einheitlich 35 m
- Entkopplung Treppenanlagen-Anzahl von Geschossfläche, Schwelle 900 m²
- Baustoffklassifizierung RF1-RF4, 20 VKF-Klassifizierungen ↔ 287 mögliche SN-EN-Klassifizierungen
- Neue Kategorie «Gebäude mit geringen Abmessungen», Schwelle 600 m² Gesamtgeschossfläche
- Holzbau neu bis 8 Geschosse in brennbarer Bauweise
- Wörtliches Zitat «Das Feuer brennt in allen Kantonen gleich!» (S. 21)

Beide Destillate stammen aus derselben Quelldatei und sind für alle geprüften Kennwerte
deckungsgleich. Anders als beim Solaranlagen-Paar (dort fand Wissens-Chef Run 28 am 07.08.2026
einen realen Seitenzahlfehler in einer der beiden Dateien) liegt hier kein Fehler, sondern eine
reine Vollständigkeits-Divergenz vor.

## Ergebnis

`vkf-bsv2015-vernehmlassungsbericht.md` ist mehr als doppelt so umfangreich: mehr Kapitel-Detail
je Einzelrichtlinie (2.2.1-2.2.20 vollständig referenziert statt nur summarisch), ausführlicherer
Abschnitt «JANS-Praxis-Transfer», zusätzliche Backlinks zu `vkf-brandschutznorm-2015`,
`vkf-brl-16-15-flucht-rettungswege`, `vkf-brl-verwendung-baustoffe`, `vkf-brl-nachweisverfahren`.
Analog zum bereits etablierten AFC-Synopse-Muster (N60-1) wird diese Datei bis zum
Merge-Entscheid als **führend** markiert.

Beide Destillate wurden additiv um einen gegenseitigen Duplikat-Hinweis mit dem obigen
Kennwerte-Beleg ergänzt. `wiki/QUESTIONS.md` wurde an zwei Stellen nachgetragen (Reconcile-Block
und N60-1-Abschnitt), mit wechselseitigem Verweis.

## Was NICHT getan wurde

Kein Datei-Löschen, kein Merge. Ein Zusammenlegen ist destruktiv und liegt gemäss Rule
`wissens-bibliothekar` Punkt 4 bei Raphael. Die drei verbleibenden offenen Duplikat-Paare
(Solaranlagen, AFC-Synopse 2017, BSV2015-Bericht) haben damit alle einen dokumentierten
Führend-Kandidaten und warten auf denselben Entscheid.

## KB-Gesamtstand

`training/norm-inventar.md` zeigt weiterhin 0 offene Zeilen. Von den 33 verbleibenden `[ ]`-
Positionen in `wiki/QUESTIONS.md` ist nach diesem Lauf keine mehr ohne dokumentierten Grund
offen: externe Bring-Schuld (Normenkauf), Strukturentscheid Raphael, oder reine
Betriebs-/Methodiknotiz. Dieselbe Sättigung wurde in den letzten Stunden bereits sechsfach
unabhängig (SIA-Sweep) und dreifach durch vorangegangene QUESTIONS-Abarbeitungen des heutigen
Tages bestätigt.
