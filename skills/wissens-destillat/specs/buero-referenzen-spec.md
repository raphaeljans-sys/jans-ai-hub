---
title: Korpus-Spec `buero-referenzen`
status: established
last_updated: 2026-08-29
sources: [wissen/architektur-fachwissen/CLAUDE.md, skills/wissens-destillat/KORPUS-QUEUE.md, skills/wissens-destillat/tools/korpus.conf, wissen/architektur-fachwissen/wiki/INDEX.md, wissen/normen/wiki/en-520-gipsplattentypen.md (Goldstandard), specs/bauprodukte-spec.md, specs/buero-projekte-spec.md, Stichprobe raw/inventar/buero-referenzen__18_Projektkostenplanung.md + __09_Konstruktion.md + __27_KV_Deffisierung.md]
links: [[wissens-bibliothekar]], [[bkp-2017-referenz]], [[normen-referenz]], [[auto-verbesserungen]]
---

# Korpus-Spec `buero-referenzen`

Erstellt: 2026-08-29 · Methode: Skill `spec` (Karpathy/Marchese), angewendet gemäss Skill
`wissens-destillat` Abschnitt «Die Spec-Stufe» · Faktenbasis: `wissen/architektur-fachwissen/CLAUDE.md`
(bestehende KB, Triage-Stufen und Grenzen bereits vollständig formuliert und hier übernommen
statt dupliziert) + `KORPUS-QUEUE.md` + Stichprobe der Inventardateien.

Lane FACHWISSEN, Auftrag Raphael 29.08.2026 (Wochenkontingent vor dem Montags-Reset). Korpus 3
`buero-referenzen` hat Phase 0 (Inventar) abgeschlossen — 23 Inventardateien unter
`raw/inventar/buero-referenzen__*.md` — aber noch keine Spec. Gemäss Queue-Regel («ein Korpus
ohne Spec wird nicht destilliert — der erste Lauf schreibt die Spec») schreibt dieser Lauf
ausschliesslich diese Spec und endet danach ohne Destillat. Wo eine echte offene Wahl bestand,
steht sie unten offen oder in `wiki/QUESTIONS.md`, statt stillschweigend entschieden zu werden.

## Ziel (1 Satz)

Aus der Büro-Referenzenbibliothek (`/Volumes/daten/04_Buero/10_Referenzenbibliothek`) soll JANS
in einem Jahr ohne erneutes Wühlen im Archiv belegte Kennwerte, Konstruktionsdetails, Verfahren
und Praxisregeln abrufen können — Kostenermittlungskennwerte realer Bauten, Detailanschlüsse
Dritter, Modellbau-Rezepturen, Wettbewerbs- und Honorarmechanik —, die im Büro bereits vorhanden
sind, aber in Ordnerstrukturen unauffindbar liegen, statt bei jedem neuen Projekt neu recherchiert
oder aus dem Gedächtnis geraten zu werden.

## Abgrenzung (was NICHT dazugehört)

- **Keine Dokumentkopie, kein reines Ablage-Duplikat.** Ein Fremdplan oder Kostenbericht speist
  einen Artikel, wird aber nie selbst zum Artikel (Kennwert/Regel statt Kopie, wie in `CLAUDE.md`
  bereits für Projektdaten Dritter festgelegt — hier auf den ganzen Korpus ausgeweitet).
- **Sperrliste** (siehe eigener Abschnitt unten) — bindend, nicht verhandelbar in dieser Spec.
- **Studien-/Diplomarbeiten Dritter** (z.B. das Konvolut in `09_Konstruktion/Mek_Beschreibung`)
  sind kein eigenständiger Artikelstoff. Nur wenn sie ein konkretes, verifizierbares Fachdetail
  tragen (Tragstruktur-Sanierung, Konstruktionsaufbau), wird dieses Detail in einen Fachartikel
  destilliert — die Studienarbeit selbst wird nicht nacherzählt oder als Ganzes verlinkt.
- **Software-/Tool-Tutorials ohne Architekturbezug** (z.B. `21_Rhino`, Mc­Neel-Lernpaket) speisen
  höchstens den schmalen büroverwertbaren Kern (Planausgabe-Kette, Exportfallen), nie eine
  vollständige Werkzeug-Dokumentation.
- **Kein Hersteller-Marketing, keine Preisangabe ohne Datumsstempel** (wie `bauprodukte-spec`).
- **Keine Norm-Volltexte im Wortlaut** — nur Fundstelle + Kernaussage (Rule `normen-referenz`).
- **BKP-Codes nie aus veralteten Scans übernehmen.** `18_Projektkostenplanung` enthält z.B. zwei
  BKP-Grundlagenscans der Ausgaben 1989 und 97 — für JANS gilt ausschliesslich BKP 2017 (Rule
  `bkp-2017-referenz`); diese Scans dienen nur als historischer Beleg, nie als Codequelle.
- **SIA-Koeffizienten sind zeitgebunden.** Honorartabellen in dieser Sektion rechnen nach SIA 102
  Ausgabe 2003 mit Tarifwerten 2005/2010. Die Rechenlogik ist übertragbar, die Zahlenwerte
  (Z1/Z2, Stundenansätze) sind es nicht — jeder übernommene Koeffizient trägt sein Ausgabejahr.

## Artikelschnitt (Ziel-Artikel-Typen)

Ein Artikel je **Sache**, nicht je Quelldatei (wie in beiden bestehenden Specs):

1. **Kennwert-/Kostenermittlungs-Artikel** — je Kennwerttyp oder Projektbeispiel (z.B. Kosten­
   kennzahlenvergleich mehrerer Schulanlagen, Genauigkeitsbänder je Projektphase). Höchstes
   Risiko und höchster Ertrag zugleich: siehe Anonymisierungsregel im Artikelschema unten.
2. **Konstruktionsdetail-Artikel** — je Bauteil/Anschluss (Flachdachrand, Attika, Dachaustritt),
   analog zum Produktgattungs-Artikel in `bauprodukte-spec`, aber Quelle sind Drittpläne und
   Herstellerdatenblätter statt reine Produktdatenblätter.
3. **Verfahrens-/Rezeptur-Artikel** — z.B. Betonmodellbau-Mischungsverhältnisse und Fehlerkatalog
   (`10_Modellbauen`), Rendering-Workflow, Terminplanungs-Methodik.
4. **Wettbewerbs-/Ausschreibungsmechanik-Artikel** — Programmaufbau, Raumprogramm-Logik nach
   SIA 416, Zeittarif-Mechanik aus realen Wettbewerbsdossiers (`25_Wettbewerb`).
5. **Honorar-/Prozess-Artikel** — SIA-102-Rechenwerke, Ermittlung der honorarberechtigten
   Bausumme (Bezug Skill `honorarberechnung-sia102`), Koeffizienten immer mit Ausgabejahr.

Faustregel Artikelgrösse: wie in `bauprodukte-spec` lieber mehrere knappe, gut belegte Artikel
als ein Sammelartikel ohne klaren Suchbegriff.

## Prioritätslogik P1/P2/P3

Übernommen aus `CLAUDE.md` (nicht dupliziert): `P1` unmittelbar büroverwertbar → wird in diesem
Korpus zuerst destilliert; `P2` nützlich, später; `P3` Archivwert, nicht destilliert (höchstens
als Praxisfall-Beleg innerhalb eines P1-Artikels referenziert); `X` verworfen. Reihenfolge
innerhalb P1: nach Ertrag, wie in `wiki/INDEX.md` Abschnitt «Sektionen nach Ertrag» bereits
vorsortiert (`18_Projektkostenplanung`, `10_Modellbauen`, `17_Projektbeschriebe`, `25_Wettbewerb`,
`20_Rendering` vor dünneren Sektionen) — dieses Register vor jedem Lauf erneut prüfen, da es sich
mit jedem abgeschlossenen Lauf verschiebt.

## Artikelschema

Frontmatter analog Goldstandard: `title`, `status` (`emerging`/`speculative` beim ersten Beleg),
`last_updated`, `sources:` (Pfad im Archiv + Datei, wo möglich Seite/Abschnitt), `links:`.
Struktur: Kontext (1–2 Sätze, was/woher) → Kennwert/Verfahren/Regel (Kern) → Praxisregel/Anwendung
→ Offene Punkte, falls vorhanden.

**Zusatzregel für Kostenermittlungs- und Wettbewerbs-Artikel (sensibelster Cluster,
`18_Projektkostenplanung`, `25_Wettbewerb`):** Unternehmer-/Bieter-Firmennamen und die direkte
Zuordnung Gegenpartei↔Betrag erscheinen **nie im Artikeltext**, nur als Prinzip («die
Unternehmerofferte lag X % über dem Kostenvoranschlag», nicht «Firma Y offerierte CHF Z»). Die
Fundstelle im Frontmatter darf auf das Quelldokument verweisen, ohne den Fliesstext damit zu
belasten. Bauherrschaft/Architekt des Referenzprojekts dürfen genannt werden, wenn es sich um ein
abgeschlossenes, öffentlich ausgeschriebenes Bauvorhaben handelt (öffentliche Submission, bereits
publizierte Fakten); bei Zweifel zurückhaltend formulieren, analog der Anonymisierungsregel in
`buero-projekte-spec`. Diese Regel konkretisiert die bereits in `CLAUDE.md` gesetzte Grenze
(«Kennwert mit Quellenverweis, nicht Dokumentkopie») für den Artikeltext selbst.

## Erledigt-Markierung / Fortschritt in der Inventardatei

Die Inventardateien dieses Korpus sind Tabellen (`Datei/Gruppe | Stufe | Begründung`), keine
Checkliste wie bei `buero-projekte`. Eine bereits geschriebene Tabellenzeile wird **nicht**
in-place verändert — das wäre kein reiner Append und würde die Prüfpflicht «append-only-Datei
zeigt `-0` in `git diff --numstat`» verletzen. Stattdessen hängt jeder Destillat-Lauf am Ende der
bearbeiteten Inventardatei einen Abschnitt an (neu anlegen, falls nicht vorhanden, sonst mit
neuem Datumseintrag ergänzen):

```
## Destillat-Fortschritt

- 2026-08-29: `<Datei/Gruppe aus der Triage-Tabelle>` → `wiki/<artikel-slug>.md`
```

Reine Ergänzung am Dateiende, damit `git diff --numstat` nach dem Schreiben `-0` zeigt. Der
nächste Lauf gleicht die offenen P1-Zeilen der Triage-Tabelle gegen diesen Abschnitt ab, bevor er
eine Position erneut aufgreift.

## Bewertungskriterien (vorab)

Ein erstklassiger `buero-referenzen`-Artikel:

1. Trägt jede nicht-triviale Aussage mit Fundstelle (Pfad im Archiv + Datei, wo möglich
   Seite/Abschnitt) im Frontmatter `sources:`.
2. Trägt jede Kosten-/Kennwertangabe mit dem Datumsstempel des Quelldokuments; jedes übernommene
   SIA-Ausgabejahr wird genannt (z.B. «SIA 102:2003») und nie stillschweigend als aktuell gültig
   hingestellt.
3. Verifiziert BKP-Codes gegen `references/bkp-2017/BKP-2017-Liste.md`; die beiden veralteten
   BKP-Scans (Ausgaben 1989/97) in `18_Projektkostenplanung` dienen nie als Codequelle.
4. Nennt keine Unternehmer-/Bieter-Firmennamen und keine Gegenpartei-Betrag-Zuordnung im
   Artikeltext (Artikelschema oben).
5. Startet `status: emerging`; `established` erst bei unabhängiger Zweitbelegung (Rule 260714).
6. Landet mit einer offenen, nicht abschliessend klärbaren Frage in `wiki/QUESTIONS.md`, statt
   die Lücke stillschweigend zu lassen.
7. Destilliert Studienarbeiten Dritter nie als eigenständigen Artikel, nur als Beleg-Fundstelle
   innerhalb eines Fachartikels, wenn ein konkretes Fachdetail dahintersteht.

## Goldstandard

`wissen/normen/wiki/en-520-gipsplattentypen.md` — wie in `bauprodukte-spec`, gilt als
Formatvorlage für Kennwert- und Konstruktionsdetail-Artikel dieses Korpus: kompakte Aussage,
Fundstelle mit Beschaffungsstand, «Praxisregeln»-Abschnitt, offene Punkte ehrlich benannt statt
verschwiegen. Für Verfahrens-/Rezeptur-Artikel (z.B. Modellbau) gilt dieselbe Formvorlage
sinngemäss, mit «Verfahren» statt «Klassifizierung» als Kernabschnitt. Diese KB hat noch keinen
eigenen Artikel, der als Goldstandard dienen könnte — der erste gut gelungene Artikel dieses
Korpus wird künftigen Läufen als Vorbild dienen und kann diese Spec dann ergänzen.

## Verifier

- **BKP-Codes:** gegen `references/bkp-2017/BKP-2017-Liste.md` (Rule `bkp-2017-referenz`).
- **Norm-/SIA-Fundstellen:** gegen `wissen/normen/` (Rule `normen-referenz`); Ausgabejahr-
  Diskrepanz (z.B. SIA 102:2003 vs. aktuelle Ausgabe) markieren, nicht stillschweigend gleichsetzen.
- **Kostenkennwerte**, sofern eine Lesson sie als heute noch gültigen Richtwert weiterreichen will
  (nicht nur als historischen Beleg): gegen `wissen/grobkosten` abgleichen, bei Widerspruch beide
  Stellen markieren, nach `QUESTIONS.md`.
- **Anonymisierungs-/Zurückhaltungsregel** (Unternehmer-Namen, Gegenpartei-Beträge): die
  Kurator-Stufe (Opus) prüft jeden Artikel aus `18_Projektkostenplanung`/`25_Wettbewerb`
  ausdrücklich gegen diese Regel, bevor er als fertig gilt — analog zur Anonymisierungsprüfung
  in `buero-projekte-spec`.
- **Stufe 3 (Kurator, Opus, gemäss `wissens-destillat` SKILL.md Schritt 4):** prüft in jedem Lauf
  jede nicht-triviale Aussage gegen die im Frontmatter genannte Quelle, bevor der Report
  geschrieben wird — diese Prüfung wird nie übersprungen.

## Sperrliste (bindend, aus `CLAUDE.md` übernommen, hier referenziert statt dupliziert)

Nie erfassen, nicht einmal als Inventar: Verträge, Bewerbungen und Personaldossiers, Adress- und
Kontaktsammlungen, Lohn- und Honorardaten, Gesundheits- und Privatunterlagen. Namentlich
dauerhaft ausgeschlossen: `23_Vertraege`, `16_Portfolios`, `01_Adressen` (Begründung und
Fallchronik: Rule `auto-verbesserungen`, Eintrag 260823). Ein Inventar ist keine Entschärfung —
es nennt Namen und Beträge und ist selbst die Weitergabe. Fällt eine solche Position im
vorhandenen Inventar auf, wird sie nicht eigenmächtig entfernt, sondern im Lauf-Report gemeldet.

## Faktenbasis

- `wissen/architektur-fachwissen/CLAUDE.md` (Grenzen, Triage-Stufen, Schreibregeln — hier
  übernommen statt dupliziert).
- `skills/wissens-destillat/KORPUS-QUEUE.md` (Prioritäts-Begründung Korpus 3).
- `skills/wissens-destillat/tools/korpus.conf` (Wurzel
  `/Volumes/daten/04_Buero/10_Referenzenbibliothek`, Ziel-KB `architektur-fachwissen`,
  Extensions `pdf,docx,md,txt`).
- `wissen/architektur-fachwissen/wiki/INDEX.md` (Kennzahlen-Register, Sektionen nach Ertrag —
  Stand beim Schreiben dieser Spec teilweise überholt, da Phase 0 seither weitergelaufen ist;
  vor jedem Lauf neu prüfen).
- 23 Inventardateien unter `raw/inventar/buero-referenzen__*.md` (Phase 0, Stand 29.08.2026).
- Stichprobe gelesen: `__18_Projektkostenplanung.md` (vollständiger Kostenermittlungskreislauf
  einer realen Schulanlage — sensibelster und ertragreichster Fund des Korpus),
  `__09_Konstruktion.md` (Konstruktionsdetail-Fundus neben einem thematisch fremden
  Diplomarbeits-Konvolut), `__27_KV_Deffisierung.md` (Ein-Datei-Sektion, keine P1-Substanz).

## Plan (nächste Läufe)

- [x] Erster Destillat-Lauf Phase 2 (Sonnet) auf `18_Projektkostenplanung` (P1-Cluster
      Kostenermittlungskreislauf) — Artikelschema- und Anonymisierungsregel oben zuerst auf
      diesen Cluster anwenden, da höchstes Risiko und höchster Ertrag zugleich.
      **29.08.2026 vollständig erledigt: alle 16 P1-Positionen, neun Artikel** (siehe
      CHANGELOG). Nächster Lauf geht direkt zu `10_Modellbauen` über.
- [x] `10_Modellbauen` (P1-Cluster Betonmodellbau-Rezepturen Kerez-Umfeld plus
      Werkstoffliste). **29.08.2026 vollständig erledigt: alle 12 P1-Positionen (6
      Fundstellen-Gruppen), vier Artikel** (siehe CHANGELOG). Nächster Lauf geht zu
      `17_Projektbeschriebe` über.
- [ ] Danach `17_Projektbeschriebe`, `25_Wettbewerb`, `20_Rendering`
      (Reihenfolge nach `wiki/INDEX.md` «Sektionen nach Ertrag», vor jedem Lauf neu geprüft).
- [ ] Kurator-Stufe (Opus) je Lauf gemäss SKILL.md Schritt 4, mit Zusatzprüfung Anonymisierung
      für Artikel aus `18_Projektkostenplanung`/`25_Wettbewerb`.
- [ ] Sobald alle P1-Positionen des Korpus `buero-referenzen` destilliert oder begründet
      übersprungen sind: Korpus in `KORPUS-QUEUE.md` auf `erledigt` setzen, dann P2 desselben
      Korpus, dann Korpus 4 `archiv-fachwissen` (eigene Spec nötig, gleiches Schema).

Diese Spec ist bindend für alle Folgeläufe des Korpus `buero-referenzen`, bis ein Entscheid
Raphaels sie ändert (`KORPUS-QUEUE.md`: «Änderungen an dieser Reihenfolge/Spec sind ein Entscheid
Raphaels, kein Loop-Entscheid» — sinngemäss auch für die Spec selbst).
