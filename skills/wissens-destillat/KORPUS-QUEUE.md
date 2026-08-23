# Korpus-Queue des Wissens-Destillats

Reihenfolge, in der das NAS-Archiv erschlossen wird. Technische Fassung:
`tools/korpus.conf`. Diese Datei trägt die **Begründung** und den **Stand**.

Angelegt 28.07.2026 als Antwort auf die offene Grundsatzfrage in
`logbuch/vollgas/FRUEHWARNUNG.md` (27.07.2026): der Endlos-Runner bekommt eine neue,
eigene Lern-Aufgabe statt ausgebaut zu werden.

## Reihenfolge und Stand

| # | Korpus | Quelle | Ziel-KB | Spec | Stand |
|---|---|---|---|---|---|
| 1 | `bauprodukte` | `/Volumes/daten/03 Bauprodukte_BKP` (37 Gewerke-Sektionen nach BKP) | `wissen/bauprodukte` | `specs/bauprodukte-spec.md` (28.07.2026) | **erledigt** 15.08.2026 — Inventar komplett: 214 inventarisiert, 26 destilliert, 188 verworfen, 0 offen / 0 triagiert |
| 2 | `buero-projekte` | `/Volumes/daten/04_Buero/02_Projekte` (22 Projekte) | `wissen/projekt-lessons` (bestehend) | `specs/buero-projekte-spec.md` (16.08.2026) | **aktiv** — Inventar Phase 0 abgeschlossen 16.08.2026, Triage Phase 1 abgeschlossen 23.08.2026 (813 Zeilen, 0 offen, 632 uebersprungen, 179 fuer Phase 2 vorgemerkt: 62 P1 / 91 P2 / 26 P3), Destillat Phase 2 Run 1+2 abgeschlossen 23.08.2026 (alle 62 P1-Zeilen, 36 `[x]`, Cluster P1-seitig fertig), Run 3 abgeschlossen 23.08.2026 (P2-Start: Projekte 1011_Lorrainestr_4 + 1602_St_Karli_11 gelesen, 45 Zeilen, ein neuer Artikel `vordach-lorrainestrasse4-1011-glasbaustein-denkmalpflege-2010`, Cluster 1602 ohne Lesson; 41 `[x]` gesamt; 72 `[t]` offen: 46 P2 / 26 P3 im Gesamtkorpus) |
| 3 | `buero-referenzen` | `/Volumes/daten/04_Buero/10_Referenzenbibliothek` | `wissen/architektur-fachwissen` (neu) | offen | wartet |
| 4 | `archiv-fachwissen` | `/Volumes/daten/02_Architektur_Archiv` (23 Themensektionen) | `wissen/architektur-fachwissen` | offen | wartet |

## Warum diese Reihenfolge

**1. Bauprodukte zuerst — höchster direkter Hebel.** Der Ordner ist bereits nach BKP
gegliedert, deckt sich also mit der Rule `bkp-2017-referenz` und mit der Sprache der
Ausschreibung. Das Destillat speist unmittelbar `ausschreibung` (LV-Texte, technische
Anforderungen), `offertenprüfung` (was ist marktüblich), `brandschutz`
(Klassifizierungen, Leistungserklärungen), `unternehmerfindung` und `grobkosten`.
Jeder destillierte Gewerkeordner macht am selben Tag eine reale Arbeit schneller.

**2. Büroprojekte — der eigentliche Wettbewerbsvorteil.** 22 abgewickelte Projekte sind
Wissen, das ausserhalb dieses Büros niemand hat und das kein Modell aus dem Netz kennt.
Ziel ist nicht die Projektdokumentation, sondern die **Lehre**: was hat der Bauherr
tatsächlich entschieden, wo lag die Kostenwahrheit gegenüber der Schätzung, welche
Behördenauflage kam überraschend. Geht in den bestehenden KB `projekt-lessons`.

**Pflicht-Zusatzauftrag für Korpus 2 (Entscheid Raphael, 31.07.2026):** Aus diesem Korpus
wird zusätzlich die **Bürohaltung zu bevorzugten Systemen** abgeleitet — welche Systeme je
Gewerk faktisch wiederkehrend verbaut wurden. Ergebnis als Entwurf-Artikel
`wissen/bauprodukte/wiki/bevorzugte-systeme-jans.md`, Status `emerging`, und Raphael zur
Bestätigung vorlegen; **nie** selbst auf `established` heben. Hintergrund: Raphael hat die
Frage bewusst nicht aus dem Kopf beantwortet, sondern der Ableitung aus den eigenen
Projekten den Vorzug gegeben. Bis dieser Artikel bestätigt ist, bleiben alle
Bauprodukte-Destillate herstellerneutral.

**3./4. Fachbibliothek und Archiv — Breite statt Tiefe.** Gross, wertvoll, aber am
wenigsten dringend und am aufwendigsten (viele grosse PDFs). Kommt, wenn die beiden
scharfen Korpora stehen.

**Nicht in der Queue:**
- `/Volumes/daten/05_Architekten_Synobsis` — KB saturiert (853/853, Entscheid Raphael 25.07.2026).
- `/Volumes/daten/04_Buero/01_Buerounterlagen` — Personal/Finanzen. Nur auf ausdrückliche
  Freigabe, und dann in einen eigenen, zugriffsbeschränkten KB.

## Regeln für die Queue

- Es wird **immer nur ein Korpus gleichzeitig** bearbeitet. Erst wenn dessen P1/P2-Positionen
  erledigt sind (Stand `erledigt`), rückt der nächste nach.
- Ein Korpus ohne Spec unter `specs/<id>-spec.md` wird nicht destilliert — der erste Lauf
  schreibt die Spec und endet.
- Änderungen an dieser Reihenfolge sind ein Entscheid Raphaels, kein Loop-Entscheid.
  Der Loop darf einen Korpus als `erledigt` markieren, aber keinen neuen erfinden.
