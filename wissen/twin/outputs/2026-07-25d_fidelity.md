# Twin-Fidelity-Review 2026-07-25d

**Agent:** twin-chef · **Modus:** Fidelity-Selbsttest gegen authentische Goldproben (vor-Claude).
**Goldproben:** drei authentische rj@-Mails aus «Gesendete Elemente» (Exchange-Account, Apple Mail),
Feb/März 2026, drei Register: kalt-formell Behörden-Erstkontakt / kalt-formell Behörden-Zweitkontakt
im selben Verfahren / dokumentierende Du-Koordinationsmail (KISPI Betreiber).

## Operativer Hinweis: M365-Connector weiterhin nicht funktionsfähig, Fallback über Apple Mail

Wie bereits im abgebrochenen Lauf `2026-07-25c_fidelity-abgebrochen.md` festgestellt, lieferte der
Microsoft-365-Connector in dieser Session keine Mail-Werkzeuge (`m365_search_commands` meldet
`@pnp/cli-microsoft365 npm package not found`, kein `outlook_email_search`-Tool, keine MCP-Ressourcen
unter `microsoft-365`). Diesmal erfolgreich umgangen über **Apple Mail/osascript** (Account
«Exchange» = rj@raphaeljans.ch, Mailbox «Gesendete Elemente», 1'368 Mails, Zeitraum 04.07.2025 bis
heute). Empfehlung: die npm-Installation `@pnp/cli-microsoft365` auf der Station prüfen/reparieren,
bis dahin ist der Apple-Mail-Weg der verlässliche Ersatzpfad für Goldproben-Ziehung.

## Wichtige Einordnung: KB für den gewählten Zeitraum bereits stark gesättigt

Alle drei gezogenen Goldproben (Hottinger 24.02., Lämmler 04.03., Albin 18.03.2026) waren beim
Nachschlagen bereits **wörtlich im Wiki destilliert** (Mailbatch 32/33/35/36, `beziehungsregister.md`
Zeilen 822–928). Dieser Lauf ist damit erneut primär ein **Retrieval-/Generalisierungstest**, kein
Neuwissens-Test (vgl. 260722). Um trotzdem einen echten Blindtest zu simulieren, wurden die
Twin-Fassungen bewusst NUR aus dem **kompilierten Gehirn** `rules/jans-dna.md` erzeugt (so wie es in
einer normalen Arbeitssession geladen ist), nicht aus dem 1'565-Zeilen-Wiki — das entspricht der
realistischen Situation, in der eine Mail entsteht.

## Gesamt-Fidelity: 85 / 100

| Facette | Score | Kurzbefund |
|---|---|---|
| Stimme/Ton | 88 | Struktur (Bullet-Format, Dank-im-Voraus, FG+Block) durchgehend korrekt. Feinschliff «Salut» statt «Hoi» fehlt dem DNA-Only-Twin. |
| Beziehungsregister | **72** | **Schwächste Facette — strukturelle Ursache, kein Marker-Fehler (siehe Hauptbefund unten).** |
| Denken/Argumentation | 89 | Klare Fragestellung, keine Vermischung von Sachverhalt und Bitte. |
| Haltung/Werte | 88 | Kein Polster, keine Floskel, ehrlich-knapp; Facette in diesen drei Mails wenig exponiert. |
| Fachsignatur | 83 | Anzeigeverfahren/Gestaltungsplan korrekt eingewoben; Detailtiefe der Fachplaner-Zuteilung (Ansprechpartner je Disziplin) braucht Projektakte, nicht DNA-generisch. |
| Arbeitsweise | 87 | Nummerierte Struktur, Freigabe-Bitte mit Dokumentenliste, Telefon-Angebot statt Service-Satz — alles im DNA-Only-Twin korrekt reproduzierbar. |

## Hauptbefund: die Anrede-Stufe hängt an Kontakt-Gedächtnis, das strukturell an zwei Orten fehlt

Der grösste Drift lag durchgehend in der **Wärmestufe der Sie-Anrede** — nicht weil die DNA-Regel
falsch ist, sondern weil sie ohne Kontakt-Historie nicht anwendbar ist:

- **Goldprobe 1 (Hottinger, 24.02.2026):** Gold öffnet mit «**Geschätzte Frau Hottinger**» — sie ist
  seit Monaten eine warm eingespielte Behördenkontaktperson (Kreisarchitektin AfB, mehrfach
  «Geschätzte»/«Werte» belegt). Ein DNA-Only-Twin kennt nur die generelle Regel «Behörde: bekannt →
  Geschätzte/r, unbekannt → Sehr geehrte/r» — OHNE Information, dass Hottinger bereits «bekannt» ist,
  fällt er auf das kältere «Sehr geehrte Frau Hottinger» zurück. **Score-relevanter Fehlgriff, aber
  kein Regel-Fehler.**
- **Goldprobe 2 (Lämmler, 04.03.2026):** Gold öffnet mit «**Sehr geehrte Frau Lämmler**» — hier trifft
  der DNA-Only-Twin richtig, weil «Sehr geehrte/r» korrekt der Default für einen echten
  Personen-Erstkontakt ist, auch im warmen KISPI-Gesamtprojekt. Bestätigt und schärft die heute in
  `beziehungsregister.md` verankerte Regel (Behörde bleibt kalt, Team-/Kontrollpartner wärmt sofort —
  siehe Schritt 3).
- **Goldprobe 3 (Albin, 18.03.2026):** Gold öffnet mit «**Salut Albin**» — die Rule
  `anrede-kontakte.md` kennt Albin korrekt als Du-Kontakt (der DNA-Only-Twin trifft also sicher das
  Du-Register), aber nicht die wärmste beobachtete Opener-Variante «Salut» statt «Hoi». Harmloser
  Drift, da beide Varianten im selben Warmband liegen.

**Strukturelle Ursache, nicht Wissenslücke:** Der 1'565-Zeilen-Wiki-Artikel `beziehungsregister.md`
dokumentiert diese Kontakt-Wärmestufen bereits präzise (Hottinger, Lämmler, Steinmann, Tschopp,
Giacometti, Sonderegger, Beson u.a. — dutzende gepflegte Mappings). Diese Detailtiefe wird aber
**nicht** in `rules/jans-dna.md` kompiliert (zu Recht — der Auto-Block bleibt bewusst schlank,
Kontext-Diät 260719) und landet **auch nicht** in der dafür vorgesehenen Kurz-Nachschlageliste
`rules/anrede-kontakte.md`, die in JEDER Session automatisch per `@`-Import geladen wird
(CLAUDE.md). Diese Datei hat aktuell **genau einen Eintrag** (Albin Spahic) — obwohl der Wiki
mindestens ein Dutzend klar etablierte Du/Sie-Wärmestufen kennt, die für die tägliche Korrespondenz
laufend gebraucht werden (Hottinger→Geschätzte, Steinmann→Salut, Tschopp→Du+situativ Geschätzter,
Giacometti→Sie warm-locker, Sonderegger→Du «Steffi», Beson→Sie, u.a.).

**Empfehlung (nicht heute umgesetzt, da dieser Lauf explizit auf Review/Selbsttest fokussiert ist,
kein Inventaraufbau):** `rules/anrede-kontakte.md` mit den bereits im Wiki gut belegten Top-Kontakten
befüllen. Das ist die höchste Hebelwirkung dieses Reviews — eine kleine, risikoarme Ergänzung einer
bereits @-importierten Datei würde den grössten gemessenen Drift-Anteil (Beziehungsregister 72 statt
~90) in jeder normalen Arbeitssession beheben, nicht nur im Twin-Modus.

## Schritt 3 — gegenseitige Validierung der Facetten

Eine bereits vorgemerkte Spannung wurde gelöst: `stimme.md` (Batch 64, 14.–17.07.2026) hatte einen
**direkten Widerspruch** zum etablierten Tausender-Apostroph-Marker offen gelassen («CHF 40K» ohne
Apostroph im operativen Du-Reply, vs. «1'824» als Norm). Auflösung: registerabhängig — Apostroph bleibt
Pflicht in Dokumenten/Offerten/dokumentierenden Mails, im schnellen operativen Du-Reply ist die
gesprochene Kilo-/Mio-Kurzform («40K») zulässig. In `stimme.md` verankert.

Ein zweiter, länger offener Punkt (`beziehungsregister.md`, QUESTIONS 260714j #2: «Projektvertrautheit
schlägt Personen-Erstkontakt») wurde mit dem Lämmler/Vanvelten-Kontrastpaar aus diesem Selbsttest
präzisiert und geschlossen (siehe Hauptbefund oben + `beziehungsregister.md`).

Weiterhin offen (keine neue Evidenz heute): Gate 260724 (Service-Satz in der reinen Nachfass-/
Fristsetzungs-Mail an einen Unternehmer) — neue Teilfrage dazu in QUESTIONS Runde 260725d #2
ergänzt (Du-Pendant «Rufe mich kurz an bei Fragen» in dokumentierenden Freigabe-Lieferungen).

## Selbstfragen

4 neue Fragen an `wissen/twin/wiki/QUESTIONS.md`, Runde 260725d angehängt (Einzelfrage vs. «_ »-Bullet;
Telefon-Angebot als Du-Pendant zum Service-Satz; «Salut» als Vertrautheits-Eskalationsstufe;
nummerierte Koordinationsblöcke vs. fette Amt-Blöcke).

## Zusammenfassung

🧠 twin-chef — Fidelity: 85
Stimme 88  Denken 89  Haltung 88  Beziehung 72  Fachsignatur 83  Arbeitsweise 87
Entscheid: kein Veredelungslauf nötig (Retrieval-Test, keine Ausgabe an Raphael)
Hinweis: Hauptbefund ist strukturell (anrede-kontakte.md unterversorgt), nicht markerseitig — höchste
Hebelwirkung für den nächsten Lauf.
→ Empfehlung: `rules/anrede-kontakte.md` in einem dedizierten (Nicht-Review-)Lauf mit den im Wiki
bereits belegten Top-Kontakten befüllen.
