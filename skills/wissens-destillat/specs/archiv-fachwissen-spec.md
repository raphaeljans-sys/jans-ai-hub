---
title: Korpus-Spec `archiv-fachwissen`
status: established
last_updated: 2026-08-29
sources: [wissen/architektur-fachwissen/CLAUDE.md, skills/wissens-destillat/KORPUS-QUEUE.md, skills/wissens-destillat/tools/korpus.conf, wissen/architektur-fachwissen/wiki/INDEX.md, specs/buero-referenzen-spec.md (Vorbild), specs/bauprodukte-spec.md, specs/buero-projekte-spec.md, Stichprobe raw/inventar/archiv-fachwissen__03_Bauprozesse_I_II.md + __02_Denkmalpflege.md + __02_Bibliothek.md]
links: [[wissens-bibliothekar]], [[bkp-2017-referenz]], [[normen-referenz]], [[auto-verbesserungen]], [[buero-referenzen-spec]]
---

# Korpus-Spec `archiv-fachwissen`

Erstellt: 2026-08-29 · Methode: Skill `spec` (Karpathy/Marchese), angewendet gemäss Skill
`wissens-destillat` Abschnitt «Die Spec-Stufe». Lane FACHWISSEN, Auftrag Raphael 29.08.2026.
Korpus `buero-referenzen` (Korpus 3) hat in diesem Lauf alle P1-Positionen über sämtliche
inventarisierten Sektionen destilliert; gemäss Auftrag geht der Lauf danach zu Korpus 4
`archiv-fachwissen` über. Phase 0 (Inventar) ist für **20 der 23 geplanten Sektionen**
abgeschlossen (Stand 29.08.2026 — `KORPUS-QUEUE.md` trägt hier noch den veralteten Stand
23.08.2026 «4 von 23»; dieser Lauf korrigiert die Zahl unten). Gemäss Queue-Regel («ein Korpus
ohne Spec wird nicht destilliert — der erste Lauf schreibt die Spec») schreibt dieser Lauf
ausschliesslich diese Spec und endet danach ohne Destillat.

## Ziel (1 Satz)

Aus dem Architektur-Archiv (`/Volumes/daten/02_Architektur_Archiv`) — im Kern das private
ETH-Studien-, Lehr- und Assistenzarchiv von Raphael Jans (Bauprozesse/Gesamtleitung, Bauforschung/
Denkmalpflege, Architekturgeschichte/-theorie, Seminarreisen) — soll JANS die dort brachliegenden,
sofort einsetzbaren Fachbausteine (Denkmalpflege-Regeln, Kostenermittlungs- und
Normanwendungsmethodik, Begriffsapparate für Erläuterungsberichte und Jurytexte) als belegte
Wiki-Artikel abrufen können, statt sie bei Bedarf neu zu suchen oder aus dem Gedächtnis zu
rekonstruieren — ohne die riesige, grösstenteils unfachliche Studien- und Bibliotheksverwaltung
(6'947 Dateien allein in `02_Bibliothek`) mitzuschleppen.

## Abgrenzung (was NICHT dazugehört)

- **Norm-Originale werden nie kopiert oder dupliziert.** Der Korpus enthält vollständige
  SIA-/VKF-/VSS-Original-PDFs (u. a. SIA 112:2001, SIA 102:2003, SIA 416:2003, SIA 142:2009,
  SIA 500:2009, VKF-Brandschutzvorschriften 2015, SN 640 291a). Norm-Ziffern und -Aussagen laufen
  ausschliesslich über Skill `normen` und KB `wissen/normen` (Rule `normen-referenz`); ein Artikel
  dieser KB darf höchstens **methodisch** auf eine Norm Bezug nehmen (z. B. wie ein
  Kostengenauigkeitsband nach SIA 102 angewendet wird), nie die Norm selbst destillieren oder
  Ziffern zitieren, ohne gegen `wissen/normen` verifiziert zu sein.
- **Keine Doppeldestillation des Objekts Leutschenbach.** Die Schulanlage Leutschenbach taucht in
  mehreren Sektionen dieses Korpus erneut auf (namentlich `03_Bauprozesse_I_II/03_Kostenplanung`),
  nachdem sie in Korpus 3 (`buero-referenzen/18_Projektkostenplanung`, neun Artikel) bereits
  ausführlich destilliert wurde. Vor jedem neuen Leutschenbach-Artikel ist `wiki/INDEX.md`
  Abschnitt «Artikelbestand» zu prüfen: nur **neue** Fakten (Kennwerte, Verfahrensschritte,
  Dokumente), die dort noch nicht stehen, werden destilliert; bereits Bestehendes wird verlinkt,
  nicht wiederholt.
- **Bibliotheksverwaltung ist kein Fachwissen.** `02_Bibliothek` (6'947 Dateien) ist überwiegend
  Wunschlisten, Bucheinband-Fotos, Verlagsprospekte und Reisefotos einer privaten
  Literaturverwaltung — daraus wird nichts destilliert. Ausnahme: die drei benannten Nester mit
  echtem Fachgehalt (Neufert-Scan-Fundstelle, INSA-Inventar-Fundstelle, Grundrisskompendium
  Wohnhochhaus HS14) — dort gilt Punkt «Urheberrecht» unten.
- **Seminarreader (`11_Seminarreader`, 287 Reader-PDFs) sind Präzedenzmaterial für Entwurf, keine
  Konstruktions- oder Kostenquelle.** Sie werden nicht in dieser KB destilliert, sondern höchstens
  als Fundstellen-Verweis genannt, falls ein anderer KB (`wettbewerbs-dna`, `entwurfs-referenzen`)
  sie thematisch beansprucht — Abgrenzung analog zur Regel in `wiki/INDEX.md` Querbefund.
- **Studienarbeiten und Prüfungs-Zusammenfassungen Dritter (auch von Raphael Jans selbst aus der
  Studienzeit) sind kein eigenständiger Artikelstoff.** Wie in `buero-referenzen-spec.md`: nur ein
  konkretes, verifizierbares Fachdetail (eine Definition, ein Begriffspaar, ein Verfahren) wird in
  einen Fachartikel destilliert, die Arbeit selbst wird nicht nacherzählt. Namen studentischer
  Verfasser (z. B. Zusammenfassungs-Autoren in `02_Denkmalpflege`) erscheinen höchstens als
  Fundstellenbeleg im Frontmatter `sources:`, nie im Artikeltext selbst.
- **Vorsicht bei den Sektionen `04_Politik`, `05_Kultur_Gesellschaft_Stil`, `06_Reisen`,
  `07_Religion`.** Diese vier Sektionen (noch nicht im Detail inventarisiert bzw. mit
  reisejournalartigem Charakter) sind potenziell näher an privaten Studien-/Reiseaufzeichnungen als
  an Fachwissen. Vor der Destillation jeder dieser Sektionen prüft die Kurator-Stufe ausdrücklich,
  ob Inhalte eher Privatunterlagen (Rule `auto-verbesserungen` 260823) als Fachwissen sind; im
  Zweifel nicht destillieren, sondern in `wiki/QUESTIONS.md` vorlegen.
- **Kein Hersteller-Marketing, keine Preisangabe ohne Datumsstempel** (wie `bauprodukte-spec`,
  `buero-referenzen-spec`).
- **BKP-Codes nie aus veralteten Scans übernehmen**, IMMER gegen `references/bkp-2017/BKP-2017-Liste.md`
  prüfen (Rule `bkp-2017-referenz`). Der Korpus enthält u. a. das eBKP-H 2012 (SN 506 511).

## Artikelschnitt (Ziel-Artikel-Typen)

Ein Artikel je **Sache**, nicht je Quelldatei oder Vorlesung:

1. **Denkmalpflege-Fachartikel** — je Regel/Verfahren (Erhaltungswert-Kriterien nach SIA 2017,
   Trockenmauer-Devisierung nach SVTSM, Naturstein-Merkblatt BABS, Kalk-/Fassungsrezepturen
   Glaser). Höchster unmittelbarer Ertrag der Sektion `02_Denkmalpflege`.
2. **Kostenermittlungs-/Normanwendungs-Methodik-Artikel** — nur **neue** Verfahrensbausteine, die
   in Korpus 3 noch nicht destilliert sind (z. B. das eBKP-H-2012-Musterbeispiel «Haus im Forst»
   auf drei Genauigkeitsstufen). Siehe Abgrenzung oben.
3. **Entwurfs-/Städtebau-Begriffsapparat-Artikel** — analog zu den bereits destillierten
   Architektur-III-Handouts in Korpus 3 (Sektionen `01_Entwerfen`, `01_Staedtebau`,
   `02_Architekturtheorie`, `02_Architekturgeschichte`), sinngemäss mit Fundstelle, nie im
   Wortlaut.
4. **Tragwerks-/Konstruktions-Fachartikel** — aus `01_Tragwerk`, `01_Konstruktion`, sofern
   konkrete, übertragbare Verfahren oder Kennwerte vorliegen (keine reine Vorlesungsmitschrift).
5. **Referenz-/Fundstellen-Artikel** (Ausnahmefall) — für die drei benannten Bibliothek-Nester
   (Neufert, INSA, Grundrisskompendium Wohnhochhaus), als Verweis mit Fundort und Lizenzlage, nie
   als Kopie des Inhalts.

Faustregel Artikelgrösse: wie in den bestehenden Specs lieber mehrere knappe, gut belegte Artikel
als ein Sammelartikel.

## Prioritätslogik P1/P2/P3

Übernommen aus `CLAUDE.md` (nicht dupliziert): `P1` unmittelbar büroverwertbar → wird zuerst
destilliert; `P2` nützlich, später; `P3` Archivwert, nicht destilliert; `X` verworfen. Reihenfolge
innerhalb P1: nach Ertrag. Stand der Stichprobe (29.08.2026): `03_Bauprozesse_I_II` (58 P1 von
524, grösster Einzelfund, aber mit Duplikatsrisiko zu Korpus 3 — siehe Abgrenzung),
`02_Denkmalpflege` (8 P1 von 156, vier sofort einsetzbare Bausteine ohne Duplikatsrisiko — **guter
Startpunkt für den ersten Destillat-Lauf**), übrige 18 Sektionen vor dem nächsten Lauf gegen
`wiki/INDEX.md` «Sektionen nach Ertrag» zu prüfen (dieses Register ist mit Stand 23.08.2026 nur für
vier archiv-fachwissen-Sektionen geführt und vor jedem Lauf zu aktualisieren, siehe Faktenbasis).

## Artikelschema

Identisch mit `buero-referenzen-spec.md`: Frontmatter `title`, `status` (`emerging`/`speculative`
beim ersten Beleg), `last_updated`, `sources:` (Pfad im Archiv + Datei, wo möglich Seite/Abschnitt),
`links:`. Struktur: Kontext (1–2 Sätze) → Kennwert/Verfahren/Regel (Kern) → Praxisregel/Anwendung →
Offene Punkte.

**Zusatzregel Urheberrecht (schärfer als bei `buero-referenzen`, da dieser Korpus überwiegend
geschütztes Lehr- und Verlagsmaterial enthält):** jede Norm-, Buch- oder Vorlesungsquelle wird
ausnahmslos sinngemäss mit Fundstelle wiedergegeben, nie im Wortlaut zitiert oder als Abbildung
übernommen. Bei SEALS-/Bibliotheks-lizenzierten Digitalisaten (z. B. INSA-Inventar) gilt zusätzlich
die jeweilige Nutzungslizenz (nicht-kommerziell, kein Spiegeln auf anderen Servern) — in die KB
gehört der Verweis mit Fundstelle/DOI, nie die Datei oder eine Kopie ihres Inhalts.

## Erledigt-Markierung / Fortschritt in der Inventardatei

Identisch mit dem Verfahren in `buero-referenzen-spec.md`: jeder Destillat-Lauf hängt am Ende der
bearbeiteten Inventardatei einen Abschnitt `## Destillat-Fortschritt` an (reine Ergänzung, damit
`git diff --numstat` `-0` zeigt). Der nächste Lauf gleicht offene P1-Zeilen gegen diesen Abschnitt
ab, bevor eine Position erneut aufgegriffen wird.

## Bewertungskriterien (vorab)

Ein erstklassiger `archiv-fachwissen`-Artikel:

1. Trägt jede nicht-triviale Aussage mit Fundstelle (Pfad im Archiv + Datei, wo möglich
   Seite/Abschnitt) im Frontmatter `sources:`.
2. Zitiert keine Norm-Ziffer und keinen Norm-Wortlaut ohne Abgleich gegen `wissen/normen`; bei
   methodischer Norm-Anwendung wird die Norm-Ausgabe genannt, nie stillschweigend als aktuell
   gültig hingestellt (der Korpus enthält Ausgaben 1993 bis 2015).
3. Verifiziert BKP-/eBKP-Codes gegen `references/bkp-2017/BKP-2017-Liste.md`.
4. Prüft vor jedem Leutschenbach-bezogenen Inhalt gegen `wiki/INDEX.md` «Artikelbestand», ob der
   Fakt in Korpus 3 bereits destilliert ist — kein Doppelartikel.
5. Destilliert Studien-/Prüfungs-Zusammenfassungen Dritter nie als eigenständigen Artikel, nur als
   Beleg-Fundstelle innerhalb eines Fachartikels; keine Studierendennamen im Artikeltext.
6. Startet `status: emerging`; `established` erst bei unabhängiger Zweitbelegung (Rule 260714) —
   Vorlesungshandouts derselben Lehrveranstaltung/desselben Professors gelten dabei **nicht** als
   voneinander unabhängige Zweitquellen (wie bereits in Korpus 3 bei Architektur-III-Handouts
   festgehalten).
7. Landet mit einer offenen, nicht abschliessend klärbaren Frage in `wiki/QUESTIONS.md`, statt die
   Lücke stillschweigend zu lassen.
8. Prüft bei den Sektionen `04_Politik`/`05_Kultur_Gesellschaft_Stil`/`06_Reisen`/`07_Religion`
   ausdrücklich, ob der Inhalt Privatunterlagen statt Fachwissen ist (siehe Abgrenzung).

## Goldstandard

`wissen/normen/wiki/en-520-gipsplattentypen.md`, wie in `bauprodukte-spec` und
`buero-referenzen-spec` — gilt sinngemäss auch hier. Für Begriffsapparat-Artikel (Entwurfstheorie,
Denkmalpflege) gilt das Format der bereits destillierten Architektur-III-Artikel aus Korpus 3 (z. B.
`wissen/architektur-fachwissen/wiki/entwurfsbegriffe-struktur-huelle-architektur3-eberle.md`) als
unmittelbares Vorbild, da dieselbe Quellenart (universitäres Vorlesungsmaterial,
urheberrechtsempfindlich) vorliegt.

## Verifier

- **BKP-/eBKP-Codes:** gegen `references/bkp-2017/BKP-2017-Liste.md` (Rule `bkp-2017-referenz`).
- **Norm-/SIA-/VKF-/VSS-Fundstellen:** gegen `wissen/normen/` (Rule `normen-referenz`); jede
  Ausgabe-Diskrepanz markieren, nicht stillschweigend gleichsetzen.
- **Leutschenbach-Duplikatsprüfung:** vor jedem neuen Artikel `wiki/INDEX.md` Abschnitt
  «Artikelbestand» konsultieren.
- **Privatunterlagen-Vorbehalt** für `04_Politik`/`05_Kultur_Gesellschaft_Stil`/`06_Reisen`/
  `07_Religion`: die Kurator-Stufe (Opus) prüft diese Sektionen ausdrücklich, bevor ein Artikel
  daraus als fertig gilt.
- **Stufe 3 (Kurator, Opus, gemäss `wissens-destillat` SKILL.md Schritt 4):** prüft in jedem Lauf
  jede nicht-triviale Aussage gegen die im Frontmatter genannte Quelle, bevor der Report
  geschrieben wird.

## Sperrliste (bindend, aus `CLAUDE.md` übernommen, hier referenziert statt dupliziert)

Nie erfassen, nicht einmal als Inventar: Verträge, Bewerbungen und Personaldossiers, Adress- und
Kontaktsammlungen, Lohn- und Honorardaten, Gesundheits- und Privatunterlagen (Rule
`auto-verbesserungen`, Eintrag 260823). Zusätzlich für diesen Korpus: `02_Bibliothek/03_Zeitschriften/
Hochparterre/Passwort.docx` (Zugangsdaten, laut Inventar bewusst nicht geöffnet) bleibt dauerhaft
ausgeschlossen. Fällt eine weitere solche Position auf, wird sie nicht eigenmächtig entfernt,
sondern im Lauf-Report gemeldet.

## Faktenbasis

- `wissen/architektur-fachwissen/CLAUDE.md` (Grenzen, Triage-Stufen, Schreibregeln — hier
  übernommen statt dupliziert).
- `skills/wissens-destillat/KORPUS-QUEUE.md` (Prioritäts-Begründung Korpus 4; Stand dort 23.08.2026
  «4 von 23 Sektionen inventarisiert» ist **veraltet** — tatsächlich liegen mit Stand 29.08.2026
  **20 Inventardateien** unter `raw/inventar/archiv-fachwissen__*.md` vor, drei der ursprünglich 23
  geplanten Sektionen sind noch offen; `KORPUS-QUEUE.md` wird in diesem Lauf nachgeführt).
- `skills/wissens-destillat/tools/korpus.conf` (Wurzel `/Volumes/daten/02_Architektur_Archiv`,
  Ziel-KB `architektur-fachwissen`, Extensions `pdf,docx,md,txt`).
- `wissen/architektur-fachwissen/wiki/INDEX.md` (Kennzahlen-Register — Stand 23.08.2026, deckt nur
  4 der 20 vorhandenen Sektionen ab; vor dem ersten Destillat-Lauf dieses Korpus neu abzugleichen,
  analog zum Abgleich, der in Korpus 3 am 29.08.2026 fünf übersehene Sektionen aufdeckte).
- 20 Inventardateien unter `raw/inventar/archiv-fachwissen__*.md` (Phase 0, Stand 29.08.2026).
- Stichprobe gelesen: `__03_Bauprozesse_I_II.md` (Normenkern, Kostenplanungs-Dossier Leutschenbach,
  grosser Ballast), `__02_Denkmalpflege.md` (Denkmalpflege-Studienarchiv, vier Fachbausteine),
  `__02_Bibliothek.md` (6'947-Dateien-Bibliotheksverwaltung, drei Fachnester, SEALS-Lizenzvorbehalt,
  Passwort-Sperre).

## Plan (nächste Läufe)

- [ ] Erster Destillat-Lauf Phase 2 (Sonnet) auf `02_Denkmalpflege` (P1-Cluster vier Fachbausteine:
      SIA-2017-Erhaltungswert-Kriterien, SVTSM-Trockenmauer-Devisierung, BABS-Naturstein-Merkblatt,
      Glaser-Kalk-/Fassungsrezepturen) — kein Duplikatsrisiko, sofort einsetzbar, guter Startpunkt.
- [ ] Danach `03_Bauprozesse_I_II` — **zuerst** die Leutschenbach-Duplikatsprüfung gegen
      `wiki/INDEX.md` durchführen, dann nur die echten Neuzugänge destillieren (Normenkern-
      Methodik, eBKP-H-2012-Musterbeispiel «Haus im Forst»).
- [ ] Vor dem dritten Lauf: `wiki/INDEX.md` «Sektionen nach Ertrag» für alle 20 vorhandenen
      archiv-fachwissen-Inventardateien neu aufbauen (aktuell nur 4 erfasst), danach die
      übrigen Sektionen nach Ertrag ordnen und abarbeiten. Vorsicht bei `04_Politik`,
      `05_Kultur_Gesellschaft_Stil`, `06_Reisen`, `07_Religion` (Privatunterlagen-Vorbehalt).
- [ ] Sobald Phase 0 für die restlichen drei der ursprünglich 23 geplanten Sektionen nachgeholt ist
      (oder Raphael die Zahl 20 als abschliessend bestätigt): Kennzahlen in `KORPUS-QUEUE.md`
      final nachführen.
- [ ] Kurator-Stufe (Opus) je Lauf gemäss SKILL.md Schritt 4, mit Zusatzprüfung
      Leutschenbach-Duplikat und Privatunterlagen-Vorbehalt.

Diese Spec ist bindend für alle Folgeläufe des Korpus `archiv-fachwissen`, bis ein Entscheid
Raphaels sie ändert.
