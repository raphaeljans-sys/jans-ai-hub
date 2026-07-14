---
title: Mini-Run 28 — Q&A-Selbstbefragung DIN-Bestand (Intensiv-Lauf auf Zuruf)
datum: 2026-07-14
station: Mac Mini (DIN/VSS/RAL)
---

# Mini-Run 28 — Q&A-Selbstbefragung (Intensiv-Lauf)

Auf direkten Auftrag Raphaels ausgefuehrter Intensiv-Lauf, ausschliesslich Familie
DIN/VSS/RAL (Stations-Split, SIA/VKF nicht angefasst). Fortsetzung von Mini-Run 26/27:
Vertiefungsstufe (c) Q&A-Selbstbefragung fuer Destillate ohne bisherigen Selbsttest.

Vorgehen: 4 parallele Batches (A-D), je Batch ein Sub-Agent, der 15-20 Pruefungsfragen
je Norm gegen den Original-PDF-Volltext formuliert, eigenstaendig beantwortet und mit
dem Destillat abgleicht. Batches C/D spawnten zusaetzlich eigene Unter-Agenten (nicht
vorgesehen, aber inhaltlich unschaedlich — teils Doppelverifikation bereits erledigter
Positionen). Wegen Budget-Obergrenze wurden die beiden letzten offenen Positionen
(vstaettvo-niedersachsen-2004, baupreisindizes-statistisches-bundesamt-2010) vorzeitig
gestoppt und NICHT fertiggestellt — sie bleiben fuer den naechsten Lauf offen.

## Ergebnis: 17 von 19 vorgesehenen Destillaten abgeschlossen

| Destillat | Fragen | bestanden | Fehler korrigiert | Ergaenzungen |
|---|---|---|---|---|
| din-1054-2010.md | 20 | 20 | 0 | 2 (Kombinationsbeiwerte Geotechnik, Sohlwiderstand) |
| din-1076-1999.md | 20 | 20 | 0 | 4 (u.a. 13 Mindest-Pruefleistungen Ziff.5.2 komplett ergaenzt) |
| din-18040-2-2011.md | 20 | 20 | 0 | 3 (Ziff.4.5.1/4.5.2, DIN-32975-Klarstellung) |
| din-18232-2-2007.md | 18 | 18 | 0 | 3 (Ziff.5.4/6.1, Anhang A) |
| din-1946-4-2008.md | 20 | 20 | 0 | 3 (Waermebrueckenfaktor, Revisionsoeffnungen, Kondensatwannen) |
| din-1960-2010.md | 20 | 19 | 0 | 1 (§16 Wertungskriterien) |
| din-276-1-2008.md | 20 | 20 | 0 | 3 |
| din-277-1-2005.md | 20 | 14 | 1 (Ziff.4.1.2b "in voller Hoehe" fehlte) | mehrere (4.1.1-4.3.3, BGF/NGF/KGF/BRI/NRI/KRI) |
| din-4102-2-1977.md | 20 | 3 | 0 | mehrere (Begriffsdefinition, F30-Anforderungen, Probekoerper u.a.) |
| din-5034-1-1999.md | 20 | 18 | 0 | 2 |
| din-5034-3-2007.md | 18 | 15 | 1 (Anmerkungs-Nummerierung Ziff.4.3/4.4) | 2 |
| din-v-105-100-2005.md | 19 | 19 | 0 | 2 |
| din-v-106-2005.md | 20 | 19 | 1 (unbelegte Zusatzaussage entfernt) | 1 |
| baurecht-din-normenwerk-grundlagen-2010.md | 20 | — | 0 | Volltextabgleich, keine Korrektur |
| arbstaettv-2004.md | 18 | 13 | 1 (Seitenangabe + Tippfehler) | 4 |
| baunvo-1990.md | 20 | 18 | 1 (§12 Abs.3 Nr.2 Praezisierung) | 2 (§22/§23 nachgetragen) |
| nbauo-barrierefreiheit-2004.md | 26 | 24 | 1 (Behinderten-Oberbegriff §48 Abs.1) | §18 Abs.6+7 DVNBauO nachgetragen |

**Summe:** 17 Destillate, ca. 339 Pruefungsfragen, 6 Sachfehler korrigiert, ca. 30+
Ergaenzungen eingearbeitet. Groesste Einzelfunde: DIN 1076 fehlende Pruefleistungs-Liste
(Ziff.5.2, war komplett ausgelassen), DIN 277-1 fehlende Flaechenermittlungs-Abschnitte
(4.2/4.3), NBauO/DVNBauO Behinderten-Oberbegriff.

## Offen (naechster Lauf)

- `vstaettvo-niedersachsen-2004.md` — Original `Sonstiges/041210_vstaett_vo.pdf` — noch nicht
  Q&A-selbstbefragt (Lauf aus Budgetgruenden gestoppt, bevor Sub-Agent gestartet hatte).
- `baupreisindizes-statistisches-bundesamt-2010.md` — Original `Sonstiges/Baupreisindizes.pdf` —
  ebenfalls gestoppt (Sub-Agent hatte nur die Seitenzahl geprueft, noch keine Fragen gestellt).

## Erkenntnis fuer kuenftige Laeufe

Sub-Agenten, die intern zusaetzliche parallele Unter-Agenten spawnen, vervielfachen den
Tokenverbrauch unkontrolliert (Batches C/D taten dies ungefragt) und fuehrten teils zu
Doppelverifikation bereits erledigter Destillate (z.B. DIN 1054/DIN 18040-2 wurden von
Batch C nochmals — unnoetig — geprueft, obwohl sie zu Batch A gehoerten). Kuenftige
Batch-Prompts sollten explizit verbieten, dass ein Sub-Agent selbst weitere Agenten
aufruft, um den Durchsatz pro Dollar planbar zu halten.

Naechster Batch: die 2 offenen Positionen oben, danach Fortsetzung der Vertiefungsstufe (c)
fuer die restlichen ~13 noch nicht Q&A-selbstbefragten DIN/VSS-Destillate (din-inhaltsverzeichnis,
komm-din18024-t1, hoai-bauen-im-bestand, din-planungsgrundlagen-hoai, treppen-hcu-hamburg,
vds-2234, Zugangsnormalien 700.5, VSS 640 050, sn-640105a).
