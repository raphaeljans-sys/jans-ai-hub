---
title: Fidelity-Review 2026-07-27g
status: final
last_updated: 2026-07-27
gewichtung: authentisch
sources: [mail@raphaeljans.ch Sent Items 2026-06-01 bis 2026-06-27]
links: [[stimme]], [[beziehungsregister]], [[denken]], [[fachsignatur]], [[arbeitsweise]], [[haltung]], [[QUESTIONS]]
---

# Fidelity-Review 2026-07-27g (sechster Lauf des Tages)

Frische Session ohne Vorwissen aus vorherigen Läufen. Zugriff via CLI for Microsoft 365
(`npx --no-install m365 outlook message list/get`, bereits per Zertifikat verbunden als
«SharePoint MCP Connector (JANS)»; kein separates MCP-Tool `m365_run_command` im Werkzeugsatz
dieses Sub-Agenten verfügbar, daher direkt über den CLI-Wrapper gearbeitet).

## Methodik-Vorgehen

`mail@raphaeljans.ch` war laut Runde f nur bis April 2026 erschlossen. Mai 2026 lieferte nur
Duplikate des bereits gemindeten HUB12-Weiterleitungs-Threads (kein neues Material). **Juni 2026**
lieferte drei bislang unbearbeitete, unterschiedliche Golds im selben Monat — ein frisches,
noch nicht in einem Report-Dateinamen von heute verwendetes Fenster.

## Goldproben (drei authentische, vor-Claude erstellte Mails)

**Gold A — Formelle Kalt-Bestellung an HEV Schweiz (Sie, 10.06.2026, `mail@`).** «Bestellung
Merkblatt inkl. Checkliste «Kauf von Liegenschaften»» an `info@hev-schweiz.ch`: «Sehr geehrte
Damen und Herren / Gerne bestelle ich aus Ihrem Shop folgende Drucksache: … / Lieferung und
Rechnung an: … / Falls eine Zustellung als PDF/Download möglich ist, bevorzuge ich diese
Variante; andernfalls gerne per Post. / Besten Dank für die Ausführung der Bestellung. /
Freundliche Grüsse» + voller Signatur-Block.

**Gold B — Nackte Statusfrage an Fachplaner (Register unklar, 12.06.2026, `mail@`).** An
`cekdar.duran@gruner.ch` (Gruner AG, KISPI-Team): kompletter Body «**Alles aklar mit den
Auflagepunkten?**» — kein Betreff, keine Anrede, kein Gruss, keine Signatur, Tippfehler
«aklar» stehen gelassen.

**Gold C — Formelle Sie-Mail an UBS-Kundenberater zur Firmengründung (27.06.2026, `mail@`).**
An `bruno.jeckelmann@ubs.com`: «Sehr geehrter Herr Jeckelmann / Besten Dank für Ihre Nachricht
und die Vorbereitung des Kapitaleinzahlungskontos. In der Zwischenzeit hat sich der definitive
Firmenname geändert: … «Raphael Jans AG» … / Zwei weitere Punkte zum Antrag: - … - … / Können
Sie mir das angepasste Antragsformular zukommen lassen … / Für Rückfragen erreichen Sie mich
unter +41 79 846 11 65. / Freundliche Grüsse Raphael Jans» (Kurzsignatur ohne vollen Block).
Löst nebenbei den offenen Punkt aus `project_jans_ag_gruendung.md`: der definitive Name ist
**«Raphael Jans AG»**, nicht «JANS AG».

## Blindtest (nur `rules/jans-dna.md` + Do/Don't-Blöcke, ohne Kopieren)

**Gold A (Bestellung HEV Schweiz):** Blinddraft traf Anrede, Struktur (Bestellzeile → Adresse →
bedingte Präferenz PDF/Post → Signaturphrase → FG+Block) fast deckungsgleich. Kein Drift —
bestätigt den bereits `established`-Marker «Sie-Kaltkontakt, formelle Bestellung/Anfrage».
**Facette Stimme/Fachsignatur: bestätigt, keine Änderung nötig.**

**Gold B (nackte Statusfrage):** Blinddraft aus der DNA erzeugte reflexhaft «Guten Morgen
Cekdar / Alles klar mit den Auflagepunkten? / Lieber Gruss» — die kompilierte DNA setzt bei
jedem «Ultrakurzen Du-Reply» noch einen Mindest-Rahmen (Opener + Kurzgruss) an. Der echte Beleg
unterbietet das vollständig: keine Anrede, kein Gruss, keine Signatur, nur die nackte Frage plus
authentischer Tippfehler. Die Nullform-Familie (private Fwd-Intent-Zeile, interne
Auftragserteilung) ist im Wiki bereits gut belegt, aber bisher nur für **Aussagen/Aufträge**,
nicht für eine **Frage** an einen im Wiki sonst mit Sie geführten Fachplaner-Kontakt (Duran wird
andernorts als «Geschätzter Herr Duran» geführt). Neue, in `stimme.md` ergänzte Beobachtung
(Register bewusst offen gelassen, nicht in den Do-Block gehoben — Vorsicht vor
Übergeneralisierung). **Drift: mittel** — der Blindtest hätte die Nullform nicht
selbstständig auf eine Frage an einen Sie-Kontakt ausgeweitet.

**Gold C (UBS-Kapitaleinzahlungskonto):** Blinddraft traf Anredeform, Kurzsignatur
(«Freundliche Grüsse Raphael Jans» ohne vollen Block bei eingespieltem Bank-Kontakt — bisher nur
für Behörden dokumentiert, hier auf einen Bank-Kundenberater ausgeweitet), Bindestrich-
Unterpunkte («Zwei weitere Punkte … - … - …»), Antrag-mit-Bestätigungsbitte-Struktur exakt nach
dem in `fachsignatur.md` dokumentierten Muster (a) («eigenes Recht/eine Schwelle geltend machen,
dann Antrag + Bestätigungsbitte»). Rückfragen-Telefonnummer am Schluss ebenfalls getroffen.
**Facette Fachsignatur/Arbeitsweise: bestätigt, minimale Erweiterung (Kurzsignatur auch bei
Bank-Kontakt) dokumentiert, kein Do-Block-Eingriff nötig (nur ein Beleg, noch keine Häufung).**

## Score je Facette (0–100)

- **Stimme: 85** — zwei von drei Golds nahezu deckungsgleich; die Nullform-Frage an einen
  Sie-Fachplaner war der einzige echte Fehltreffer des Blindtests.
- **Denken: 90** — konditionale Kopplung (Vollliberierung/Betrag/Termin Mitte August) in Gold C
  sauber reproduzierbar aus der DNA.
- **Haltung: 88** — keine Haltungs-Spannung in den drei Golds enthalten (rein administrativ/
  operativ), Ton durchgehend konsistent mit der DNA, nichts zu korrigieren.
- **Beziehungsregister: 87** — Gold B wirft eine offene Frage zum aktuellen Duran-Register auf
  (Sie laut Wiki vs. Nullform ohne erkennbares Pronomen); sonst (Gold A/C) exakt getroffen.
- **Fachsignatur: 93** — Antrag-mit-Bestätigungsbitte-Muster (a) aus `fachsignatur.md` trifft
  Gold C fast wörtlich; MWST-/Gesellschaftsrecht-Präzision bestätigt.
- **Arbeitsweise: 89** — Bindestrich-Unterpunkte + klare Schluss-Frage + Rückrufnummer bestätigt;
  die extreme Gegenpol-Form (Nullform-Check-in) ist als Randfall dokumentiert, aber kein
  Struktur-Fehlgriff, da die DNA korrekt priorisiert (nur der Rahmen war zu üppig, nicht der
  Inhalt).

**Gesamt-Fidelity: 89** (Durchschnitt; alle sechs Facetten ≥ Schwelle 80 → im Gate-Modus
**durchgewunken**, keine Veredelungsrunde nötig gewesen).

## Gegenseitige Validierung

Kurzer Quercheck der sechs Facetten-Kernaussagen gegeneinander: keine neuen Widersprüche.
Die einzige offene Spannung (Nullform-Frage vs. dokumentiertes Sie-Register Duran) ist eine
Wissenslücke, kein Widerspruch zwischen zwei Facetten — sauber als Frage an Raphael
weitergereicht statt als Konflikt in `QUESTIONS.md` vermerkt.

## Empfehlungen

1. `stimme.md` um den Beleg «Nackte Statusfrage an eingespielten Fachplaner, ganz ohne
   Anrede/Gruss/Signatur» ergänzt (Register bewusst offen, nicht in den kompilierten Do-Block
   gehoben — DNA nicht neu kompiliert, siehe unten).
2. Nächster sinnvoller Trainings-Schwerpunkt: der offene Punkt aus `project_jans_ag_gruendung.md`
   ist mit Gold C faktisch gelöst (Name = «Raphael Jans AG») — das gehört als Sachinformation
   ins Gedächtnis nachgezogen, nicht in den Twin-Stil-Layer (ausserhalb Scope dieses Reports,
   nur als Fund vermerkt).
3. `mail@raphaeljans.ch` ist jetzt bis Ende Juni 2026 durcherschlossen; nächstes Fenster bei
   Bedarf: Juli 2026 auf `mail@`, oder `raphaeljans@outlook.com` (bisher in keiner Runde gezogen).

## Rekompilierung

Der Do/Don't-Block von `stimme.md` wurde **nicht** verändert (die neue Beobachtung ist bewusst
als offene, nicht in den Block gehobene Randnotiz dokumentiert). `python3 build_dna.py` daher
in dieser Runde **nicht** ausgeführt — keine Änderung am kompilierten `rules/jans-dna.md` nötig.
