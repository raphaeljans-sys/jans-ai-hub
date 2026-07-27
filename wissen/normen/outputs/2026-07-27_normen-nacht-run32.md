# Normen-Training Run 32 (MacBook Pro, 27.07.2026) — SIA/VKF

**Kurzfassung:** Kein neues Grunddestillat aus dem bestehenden Inventar-Scope (PL-02 `02_Normen`
weiterhin 0 offene `[ ]`). Dieser Lauf hat die acht Folgeaufgaben abgearbeitet, die Run 31
hinterlassen hat: dritte Verifikationsrunde fuer die fuenf am 27.07. zweimal beanstandeten
Destillate, erste unabhaengige Verifikationsrunde fuer die drei am 27.07. neu erstellten
Destillate. Acht parallele, unabhaengige Refuter-Agenten liefen gleichzeitig (Workflow-Tool im
Scheduled-Task-Kontext weiterhin nicht verfuegbar — Fallback direkte Parallel-Agenten gemaess
`training/PROGRAMM.md` erneut bestaetigt, analog Run 28).

**Ergebnis in einem Satz:** Zwei Destillate erreichen einen sauberen Nulldurchgang und werden auf
`established` gehoben; ein Destillat hat 3 geringfuegige Befunde (bleibt `emerging`); fuenf bleiben
`speculative`, aber mit klar sinkender Fehlerzahl je Runde — keine neue Regression.

---

## 1. Voraussetzungen

- NAS gemountet, Zugriff auf die Original-PDFs (OneDrive-Pfade PL-02/PL-03) via `find`/`Read`
  erfolgreich, kein TCC-Block angetroffen.
- Run-Nummer erst nach Sicht der juengsten `outputs/`-Datei belegt: `2026-07-27_normen-nacht-run31.md`
  existiert → dieser Lauf ist **Run 32**.
- Acht Ziel-Destillate aus Run 31s Abschnitt "Offen" identifiziert und deren Quell-PDF-Pfade aus
  dem jeweiligen Frontmatter (`quelle:`) aufgeloest, bevor die Agenten gestartet wurden.

## 2. Dritte Verifikationsrunde — 5 Destillate

| Destillat | Runde | Befunde | Schwerster Einzelbefund | Status |
|---|---|---|---|---|
| `vkf-ah-1001-15-wohnbauten.md` | 3. | **0** | keiner — sauberer Nulldurchgang | **established** |
| `lignum-lignatec-brandschutz.md` | 3. | **1** | Tab. 4 Korridor-Eckwert MFH 5-6 Geschosse: Bindestrich statt Schraegstrich (Bindestrich = nur fluchtwegseitig verkleidet, Original zeigt Schraegstrich = beidseitig) | speculative |
| `lignum-4-2-anschluesse-feuerwiderstand.md` | 3. | **3** | EI30/EI60-Beplankungsdicken (22/12,5 mm bzw. 46/2×12,5 mm) dem falschen Kapitel zugeordnet (Kap. 4.4.3 statt 4.4.2, wo nur einheitlich 15 mm ohne EI-Splittung gilt) | speculative |
| `sia-d0165-2000-kennzahlen-immobilienmanagement.md` | 3. | **4** | GEFMA-Code 450 "Dienste in Aussenanlagen" (Anhang 6) falscher Kontenklasse 5xx statt 4xx zugeordnet | speculative |
| `lignum-4-1-decken-waende-bekleidungen-feuerwiderstand.md` | 3. | **5** | Brandschutzbekleidungsklassen K30-RF1/K60-RF1 (Kap. 5.2.2) unbelegt mit Bauteil-Feuerwiderstandsklassen EI30-RF1/EI60-RF1 gleichgesetzt, obwohl Quelltabelle nur die Bekleidungsdauer selbst benennt | speculative |

**Keine Regression** in dieser Runde bei keinem der fuenf Destillate — alle Korrekturen aus Runde 1
und Runde 2 wurden von den jeweiligen Agenten explizit re-geprueft und bestaetigt (u.a. die
Run-31-Regressions-Korrekturen Tab. 446-1 [Lignum 4.1] und BKP-19-99/EKG-W1-W6 [SIA D 0165]).

**Konvergenz-Befund:** Die Fehlerzahl je Runde sinkt bei allen fuenf Destillaten deutlich:
Lignum 4.1 26→5, Lignum 4.2 18→3 (+10 fehlende Kernziffern → 0), Lignum Lignatec 17→**1**,
SIA D 0165 17→4. Nur die VKF-AH 1001-15 erreichte bereits in dieser dritten Runde 0 Befunde. Das
stuetzt die Run-31-Beobachtung, dass eine Verifikationsrunde konvergiert, aber (mit Ausnahme von
Lignum Lignatec) noch keinen vollstaendig fehlerfreien Durchgang erzwingt.

## 3. Erste unabhaengige Verifikationsrunde — 3 neue Destillate

| Destillat | Befunde | Schwerster Einzelbefund | Status |
|---|---|---|---|
| `vkf-allgemein-anerkannte-bauprodukte-2017.md` | **0** | keiner — sauberer Nulldurchgang, alle 5 Selbst-Gegenprobe-Korrekturen bestaetigt, MD5 bitweise verifiziert | **established** |
| `brandschutzfachstellen-anleitung-brandschutznachweis-v3.md` | 3 (gering) | Frontmatter-Herausgeberzeile nannte volle Bezeichnung "NSV Nidwaldner Sachversicherung", Logoleiste S.1 zeigt nur Bildmarke "NSV" — als nicht-belegtes Zusatzwissen getrennt ausgewiesen | emerging (unveraendert) |
| `brandschutzplan-legende-symbole-2017.md` | 4 | Behauptung, Handfeuerloescher-Symbole (Gruppe 3.0) wuerden Brandklassen nur ueber Stoffumschreibung zeigen, ist am Bild widerlegt — jedes Symbol traegt den Brandklassenbuchstaben direkt | speculative |

## 4. VKF-Merkblatt 2003-15 — Bring-Schuld bestaetigt

Die von Run 31 gemeldete Primaerquelle fuer Brandschutzplan-Symbolik («Brandschutzpläne, Flucht-
und Rettungswegpläne, Feuerwehrpläne») wurde gezielt gesucht: `find` mit `-iname "*2003*15*"`
ueber die komplette PL-02- und PL-03-Ablage, zusaetzlich Vollsicht der Ordner
`05 Arbeitshilfen Brandschutz 2015`, `03 Verzeichnisse Brandschutz 2015`,
`04 Erlaeuterungen Brandschutz 2015` und `00 Brandschutzplaene bsvonline.ch`. **Ergebnis: nicht im
Bestand.** Bleibt externe Bring-Schuld (VKF-Shop/-Portal); der amtliche Status von
`brandschutzplan-legende-symbole-2017.md` bleibt deshalb unbestaetigt.

## 5. Nachgefuehrt

- `destillate/INDEX.md`: alle 8 betroffenen Zeilen aktualisiert (2x auf `established` gehoben).
- `training/norm-inventar.md`: neuer Run-32-Eintrag oben.
- `wiki/QUESTIONS.md`: neuer Abschnitt "Run 32" (VKF-Merkblatt-Suche als erledigt markiert, neue
  Frage zur regionalen Geltung der beiden Zentralschweizer Arbeitshilfen fuer ZH-Projekte, die
  beiden Run-31-Strukturentscheide unveraendert offen referenziert).
- `CHANGELOG.md`: neuer Kopfeintrag.
- Acht Destillate inhaltlich korrigiert (16 Befunde total in dieser Runde: 0+1+3+4+5 = 13 aus der
  dritten Runde, 0+3+4 = 7 aus der ersten unabhaengigen Runde — macht 20 Befunde ueber alle acht
  Agenten, davon 2 Nulldurchgaenge).

## 6. Offen

1. **Zwei Strukturentscheide aus Run 31 unveraendert bei Raphael:** (a) Reichweite des
   Normen-Inventars auf die ~680 bisher nie gescannten PL-02-Ordner ausweiten oder nicht? (b) Soll
   `established` kuenftig systematisch einen sauberen Nulldurchgang statt einer einzelnen
   bestandenen Korrekturrunde verlangen? Dieser Lauf hat die bestehende Konvention unveraendert
   angewendet (Vorgriff vermieden).
2. **Vierte Runde** fuer die verbleibenden vier speculativen Lignum-/SIA-Destillate erscheint
   angesichts der klaren Konvergenz (v.a. Lignum Lignatec mit nur noch 1 Befund) sinnvoll — naheliegender
   naechster Batch dieser Vertiefungsstufe.
3. **Regionale Geltung** der beiden Zentralschweizer Arbeitshilfen fuer ZH-Projekte weiterhin ungeprueft.
4. **VKF-Merkblatt 2003-15** bleibt externe Beschaffung (VKF-Shop/-Portal).
5. **Bring-Schulden unveraendert:** SIA 491, SN EN 12193 (KB `baurecht`) — weiterhin externe
   Beschaffung, nicht Gegenstand dieses Laufs.

**Keine «SIA/VKF KOMPLETT»-Meldung.** Die Grunddestillation bleibt vollstaendig; dieser Lauf hat
die Verifikationstiefe der Vertiefungsstufe (b) weiter erhoeht und zwei weitere Destillate auf
`established` gehoben, aber vier Destillate mit noch nicht sauberem Nulldurchgang und zwei
Strukturentscheide offen gelassen — die Endbedingung ist nicht erreicht.
