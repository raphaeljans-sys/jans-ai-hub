# Korpus-Queue des Wissens-Destillats

Reihenfolge, in der das NAS-Archiv erschlossen wird. Technische Fassung:
`tools/korpus.conf`. Diese Datei traegt die **Begruendung** und den **Stand**.

Angelegt 28.07.2026 als Antwort auf die offene Grundsatzfrage in
`logbuch/vollgas/FRUEHWARNUNG.md` (27.07.2026): der Endlos-Runner bekommt eine neue,
eigene Lern-Aufgabe statt ausgebaut zu werden.

## Reihenfolge und Stand

| # | Korpus | Quelle | Ziel-KB | Spec | Stand |
|---|---|---|---|---|---|
| 1 | `bauprodukte` | `/Volumes/daten/03 Bauprodukte_BKP` (37 Gewerke-Sektionen nach BKP) | `wissen/bauprodukte` (neu) | offen | **naechster** |
| 2 | `buero-projekte` | `/Volumes/daten/04_Buero/02_Projekte` (22 Projekte) | `wissen/projekt-lessons` (bestehend) | offen | wartet |
| 3 | `buero-referenzen` | `/Volumes/daten/04_Buero/10_Referenzenbibliothek` | `wissen/architektur-fachwissen` (neu) | offen | wartet |
| 4 | `archiv-fachwissen` | `/Volumes/daten/02_Architektur_Archiv` (23 Themensektionen) | `wissen/architektur-fachwissen` | offen | wartet |

## Warum diese Reihenfolge

**1. Bauprodukte zuerst — hoechster direkter Hebel.** Der Ordner ist bereits nach BKP
gegliedert, deckt sich also mit der Rule `bkp-2017-referenz` und mit der Sprache der
Ausschreibung. Das Destillat speist unmittelbar `ausschreibung` (LV-Texte, technische
Anforderungen), `offertenpruefung` (was ist marktueblich), `brandschutz`
(Klassifizierungen, Leistungserklaerungen), `unternehmerfindung` und `grobkosten`.
Jeder destillierte Gewerkeordner macht am selben Tag eine reale Arbeit schneller.

**2. Bueroprojekte — der eigentliche Wettbewerbsvorteil.** 22 abgewickelte Projekte sind
Wissen, das ausserhalb dieses Bueros niemand hat und das kein Modell aus dem Netz kennt.
Ziel ist nicht die Projektdokumentation, sondern die **Lehre**: was hat der Bauherr
tatsaechlich entschieden, wo lag die Kostenwahrheit gegenueber der Schaetzung, welche
Behoerdenauflage kam ueberraschend. Geht in den bestehenden KB `projekt-lessons`.

**3./4. Fachbibliothek und Archiv — Breite statt Tiefe.** Gross, wertvoll, aber am
wenigsten dringend und am aufwendigsten (viele grosse PDFs). Kommt, wenn die beiden
scharfen Korpora stehen.

**Nicht in der Queue:**
- `/Volumes/daten/05_Architekten_Synobsis` — KB saturiert (853/853, Entscheid Raphael 25.07.2026).
- `/Volumes/daten/04_Buero/01_Buerounterlagen` — Personal/Finanzen. Nur auf ausdrueckliche
  Freigabe, und dann in einen eigenen, zugriffsbeschraenkten KB.

## Regeln fuer die Queue

- Es wird **immer nur ein Korpus gleichzeitig** bearbeitet. Erst wenn dessen P1/P2-Positionen
  erledigt sind (Stand `erledigt`), rueckt der naechste nach.
- Ein Korpus ohne Spec unter `specs/<id>-spec.md` wird nicht destilliert — der erste Lauf
  schreibt die Spec und endet.
- Aenderungen an dieser Reihenfolge sind ein Entscheid Raphaels, kein Loop-Entscheid.
  Der Loop darf einen Korpus als `erledigt` markieren, aber keinen neuen erfinden.
