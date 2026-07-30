# Korpus-Queue des Wissens-Destillats

Reihenfolge, in der das NAS-Archiv erschlossen wird. Technische Fassung:
`tools/korpus.conf`. Diese Datei trägt die **Begründung** und den **Stand**.

Angelegt 28.07.2026 als Antwort auf die offene Grundsatzfrage in
`logbuch/vollgas/FRUEHWARNUNG.md` (27.07.2026): der Endlos-Runner bekommt eine neue,
eigene Lern-Aufgabe statt ausgebaut zu werden.

## Reihenfolge und Stand

| # | Korpus | Quelle | Ziel-KB | Spec | Stand |
|---|---|---|---|---|---|
| 1 | `bauprodukte` | `/Volumes/daten/03 Bauprodukte_BKP` (37 Gewerke-Sektionen nach BKP) | `specs/bauprodukte-spec.md` (28.07.2026) | **in Arbeit** — Phase 0 komplett (37 Sektionen), 6 Artikel (Stand 28.07. 06:30) |
| 2 | `buero-projekte` | `/Volumes/daten/04_Buero/02_Projekte` (22 Projekte) | `wissen/projekt-lessons` (bestehend) | offen | wartet |
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
