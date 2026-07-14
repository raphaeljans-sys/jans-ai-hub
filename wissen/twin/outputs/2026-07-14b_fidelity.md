# Fidelity-Review 2026-07-14b (twin-chef)

## Ausgangslage
Zweiter Lauf des Tages (VOLLGAS-Loop). Der Morgenlauf 05:29 (`2026-07-14_fidelity.md`) lief
**offline** und verarbeitete das liegen gebliebene Rohmaterial `raw/260713-mailbatch-37.md`
nach. Dieser Lauf hatte den M365-Connector verfuegbar und zog deshalb eine **echte
Live-Goldprobe** — drei authentische Vor-Claude-Mails (Dez 2025, alle drei aus rj@ Sent Items,
KI-Marker-Check negativ, Gewichtung `authentisch`) in drei verschiedenen Registern:

| # | Gold-Mail (anonymisiert) | Register | Datum |
|---|---|---|---|
| G1 | Rechnungs-/Beleg-Freigabe an vertrauten Baumanager | vertraut-Du (Rechnungs-Rueckfrage) | 15.12.2025 |
| G2 | STWEG-Korrektur an Geschaefts-Du-Partner | Investor-/Geschaefts-Du (Zwischenstand) | 14.12.2025 |
| G3 | Bauentscheid-Verfahrensmail an Privat-Bauherrin | formell-Sie (Verfahren) | 01.12.2025 |

## Scoring gegen die Goldproben (Twin blind erzeugt, dann verglichen)
| Facette | Score | Befund |
|---|---|---|
| Stimme | 90 | Signatur-/Gruss-Wahl exakt vorhersagbar: G1 Verifikations-Doppelfrage «Kann ich die so rauslassen? Stimmen die Angaben?» + FG-Block OHNE Service-Satz/Auftrags-Dank (Fidelity 260712 lueckenlos bestaetigt); G2 Kurzgruss «Lieber Gruss» nach «Geschaetzter» (Plan-Korrektur ohne Geld) + «kurzes OK-Feedback»-Freigabebitte; G3 FG-Block sachlich ohne Wunschzeile. **Einziger Rand:** G3 nutzt «–» als Listen-Bullet UND im Betreff — der Zwilling koennte die Doku-Regel («kein Gedankenstrich als Stilmittel») faelschlich auf Mails uebertragen und glaetten. Scope-Frage, kein Fehler im Gold. |
| Denken | 88 | Operative Mails, wenig Varianten-/Konditionalfuehrung gefordert; G3 zeigt saubere Dramaturgie Grundlage → nummerierte Schritte → Ausblick. Keine Drift, aber auch kein neuer Beleg. |
| Haltung | 87 | G2: unaufgefordert angebotene **optionale** Zusatz-Verfeinerung («Beispielsweise koennte man noch die Leerzeilen … loeschen»), hypothetisch gerahmt — Mehrwert ueber die Pflicht hinaus. Der Zwilling haette die fertige Lieferung ohne diesen freiwilligen Zusatzschritt abgeschlossen. Leichte Unterschaetzung, Einzelbeleg. |
| Beziehungsregister | 93 | Bestwert. Alle drei Register punktgenau und regelgedeckt: «Hoi Peter» (vertraut-Du) / «Geschaetzter Christoph» + «Lieber Gruss» (Geschaefts-Du, Korrektur ohne Geld) / «Guten Tag Frau Hofer» (Privatkundin-Sie, warm). Keine Ueberraschung — sauberer Dreifach-Datenpunkt. |
| Fachsignatur | 89 | G3: feldgenaue Verfahrenskette (UGZ Energie/Gebaeudeschadstoffe, Denkmalpflege, Baukontrolle, StaPo, GSZ Baumerhalt, TBA-Zustandsprotokoll/Depositum) — deckt sich mit der Baueingabe-Verfahrenssignatur. G2: STWEG-Wertquote einer Einheit 178→179 korrigiert, damit «beide Liegenschaften einzeln im Total 1000» ergeben — die **Je-Liegenschaft-auf-1000-Normierung** ist ein leicht unter-belegtes Fachmuster. |
| Arbeitsweise | 91 | Struktur sauber getroffen: fetter Stammdaten-Block mit «_»-Bullets (G1), fette Themen-Header + Listen (G3), abgestufte Freigabe-Bitte (leichtes «OK-Feedback» im Zwischenstand G2 vs. abnahmefaehig anderswo). Einzige Nuance: der freiwillige optionale Zusatzschritt (siehe Haltung). |

**Gesamt-Fidelity (gewichtet): ~90.** Dies ist ein **Konsolidierungs-Review**: die drei
Live-Golds **bestaetigen** bereits kodierte Regeln praezise, statt neuen Drift aufzudecken —
ein starkes Signal, dass die DNA fuer diese drei Kernregister gut kalibriert ist.

## Facetten-Gegenvalidierung
Keine neuen Widersprueche zwischen den sechs Artikeln. Eine **Scope-Praezisierung** taucht auf
(nicht Widerspruch): die Gedankenstrich-«–»-Regel ist ausdruecklich auf Dokumente/Folien
begrenzt; G3 belegt, dass Raphael «–» in **Mails** (Bullet + Betreff) selbst verwendet. Als
offene Frage 260714b #1 vermerkt statt stillschweigend in eine Mail-Regel gegossen
(Overfitting-Schutz: Scope zuerst mit Raphael bestaetigen).

## Vorgenommene Aenderungen
- **Keine** Aenderung an den sechs Facetten-Artikeln (Do/Don't-Bloecke unveraendert): die Golds
  bestaetigen, sie schaerfen nicht. Damit **keine** DNA-Neukompilierung noetig (build_dna waere
  idempotent) — der Morgenlauf hatte bereits kompiliert.
- `QUESTIONS.md`: 4 neue Fragen Runde 260714b (Scope «–» in Mails; freiwilliger Zusatzvorschlag;
  «Geschaetzter»-Dauerhaftigkeit bei eingespieltem Geschaefts-Du; STWEG-1000-Normierung je Einheit).
- Dieser Report.

## Empfehlung
1. **Scope «–» in Mails** (260714b #1) ist der einzige Befund mit praktischer Fehlerquelle: klaeren,
   damit der Zwilling die Doku-Regel nicht auf Mail-Bullets/Betreffzeilen ueberdehnt.
2. Der freiwillige optionale Zusatzvorschlag (260714b #2) ist ein sympathischer Haltungs-/
   Arbeitsweise-Marker — bei Bestaetigung durch einen zweiten Beleg als Do-Punkt in `arbeitsweise.md`
   aufnehmen (jetzt noch Einzelbeleg, nicht generalisieren).
3. Naechster Lauf mit Connector: Register-Luecken suchen, die noch NICHT dreifach belegt sind
   (dieser Lauf bestaetigte die drei Kernregister — weiterer Nutzen liegt in Rand-Registern:
   kalter Erstkontakt, Gruppen-Mischanrede, Mundart-Privat).
