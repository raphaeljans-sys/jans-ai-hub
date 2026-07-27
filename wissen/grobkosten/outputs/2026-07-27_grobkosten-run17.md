# Grobkosten-Trainingslauf — Run 17 (2026-07-27)

Station: Mac Mini (VOLLGAS-Endlos-Runner). Kollisionscheck via `ps`: einziger Treffer die
eigene Prozessinstanz (Prozessstart 13:22 Uhr, ~4 Minuten nach dem Run-16-Commit).

## Prüfung

Run 16 hatte den Freshness-Check nur auf der SharePoint-Bibliothek
`OneDrive-FreigegebeneBibliotheken–JANS` gefahren. Für diesen Lauf stattdessen der noch nicht
redundante Check auf dem **kanonischen Quellpfad** selbst: `find -iname "*kosten*" -newermt
"2026-07-25"` direkt unter `/Volumes/daten/04_Buero/02_Projekte/` (der in `training/PROGRAMM.md`
benannte Ursprung der Stufe 1). Zusätzlich geprüft: ob seit dem 20.07.2026 eine neue
Schlussabrechnung/ein neuer Kostenstand aus dem Skill `kostenkontrolle` vorliegt (der in der
Endbedingung genannte Ereignis-Trigger) — kein Treffer in `skills/kostenkontrolle/` oder
projektübergreifenden `outputs/`-Ordnern.

Ergebnis: **null Treffer auf beiden Kanälen.** Kein einziges Kostendokument im gesamten
`04_Buero/02_Projekte`-Baum wurde seit dem Start dieses Trainingslaufs (25.07.2026) neu
angelegt oder geändert — die Quelle selbst ist in den zwei Tagen des Loop-Betriebs komplett
unverändert geblieben (nicht nur der OneDrive-Spiegel aus Run 16).

## Ergebnis

Kein neuer Rohbeleg, kein neuer Kennwert. Keine Änderung an `wiki/kennwerte.md`,
`training/quellen-inventar.md` oder `raw/`. Sechster Sättigungsbeleg in Folge (Run 12–17),
jetzt zusätzlich auf dem kanonischen Quellpfad selbst bestätigt (nicht nur auf dem
OneDrive-Spiegel). Weiterhin ausschliesslich die zwei bekannten, nur durch Raphael Jans direkt
lösbaren Fachfragen (Frage 1 BKP-1-9-vs-1-5, Frage 2 Standard-Klassifikation "norm, eloquent")
als Blocker für eine Median-Bildung.

## Empfehlung

Unverändert zu Run 12–16, jetzt mit stärkerem Beleg: Loop auf Ereignis-Trigger zurücktakten
(Antwort auf Frage 1/2 ODER neuer Kostenstand mit GV-Bezug aus einem laufenden Mandat). Ein
siebter identischer Lauf ohne neues Signal liefert keinen zusätzlichen Erkenntnisgewinn mehr —
die naheliegendste nächste produktive Aktion für diese KB ist keine weitere autonome Suche,
sondern die Klärung von Frage 1/2 im nächsten interaktiven Kontakt mit Raphael. Die
Taktungsfrage selbst liegt weiterhin ausserhalb der Befugnis dieses Loops (VOLLGAS-Runner-
Konfiguration) — hier nur dokumentiert für `vollgas-chef-radar`/Raphael.
