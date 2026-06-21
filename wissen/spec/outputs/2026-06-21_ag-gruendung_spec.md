# AG-Gruendung Raphael Jans — Spec (in Arbeit)

Erstellt: 2026-06-21 · Methode: Skill `spec` (Karpathy/Marchese) · Faktenbasis KB
`firmengruendung-ch` (A1-A10, Belegliste). Erste reale Anwendung der Spec-Methode.

## Ziel (1 Satz)
**Haftungstrennung nach Risiko:** Die bestehende **Einzelfirma** "Raphael Jans -
Architekten ETH" bleibt bestehen und macht kuenftig nur noch **risikoarmes Consulting**
(Studien, Kaeuferbegleitung, Bewertung, Machbarkeit); eine **neu zu gruendende, unabhaengige
AG** uebernimmt die **risikoreiche Projektausfuehrung**, teils im **GU-/Generalunternehmer-
Mandat**, unter dem Schutz der beschraenkten Haftung.

## Abgrenzung (was NICHT dazugehoert)
- Keine zweite/bestehende AG — der Ausgangspunkt ist die Einzelfirma (Korrektur einer
  frueheren Annahme im Verlauf).
- Keine Beteiligungsverbindung zwischen Einzelfirma und AG (bewusst unabhaengig).
- Nicht Teil dieser Spec: definitive Steuer-/Sozialversicherungsberatung (Treuhand/Notar).

## Schluesselentscheide (bestaetigt 2026-06-21)
- Zweck/Ziel: Risiko-Trennung Consulting (Einzelfirma) ↔ Ausfuehrung/GU (AG).
- Verhaeltnis: AG **unabhaengig** von der Einzelfirma.
- Aktienkapital: **CHF 100'000**, Liberierung **50 % = CHF 50'000** einbezahlt.
- Einlage: **Bareinlage** (Sperrkonto + Bankbestaetigung, kein Gruendungsbericht noetig).
- Firma: **JANS AG**.
- Sitz/Domizil: **Zuerich** (politische Gemeinde), Adresse **Saumstrasse 21, 8003 Zuerich**.
- Verwaltungsrat: **Raphael Jans allein, Einzelunterschrift**.
- Revision: **Opting-out** (Revisionsverzicht).

## Verifikation Firmenname — ERLEDIGT (21.06.2026): "JANS AG" frei
- Manuell auf zefix.ch geprueft (Raphael) + von Claude unabhaengig gegengelesen am
  vollstaendigen amtlichen Zefix-Ausdruck (7 Seiten, 98 Treffer der Breitensuche "jans")
  sowie der exakten Suche "Jans AG".
  Beleg-PDF: `~/Library/CloudStorage/OneDrive-…/AD - 03 Kommunikation/Behoerden/Schweiz Bund/
  CH_zefix@bj.admin.ch/260621 Zentraler Firmenindex.pdf`.
- **Ergebnis:** KEIN Eintrag "JANS AG"/"Jans AG" (exakte Suche = 0 Treffer). Name frei.
- Naechste Nachbarn (fuer "deutliche Unterscheidbarkeit" relevant, OR 951 II / 946):
  - JANS GmbH, Zunzgen BL (CHE-420.475.963) — andere Rechtsform, gleicher blanker Name.
  - JANS SA Immobilier, Laténa NE (CHE-115.704.458) — SA, mit Zusatz.
  - Jansen AG, Oberriet SG (CHE-102.513.848) — "Jansen", nicht "Jans".
- Bestaetigt: Einzelfirma "Raphael Jans - Architekten ETH", Zuerich, EIU, CHE-182.658.011.
- **Vorbehalt:** Zefix-Daten haben KEINE Rechtswirkung. Verbindliche Auskunft via REGIX
  (regix.ch) oder durch Notar/HRA bei der Gruendung. Indiz ist aber klar gruen.
- (Hinweis: Connector `connectors/zefix.mjs` automatisiert diese Pruefung kuenftig, sobald
  Zefix-REST-Credentials vorliegen — angefordert per Mail 21.06.2026.)

## Geklaert (21.06.2026)
- Domizil Saumstrasse 21, 8003 Zuerich = **eigene Raeume** → KEINE Domizilannahme-Erklaerung
  noetig. (Bewusst abweichend von Grubenstrasse 37 der Einzelfirma.)
- AG-Zweck **bestaetigt** (Raphael liefert Wortlaut, mit GU-Teil zusammengefuehrt — siehe unten).

## Praezise mitgedacht (Schritt 3 / Verifier-Mindset)
- **Kapital ist NICHT die Risikoabdeckung.** Die AG begrenzt Raphaels persoenliche Haftung
  auf das Gesellschaftsvermoegen — das ist der Schutz. Die "erhoehte Risikoabdeckung" bei
  GU-Mandaten kommt aber v.a. aus der **Betriebs-/Berufshaftpflicht mit hoher Deckungssumme**
  (Bauschaeden, Werkvertragshaftung SIA 118, Subunternehmer, Garantie). Mit nur CHF 50'000
  einbezahltem Kapital ist die AG selbst duenn kapitalisiert — Versicherung + saubere
  Vertraege tragen das Risiko, nicht das Aktienkapital. → vor Aufnahme von GU-Mandaten
  Versicherungsdeckung klaeren.
- **Zweck-Abgrenzung ist haftungsrelevant:** Damit die Trennung haelt, muessen die Zwecke
  von Einzelfirma (Beratung/Planung ohne Ausfuehrungsrisiko) und AG (Ausfuehrung/GU) klar
  getrennt formuliert sein; Mischung verwaessert den Haftungsschutz.
- **AHV-Doppelrolle:** Raphael bleibt selbstaendig (Einzelfirma) UND wird Angestellter/Organ
  der eigenen AG — Status, Lohn/Dividende, AHV-Abrechnung mit Treuhand klaeren.
- **GU im Zweck/Modell:** GU-Leistung ist mehr als Architektur — Zweck und Versicherung
  muessen "General-/Totalunternehmer, Ausfuehrung von Bauprojekten" abdecken.

## Bewertungskriterien (woran das Endprodukt gemessen wird)
- HR-taugliche Dokumente (Anmeldung, Statuten, Wahlannahme, Domizil, VR-Protokoll), die die
  Vorpruefung Notar/HRA bestehen.
- Zweck-Trennung Consulting ↔ Ausfuehrung sauber abgebildet.
- Format-Vorlage: vorhandene Statuten-/Dokumentvorlagen im Ordner `10 AG Gruendung`.

## AG-Zweck — final (bestaetigt 21.06.2026)
Raphaels Wortlaut (urspruenglich Einzelfirma-Zweck) in "Die Gesellschaft"-Stimme mit dem
GU-/Ausfuehrungsteil zusammengefuehrt:

> Die Gesellschaft bezweckt die Erbringung von Architektur- und Baudienstleistungen aller
> Art, insbesondere Beratung, Kostenplanung und Projektierung sowie die Realisierung,
> Ausfuehrung und Bauleitung von Bauvorhaben, namentlich als General- und Totalunternehmerin,
> fuer eigene und fremde Rechnung.
> Sie kann saemtliche damit direkt oder indirekt zusammenhaengenden Geschaefte taetigen,
> Vertraege mit Subunternehmern und Lieferanten abschliessen, Bauherrenvertretungen
> uebernehmen sowie mit Waren aller Art handeln.
> Die Gesellschaft kann Liegenschaften erwerben, verwalten und veraeussern,
> Zweigniederlassungen im In- und Ausland errichten, sich an anderen Unternehmen beteiligen,
> Kapitalanlagen halten sowie Immaterialgueterrechte erwerben, halten und verwerten. Sie kann
> alle Geschaefte taetigen, die geeignet sind, den Zweck der Gesellschaft zu foerdern.

Hinweis (Schritt 3): Der AG-Zweck deckt bewusst auch Beratung/Planung mit ab (breit, fuer
Flexibilitaet). Das ist haftungsrechtlich unkritisch — die Haftung folgt der vertrags-
schliessenden Einheit, nicht dem Zweck. Die praktische Risiko-Trennung (Consulting via
Einzelfirma, Ausfuehrung/GU via AG) entsteht also ueber die Mandatszuteilung, nicht ueber
eine Zweck-Exklusivitaet. Lex-Friedrich hier nicht einschlaegig (kein Immobilien-Haupt-
zweck mit Auslandsbezug).

## Plan (agil, enge Scopes — Schritt 2)
1. ✓ Schluesselentscheide fixiert (Interview-Runde 1+2).
2. Firmenname JANS AG via Zefix verifizieren + AG-Zweck bestaetigen.
3. Statuten-Entwurf aus Vorlage (`10 AG Gruendung/03_Statuten`); parallel Anmeldung HRA,
   Wahlannahme VR, Erklaerung Revisionsverzicht, Erklaerung Rechtsdomizil, VR-Konstituierungs-
   protokoll — je als Entwurf im JANS-Layout.
4. Verifikation je Dokument: Skill `korrektur`; Vorpruefung Notar/HRA; externes Signal HR-Eintrag.
5. Folgeschritte: Sperrkonto/Bankbestaetigung, Beurkundung Notar, HR-Anmeldung, danach
   AHV/BVG/UVG/MWST + Versicherungsdeckung (vor erstem GU-Mandat).

## Verifikation
- Externes Signal: zefix.ch (Firmenname), spaeter HR-Eintrag.
- Zweite Instanz: Skill `korrektur` ueber jedes Dokument; Notar/Treuhand fuer Recht/Steuer.
