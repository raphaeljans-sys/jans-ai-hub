# Vertiefungsläufe 2–3 entwurfs-referenzen — Healthcare-Flächen abgeleitet, Schul-Anker geschlossen

**Datum:** 23.08.2026 · **Station:** Revendo · Fortsetzung von
`2026-08-23_vertiefungslauf-parameter-sets.md`.

---

## Lauf 2 — der leere Healthcare-Flächenblock ist gefüllt

Der `flaechen`-Block des Healthcare-Sets enthielt **nur einen Hinweis, warum nichts drinsteht**.
Der führende Artikel `wissen/immobilienbewertung/wiki/realwert-sachwert.md` führt aber den
**JANS-8-Objekt-Referenzvergleich**: acht reale CH-Alters-/Pflegeheime 2011–2025 mit **GF, GV nach
SIA 416 und Bettzahl in derselben Tabelle**. Daraus sind drei Kennwerte **rechnerisch ableitbar**,
ohne zu schätzen:

| Kennwert | Band (reine Heime) | Median |
|---|---|---|
| **GF je Pflegeplatz** | 90–135 m² | 111 m² |
| **GV je Pflegeplatz** | 289–436 m³ | 343 m³ |
| **GV/GF-Faktor** | 3.06–3.48 | **3.2** |

**Die B6-Subtyp-Sperre bleibt unberührt:** der Spital-Korridor 95–100 m²/Bett ist weiterhin **nicht
übernommen**, ein NF/GF-Faktor für Pflegeheime bleibt unbelegt. Gefüllt sind ausschliesslich
Grössen aus einem **pflegeheim-eigenen** Bestand.

**Vier Vorbehalte im Set mitgeschrieben:** Ist-Werte statt Sollwerte · das **Zentrum St. Anna LU
ist ausgeschlossen** (207 m²/PZ, 715 m³/PZ, konsistent mit seinem CHF/PZ-Ausreisser 780'000), beim
**GV/GF-Faktor aber mit 3.45 unauffällig** — der Zentrumscharakter zeigt sich in der Fläche je
Platz, nicht in der Höhe · **zwei quellenintern inkonsistente Zeilen** (Averecura, Vella, D10),
beim Nachrechnen bestätigt (BKP 2/GV ergibt 1'285 statt 1'420 bzw. 1'021 statt 845, die übrigen
**sechs reproduzieren exakt**); **ohne sie bleiben GF/PZ-Band und GV/GF-Faktor unverändert** — der
Kernwert ist gegen den bekannten Quellenfehler **robust** · der GV/GF-Faktor ist eine **mittlere
rechnerische Höhe** inkl. Unter- und Dachgeschossanteilen, **nicht** die konstruktive Geschosshöhe.

**Fortschritt gegenüber dem eigenen Befund vom selben Tag.** Lauf 1 hielt fest, die
Geometriefelder liessen sich «aus den Wettbewerbs-Quellen nicht seriös füllen». Das stimmt — hier
kommt die Quelle aus einer anderen Richtung: aus dem **eigenen JANS-Referenzblatt**. Der
**GV/GF-Faktor ist die gesuchte Brücke zu `volumen_generator.py`**, denn er ist die Grösse, mit der
aus einer Geschossfläche ein Volumen wird. Bewusst **nicht** als `gebaeude.geschosshoehe_m`
eingetragen, sondern als neues Feld **`flaechen.gv_gf_faktor`** — sie gleichzusetzen wäre genau der
stille Fehler, den diese KB vermeiden soll.

**Die Entscheidfrage verschiebt sich damit:** nicht mehr «lässt sich Geometrie überhaupt belegen»,
sondern **ob `volumen_generator.py` einen GV/GF-Faktor entgegennehmen soll statt einer
Geschosshöhe**. Schnittstellenfrage an Raphael, keine Recherche.

**Auch gefüllt:** die Healthcare-Kostenbänder sind maschinenlesbar statt nur in Prosa —
`chf_m3_gv_band` [826, 1420], **`chf_m3_gv_band_reproduzierbar` [826, 1285]** (neu deklariertes
Feld), `chf_m3_gv_median` 1100, `chf_je_einheit` Pflegeplatz 272'780–530'000 CHF, `bkp_scope`.
**Welcher Band gilt, ist Entscheid D10 bei Raphael** — nicht vorweggenommen, sondern **beides
sichtbar gemacht**.

## Lauf 3 — Selbstkorrektur: der Schul-Teuerungsanker war beschaffbar

Lauf 1 hatte den Anker offen gelassen mit der Begründung, es liege «keine bis 2021 zurückreichende
verkettete Reihe» des BFS-Baupreisindex vor. **Das war falsch** — die Reihe liegt als
**Publikationstabelle im BFS-Datenkatalog** (XLSX über opendata.swiss, Datenstand 21.08.2026,
Basis Oktober 2020 = 100, Halbjahresschritte ab 1998, je Grossregion und Objekttyp), nicht in der
PX-Web-Schnittstelle, wo zuerst gesucht wurde.

**Anker:** Grossregion **Ostschweiz** (Kantonsschule Wattwil liegt im Kanton St. Gallen),
Bauwerksart **«Neubau»**: 01.04.2021 = 101.6 → 01.04.2026 = 118.2, Faktor **1.1634 (+16.3 %)**;
Bandbreite über die Nachbar-Bauwerksarten Hochbau 1.1509 bis Neubau MFH 1.1668.

**Indexiert:** 4'250 → rund **4'940 CHF/m² GF** auf 01.04.2026 (Band 4'890–4'960), im Block
`indexiert` als **gekennzeichnete Ableitung**. Der **Rohwert 4'250 bleibt unverändert** auf
Preisstand 2021, und er bleibt ein **abgeleiteter Einzelwert aus einem Kostenziel** — die
Indexierung macht ihn **aktueller, nicht belastbarer**.

---

## Methodenlehre aus diesen Läufen

Zweimal am selben Tag ist ein «nicht beschaffbar» widerlegt worden — hier der Teuerungsanker, in
`wissen/grobkosten` die verkettete Reihe für den Holzbau-Zuschlag. Beide Male lag die Ursache
**nicht in der Datenlage, sondern im Zugriffsweg**. **Regel:** ein Negativbefund über eine amtliche
Reihe gilt erst, wenn **opendata.swiss und der Publikationskatalog** der Stelle geprüft sind.

## Offen und an Raphael

- **Schnittstelle:** soll `volumen_generator.py` einen **GV/GF-Faktor** entgegennehmen statt einer
  Geschosshöhe? Damit stünde die Brücke.
- **D10** (welcher Healthcare-Band gilt: 826–1'420 oder der reproduzierbare 826–1'285).
- Für **Schule und Wohnen** fehlt ein Referenzblatt mit GF und GV derselben Objekte — dort bleibt
  die Geometrie-Lücke.

## Geänderte Dateien

`parameter-schema/entwurfs-parameter.schema.json` (vier weitere Felddeklarationen, semantisch als
rein additiv verifiziert) · `wiki/parameter-sets/healthcare-neubau-zh.json` ·
`wiki/parameter-sets/schule-volksschule-ch.json` · `wiki/QUESTIONS.md` · `CHANGELOG.md`.
Alle drei Sets nach jedem Schritt `validate.py --all`: **OK**.
