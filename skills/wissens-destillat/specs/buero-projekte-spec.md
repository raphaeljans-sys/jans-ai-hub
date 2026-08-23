---
title: Korpus-Spec `buero-projekte`
status: established
last_updated: 2026-08-16
sources: [wissen/projekt-lessons/CLAUDE.md, skills/wissens-destillat/KORPUS-QUEUE.md, skills/wissens-destillat/tools/korpus.conf, Stichprobe /Volumes/daten/04_Buero/02_Projekte (22 Projektordner + 00_Allgemein), wissen/projekt-lessons/wiki/kispi-fehlende-auftragsbestaetigung-mahnkaskade-re00087.md (Goldstandard)]
links: [[wissens-bibliothekar]], [[wissens-ruecklauf]], [[bkp-2017-referenz]]
---

# Korpus-Spec `buero-projekte`

Erstellt: 2026-08-16 · Methode: Skill `spec` (Karpathy/Marchese), angewendet gemäss
Skill `wissens-destillat` Abschnitt «Die Spec-Stufe» · Faktenbasis: `wissen/projekt-lessons/CLAUDE.md`
(bestehende KB, Schreibregeln bereits vollständig formuliert und hier übernommen statt dupliziert)
+ `KORPUS-QUEUE.md` + Stichprobe des Quellordners.

Unbeaufsichtigter Nachtschicht-Lauf (Mac Mini, 16.08.2026, 05:31-Fenster) — keine
`AskUserQuestion`-Rückfrage möglich. Korpus 1 (`bauprodukte`) wurde am 15.08.2026 als
`erledigt` markiert (Inventar 214/214, 0 offen, 0 triagiert); `buero-projekte` ist damit
gemäss `KORPUS-QUEUE.md` nachgerückt. Die Schlüsselentscheide unten sind aus der bereits
bestehenden `projekt-lessons`-CLAUDE.md, dem dort verwendeten Goldstandard-Artikel und dem
Entscheid Raphaels vom 31.07.2026 (Pflicht-Zusatzauftrag, s.u.) abgeleitet, nicht neu
erfunden. Wo eine echte offene Wahl bestand, steht sie unten offen oder in
`wiki/QUESTIONS.md`, statt stillschweigend entschieden zu werden.

## Ziel (1 Satz)

Aus den 22 abgeschlossenen/archivierten Büroprojekten in `/Volumes/daten/04_Buero/02_Projekte`
soll JANS Lessons destillieren, die kein Modell aus dem Netz kennt und die ausserhalb dieses
Büros niemand hat: was hat der Bauherr tatsächlich entschieden, wo lag die Kostenwahrheit
gegenüber der Schätzung, welche Behördenauflage kam überraschend, welches Gewerk/System hat
sich in der Praxis bewährt oder nicht — damit Projekt N+1 nicht denselben Fehler ein zweites
Mal macht.

## Abgrenzung (was NICHT dazugehört)

- **Keine reinen Projektdeliverables ohne Lehre.** Pläne (`01_Plaene/PDF|PLN|DXF|Vektor_Works`),
  Bildablage (`11_Bildablage`) und reine Situationspläne sind Arbeitsergebnisse, keine
  Erfahrungsträger — sie werden im Inventar erfasst, aber nur als `[-]` übersprungen, sofern
  keine begleitende Notiz/Legende eine Lehre trägt. Diese Ordnerklassen machen erfahrungsgemäss
  den grössten Dateianteil aus (Stichprobe 1011_Lorrainestr_4: `01_Plaene` mit sieben
  Unterordnern gegenüber je einem Ordner `02_Berichte`/`12_Schriftverkehr`).
- **Die ergiebigen Ordnerklassen** (Reihenfolge nach erwartetem Lesson-Ertrag):
  1. `12_Schriftverkehr` — Korrespondenz mit Bauherrschaft/Behörden/Unternehmern; hier stehen
     Entscheide, Konflikte, Verzögerungsgründe im Wortlaut.
  2. `02_Berichte` — Besprechungsprotokolle, Vermassungs-/Bestandesnotizen.
  3. `04_Kosten` — Offerten, Grobkostenberechnungen, Kostenreferenzen; Lesson liegt im
     Vergleich Schätzung↔Ausführung, sofern beide Stände im selben Projektordner vorliegen.
  4. `13_Recherche`, `15_Referenzen`, `00_Grundlagen/04_Fragebogen` — nur wo eine konkrete,
     projektspezifische Erkenntnis (nicht generisches Nachschlagematerial) enthalten ist.
- **`00_Allgemein` ist kein Projekt**, sondern eine Sammelablage (Stichprobe: einzelne
  Wettbewerbsunterlagen, lose Scans) — wird als eigene, niedrigpriore Position geführt, nicht
  als 23. Projektordner behandelt.
- **`1115_Kostenberechnung`** ist laut Stichprobe kein Projektordner, sondern ein einzelnes
  Dokument (`Grobkostenberechnung.docx`, 2011) in Projektordner-Nummerierung — beim Inventar
  korrekt als Einzeldatei, nicht als Projekt, führen.
- **`180716 Schilder.pln`** (lose Datei auf Wurzelebene, kein Unterordner) ist eine
  CAD-Einzeldatei ohne erkennbaren Projektbezug — im Inventar vermerken, mit hoher
  Wahrscheinlichkeit `[-]` ohne weitere Prüfung, sofern der Dateiname sich nicht einem der
  22 Projekte zuordnen lässt.
- **Keine Personal-/Honorar-/Vertragsinterna ohne Lehre** (reine Honorarnoten, Rechnungskopien
  ohne Kontext) — Kostendisziplin ja, aber nur wo eine übertragbare Erkenntnis dahintersteht,
  nicht als Buchhaltungsarchiv.
- **Kein Duplikat zu laufenden Projekten.** Diese 22 Ordner sind historisch/abgeschlossen
  (älteste Zeitstempel 2010er-Jahre, Stichprobe `1115_Kostenberechnung` 2011,
  `1011_Lorrainestr_4/12_Schriftverkehr` referenziert 2011). Aktuelle, laufende Projekte
  (KISPI, Thalwil, Albertstrasse etc.) speisen `projekt-lessons` bereits direkt aus der
  laufenden Arbeit (Rule `wissens-ruecklauf`) — dieser Korpus ergänzt die **historische**
  Tiefe, verdrängt aber nicht den laufenden Zufluss.
- **Produktbezogene Erkenntnisse ohne Bauleitungs-/Entscheidungskontext** gehören nicht hierher,
  sondern zu `wissen/bauprodukte` (z.B. ein reines Datenblatt ohne Projektlehre) — bei Zweifel:
  liegt die Substanz im *Entscheid/Vorgang*, ist es eine Lesson hier; liegt sie im *Produkt*,
  gehört sie nach `bauprodukte`.

## Artikelschnitt

Wie in `wissen/projekt-lessons/CLAUDE.md` bereits verbindlich festgelegt, **ein Artikel je
Lesson**, nicht je Quelldatei oder je Projekt:

1. **Struktur je Artikel** (unverändert aus der bestehenden KB übernommen): Situation → was
   passiert ist → Ursache → Konsequenz → **Regel/Empfehlung fürs nächste Mal**.
2. Ein Projektordner kann mehrere Lessons tragen (verschiedene Gewerke/Konflikte); mehrere
   Projektordner mit demselben wiederkehrenden Muster (z.B. gleicher Kostentyp-Fehler in zwei
   Projekten) können zu **einer** Lesson mit zwei Belegstellen verdichtet werden — analog zur
   Faustregel in `bauprodukte-spec.md` («lieber wenige gut belegte Artikel als viele dünne»).
3. **Anonymisierung/Zurückhaltung** gemäss KB-Regel: Lessons als übertragbares Prinzip, nicht
   als Anklage; Personennamen nur wo sachlich nötig.
4. Jede Lesson wird nach KB-Konvention getaggt: `fokus` (einer der fünf Fokus-Bereiche aus
   `CLAUDE.md`), `bkp` (oder «—»), `sia_phase`, `skills` (betroffene Hub-Skills).

## Bewertungskriterien (vorab)

Eine erstklassige `buero-projekte`-Lesson:

1. Trägt eine Fundstelle im Frontmatter `sources:` (Pfad im Archiv `/Volumes/daten/04_Buero/02_Projekte/...`,
   wo möglich mit Datum der Quelldatei/-korrespondenz).
2. Beschreibt eine **konkrete, einmalige Situation** mit Datum/Projekt, nicht eine
   verallgemeinerte Behauptung ohne Beleg («Kosten liefen oft aus dem Ruder» ist keine Lesson,
   «beim Projekt X wich die Grobkostenschätzung 2011 um Y % von der Ausführung 2013 ab, weil Z»
   ist eine).
3. Endet zwingend mit einer **operativ anwendbaren Regel** («Regel für nächstes Mal»), keine
   reine Nacherzählung ohne Konsequenz.
4. Ist anonymisiert/zurückhaltend formuliert (KB-Regel), ohne die Lehre zu verwässern.
5. `status: emerging` beim ersten Beleg; `established` erst bei unabhängiger Zweitbelegung
   (zweites Projekt mit demselben Muster, oder Bestätigung durch einen aktuellen Fall) — nie
   vorschnell, analog Rule 260714.
6. Preis-/Kostenangaben tragen den Stand des Quelldokuments (diese Projekte sind teils >10
   Jahre alt — eine damalige Kostenkennzahl ist ein **historischer** Beleg, nie ein aktueller
   Richtwert; Verwechslungsgefahr explizit vermeiden, ggf. Verweis auf `wissen/grobkosten` für
   aktuelle Kennwerte).
7. Wo ein Ordner eine offene, nicht abschliessend klärbare Frage aufwirft (z.B. unklarer
   Projektausgang, fehlender Abschlussbericht), landet das in `wiki/QUESTIONS.md`.

## Goldstandard

`wissen/projekt-lessons/wiki/kispi-fehlende-auftragsbestaetigung-mahnkaskade-re00087.md` —
bereits die KB-eigene Formatvorlage: Situation/Was passiert ist/Ursache/Konsequenz/Regel,
Fundstellen im Frontmatter, `tags.fokus`/`tags.bkp`/`tags.sia_phase`/`tags.skills`, spätere
Updates als datierter Nachtrag am selben Artikel statt neuer Datei. Länge orientiert sich am
Gehalt der Lesson, nicht an einer festen Zielgrösse (dort ~95 Zeilen inkl. Update).

## Verifier

- **BKP-Codes** (falls eine Lesson gewerkspezifisch ist): gegen `references/bkp-2017/BKP-2017-Liste.md`
  (Rule `bkp-2017-referenz`).
- **Norm-Fundstellen** (falls berührt): gegen `wissen/normen/` (Rule `normen-referenz`).
- **Kostenkennwerte**, sofern eine Lesson eine Zahl als heute noch gültigen Richtwert
  weiterreichen will (nicht nur als historischen Beleg): gegen `wissen/grobkosten` abgleichen,
  bei Widerspruch beide Stellen markieren, nach `QUESTIONS.md`.
- **Stufe 3 (Kurator, Opus, gemäss `wissens-destillat` SKILL.md Schritt 4):** prüft in jedem
  Lauf jede nicht-triviale Aussage gegen die im Frontmatter genannte Quelle, bevor der Report
  geschrieben wird — diese Prüfung wird nie übersprungen. Bei dieser KB zusätzlich: prüft, ob
  die Anonymisierungs-/Zurückhaltungsregel eingehalten ist, bevor ein Artikel als fertig gilt.

## Pflicht-Zusatzauftrag (Entscheid Raphael, 31.07.2026 — bindend, aus `KORPUS-QUEUE.md` übernommen)

Zusätzlich zu den Lesson-Artikeln in `projekt-lessons` wird aus diesem Korpus die **Bürohaltung
zu bevorzugten Systemen** abgeleitet — welche Systeme je Gewerk in den 22 Projekten faktisch
wiederkehrend verbaut/verwendet wurden (aus Offerten, Ausführungsplänen, Kostenzusammenstellungen
in `04_Kosten`/`01_Plaene`, sofern dort Produktnennungen mit Wiederholung über mehrere Projekte
auftauchen). Ergebnis als **Entwurf-Artikel** `wissen/bauprodukte/wiki/bevorzugte-systeme-jans.md`,
Status **zwingend `emerging`**, Raphael zur Bestätigung vorlegen — **nie selbst auf `established`
heben**. Hintergrund: Raphael hat die Frage «was baut JANS bevorzugt» bewusst nicht aus dem Kopf
beantwortet, sondern der Ableitung aus den eigenen Projekten den Vorzug gegeben. Bis dieser
Artikel von Raphael bestätigt ist, bleiben alle `bauprodukte`-Destillate herstellerneutral
formuliert (unverändert aus der `bauprodukte`-Spec). Dieser Artikel gehört ins Ziel-KB
`bauprodukte`, nicht in `projekt-lessons` — die Quelle ist dieser Korpus, das Ziel ein
Nachbar-KB (Cross-KB-Output, keine Ausnahme von der Ziel-KB-Zuordnung des Korpus selbst).

## Faktenbasis

- `wissen/projekt-lessons/CLAUDE.md` (bestehende KB, Schreibregeln bereits vollständig
  formuliert und hier übernommen statt dupliziert).
- `skills/wissens-destillat/KORPUS-QUEUE.md` (Priorisierungs-Begründung, Pflicht-Zusatzauftrag).
- `skills/wissens-destillat/tools/korpus.conf` (Wurzel `/Volumes/daten/04_Buero/02_Projekte`,
  Ziel-KB `projekt-lessons`, Extensions `pdf,docx,doc,md,txt`, Standard-Ausschlüsse).
- Stichprobe Wurzelverzeichnis: 22 Projektordner (u.a. `1011_Lorrainestr_4`, `1012_Ardez`,
  `1116_Steinhofstr`, `1319_Kasernenareal`, `1525_Bauhaus Museum Dessau`, `1602_St_Karli_11`)
  plus `00_Allgemein` (Sammelablage) und die zwei Sonderfälle `1115_Kostenberechnung`
  (Einzeldokument, kein Projekt) und `180716 Schilder.pln` (lose CAD-Datei).
- Stichprobe Projektordner-Struktur (`1011_Lorrainestr_4`): Standard-Gliederung
  `00_Grundlagen, 01_Plaene, 02_Berichte, 04_Kosten, 11_Bildablage, 12_Schriftverkehr,
  13_Recherche, 15_Referenzen` — nicht jeder Ordner muss in jedem Projekt vorhanden sein,
  Inventar-Phase 0 stellt das je Projekt fest.
- Gesamtgrösse Quelle: ca. 17 GB über 22 Projektordner (nur lesen, Rule `wissens-bibliothekar`).

## Plan (nächste Läufe)

- [x] **Inventar Phase 0 abgeschlossen (16.08.2026, Nachtschicht 23:30-Fenster):** alle 21
      `find -type d`-Sektionen erfasst (22 Projektordner minus `180716 Schilder.pln`, das als
      lose Datei auf Wurzelebene kein Verzeichnis ist und darum nicht in der Sektionsliste
      auftaucht — separat als `[-]`-Zeile nachgetragen). 812 Zeilen im Inventar: 807 `[ ]` offen,
      5 `[-]` pauschal (die einzigen Projekte mit exakt `01_Plaene`/`11_Bildablage` benannten
      Ordnern: `1011_Lorrainestr_4` \[beide\], `1012_Ardez`/`1303_Steinhof`/`1602_St_Karli_11`
      \[je nur `01_Plaene`, da diese drei kein Verzeichnis exakt `11_Bildablage` führen\]),
      plus 1 `[-]` für den Sonderfall `180716 Schilder.pln`.
      **Befund, der die obige Ordnerklassen-Annahme relativiert:** die Struktur aus der
      Stichprobe (`1011_Lorrainestr_4`) verallgemeinert NICHT — eine Vollsichtung aller 21
      Sektionen zeigt völlig heterogene Ordnernamen quer durch die Projekte (`Fotos`,
      `14_Fotos`, `8_Bilder`, `CAD`, `Skizzen`, `Plaene`, `04_Plaene`, `5_CAD_Projektstände`
      statt `01_Plaene`/`11_Bildablage`). Die pauschale `01_Plaene`/`11_Bildablage`-Ausklammerung
      in `korpus.conf` griff darum nur bei 4 der 21 Projekte — war aber unschädlich: die
      Extensions-Whitelist (`pdf,docx,doc,md,txt`) filtert Bild-/CAD-Ordner unabhängig vom
      Namen bereits selbst heraus (Stichprobe: 0 Treffer für Plaene/Fotos/Bilder/CAD/Skizzen
      im fertigen Inventar ausserhalb der 5 pauschal-Zeilen). Für Phase 1 heisst das: die 807
      offenen Zeilen sind NICHT sauber auf die vier vermuteten Ordnerklassen einschränkbar,
      sondern verteilen sich über projektspezifische Strukturen — die Sektion/Datei-Spalte im
      Inventar bleibt daher die massgebliche Triage-Grundlage, keine pauschale Ordnerklasse.
      Konkrete Beispiele grosser, ungeprüfter Sektionen: `1318_Lorraine_Kueche` (262 Dateien),
      `1527_EH Europe GmbH` (229 Dateien), `1012_Ardez` (82 Dateien), `1011_Lorrainestr_4`
      (71 Dateien) — Reihenfolge nach Dateizahl ist kein Ertragsindikator, Triage Phase 1
      klärt das erst.
- [x] **Triage Phase 1 abgeschlossen (23.08.2026):** alle 706 verbliebenen offenen Zeilen
      klassifiziert (P1/P2/P3/`-`, acht parallele Haiku-Subagenten je Zeilenbereich, sequenziell
      angewendet). Inventar-Endstand: 813 Zeilen, 0 offen, 632 `[-]` uebersprungen, 179 `[t]`
      (62 P1, 91 P2, 26 P3), 2 bereits `[x]` destilliert. Schwerpunkt P1: `1318_Lorraine_Kueche`
      (48/62) mit dichter Kosten-Ist/Soll- und Offertenpruefungs-Kette ueber mehrere Gewerke.
      Bericht: `wissen/projekt-lessons/outputs/2026-08-23_triage-buero-projekte-phase1-vollstaendig.md`,
      Protokoll: `training/buero-projekte-triage-20260823-1546.md`.
- [ ] Erster Destillat-Lauf Phase 2 (Sonnet) auf dem ergiebigsten bereits inventarisierten
      Projekt mit echtem Entscheidungs-/Konfliktgehalt.
- [ ] Parallel dazu, sobald genug Material aus mehreren Projekten vorliegt: Entwurf
      `bevorzugte-systeme-jans.md` gemäss Pflicht-Zusatzauftrag oben anstossen.
- [ ] Kurator-Stufe (Opus, jede Sitzung) je Lauf gemäss SKILL.md Schritt 4.

Diese Spec ist bindend für alle Folgeläufe des Korpus `buero-projekte`, bis ein Entscheid
Raphaels sie ändert (`KORPUS-QUEUE.md`: «Änderungen an dieser Reihenfolge/Spec sind ein
Entscheid Raphaels, kein Loop-Entscheid» — sinngemäss auch für die Spec selbst).
