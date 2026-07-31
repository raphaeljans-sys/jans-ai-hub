---
title: "KISPI RE-00087: eine fehlende Auftragsbestätigung blieb drei Monate lang unsichtbar, weil das Mahnwesen nur zählt, nicht diagnostiziert"
status: emerging
last_updated: 2026-07-31
sources:
  - raw/260731-kispi-fehlende-auftragsbestaetigung-mahnkaskade.md
links:
  - kispi-behoerden-zustaendigkeitswechsel-1171-26
tags:
  fokus: Kosten & Termine
  bkp: "—"
  sia_phase: "5 Ausführung"
  skills: [mahnwesen, kostenkontrolle]
---

## Situation

Rechnung RE-00087 (KISPI, CHF 15'000) wurde am 16.04.2026 fällig. Am 16.06.2026 taucht sie
erstmals im Debitoren-Register als überfällig auf (61 Tage nach Fälligkeit) und durchläuft
danach Mahnstufe 1 (Zahlfrist 28.06., später 08.07.) und Mahnstufe 2 (Frist 15.07.) — ohne
Zahlungseingang. Stand 31.07.2026 steht sie bei 106 Tagen überfällig unverändert auf Mahnstufe 2.

## Was passiert ist

Über gut sechs Wochen (16.06. bis 21.07.) wird RE-00087 in jedem Radar-/Hub-Chef-Lauf
fortgeschrieben — aber ausschliesslich als Tage-Zähler und Mahnstufen-Status («92 Tage»,
«95 Tage», «96 Tage», «97 Tage», «98 Tage»). Kein einziger dieser automatisierten Läufe fragt,
**warum** KISPI nicht zahlt. Der Automatismus tut exakt das, wofür er gebaut ist (Verzug messen,
nächste zulässige Mahnstufe vorschlagen) und bleibt an der Whitelist-Grenze stehen: Mahnstufe
3/Betreibung ist laut Autonomiestufe A1 zwingend Einzelentscheid Raphael, also eskaliert
niemand von sich aus über Stufe 2 hinaus.

Erst am 21.07.2026, 10:42 — mehr als drei Monate nach Fälligkeit —, bündelt Raphael die drei
offenen KISPI-Rechnungen (CHF 32'280 total) persönlich in einer eigenen Mail an KISPI und
benennt darin die **fehlende Auftragsbestätigung** als Kern des Zahlungsstaus. Diese Diagnose
kommt nicht aus dem Mahnwesen-Loop, sondern aus der manuellen Prüfung durch Raphael selbst.

## Ursache

Die Mahnwesen-Automatik misst korrekt (Verzugstage, Mahnstufe), aber sie prüft nicht die
zugrundeliegende **Auftragsgrundlage** einer Rechnung. Eine fehlende oder unterzeichnete
Auftragsbestätigung ist ein Grund, der sich in keinem der gemessenen Werte (Tage überfällig,
Mahnstufe) zeigt — er wird nur sichtbar, wenn jemand die Rechnung inhaltlich gegen ihre
Vertragsgrundlage hält, nicht gegen den Kalender.

Dass dies kein Einzelfall ist, zeigen zwei unabhängige weitere Funde im selben Mandat: Bei der
Gruner AG stellte sich bei der Prüfung eines Eskalations-Entwurfs heraus, dass **JANS gar
keinen Vertrag mit der Gruner AG hat** (Auftraggeberin ist vertraglich die Eleonorenstiftung,
das Auftragsfeld der Brandschutzofferte ist leer, der Admin-Ordner für die Auftragsbestätigung
enthält nur `.DS_Store`). Bei TeKoSi (Türfachplanung) mahnte der Unternehmer selbst am 16.07.
die fehlende Auftragsbestätigung an — der Ball liegt seither bei KISPI. Im laufenden
KISPI-Mandat fehlt damit an mindestens drei Stellen (RE-00087, Gruner-Vertragsgrundlage,
TeKoSi-Türfachplanung) eine sauber dokumentierte, unterzeichnete Auftragsbestätigung, bevor
Leistung erbracht oder Rechnung gestellt wurde.

## Konsequenz

- RE-00087 bleibt seit über drei Monaten auf Mahnstufe 2 hängen, ohne dass ein Automatismus
  die eigentliche Blockade löst — jede Eskalation über Stufe 2 hinaus braucht ohnehin Raphaels
  Entscheid, aber auch die Diagnose selbst kam erst durch Raphaels eigenes Nachfassen, nicht
  proaktiv aus dem Hub.
- Cross-KB-Einordnung: Die Whitelist-Grenze A1 (nur bis Mahnstufe 1/2 autonom, Stufe 3/Betreibung
  = Einzelentscheid) ist in Rule 260702 (`auto-verbesserungen.md`) und im Skill `mahnwesen`
  korrekt und bewusst so gesetzt — diese Lesson stellt die Grenze **nicht** infrage, sondern
  ergänzt sie um eine fehlende Prüf-Dimension (Ursache statt nur Tage/Stufe).

## Regel für nächstes Mal

Steht eine Rechnung länger als eine Mahnstufe (d.h. über die Zahlfrist von Mahnstufe 1 hinaus)
unbeglichen, prüft der nächste Mahnwesen-/Radar-Lauf **einmalig aktiv**, ob für die zugrunde
liegende Leistung eine schriftliche, unterzeichnete Auftragsbestätigung vorliegt (Suchpfad im
Projektordner: `00_Admin/2 Auftragsbestaetigung/10 Auftragserteilung/` bzw. Offerten-Auftragsfeld),
und vermerkt das Ergebnis im Fristen-Register — als Ampel-Zusatzfeld «Auftragsgrundlage
geprüft: ja/nein/fehlt», nicht als neue autonome Aktion. Eine fehlende Auftragsbestätigung ist
selbst ein berichtenswerter Befund, unabhängig vom Mahnstatus, und gehört so früh wie möglich
ins Briefing an Raphael — nicht erst nach Monaten mechanischen Zählens.

## Fokus-Bereich-Fortschritt

Mit diesem Artikel ist der in `wiki/QUESTIONS.md` benannte fünfte Fokus-Bereich «Kosten &
Termine» erstmals belegt (5. Artikel der KB, 4. thematisch neuer Bereich von 5).
