# QUESTIONS — offene Fragen & Wissenslücken (Projekt-Lessons)

Vom Bibliothekar gepflegt. Hier landen Wissenslücken, ungelöste Spannungen und
geplante Artikel.

## Offene Wissenslücken (Coverage-Gaps)
- **Fokus-Bereich «Bauen im Betrieb» weiterhin ohne Kandidat (04.08.2026, Nachtschicht Mac
  Mini) — Suchraum diesmal erweitert, wieder Nullbefund.** Nach dem reinen Logbuch-Nullbefund
  vom 03.08. (Eintrag unten) diesmal direkt im KISPI-Projektordner gesucht (`JANS -
  2619-KISPI - Dokumente`, OneDrive) nach Etappierung/Provisorium/Nachtarbeit/Laerm/
  Patiententransport: Treffer sind ausschliesslich technische Dokumentation ohne Entscheid-
  oder Fehler-Story — Etappierungszonen-Plaene der Sprinkleranlage (Los 51.11, reine
  Planwerk-PDFs), Bauprovisorium-Protokolle Baustrom/SINA-Pruefungen (Los 231.01, Zaehler-
  Nummern und periodische Kontrollen, kein narrativer Vorfall). Kein Sitzungsprotokoll-/
  Baubesprechungs-Ordner im Projektbaum auffindbar. `mdfind` auf Mail (`etappierung kispi`,
  `bauprovisorium`) lieferte 0 Treffer. Naeheste inhaltliche Naehe: der established-Artikel
  [[gvz-einreichung-bma-sprinkler]] in `wissen/auflagebereinigung` beschreibt die Ausser-
  betriebsetzungs-Pflicht (>24 h, 3-Tage-Vorlauf an GVZ/Feuerwehr) fuer Brandmelde-/
  Sprinkleranlagen — ein generischer Normablauf, aber **keine KISPI-spezifische
  Entscheidsituation** und damit kein eigenstaendiger Lesson-Kandidat (waere Dopplung ohne
  Mehrwert). Empfehlung fuer den naechsten Lauf: Truninger-DS3 (dritte, noch ungeprüfte
  Quelle aus PROGRAMM.md) nach Bauprogramm-/Etappenplan-Korrespondenz durchsuchen, oder auf
  einen frischen Logbuch-Fund warten statt erneut denselben Dateibaum zu durchsuchen.
- **Bootstrap-Pendenz WEITER fortgeschritten (31.07.2026, Nachtschicht Mac Mini):** fuenfter
  Fall kompiliert — [[kispi-fehlende-auftragsbestaetigung-mahnkaskade-re00087]] (KISPI RE-00087,
  Quelle: Logbuch-Journal 16.06.-31.07.2026, `logbuch/LOGBUCH.md` + `logbuch/fristen.md`),
  fuellt den Fokus-Bereich «Kosten & Termine». Damit 5 von 3-5 Ziel-Faellen im Wiki, vier der
  fuenf Fokus-Bereiche belegt. Fehlt noch fuer die volle Bandbreite: «Bauen im Betrieb»
  (noch kein Kandidat identifiziert) — naechster Lauf.
- **Vorherige Etappe (29.07.2026, Nachtschicht Mac Mini, 13:30-Lauf):** vierter Fall kompiliert
  — [[kispi-behoerden-zustaendigkeitswechsel-1171-26]] (KISPI 1171/26, UGZ/AFB-
  Zustaendigkeitswechsel, Quelle: Logbuch-Journal 24./25./27.07.), fuellt den Fokus-Bereich
  «Koordination & Kommunikation».
- Schema-Frage aus Health-Check 25.07.: `CLAUDE.md` kennt bislang nur den Artikeltyp
  "Fehlerfall" (Situation→Ursache→Konsequenz→Regel). Der erste Artikel ist aber eine
  "Verifikation" (Vorgabe X war korrekt) mit eigener Struktur. Bei einem zweiten Fall
  dieser Art: pruefen, ob ein zweiter zulaessiger Artikeltyp in CLAUDE.md ergaenzt wird.
- **Teilbeantwortet (03.08.2026, Nachtschicht Mac Mini, Versuchs-Slot):** die fehlende
  Auftragsbestaetigung war zum Zeitpunkt 31.07. nicht nachgereicht (RE-00087 erreichte
  stattdessen bereits am 09.07. Mahnstufe 3). Am 03.08. taucht ein zweiter, konkreterer
  Blocker auf: KISPIs eigenes Buchhaltungsprogramm fuehrt RE-00087 als Duplikat einer
  Rechnung "BC304304495"; der kontaktierte Mitarbeiter (Spoerri) hat selbst keinen Zugriff
  darauf und hat den Fall an Cornelia Schaefer weitergeleitet. **Weiterhin offen:** ob
  BC304304495 eine reale Zahlung belegt oder ein Fehleintrag ist — Antwort Schaefer steht
  aus; bexio war auf dieser Station ohne hinterlegten Token nicht abrufbar (kein
  `~/.bexio.env`), Pruefung dort nachholen sobald verfuegbar. Bei Klaerung: Artikel-Status
  ggf. auf `established` heben und pruefen, ob die Auftragsbestaetigungs- und die
  Duplikat-Ursache zusammenhaengen oder unabhaengig sind.

## Cross-Article-Spannungen (worth resolving)
- (leer)

## Beantwortete Fragen (Archiv)
- (leer)

## Erste Befüllungs-Ideen (Saatgut)
Mögliche erste Lessons, sobald Material vorliegt:
- Wiederkehrende Nachtrags-Streitpunkte je Gewerk (Bezug Skill `unternehmerkontrolle`).
- Etappierung/Provisorien im laufenden Spitalbetrieb (Bezug Skill `terminplanung`).
- Wo Grobkostenschätzungen typischerweise daneben lagen (Bezug Skill `kostenkontrolle`).
