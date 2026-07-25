# Fidelity-Review 2026-07-14c (twin-chef)

## Ausgangslage

Dritter Lauf des Tages (VOLLGAS-Loop). Der Recherche-Agent hatte zunaechst Schwierigkeiten mit
dem M365-MCP-Connector (mehrere Sub-Agenten haengten in blockierenden Tool-Aufrufen); ein
verschachtelter Sub-Agent fand schliesslich einen funktionierenden Workaround (`npx m365
request` direkt gegen Microsoft Graph, Zertifikats-Login der App "SharePoint MCP Connector
(JANS)") und zog drei **echte, authentische** Goldproben aus unterschiedlichen Registern und
Zeitraeumen:

| # | Gold-Mail (anonymisiert) | Register | Datum |
|---|---|---|---|
| G1 | Wald: Flaechen-/Baurechtsstudie an Investor-Du | Investor-Du, gewichtig, Varianten-Rechnung | 2025-07-07 |
| G2 | KV Dachausbau & Folgekosten an Freund/Privatkunde-Du | Freund-Du, fachlich tief (TDD-artig) | 2026-06-22 |
| G3 | HUB12 Summer Vibes — Netzwerk-Einladung an drei Peers | Peer-Du, Netzwerk/Akquise | 2026-06-05 |

**Postfach-Reichweite bestaetigt:** "Gesendete Elemente" (1281 Mails) reicht nur bis
2025-07-04 zurueck — G1 liegt damit am aeussersten Rand/nahe am Start des Korpus (kein
Material aus 2024 oder einer Vorgaengerfirma auffindbar). G2/G3 liegen ausserhalb des
bisherigen sequenziellen Sweep-Fensters (bis 2026-05-20) und schliessen eine Luecke im
Juni 2026.

**Echo-Falle-Check:** alle drei Golds sauber. G1s Varianten-1/2/3-Struktur ist KEIN KI-Muster,
sondern Raphaels eigenes belegtes Denkmuster ("in Varianten rechnen", denken.md); keine
generischen Eroeffnungen/Floskel-Schluesse in G2/G3.

## Scoring gegen die Goldproben (Twin blind erzeugt, dann verglichen)

### G1 — Wald-Investoren-Mail (Du, Varianten-Rechnung)

| Facette | Score | Befund |
|---|---|---|
| Stimme | 96 | Nahezu deckungsgleich mit dem Wiki-Referenzbeleg (das *ist* Probe A aus dem Seed-Korpus). Apostroph-Zahlen, «%» mit Leerschlag, Signatur-Phrase «Ich erlaube mir …», Cafe-Einladungsschluss exakt vorhersagbar. |
| Denken | 97 | Exakt das im Wiki dokumentierte Grundmuster «Frage fixieren → Varianten rechnen → Fazit → Ausblick» — dies ist der Ur-Beleg, aus dem die Regel destilliert wurde. |
| Haltung | 93 | Ehrlich rechnend, kein Verkaufsdruck; Cafe-Einladung als warme, nicht-vereinnahmende Geste. |
| Beziehungsregister | 95 | «Geschaetzter Thomas» korrekt fuer Investor-Du/gewichtige fachliche Mail. |
| Fachsignatur | 96 | Baumassenziffer/HNF/Umrechnungsfaktor korrekt inline gerechnet, STWEG-Variante fachlich sauber. |
| Arbeitsweise | 95 | Grundlage→Empfehlung→Ausblick, klare Deliverable-Struktur. |

Kaum Drift — erwartungsgemaess, da dies der Referenz-Seed selbst ist.

### G2 — David-Chaled-Mail (Freund/Privatkunde-Du, KV Dachausbau)

| Facette | Score | Befund |
|---|---|---|
| Stimme | 78 | **Drift:** echter **Doppel-Gruss** «Lieber Gruss / Raphael» gefolgt von vollem «Freundliche Gruesse»-Block. Bisherige Regel erklaert jede Doppelung als reine Mobile-/Outlook-Automatik (nur der handgetippte erste Gruss zaehlt). Hier aber eine sehr persoenliche Freund-Du-Mail mit hartem Fachkern (TDD-Ankaufspruefung/Kaufpreisempfehlung) — die Regel «Rechnung/Beleg→FG+Block, reine Beratung→Kurzgruss» haette NUR «Lieber Gruss» erwartet (keine Rechnung/kein Beleg, sondern eine Kaufpreisempfehlung). Der Doppel-Gruss ist nicht vorhergesagt; unklar, ob Automatik oder bewusste zweite Ebene bei besonders gewichtigem Inhalt. |
| Denken | 88 | Kaufpreisrechnung (Wert minus Investitionsstau plus Marktpotenzial) folgt bekanntem «rechnen statt behaupten»; die Empfehlung, eine Zweitbank-Bewertung einzuholen, ist neu (Verifikations-Reflex bei grossen Entscheiden), aber plausibel im Rahmen des bisherigen Musters. |
| Haltung | 90 | Kaufpreisempfehlung wird ehrlich nach unten korrigiert, Investitionsstau offen benannt (schuetzt vor Fehlentscheid). **Neuer Beleg:** persoenliche Nebenzeile «Es hat mich sehr gefreut, Dich und Deine Familie … kennenzulernen» NACH dem Fachteil, VOR dem Gruss — eine ganze persoenliche Rueckblende, staerker als die bisher bekannte blosse Wunschformel. |
| Beziehungsregister | 82 | «Geschaetzter David» fuer einen jungen, aber schon familiaer-warmen Kontakt ist plausibel, doch der Twin haette eher «Hoi David»/«Lieber David» erwartet angesichts des sehr persoenlichen Tons («Deine Familie kennenzulernen»). Leichte Drift: «Geschaetzter» tritt hier bei warmer, aber noch junger Beziehung auf, nicht nur bei distanziert-gewichtigen Faellen. |
| Fachsignatur | 92 | TDD-artige Ankaufspruefung (gestaffelter Investitionsstau, Brandschutz-Verhaeltnismaessigkeitsprinzip, Kaufpreis-Residualrechnung, Drittbank-Verifikationsempfehlung) deckt sich exakt mit den Skills `ankaufspruefung`/`immobilienbewertung`. |
| Arbeitsweise | 85 | Themenbloecke («Investitionsstau», «Brandschutz», «Ueberlegungspunkte», «Kaufpreisempfehlung») bestaetigen «Themen-Block-Statusmail»; klare Befund→Empfehlung-Trennung. |

### G3 — HUB12-Netzwerk-Einladung (Peer-Du, Netzwerk/Akquise)

| Facette | Score | Befund |
|---|---|---|
| Stimme | 84 | **Neuer Beleg:** Schluss «**Beste Gruesse**» (nicht «Bester Gruss») bei einer professionellen **Netzwerk-Event-Einladung an mehrere Architektenkollegen/Peers** im selben Versand-Muster — bisher war «Beste Gruesse» nur fuer warm-soziale/branchenferne Kontakte belegt (Fidelity 260610). Der Twin haette eher «Lieber Gruss» erwartet (vgl. Peer-Architekten-Einladung Batch 16 «Lieber Gruss»). Neue, leichte Drift: «Beste Gruesse» ist auch im professionellen Netzwerk-Peer-Kontext moeglich. |
| Denken | 80 | Reine Einladung, wenig Argumentationsgehalt zu beurteilen — kein Fehlschlag, aber auch kein belastbarer Beleg. |
| Haltung | 88 | Aktive Netzwerkpflege deckt sich mit «Gelegenheiten an Peers weiterreichen»; hier ist die Mail selbst der Anlass (nicht eine Drittgelegenheit) — leicht andere Nuance derselben Grundhaltung. |
| Beziehungsregister | 90 | «Hoi <Vorname>» fuer Peer/Architektenkollege korrekt. **Neue kleine Geste:** die Anmeldung fuer einen Empfaenger aktiv selbst vornehmen («Ich habe dich gleich … angemeldet – du musst dich um nichts mehr kuemmern») — passt zu «schuetzt vor unnoetigem Aufwand», bisher nicht im Peer-Netzwerk-Kontext belegt. |
| Fachsignatur | n/a | Nicht einschlaegig (reine Netzwerk-Mail). |
| Arbeitsweise | 85 | Knapp, Zweck=Laenge, aktive Organisation (Anmeldung uebernehmen) bestaetigt bekannte Muster. |

## Gesamt-Fidelity (gewichtet über alle drei Golds, Facetten-Mittel)

**~89.** G1 ist ein Beinahe-Perfekt-Treffer (Referenz-Seed selbst); die eigentliche neue
Information liegt in G2 (Doppel-Gruss-Raetsel, «Geschaetzter» bei warmer junger Beziehung,
persoenliche Rueckblende vor Gruss) und G3 («Beste Gruesse» im Netzwerk-Peer-Kontext,
Aufwand-Abnahme-Geste). Kein Facetten-Score fiel unter 78 — die Drift ist durchgehend
Praezisierung an den Raendern, kein Grundfehler.

## Facetten-Gegenvalidierung

Keine neuen ungeloesten Widersprueche zwischen den sechs Artikeln. Die drei neuen Befunde
(Doppel-Gruss bei Freund-Kaufpreisempfehlung, «Beste Gruesse» im Peer-Netzwerk, «Geschaetzter»
bei warmer Freund-Beziehung) sind **Praezisierungen/Randfaelle**, keine Facetten-internen
Widersprueche — sie werden als offene Fragen erfasst statt stillschweigend generalisiert
(Overfitting-Schutz, konsistent mit dem bisherigen Vorgehen dieser KB).

## Vorgenommene Aenderungen

- **Keine** Aenderung an den sechs Facetten-Artikeln (Do/Don't-Bloecke unveraendert): die drei
  neuen Befunde sind Einzelbelege ohne zweiten bestaetigenden Datenpunkt — werden als Fragen
  vorgemerkt statt vorschnell generalisiert. Damit **keine** DNA-Neukompilierung inhaltlich
  noetig; `build_dna.py` wird dennoch zur Sicherheit erneut ausgefuehrt (idempotent).
- `QUESTIONS.md`: neue Fragen Runde 260714c (Doppel-Gruss bei Freund/Fach-Mail, «Geschaetzter»
  bei warmer junger Beziehung, «Beste Gruesse» im Peer-Netzwerk, Aufwand-Abnahme-Geste,
  persoenliche Rueckblende vor Gruss).
- Dieser Report.

## Empfehlungen

1. **Doppel-Gruss-Raetsel (G2)** ist der praktisch relevanteste Befund: klaeren, ob «Lieber
   Gruss» + «Freundliche Gruesse»-Block bei besonders gewichtigen Freund-Du-Mails ein
   bewusstes zweites Signal ist (Ernst der Sache unterstreichen) oder weiterhin reine
   Automatik — das aendert, ob der Zwilling ihn reproduzieren darf.
2. «Beste Gruesse» im professionellen Netzwerk-Peer-Kontext (G3) verdient einen zweiten Beleg,
   bevor er in stimme.md/beziehungsregister.md als eigene Kategorie aufgenommen wird.
3. Naechster Lauf: das Zeitfenster Anfang-Mitte Juni 2026 (zwischen dem bisherigen
   Sequential-Sweep-Ende 20.05. und den frisch gefundenen G2/G3-Daten 05./22.06.) ist noch
   nicht systematisch durchgearbeitet — lohnt sich als naechster Sequential-Sweep-Abschnitt.
