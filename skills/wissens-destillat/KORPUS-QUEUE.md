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
| 2 | `buero-projekte` | `/Volumes/daten/04_Buero/02_Projekte` (22 Projekte) | `wissen/projekt-lessons` (bestehend) | `specs/buero-projekte-spec.md` (16.08.2026) | **erledigt** 23.08.2026 — Inventar Phase 0 abgeschlossen 16.08.2026, Triage Phase 1 abgeschlossen 23.08.2026, Destillat Phase 2 in vier Läufen (17.-23.08.2026) abgeschlossen: 813 Zeilen, 0 offen, 0 triagiert, 757 `[-]` uebersprungen, 56 `[x]` destilliert — 9 neue/aktualisierte Wiki-Artikel. Kurator-Stufe (Run 4) abgeschlossen 23.08.2026 (fünfte Fortsetzung, unabhängig verifiziert, keine Korrektur nötig). Offen bleibt nur der Pflicht-Zusatzauftrag `bevorzugte-systeme-jans.md` (Cross-KB nach `bauprodukte`) — auch nach vollständigem Korpus-Abschluss keine projektübergreifende System-Wiederholung belegt, bewusst nicht erfunden |
| 3 | `buero-referenzen` | `/Volumes/daten/04_Buero/10_Referenzenbibliothek` | `wissen/architektur-fachwissen` (neu) | `specs/buero-referenzen-spec.md` (29.08.2026) | **P1 vollstaendig, P2 offen.** Inventar Phase 0 abgeschlossen (23 Inventardateien). Spec 29.08.2026 geschrieben (Lane FACHWISSEN). Neun Destillat-Laeufe 29.08.2026 (selber Tag): Sektionsfolge `18_Projektkostenplanung` (9 Artikel, 16 P1) → `10_Modellbauen` (4 Artikel, 12 P1) → `17_Projektbeschriebe` (5 Artikel, 7 P1) → `25_Wettbewerb` (6 Artikel, 5 P1, Anonymisierungspruefung kein Fund) → `20_Rendering` (7 Artikel, 9 P1-Handouts). Danach Registerabgleich `wiki/INDEX.md` gegen `raw/inventar/` (war seit 23.08. veraltet): fuenf weitere Sektionen mit offenen P1 gefunden und destilliert — `12_Masse`, `21_Rhino`, `08_Karten_Plaene_Weltweit`+`08_Karten_Plaene_Zuerich` (gemeinsam), `09_Konstruktion`, `22_Terminplanung`, `26_Zeichendateien_Vorlagen` (11 weitere Artikel). **Alle P1-Positionen ueber saemtliche 23 Sektionen destilliert** (46 Wiki-Artikel total), alle uebrigen Sektionen auf P1=0 verifiziert. P2 bleibt in jeder Sektion offen — Korpus gilt gemaess Queue-Regel (P1 UND P2) daher weiterhin nicht als „erledigt", naechster Schritt ist Korpus 4 |
| 4 | `archiv-fachwissen` | `/Volumes/daten/02_Architektur_Archiv` (23 Themensektionen) | `wissen/architektur-fachwissen` | `specs/archiv-fachwissen-spec.md` (29.08.2026) | **Erster Destillat-Lauf abgeschlossen.** Inventar Phase 0: Stand 23.08.2026 war 4 von 23 Sektionen; tatsaechlich liegen mit Stand 29.08.2026 **20 Inventardateien** vor (die Zwischenzahlen 8'023 Dateien/P1 69/P2 507 waren nur der 23.08-Teilstand und sind veraltet, siehe Spec). Spec 29.08.2026 geschrieben (Lane FACHWISSEN). Sektion `02_Denkmalpflege` (8 P1, kein Duplikatsrisiko) am selben Tag vollstaendig destilliert: sieben Wiki-Artikel (SIA-2017-Erhaltungswert, Charta-von-Venedig-Begriffskette, Trockenmauer-Devisierung SVTSM, Naturstein-Datierung Portmann, Kalk-/Oelanstrich-Rezepturen Glaser, Baudokumentations-Gliederung Haus Jans, Umbau-Kriterienkatalog Hassler). Naechster Lauf: `03_Bauprozesse_I_II` — zwingend zuerst Leutschenbach-Duplikatspruefung gegen Korpus-3-Sektion `18_Projektkostenplanung` |

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
