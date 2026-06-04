# Wissensbasis: Auflagebereinigung (Bauentscheide CH)

## Was das ist

Eine kompoundierende Wissensbasis zur **Auflagebereinigung von Bauentscheiden** —
das systematische Abarbeiten der Bedingungen und Auflagen, die eine Behörde der
Baubewilligung beifügt. Ausgerichtet auf die reale Bauleitungspraxis von Raphael
Jans Architekten ETH (JANS), Schwerpunkt **Stadt/Kanton Zürich** (PBG/BVV/BBV),
mit Healthcare-Fokus (Spital/Klinik, Bauen im Betrieb).

Ziel: Jeder bearbeitete Bauentscheid, jede Behörden-Rückfrage und jede
Gewerk-Zuteilung verdichtet sich hier zu bleibendem, verlinktem Wissen — damit die
nächste Auflagebereinigung schneller, vollständiger und konsistenter wird
(Auflage Nr. 50 baut auf 1–49 auf).

Diese Wissensbasis ist die Faktenbasis des Skills `auflagebereinigung` und seiner
Sub-Agenten (`auflagen-extraktor`, `planer-zuteiler`, `amts-fristen-zuordner`,
`auflagen-tracker`).

## Fokus-Bereiche

1. **Auflagentypen & Gewerk-Zuteilung** — welche Auflage gehört zu welchem Gewerk
   (BRA/HLK/SAN/ELE/FKO/ARC/BAU); wiederkehrende Themen und ihre Standard-Deliverables.
2. **Ämter & Adressaten** — wer ist Adressat (AfB, Feuerpolizei, GVZ, UGZ/Energie im
   Bau, Amt für Städtebau/Denkmalpflege, Tiefbauamt, Stadtpolizei, Grün Stadt Zürich)
   und wofür zuständig.
3. **Fristenlogik** — die Einreichungszeitpunkte (vor Baubeginn / vor Arbeitsvergabe /
   vor Inbetriebnahme / 4 Wochen vor Baubeginn / während Bauzeit) und wie der Beschluss
   sie über Vorbemerkungen steuert.
4. **Brandschutz-Spezifika** — QSS-Stufen, Übereinstimmungserklärung, Brandfallsteuerung,
   Integral-Test (BFS), VKF-Richtlinien, GVZ vs. Feuerpolizei.
5. **Vorgehen & Deliverables** — der JANS-Standardprozess Auflagebereinigung und das
   Format der Plan- und Dokumentenliste.

## Bibliothekar-Rolle

Ich handle als **active librarian** (siehe `rules/wissens-bibliothekar.md`):
- Ich ingestiere, fasse zusammen, schreibe und verlinke **ohne jedes Mal zu fragen**.
- Ich protokolliere jede Änderung in `CHANGELOG.md`.
- Ich schlage proaktiv neue Artikel und Verbindungen vor.
- Ich **pausiere und frage** vor Destruktivem (Artikel umbenennen/mergen/löschen).
- Im Zweifel, was ich geändert habe: das CHANGELOG ist die Wahrheit.

## KB-spezifische Schreibregeln

- **Quellenpflicht:** Jede Aussage zu Amt, Frist oder Zuteilung trägt ihre Quelle
  (Gesetzesartikel PBG/BVV/BBV, VKF-Richtlinie, konkreter Bauentscheid mit Ziffer,
  Behörden-Auskunft mit Person/Datum). Unbelegtes → `status: speculative`.
- **Projekt-/Ortsbezug kennzeichnen:** Ämternamen und Zuständigkeiten sind
  gemeinde-/kantonsspezifisch (Stadt Zürich ≠ Kanton ≠ andere Gemeinde). Immer Gemeinde
  und Stand (Jahr) notieren; ältere Auskünfte vor Wiederverwendung verifizieren.
- **Kein Rechtsgutachten:** Wir halten Verfahrens- und Zuteilungswissen, keine
  rechtsverbindliche Auslegung. Heikle Punkte als zu verifizieren markieren.
- **Identifikatoren nie raten** (verschärft `identifikatoren-verifizieren.md`):
  Auflage-Ziffern, Verfügungsnummern, Adressen, Telefonnummern wörtlich aus der Quelle.
- Schweizer Hochdeutsch, echte Umlaute ä/ö/ü, kein ß (Rules `umlaute-konvention.md`,
  `dokument-layout-standard.md`).

## Ordner

- `raw/` — Bauentscheide (PDF/Text-Auszüge), Behörden-Mails, Vorbescheide, Auflage-Listen
  alter Projekte, Telefonnotizen mit Ämtern. Reinkippen, nicht ordnen. Grosse Quell-PDFs
  bleiben im Projekt-Archiv; `raw/_INGESTED.md` registriert den Einarbeitungsstand.
- `wiki/` — kompilierte Artikel + `INDEX.md` + `QUESTIONS.md`. Meine Domäne.
- `outputs/` — erzeugte Plan-/Dokumentenlisten, Auflage-Briefings, Health-Checks
  (`JJJJ-MM-TT_titel.md`). Gute Outputs fliessen zurück ins Wiki (Compounding).

## Quellen-Hierarchie (für Verlässlichkeit)

1. Der konkrete Bauentscheid / Vorbescheid selbst (wörtlich, mit Ziffer).
2. Gesetz/Verordnung (PBG, BVV, BBV I, USG/VVEA, LSV) und VKF-Brandschutzrichtlinien.
3. Verbindliche Behörden-Auskunft (Person, Amt, Datum — beweissicher dokumentiert).
4. Eigene JANS-Projektfälle (frühere Auflagebereinigungen, mit Projektnummer).
5. Web-Recherche (nur wenn 1–4 lücken; Stand und Quelle notieren).

## Verwandte Skills (nicht duplizieren, sondern andocken)

- `baurecht` — materielle Rechtsfragen hinter einer Auflage (Abstand, Bestandesschutz).
- `brandschutz` — VKF-Klassen, EI/RF, QSS, Brandfallsteuerung (Faktenbasis BRA-Auflagen).
- `pendenzenliste` / `protokoll` — die Auflage-Deliverables fliessen in Pendenzen/Sitzungen.
- `unternehmerkontrolle` / `kostenkontrolle` — Ausführungsphase, in der Auflagen erfüllt werden.
- `behoerden-vorabklaerung` — das Gegenstück VOR dem Entscheid (Fragen an die Behörde).
