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

## Verifikation Firmenname — OFFEN (nicht behaupten)
- Zefix-REST-Abfrage "JANS AG" am 21.06.2026 NICHT moeglich (Public-REST verlangt
  registriertes Login → HTTP 401). Verfuegbarkeit/Zulaessigkeit daher **ungeprueft**.
- **Wichtig (Firmenrecht):** AG-Firmen geniessen **schweizweiten** Ausschliesslichkeitsschutz
  (OR 951 Abs. 2). Existiert irgendwo in CH bereits eine "Jans AG"/"JANS AG", ist der Name
  evtl. nicht eintragbar bzw. nur mit Zusatz. → Vor allem Weiteren auf zefix.ch pruefen
  (oder mit Zefix-REST-Credential), Wunsch-Alternative bereithalten.

## Offen / zu klaeren
- Saumstrasse 21: **eigene Raeume oder c/o?** Bei c/o (Fremddomizil) ist eine
  **Domizilannahme-Erklaerung** noetig. (Notiz: weicht von der bisher gefuehrten
  JANS-Bueroadresse Grubenstrasse 37, 8045 ab — bewusste neue Adresse bestaetigen.)
- AG-Zweck final bestaetigen (Entwurf unten).

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

## AG-Zweck — Entwurf (zu bestaetigen)
Bewusst auf **Ausfuehrung/GU** ausgerichtet (Consulting/Planung bleibt bei der Einzelfirma),
mit den ueblichen Ergaenzungsbausteinen:

> "Die Gesellschaft bezweckt die Erbringung von General- und Totalunternehmerleistungen
> sowie die Realisierung, Ausfuehrung und Bauleitung von Hochbau-, Umbau- und
> Immobilienprojekten fuer eigene und fremde Rechnung. Sie kann saemtliche damit
> zusammenhaengenden Dienstleistungen erbringen, Vertraege mit Subunternehmern und
> Lieferanten abschliessen sowie Bauherrenvertretungen uebernehmen.
> Die Gesellschaft kann sich an anderen Unternehmen im In- und Ausland beteiligen,
> Zweigniederlassungen errichten, Immobilien und Grundstuecke erwerben, halten, verwalten
> und veraeussern sowie Immaterialgueterrechte halten und verwerten. Sie kann alle
> Geschaefte taetigen, die geeignet sind, den Zweck der Gesellschaft zu foerdern."

Pruefpunkte: (a) reine Planungs-/Beratungsleistungen NICHT in den AG-Zweck aufnehmen, damit
die Haftungstrennung zur Einzelfirma sauber bleibt; (b) bei Immobilien-Haupttaetigkeit mit
Auslandsbezug Lex-Friedrich beachten (hier vsl. nicht einschlaegig).

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
