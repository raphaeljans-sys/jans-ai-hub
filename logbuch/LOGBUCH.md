# JANS AI Hub — Logbuch

Append-only Journal der Kontroll-Schicht. Neueste Eintraege zuoberst. Nie von Hand kuerzen;
der Agent `logbuch` schreibt, der Radar ergaenzt taeglich.

---

## 2026-07-04

- **HUB-CHEF-LAUF — ohne Befund (keine Mail).** Signale konsolidiert: bexio `--verzug` (unveraendert
  ein Verzugsfall RE-00087, 79 Tg, Mahnung 1, Zahlfrist 08.07. laeuft noch; RE-00098/99 ohne Verzug),
  bexio `--abgleich` (nur bekannte Altliste 19 Pos., keine neuen Phantom-/Duplikat-Faelle), Mail-Eingang
  seit 03.07. 12:00 (keine neue relevante Mail — nur eigenes Radar-Briefing 04.07. + Graphax-Kreditoren-
  rechnung ohne Handlungsbedarf), Kalender 7 Tage (07.07. TeKoSi + 09.07. Koordinationssitzung, beide im
  Register), Sync-/Remote-Task-Queues leer. **Keine neuen Befunde, keine Whitelist-Aktion moeglich**
  (A1 greift nicht: RE-00087 steht bereits auf Mahnung 1, Eskalation auf Mahnung 2 nicht whitelisted,
  Frist laeuft; Register durch den Radar heute frueh aktuell), **keine neuen Entwuerfe** (gestrige Drafts
  SBB Wiedmer / Gruner Duran stehen weiter — Wiederholung waere Doppelmeldung). Gemaess SKILL.md keine
  zweite Mail. Verweist auf das Radar-Briefing von heute frueh. Checkpoint Whitelist v1 + Briefing-Umfang
  weiter offen (Raphael).

- **Radar-Lauf:** Register gegen bexio (`--verzug`), Kalender (Outlook, bis 11.07.), Mail-Eingang
  (seit 03.07. 12:00) und Sync-Task-Queue abgeglichen.
- **Debitoren (live, `--verzug`):** weiter **nur ein** Verzugsfall. RE-00087 (Kispi, CHF 15'000,
  faellig 16.04., **79 Tage ueberfaellig**, Mahnung 1 / bexio level 2) — Zahlfrist **08.07.2026 = in
  4 Tagen**, kein Zahlungseingang. Keine neuen Verzugsfaelle; RE-00098/99 (faellig 20.07.) weiter
  ohne Verzug.
- **Kalender (bis 11.07.):** unveraendert zwei Termine, beide im Register — **07.07. 16:00–16:30**
  TeKoSi finale Tuer-Ausfuehrungsplanung (Teams, KISPI; RJ Organisator) und **09.07. 13:00–14:00**
  Koordinationssitzung Gruner/Jans/KISPI (Serientermin). Keine neuen Termine.
- **Mail-Eingang (seit 03.07. 12:00):** nur eine Graphax-Kreditorenrechnung (Nr. 40967593) — reiner
  Rechnungseingang, kein Handlungsbedarf/keine Frist. Keine neue relevante Mail.
- **Sync-Task-Queue:** kein offener Task fuers MacBook Pro.
- **Naechste 7 Tage / Cutoffs:** RE-00087 Zahlfrist **08.07.**; Termine **07.07.** + **09.07.**;
  R. Steinmann (Nova) Cutoff offene Anliegen **06.07.** (Albertstrasse 7, u.a. Schliessystem Struebi);
  L. Hiltmann (TeKoSi) erreichbar ab **06.07.** (Tuerfachplanung Los 231.10); SharePoint-Gastzugriff
  Ablauf **10.07.** (6 Gruner-Personen). AG-Gruendung weiter hoch: Notariats-Antwort noch nicht raus,
  UBS-Formular abwarten.
- Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges/Termine in den naechsten 7 Tagen).

---

## 2026-07-03

- **HUB-CHEF-LAUF (erster echter Lauf, Review-Checkpoint):** Signale konsolidiert (Fristen-Register,
  Logbuch 7-Tage-Horizont, heutige Morgen-Loops radar/zahlungsabgleich/mahnwesen/ag-monitor,
  bexio `--verzug` + `--abgleich`, Outlook-Mail, Sync-/Remote-Queues, Service-Katalog).
  - **Neue Befunde:** (a) bexio `--verzug` — zwei NEUE offene KISPI-Rechnungen **RE-00098 (CHF 13'600)**
    + **RE-00099 (CHF 3'680)**, beide faellig 20.07., noch kein Verzug (ins Register). (b) `--abgleich`:
    keine neuen Phantom-/Duplikat-Faelle (nur bekannte Altliste 19 Pos.; read-only, Treuhand/bexio-UI).
    (c) Mail-Triage 02.07. (vom Routine-Radar als «andere Projekte» summiert, hier richtig triagiert):
    **Thalwil Naeherbaurecht 2414** — SBB/Wiedmer bestaetigt Vordach in separate Vereinbarung ohne
    Zusatz-Entschaedigung, Bauherr Tschopp gibt gruenes Licht; **Scherbl** praezisiert 4 fehlende
    Lueftungs-Unterlagen fuer die private Kontrolle KISPI; **Steinmann (Nova)** Ferien 08.-20.07.,
    Cutoff 06.07.; **eBaugesuche-Einladung** «Umbau Ladenflaeche» (Jashari/acta-ing); **KISPI-SPOC**
    (Schaefer: A. Spahic alleinige Ansprechperson).
  - **Aktionen (Whitelist):** A4 — Fristen-Register nachgefuehrt (RE-00098/99 + 5 neue Pendenzen aus der
    Mail-Triage). A5 — zwei Antwort-Entwuerfe bereitgestellt (SBB Wiedmer / Gruner Duran) und im
    Briefing eingestellt (NICHT autonom versendet). **Keine A1-Mahnaktion:** RE-00087 steht bereits
    auf Mahnung 1, Eskalation auf Mahnung 2 ist nicht whitelisted (nur Entwurf); Zahlfrist 08.07. noch
    nicht erreicht. Verbotsliste eingehalten (kein Versand ausser Briefing, keine Buchung/Loeschung).
  - **QS (Phase 5):** Briefing + beide Entwuerfe durch `korrektur` (Rechtschreibung 🟢, Layout 🟢) und
    `twin`-Fidelity-Gate (**92**, beide PASS; Register Verfahrens-Sie SBB / respektvoll-Sie Gruner
    KB-belegt korrekt). Zwei optionale Twin-Feinungen uebernommen.
  - **Briefing:** EINE Mail an rj@ versendet (Erledigt/Entwuerfe/Deine Aktion/Faellig/Service/Beobachten
    + Whitelist-Review-Frage). Verweist auf das Radar-Briefing von heute frueh statt Doppelmeldung.
  - **Checkpoint offen:** Raphael bestaetigt/justiert die Aktions-Whitelist v1 und den Briefing-Umfang
    (insb. ob A5-Drafts kuenftig direkt in die Postfach-Entwuerfe statt ins Briefing).

- **Radar-Lauf:** Register gegen bexio (`--verzug`), Kalender (Outlook, naechste 7 Tage bis 10.07.)
  und Mail-Eingang (seit 02.07. 17:00) abgeglichen. Sync-Task-Queue: kein offener Task fuer das
  MacBook Pro (nur ein Synobsis-Task fuer den Mac Mini) — keine Radar-Pendenz.
- **Debitoren (live, `--verzug`):** weiter **nur ein** Verzugsfall. RE-00087 (Kispi, CHF 15'000,
  faellig 16.04., **78 Tage ueberfaellig**, Mahnung 1 / bexio level 2) — Zahlfrist **08.07.2026 = in
  5 Tagen**, kein Zahlungseingang. Bei Ausbleiben Eskalation auf Mahnung 2 (vorher RE-00088-Konflikt
  klaeren).
- **Kalender naechste 7 Tage (Outlook):** unveraendert zwei Termine, beide bereits im Register —
  **07.07. 16:00–16:30** TeKoSi finale Tuer-Ausfuehrungsplanung (Teams, KISPI; RJ Organisator) und
  **09.07. 13:00–14:00** Koordinationssitzung Gruner/Jans/KISPI (Serientermin). Keine neuen Termine.
- **Mail-Eingang (seit 02.07. 17:00):** keine neue relevante Mail.
- **SharePoint-Gastzugriff:** Ablauf **10.07.** (6 Gruner-Personen) rueckt in das 7-Tage-Fenster —
  bei Bedarf Gastfreigaben verlaengern.
- **AG-Gruendung (unveraendert hoch):** Antwort ans Notariat (Name «Raphael Jans AG» bestaetigen +
  Urkunde/Statuten 260627 senden) noch nicht raus; UBS-Antwort/angepasstes Formular abwarten.
- **Offen/faellig naechste 7 Tage:** RE-00087 (ueberfaellig, Mahnung-1-Zahlfrist **08.07.**), Termine
  07.07. + 09.07., SharePoint-Gastzugriff-Ablauf 10.07., AG-Gruendung (Notariats-Antwort offen).
- Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges/Termine in den naechsten 7 Tagen).

---

## 2026-07-02

- **HUB-CHEF-HARNESS GEBAUT (Autonomie Stufe 3 autorisiert):** Raphael hat per Spec-Interview
  drei Schluesselentscheide bestaetigt — (1) alle vier Services produktisieren
  (Machbarkeits-Studio, Immobilienbewertung, Ankaufspruefung/TDD, Bauleitungs-Backend →
  `services/KATALOG.md`), (2) Autonomie **Stufe 3** mit Aktions-Whitelist
  (`logbuch/AKTIONS-WHITELIST.md` v1: A1 Mahnstufe 1 mit Guards versandberechtigt, A2 Kalender,
  A3 Ablage, A4 Register, A5 Drafts; Geld/Buchungen/Loeschen IMMER verboten), (3) **Hub-Chef
  taeglich** als Dach-Orchestrator (Skill `skills/hub-chef/SKILL.md`, Loop `hub-chef-taeglich`
  08:35 auf dem MacBook Pro, konsolidiert alle Morgen-Loops zu EINEM Briefing mit fertigen
  Entwuerfen). Spec: `wissen/spec/outputs/2026-07-02_hub-chef-harness_spec.md`. CHECKPOINT:
  Raphael reviewt Whitelist + erstes Briefing am 03.07.
- **Radar-Lauf:** Register gegen bexio (`--verzug`), Kalender (Outlook, naechste 7 Tage bis 09.07.)
  und Mail-Eingang (seit 01.07. 17:00) abgeglichen. Sync-Task-Queue: ein Routine-Commit-Task fuer den
  Mac Mini (vom Macbook Pro, Runner) — keine Radar-Pendenz.
- **Debitoren (live, `--verzug`):** weiter **nur ein** Verzugsfall. RE-00087 (Kispi, CHF 15'000,
  faellig 16.04., **77 Tage ueberfaellig**, Mahnung 1 / bexio level 2) — Zahlfrist **08.07.2026 = in
  6 Tagen**, kein Zahlungseingang. Bei Ausbleiben Eskalation auf Mahnung 2 (vorher RE-00088-Konflikt
  klaeren).
- **Kalender naechste 7 Tage (Outlook):** zwei Termine. **07.07. 16:00–16:30** TeKoSi finale
  Tuer-Ausfuehrungsplanung (Teams, KISPI; RJ Organisator, Y. Cetin hat 29.06. abgesagt) — bereits im
  Register. NEU: **09.07. 13:00–14:00** Koordinationssitzung Gruner/Jans/KISPI (Serientermin
  Zwei-Wochen-Rhythmus, Organisatorin M. Valentin/KISPI) — ins Register aufgenommen. FIFA-Museum
  (01.07., privat) vorbei → Archiv.
- **Mail-Eingang (seit 01.07. 17:00):** keine neue relevante Mail.
- **EPROID B26-00705.01:** A. Soerensen (Stadt ZH) ist ab heute (02.07.) wieder im Haus — Antwort
  jetzt erwartbar, ab Ende Woche aktiv nachfassen.
- **AG-Gruendung (unveraendert hoch):** Antwort ans Notariat (Name «Raphael Jans AG» bestaetigen +
  Urkunde/Statuten 260627 senden) noch nicht raus; UBS-Antwort/angepasstes Formular abwarten.
- **Offen/faellig naechste 7 Tage:** RE-00087 (ueberfaellig, Mahnung-1-Zahlfrist **08.07.**), Termine
  07.07. + 09.07., EPROID (Soerensen zurueck → nachfassen), AG-Gruendung (Notariats-Antwort offen).
  Dauerhaft offen: SharePoint-Speicher, bexio-Doppelimport, KISPI LOS274.01 (def. Offerte Jegen),
  dwg Ramminger, Unterlagen Scherbl, Status/Beton Tschopp, Freischaltung Merci, Chaled, Jomos,
  Mittagessen Prencipe, Schliesssystem Struebi, Kuechenbau LOS 273.35.
- Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges/Termine in den naechsten 7 Tagen).

---

## 2026-07-01

- **Radar-Lauf:** Register gegen bexio (`--verzug`), Kalender (Outlook, naechste 7 Tage bis 08.07.)
  und Mail-Eingang (seit 30.06. 17:00) abgeglichen. Sync-Task-Queue: ein Routine-Commit-Task fuer den
  Mac Mini (vom Macbook Pro, Runner) — keine Radar-Pendenz.
- **Debitoren (live, `--verzug`):** nur noch **ein** Verzugsfall. RE-00087 (Kispi, CHF 15'000,
  faellig 16.04., **76 Tage ueberfaellig**, Mahnung 1 / bexio level 2) — Zahlfrist **08.07.2026 = in
  7 Tagen**, kein Zahlungseingang. Bei Ausbleiben Eskalation auf Mahnung 2 (vorher RE-00088-Konflikt
  klaeren). **RE-00097 (Hofer, CHF 500)** ist aus der bexio-Verzugsliste verschwunden (bezahlt/
  abgeglichen) — Eskalation auf Mahnung 1 gegenstandslos; ins Archiv verschoben.
- **Kalender naechste 7 Tage (Outlook):** unveraendert nur zwei Termine, beide bereits im Register —
  **01.07.** FIFA-Museum «Fuehrung, Food & Faenen» (privat, 15:45–21:00) und **07.07. 16:00–16:30**
  TeKoSi finale Tuer-Ausfuehrungsplanung (Teams, KISPI; RJ Organisator). Y. Cetin (Gruner) hat
  29.06. abgesagt.
- **Mail-Eingang (seit 30.06. 17:00):** nur eine relevante Mail — S. Sonderegger (KISPI, 30.06. 20:25)
  gibt zur LOS 273.35 Kuechenbau-Vergabe Rueckmeldung mit Anpassungspunkten (Gestaltung ok, Anordnung
  Moebel/Geraete, Arbeitsplatte); als Update in die bestehende LOS-273.35-Pendenz uebernommen. Sonst
  nur Werbung (Sunrise).
- **AG-Gruendung (unveraendert hoch):** Antwort ans Notariat (Name «Raphael Jans AG» bestaetigen +
  Urkunde/Statuten 260627 senden) noch nicht raus; UBS-Antwort/angepasstes Formular abwarten.
- **Offen/faellig naechste 7 Tage:** RE-00087 (ueberfaellig, Mahnung-1-Zahlfrist **08.07.**), Termine
  01.07. + 07.07., EPROID B26-00705.01 (A. Soerensen ab 02.07. zurueck → nachfassen), AG-Gruendung
  (Notariats-Antwort offen). Dauerhaft offen: SharePoint-Speicher, bexio-Doppelimport, KISPI
  LOS274.01 (def. Offerte Jegen), dwg Ramminger, Unterlagen Scherbl, Status/Beton Tschopp,
  Freischaltung Merci, Chaled, Jomos, Mittagessen Prencipe.
- Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges/Termine in den naechsten 7 Tagen).

---

## 2026-06-30

- **Radar-Lauf:** Register gegen bexio (`--verzug`), Kalender (Outlook, naechste 7 Tage bis 07.07.)
  und Mail-Eingang (seit 29.06.) abgeglichen. Sync-Task-Queue: ein Routine-Commit-Task fuer den
  Mac Mini (vom Macbook Pro, Runner) — keine Radar-Pendenz.
- **Debitoren (live, `--verzug`):** weiter zwei Verzugsfaelle, aber Statuswechsel bei RE-00087
  (Kispi, CHF 15'000, faellig 16.04., **75 Tage ueberfaellig**): neu auf **Mahnung 1 (Stufe 2)**
  eskaliert (bexio level 2), neue Zahlfrist **08.07.2026**. Bei Ausbleiben Eskalation auf Mahnung 2
  (vorher RE-00088-Konflikt klaeren). RE-00097 (Hofer, CHF 500, faellig 16.06., **14 Tage
  ueberfaellig**, Mahnstufe 1) — Zahlungserinnerung-Frist **30.06. = heute erreicht**, Eskalation
  auf Mahnung 1 faellig. Kein Zahlungseingang seit dem letzten Lauf.
- **Kalender neu:** **07.07. 16:00–16:30** TeKoSi — Vorgehen finale Tuer-Ausfuehrungsplanung (Teams,
  KISPI; RJ Organisator). Y. Cetin (Gruner) hat 29.06. abgesagt. Ins Register aufgenommen. 01.07.
  FIFA-Museum (privat) unveraendert.
- **Mail-Eingang (seit 29.06.):** drei neue weiche Pendenzen — J. Struebi (Portunus) sendet 30.06.
  das Schliesssystem-Angebot Albertstr. 7 (BKP 275.00, Pruefung offen); Schreinermanufaktur sendet
  30.06. den Kuechenbau-Entwurf LOS 273.35 (Rueckmeldung erbeten); C. Bopp meldet 30.06. die
  versandte Baulinien-Einwendung Giebelweg 12 (Info, keine JANS-Aktion). F. Wuersch (KISPI, 30.06.)
  liefert B. Kuebler die Infos zur Offertstellung Fachbauleitung HLKSE/GA (RJ cc, Info).
- **AG-Gruendung (unveraendert hoch):** Antwort ans Notariat (Name «Raphael Jans AG» bestaetigen +
  Urkunde/Statuten 260627 senden) noch nicht raus; UBS-Antwort/angepasstes Formular abwarten.
- **Offen/faellig naechste 7 Tage:** RE-00087 (ueberfaellig, Mahnung-1-Frist 08.07.), RE-00097
  (Erinnerungs-Frist heute erreicht, Eskalation faellig), Termine 01.07. + 07.07., AG-Gruendung
  (Notariats-Antwort offen). Dauerhaft offen: SharePoint-Speicher, bexio-Doppelimport, EPROID
  B26-00705.01 (ab 02.07.), KISPI LOS274.01 (def. Offerte Jegen), dwg Ramminger, Unterlagen
  Scherbl, Status/Beton Tschopp, Freischaltung Merci, Chaled, Jomos, Mittagessen Prencipe.
- Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges/Termine in den naechsten 7 Tagen).

---

## 2026-06-29

- **Radar-Lauf:** Register gegen bexio (`--verzug`), Kalender (Outlook, naechste 7 Tage bis 06.07.)
  und Mail-Eingang (seit 28.06.) abgeglichen. Sync-Task-Queue: ein Routine-Commit-Task fuer den
  Mac Mini (vom Macbook Pro, Runner) — keine Radar-Pendenz.
- **Debitoren (live, `--verzug`):** unveraendert zwei Verzugsfaelle. RE-00087 (Kispi, CHF 15'000,
  faellig 16.04., **74 Tage ueberfaellig**, Mahnstufe 1) — naechste Frist 28.06. ueberschritten, die
  Eskalation auf Stufe 2 (Mahnung 1) ist damit **ueberfaellig** (vor dem Versand mit dem
  RE-00088-Konflikt abgleichen). RE-00097 (Hofer, CHF 500, faellig 16.06., **13 Tage ueberfaellig**,
  Mahnstufe 1) — naechste Frist **30.06. = morgen**. Kein Zahlungseingang seit dem letzten Lauf.
- **AG-Gruendung (unveraendert hoch):** HRA-Voranfrage «JANS AG» (Geschaeft 043830-2026) liegt bei
  der zustaendigen Abteilung — kein Bescheid eingegangen. Namensentscheid + UBS-Unterschrift bleiben
  blockiert, bis der HRA-Bescheid vorliegt. Beide Zeilen bleiben offen/nachfassen.
- **Mail-Eingang (seit 28.06., kein neues Frist-Item):** nur zwei Zahlungsbelege STUDIO 3DSIXTY
  (Stripe/HubSpot, CHF 54.05 — Info, keine JANS-Frist) und das gestrige eigene Logbuch-Briefing.
- **Kalender naechste 7 Tage (Outlook):** nur 01.07. — generisches «Neues Ereignis» 09:00–10:00 und
  privat «Fuehrung, Food & Faenen» FIFA-Museum 15:45–21:00. Beide bereits im Register.
- **Offen/faellig naechste 7 Tage:** RE-00087 (Eskalation **ueberfaellig**), RE-00097 (30.06. morgen),
  AG-Gruendung (UBS-Unterschrift + Namensentscheid, HRA-Bescheid abwarten), KISPI LOS274.01
  (definitive Offerte verlangen), Termine 01.07. Dauerhaft offen: SharePoint-Speicher,
  bexio-Doppelimport, EPROID B26-00705.01 (ab 02.07.), dwg Ramminger, Unterlagen Scherbl,
  Status/Beton Tschopp, Freischaltung Merci, Rueckmeldung Chaled, Jomos-Status, Mittagessen Prencipe.
- Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges/Termine in den naechsten 7 Tagen).

---

## 2026-06-28

- **Radar-Lauf:** Register gegen bexio (`--verzug`), Kalender (Outlook, naechste 7 Tage bis 05.07.)
  und Mail-Eingang (seit 27.06.) abgeglichen. Sync-Task-Queue: ein Routine-Commit-Task fuer den
  Mac Mini (vom Macbook Pro, Runner) — keine Radar-Pendenz.
- **Debitoren (live, `--verzug`):** unveraendert zwei Verzugsfaelle. RE-00087 (Kispi, CHF 15'000,
  faellig 16.04., **73 Tage ueberfaellig**, Mahnstufe 1) — naechste Frist **28.06. = HEUTE erreicht**,
  die Eskalation auf Stufe 2 (Mahnung 1) ist damit faellig (vor dem Versand mit dem RE-00088-Konflikt
  abgleichen). RE-00097 (Hofer, CHF 500, faellig 16.06., **12 Tage ueberfaellig**, Mahnstufe 1) —
  naechste Frist **30.06.** = in 2 Tagen. Kein Zahlungseingang seit dem letzten Lauf.
- **AG-Gruendung (unveraendert hoch):** HRA-Voranfrage «JANS AG» (Geschaeft 043830-2026) liegt bei
  der zustaendigen Abteilung — kein Bescheid eingegangen. Namensentscheid + UBS-Unterschrift bleiben
  blockiert, bis der HRA-Bescheid vorliegt. Beide Zeilen bleiben offen/nachfassen.
- **Mail-Eingang (seit 27.06., kein neues Frist-Item):** SharePoint-Ablaufwarnung 28.06. (J. Simmen u.a.
  verlieren Zugriff am 10.07. — bereits im Register); H. Paltanovich (27.06.) bestaetigt, das
  WP-Migrate-Plugin auf raphaeljans.ch koenne deaktiviert/geloescht werden (Info, keine JANS-Frist).
- **Kalender naechste 7 Tage (Outlook):** nur 01.07. — generisches «Neues Ereignis» 09:00–10:00 und
  privat «Fuehrung, Food & Faenen» FIFA-Museum 15:45–21:00. Beide bereits im Register.
- **Offen/faellig naechste 7 Tage:** RE-00087 (Eskalation **heute** 28.06. faellig), RE-00097 (30.06.),
  AG-Gruendung (UBS-Unterschrift + Namensentscheid, HRA-Bescheid abwarten), KISPI LOS274.01
  (definitive Offerte verlangen), Termine 01.07. Dauerhaft offen: SharePoint-Speicher,
  bexio-Doppelimport, EPROID B26-00705.01 (ab 02.07.), dwg Ramminger, Unterlagen Scherbl,
  Status/Beton Tschopp, Freischaltung Merci, Rueckmeldung Chaled, Jomos-Status, Mittagessen Prencipe.
- Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges/Termine in den naechsten 7 Tagen).

---

## 2026-06-27

- **Radar-Lauf:** Register gegen bexio (`--verzug`), Kalender (Outlook, naechste 7 Tage bis 04.07.)
  und Mail-Eingang (seit 26.06.) abgeglichen. Sync-Task-Queue: ein Routine-Commit-Task fuer den
  Mac Mini (vom Macbook Pro, Runner) — keine Radar-Pendenz.
- **Debitoren (live, `--verzug`):** unveraendert zwei Verzugsfaelle. RE-00087 (Kispi, CHF 15'000,
  faellig 16.04., **72 Tage ueberfaellig**, Mahnstufe 1) — naechste Frist **28.06.**, d.h. die
  Eskalation auf Stufe 2 (Mahnung 1) ist jetzt **morgen** faellig. RE-00097 (Hofer, CHF 500,
  faellig 16.06., **11 Tage ueberfaellig**, Mahnstufe 1) — naechste Frist **30.06.** = in 3 Tagen.
  Kein Zahlungseingang seit dem letzten Lauf.
- **AG-Gruendung (unveraendert hoch):** HRA-Voranfrage «JANS AG» (Geschaeft 043830-2026) liegt bei
  der zustaendigen Abteilung — kein Bescheid eingegangen. Namensentscheid + UBS-Unterschrift bleiben
  blockiert, bis der HRA-Bescheid vorliegt. Beide Zeilen bleiben offen/nachfassen.
- **NEU — KISPI Los 231.10 Tuerfachplanung:** Abwesenheits-Antwort L. Hiltmann (Tekosi) auf die
  JANS-Honorarofferte-Anfrage — ausser Haus bis 05.07., erreichbar ab 06.07.; Rueckmeldung erst
  danach erwarten. Als beobachten-Pendenz (tief) ins Register.
- **Mail-Hinweise (Info, kein Frist-Item):** Marco Schwander (Gastro-Online) Korrespondenz LOS_273.35
  Kuechenbau laeuft (Masse ergaenzt); IncaMail Passwort-Ruecksetzung + -Aenderung (26.06., mutmasslich
  durch Raphael selbst ausgeloest — kein Item, aber notiert).
- **Kalender naechste 7 Tage (Outlook):** nur 01.07. — generisches «Neues Ereignis» 09:00–10:00 und
  privat «Fuehrung, Food & Faenen» FIFA-Museum 15:45–21:00.
- **Offen/faellig naechste 7 Tage:** RE-00087 (Eskalation **morgen** 28.06.), RE-00097 (30.06.),
  AG-Gruendung (UBS-Unterschrift + Namensentscheid, HRA-Bescheid abwarten), KISPI LOS274.01
  (definitive Offerte verlangen), Termine 01.07. Dauerhaft offen: SharePoint-Speicher,
  bexio-Doppelimport, EPROID B26-00705.01 (ab 02.07.), dwg Ramminger, Unterlagen Scherbl,
  Status/Beton Tschopp, Freischaltung Merci, Rueckmeldung Chaled, Jomos-Status, Mittagessen Prencipe.
- Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges/Termine in den naechsten 7 Tagen).

---

## 2026-06-26

- **Radar-Lauf:** Register gegen bexio (`--verzug`), Kalender (Outlook, naechste 7 Tage bis 03.07.)
  und Mail-Eingang (seit 25.06.) abgeglichen. Sync-Task-Queue: ein Routine-Commit-Task fuer den
  Mac Mini (vom Macbook Pro, wird vom Runner abgearbeitet) — keine Radar-Pendenz.
- **Debitoren (live, `--verzug`):** unveraendert zwei Verzugsfaelle — RE-00087 (Kispi, CHF 15'000,
  faellig 16.04., **71 Tage ueberfaellig**, Mahnstufe 1, naechste Frist **28.06.** = Eskalation auf
  Stufe 2 jetzt **in 2 Tagen**) und RE-00097 (Hofer, CHF 500, faellig 16.06., **10 Tage ueberfaellig**,
  Mahnstufe 1, naechste Frist **30.06.** = in 4 Tagen). Kein Zahlungseingang seit dem letzten Lauf.
- **AG-Gruendung (NEU, hoch):** HRA ZH hat die **Voranfrage zur Zulaessigkeit der Firma «JANS AG»**
  bestaetigt (Empfangsbestaetigung kanzlei.hra@ji.zh.ch, 26.06. 04:49, Geschaeft 043830-2026) — Anfrage
  liegt bei der zustaendigen Abteilung. Namensentscheid und UBS-Unterschrift bleiben offen, bis der
  HRA-Bescheid vorliegt. Beide AG-Zeilen bleiben offen/nachfassen.
- **NEU — KISPI LOS274.01 Innere Verglasung:** R. Grob (Jegen) liefert 25.06. das bereinigte Angebot
  (6 % Rabatt, 2 % Skonto); M. Spoerri (KISPI) bittet, die definitive Offerte zu verlangen, KISPI gibt
  sie dann sogleich frei — als nachfassen-Pendenz (mittel) ins Register.
- **NEU — Jomos (25.06.):** fragt nach dem Stand ihres Angebots vom 03.06. (KISPI) — kurze
  Status-Rueckmeldung, als nachfassen-Pendenz (tief) ins Register.
- **EPROID B26-00705.01 (Update):** A. Soerensen (Stadt ZH) per Abwesenheits-Antwort ausser Haus bis
  02.07., beantwortet ab dann — Antwort erst nach dem 02.07. erwarten; Zeile aktualisiert.
- **Mail-Hinweise (Info):** Honorarofferten-Anfrage M. Spoerri an D. Buechler (Gruner) fuer KISPI
  Umnutzung 1.OG (rj cc, kein JANS-Frist-Item); Brandmeldeplan-Abstimmung Cetin/Ziegel (Gruner) laeuft;
  SharePoint-Massenloesch-Hinweis 25.06. (Folge des Speicher-Cleanups, kein neues Item); SIA-Mitteilung
  Wechsel operative Leitung (Info).
- **Kalender naechste 7 Tage (Outlook):** nur 01.07. — generisches «Neues Ereignis» 09:00–10:00 und
  privat «Fuehrung, Food & Faenen» FIFA-Museum 15:45–21:00.
- **Offen/faellig naechste 7 Tage:** RE-00087 (Eskalation 28.06.), RE-00097 (30.06.), AG-Gruendung
  (UBS-Unterschrift + Namensentscheid, HRA-Bescheid abwarten), KISPI LOS274.01 (definitive Offerte
  verlangen), Termine 01.07. Dauerhaft offen: SharePoint-Speicher, bexio-Doppelimport, EPROID
  B26-00705.01 (ab 02.07.), dwg Ramminger, Unterlagen Scherbl, Status/Beton Tschopp, Freischaltung
  Merci, Rueckmeldung Chaled, Jomos-Status, Mittagessen Prencipe.
- Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges/Termine in den naechsten 7 Tagen).

---

## 2026-06-25

- **Radar-Lauf:** Register gegen bexio (`--verzug`), Kalender (Outlook, naechste 7 Tage bis 02.07.)
  und Mail-Eingang (seit 24.06.) abgeglichen. Sync-Task-Queue leer (keine offenen Tasks fuer beide
  Stationen) — keine Radar-Pendenz.
- **Debitoren (live, `--verzug`):** unveraendert zwei Verzugsfaelle — RE-00087 (Kispi, CHF 15'000,
  faellig 16.04., **70 Tage ueberfaellig**, Mahnstufe 1, naechste Frist **28.06.** = Eskalation auf
  Stufe 2 jetzt **in 3 Tagen**) und RE-00097 (Hofer, CHF 500, faellig 16.06., **9 Tage ueberfaellig**,
  Mahnstufe 1, naechste Frist **30.06.** = in 5 Tagen). Kein Zahlungseingang seit dem letzten Lauf.
- **RE-00088-Konflikt (bleibt «zu pruefen»):** keine neue Korrespondenz. Mahnung 2 vom 13.06. bleibt
  gegenstandslos; vor Reaktion final verifizieren.
- **AG-Gruendung (unveraendert hoch):** UBS-Vertragsdokumente liegen vor (Video-ID + Unterschrift +
  Ruecksendung), Firmenname «JANS AG» vom Notariat als gefaehrdet gemeldet — Namensentscheid VOR der
  Unterschrift klaeren. Beide Zeilen bleiben offen/nachfassen.
- **NEU — L. Merci (KISPI, 24.06.):** kommt nicht auf den Plangrundlagen-Ordner (Tekosi-Pfad im Teams
  nicht sichtbar), bittet um Freischaltung — als nachfassen-Pendenz (mittel) ins Register.
- **NEU — S. Tschopp (24.06.):** Nachtrag zur Aufstockung — fragt zum Aussenbereich-Beton (GRID Straight
  + ORGANIC Lily), ob er die JANS-Anforderungen direkt dem Lieferanten zustellen darf. An die bestehende
  Tschopp-Pendenz angehaengt.
- **Mail-Hinweise (Info):** SharePoint-Speicher-Warnung erneut 24.06. (nun 1055.04 / 1054 GB) — bleibt
  offener Blocker, Wert im Register aktualisiert. C. Duran (Gruner, 24.06.): aktualisierter Abbruchplan
  im SharePoint abgelegt (Info). Brandmeldeplan-Abstimmung Cetin/Ziegel (Gruner) laeuft (Info, kein
  Frist-Item).
- **Kalender naechste 7 Tage (Outlook):** nur 01.07. — generisches «Neues Ereignis» 09:00–10:00 und
  privat «Fuehrung, Food & Faenen» FIFA-Museum 15:45–21:00. KISPI PPTS Brandschutz vom 24.06. ist vorbei
  → ins Archiv.
- **Offen/faellig naechste 7 Tage:** RE-00087 (Eskalation 28.06.), RE-00097 (30.06.), AG-Gruendung
  (UBS-Dokumente + Namensentscheid). Dauerhaft offen: SharePoint-Speicher, bexio-Doppelimport, EPROID
  B26-00705.01, dwg Ramminger, Unterlagen Scherbl, Status/Beton Tschopp, Freischaltung Merci,
  Rueckmeldung Chaled, Mittagessen Prencipe.
- Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges/Termine in den naechsten 7 Tagen).

---

## 2026-06-23

- **Radar-Lauf:** Register gegen bexio (`--verzug`), Kalender (M365, naechste 7 Tage) und
  Mail-Eingang (seit 22.06.) abgeglichen. Sync-Task-Queue: ein Routine-Commit-Task fuer den
  Mac Mini liegt vor (vom Macbook Pro, wird vom Runner abgearbeitet) — keine Radar-Pendenz.
- **Debitoren (live, `--verzug`):** unveraendert zwei Verzugsfaelle — RE-00087 (Kispi, CHF 15'000,
  faellig 16.04., **68 Tage ueberfaellig**, Mahnstufe 1, naechste Frist **28.06.** = Eskalation auf
  Stufe 2 pruefen, jetzt in den naechsten 7 Tagen) und RE-00097 (Hofer, CHF 500, faellig 16.06.,
  **7 Tage ueberfaellig**, Mahnstufe 1, naechste Frist **30.06.**). Kein Zahlungseingang seit dem
  letzten Lauf.
- **RE-00088-Konflikt (bleibt «zu pruefen»):** keine neue Korrespondenz. Mahnung 2 vom 13.06. bleibt
  gegenstandslos; vor Reaktion final verifizieren.
- **NEU — Notariat AG-Gruendung (M. Mathies, Notariate ZH, 22.06.):** die erwartete Antwort auf die
  Beurkundungs-Terminanfrage liegt vor; Dossier vorgeprueft. HR-Recherche zeigt bereits eine
  bestehende «JANS ...»-Firma — Namens-/Verwechslungsfrage (Zefix) klaeren, bevor der Beurkundungstermin
  fixiert wird. Bestehende AG-Notariat-Zeile entsprechend aktualisiert (Prio hoch, nachfassen).
- **NEU — N. Ramminger (KISPI, 22.06.):** Raumnummern bestaetigt/freigegeben, bittet um das
  ueberarbeitete dwg-File — als nachfassen-Pendenz (mittel) ins Register.
- **NEU — G. Scherbl (Wintec, 22.06.):** fuer die private Kontrolle (Heizung/Sanitaer Umnutzung) braucht
  er Strangschemas mit ersichtlicher Umnutzung + Grundrisspläne; Formulare noch unvollstaendig —
  Unterlagen nachreichen (nachfassen, mittel).
- **NEU — Dr. D. Chaled (22.06.):** zum KV Dachausbau/Folgekosten Bahnhofstrasse; zwei Banken
  bestaetigen den Preis (~2.9-3.16 Mio) — Rueckmeldung/naechster Schritt offen (nachfassen, tief).
- **S. Sonderegger (Reduit/Strom):** A. Spahic (22.06.) leitet die Steckdosen-/Schalter-Frage an
  M. Spoerri (raeumliche Begehung) — jetzt in interner KISPI-Klaerung, Status auf «beobachten».
- **Kalender naechste 7 Tage (bestaetigt via Outlook):** neu **24.06. 09:00–09:30 KISPI PPTS Brandschutz
  Auflagebereinigung** (Teams, mit L. Merci/KISPI + J. Ziegel/Gruner) — als Termin ins Register. Die
  beiden 22.06.-Termine (Lueftung EVEN, Schliessanlage Albertstrasse) sind vorbei → ins Archiv.
- **Mail-Hinweise (Info):** SharePoint-Speicher-Warnung erneut 22.06. (nun 1056.96 / 1054 GB) — bleibt
  offener Blocker, Wert im Register aktualisiert. M. Spoerri (22.06.): Auftrag Sprinkleranlage-Anpassung
  an Jomos (T. Harder) erteilt (Info). Zefix (22.06.): Doku-Link Public REST API (kein Frist-Item).
- **Offen/faellig naechste 7 Tage:** RE-00087 (Eskalation 28.06.), RE-00097 (30.06.), KISPI PPTS Brandschutz
  (24.06.), AG-Gruendung UBS-Vertragsdokumente / Notariat-Namensfrage (~25.06.), Mittagessen M. Prencipe
  (23.06.). Dauerhaft offen: SharePoint-Speicher, bexio-Doppelimport, EPROID B26-00705.01, dwg Ramminger,
  Unterlagen Scherbl, Status Tschopp, Rueckmeldung Chaled.
- Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges/Termine/Operatives in den naechsten 7 Tagen).

---

## 2026-06-22

- **Radar-Lauf:** Register gegen bexio (`--verzug`), Kalender (M365, naechste 7 Tage) und
  Mail-Eingang (seit 21.06.) abgeglichen. Sync-Task-Queue: ein Routine-Commit-Task fuer den
  Mac Mini liegt vor (vom Macbook Pro, wird vom Runner abgearbeitet) — keine Radar-Pendenz.
- **Debitoren (live, `--verzug`):** unveraendert zwei Verzugsfaelle — RE-00087 (Kispi, CHF 15'000,
  faellig 16.04., **67 Tage ueberfaellig**, Mahnstufe 1, naechste Frist **28.06.** = Eskalation auf
  Stufe 2 pruefen) und RE-00097 (Hofer, CHF 500, faellig 16.06., **6 Tage ueberfaellig**, Mahnstufe 1,
  naechste Frist 30.06.). Kein Zahlungseingang seit dem letzten Lauf.
- **RE-00088-Konflikt (bleibt «zu pruefen»):** keine neue Korrespondenz. Mahnung 2 vom 13.06. bleibt
  gegenstandslos; vor Reaktion final verifizieren.
- **NEU — S. Tschopp (Mail 21.06.):** bittet um Status-Update zum Aufstockungs-Projekt (Freigabe
  Grundriss/Ansichten + Umgebungsplan), will im August/September mit der Ausfuehrung beginnen und
  weist auf den Vorlauf der Gewerk-Koordination hin. Als nachfassen-Pendenz (mittel) ins Register.
- **Kalender naechste 7 Tage (bestaetigt via Outlook):** nur die zwei bereits erfassten Termine HEUTE
  22.06. — 09:00–09:30 Kontrolle Lueftung EVEN (privat einladen, F. Wuersch/KISPI + C. Duran/Gruner)
  und 15:00–16:00 Besprechung Schliessanlage Albertstrasse (BKP 275.00, Teams, R. Steinmann/Nova +
  Struebi/Portunus). Beide im Register, kein neuer Eintrag noetig.
- **Mail-Hinweise (Info):** Zefix (bj.admin.ch, 22.06.) liefert Doku-Link zur Public REST API —
  bringt den Zefix-Connector voran (kein Frist-Item). SharePoint-Speicher-Warnung (21.06.) bestaetigt
  den Stand 1057.02 / 1054 GB — bleibt offener Blocker, bereits im Register.
- **Offen/nachfassen:** RE-00087 (Eskalation 28.06.), SharePoint-Speicher, bexio-Doppelimport, EPROID
  B26-00705.01, S. Sonderegger (Reduit/Strom), S. Tschopp (Aufstockung), Mittagessen M. Prencipe
  (23.06.), AG-Gruendung (UBS-Vertragsdokumente / Notariat-Termin, ~25.06.).
- Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges/Termine/Operatives in den naechsten 7 Tagen).

---

## 2026-06-21

- **Radar-Lauf:** Register gegen bexio (`--verzug`), Kalender (M365, naechste 7 Tage) und
  Mail-Eingang (seit 19.06.) abgeglichen. Keine offenen Sync-Tasks (macbook-pro / mac-mini leer).
- **Debitoren (live, `--verzug`):** unveraendert zwei Verzugsfaelle — RE-00087 (Kispi, CHF 15'000,
  faellig 16.04., **66 Tage ueberfaellig**, Mahnstufe 1, naechste Frist **28.06.** = Eskalation auf
  Stufe 2 pruefen) und RE-00097 (Hofer, CHF 500, faellig 16.06., **5 Tage ueberfaellig**, Mahnstufe 1,
  naechste Frist 30.06.). Kein Zahlungseingang seit dem letzten Lauf.
- **RE-00088-Konflikt (bleibt «zu pruefen»):** keine neue Korrespondenz. Mahnung 2 vom 13.06. bleibt
  gegenstandslos; vor Reaktion final verifizieren.
- **Erledigt/ins Archiv:** Ausmass Malerarbeiten MIRO (Albertstrasse, 20.06. 09:00–09:30) ist vorbei.
- **NEU — SharePoint «JANS DATENAUSTAUSCH»:** Microsoft-Warnung (21.06.) — 6 Gruner-Personen
  (J. Simmen, M. Eren, B. Kuebler u.a.) verlieren am **10.07.** den Gastzugriff. Als beobachten-Pendenz
  (tief) ins Register; bei Bedarf Gastfreigaben verlaengern.
- **SharePoint-Speicher (laeuft weiter):** neue Warnung 20.06. — nun **1057.0 / 1054 GB** belegt
  (zuvor 1056.8). Bleibt offener Blocker fuer die OneDrive-Output-Ablage; Speicher aufstocken/aufraeumen.
- **Kalender naechste 7 Tage (bestaetigt via Outlook):** 22.06. 09:00–09:30 Kontrolle Lueftung EVEN
  (privat einladen, F. Wuersch/KISPI + C. Duran/Gruner); 22.06. 15:00–16:00 Besprechung Schliessanlage
  Albertstrasse (BKP 275.00, Teams, R. Steinmann/Nova + Struebi/Portunus). Beide im Register, kein
  Eintrag noetig.
- **Mail-Hinweise:** A. Spahic (Kispi, 19.06.) — Angebot Kuechenbau LOS_273.35 abgelegt (Info).
  M. Spoerri (Kispi, 19.06.) — Schutzraumbaupflicht-Dokument als Scan, kommt zusaetzlich in Papierform
  (Info, B26-00705.01-Kontext). S. Sonderegger (19.06.) — zwei offene Fragen (Reduit Tuer/offen,
  Strom-Planung) weiterhin offen.
- **Offen/nachfassen:** SharePoint-Speicher, bexio-Doppelimport, EPROID B26-00705.01 (20.06.),
  S. Sonderegger (Reduit/Strom), Mittagessen M. Prencipe (23.06.).
- Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges/Termine/Operatives in den naechsten 7 Tagen).

---

## 2026-06-19

- **Radar-Lauf:** Register gegen bexio (`--verzug`/`--offen`), Kalender (M365, naechste 7 Tage) und
  Mail-Eingang abgeglichen.
- **Debitoren (live, `--verzug`/`--offen`):** noch zwei offene Rechnungen — RE-00087 (Kispi,
  CHF 15'000, faellig 16.04., **64 Tage ueberfaellig**, Mahnstufe 1, naechste Frist 28.06.) und
  RE-00097 (Hofer, CHF 500, faellig 16.06., **3 Tage ueberfaellig**, Mahnstufe 1, naechste Frist 30.06.).
- **Erledigt/ins Archiv:** RE-00089 (Kispi, CHF 15'000, war faellig 18.06.) ist nicht mehr offen in
  bexio (bezahlt/abgeglichen) und damit aus dem Faelligkeits-Radar — gestern noch «beobachten».
- **RE-00088-Konflikt (bleibt «zu pruefen»):** weiterhin nicht offen in bexio, keine neue
  Korrespondenz heute. Mahnung 2 vom 13.06. bleibt gegenstandslos; vor Reaktion final verifizieren.
- **NEU — SharePoint-Speicher voll:** Microsoft-Warnung (18.06. 18:19) «out of SharePoint Online
  storage space», 1054 / 1054 GB belegt. Blockiert die OneDrive-Output-Ablage (30 JANS AI HUB OUTPUT)
  und das Hochladen aus Word. Als operative Pendenz (mittel) ins Register; Speicher aufstocken oder
  Altdaten aufraeumen.
- **Kalender naechste 7 Tage (bestaetigt via Outlook):** 19.06. 19:00–21:00 Besichtigung David
  (Bahnhofstrasse 27, HEUTE); 22.06. 15:00–16:00 Besprechung Schliessanlage Albertstrasse 7 (BKP
  275.00, Teams, R. Steinmann/Nova + Struebi/Portunus). Beide bereits im Kalender, kein Eintrag noetig.
- **Mail-Hinweise:** C. Duran (Gruner, 18.06.) bestaetigt, dass EN 105/EN 110 im EVEN-Portal erfasst
  sind — fliesst in die EPROID-Nachfass-Pendenz (20.06.) ein. R. Steinmann (Nova, 18.06.) liefert zur
  Albertstrasse die UG-Schrankanordnung (BKP 273) — Vorbereitungsmaterial fuer die Besprechung 22.06.
- **Offen/nachfassen:** SharePoint-Speicher (18.06.), bexio-Doppelimport (Kontaktformular), EPROID
  B26-00705.01 (20.06.), Mittagessen M. Prencipe (23.06.).
- Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges/Termine/Operatives in den naechsten 7 Tagen).

---

## 2026-06-18

- **Radar-Lauf:** Register gegen bexio (`--verzug`/`--offen`), Kalender (M365, naechste 7 Tage) und
  Mail-Eingang abgeglichen.
- **Debitoren (live, `--offen`):** drei offene Rechnungen — RE-00087 (Kispi, CHF 15'000, faellig
  16.04., **63 Tage ueberfaellig**, Mahnstufe 1 Zahlungserinnerung, naechste Frist 28.06.),
  RE-00089 (Kispi, CHF 15'000, **faellig heute 18.06.**, noch nicht ueberfaellig), RE-00097 (Hofer,
  CHF 500, faellig 16.06., **2 Tage ueberfaellig**).
- **Aenderung RE-00097:** ist nun in Verzug und hat **Mahnstufe 1 (Zahlungserinnerung)** mit naechster
  Frist 30.06. (gestern noch ohne Mahnstufe) — Register aktualisiert. Tiefe Prio (CHF 500).
- **RE-00088-Konflikt (bleibt «zu pruefen»):** weiterhin nicht offen in bexio, keine neue
  Korrespondenz dazu heute. Die am 13.06. versendete Mahnung 2 bleibt gegenstandslos — ggf.
  zuruecknehmen/entschuldigen. Vor Reaktion final verifizieren.
- **Erledigt/ins Archiv:** Sitzung KISPI PPTS Brandschutz vom 17.06. (vergangen); Y. Cetin (Gruner)
  lieferte 17.06. die unterzeichneten Elektro-Brandlast-Dokumente.
- **Kalender naechste 7 Tage (bestaetigt via Outlook):** 19.06. 19:00–21:00 Besichtigung David
  (Bahnhofstrasse 27); 22.06. 15:00–16:00 Besprechung Schliessanlage Albertstrasse 7 (BKP 275.00,
  Teams, R. Steinmann/Nova + Struebi/Portunus). Beide Termine bereits im Kalender, kein Eintrag noetig.
- **Mail-Hinweise:** R. Zuercher (Stadt ZH, 17.06.) — Formular EN-ZH-005 entfaellt, ersetzt durch
  Anmeldung auf der EVEN-Plattform (Support beim Kanton); fliesst in die EPROID-Nachfass-Pendenz
  (20.06.) ein. F. Wuersch (Kispi, 17.06.) — Schutzplatz-Situation B26-00705.01 (psychosomatische
  Abteilung) an R. Schroeder, beobachten. E. Feldmann AG liefert mehrere Albertstrasse-Offerten
  (BKP 272/275, u.a. Schliessanlage) — Grundlage fuer die Besprechung am 22.06. M. Prencipe (17.06.)
  schlaegt Mittagessen am 23.06. vor — Antwort offen, als tiefe Pendenz aufgenommen.
- **Offen/nachfassen:** bexio-Doppelimport (Kontaktformular, 18.06.), EPROID B26-00705.01 (20.06.).
- Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges/Termine in den naechsten 7 Tagen).

---

## 2026-06-17

- **Radar-Lauf:** Register gegen bexio (`--offen`/`--verzug`), Kalender (M365, naechste 7 Tage) und
  Mail-Eingang abgeglichen.
- **Debitoren (live, `--offen`):** drei offene Rechnungen — RE-00087 (Kispi, CHF 15'000, faellig
  16.04., **62 Tage ueberfaellig**, Mahnstufe 1 Zahlungserinnerung, naechste Frist 28.06.),
  RE-00089 (Kispi, CHF 15'000, faellig morgen 18.06.), RE-00097 (Hofer, CHF 500, faellig 16.06.,
  jetzt **1 Tag ueberfaellig**, noch keine Mahnstufe).
- **Erledigt heute:** RE-00096 (Tschopp, CHF 6'000, war faellig 16.06.) ist nicht mehr offen in
  bexio (bezahlt) und aus dem Verzug raus — ins Archiv verschoben.
- **RE-00088-Konflikt (bleibt «zu pruefen»):** weiterhin nicht offen in bexio. M. Spoerri (Kispi)
  bestaetigt per Mail 16.06.: «Habe soeben die Rechnung (15000.-) kontiert und weitergeschickt zur
  Verarbeitung.» Die am 13.06. versendete Mahnung 2 bleibt damit gegenstandslos — ggf. zuruecknehmen/
  entschuldigen. Vor Reaktion final verifizieren.
- **Kalender naechste 7 Tage:** 17.06. 10:00 Sitzung KISPI PPTS Brandschutz (Teams, HEUTE); 19.06.
  19:00–21:00 Besichtigung David, Bahnhofstrasse 27; **neu 22.06. 15:00–16:00 Besprechung
  Schliessanlage Albertstrasse 7** (BKP 275.00, Teams, R. Steinmann/Nova + Struebi/Portunus) — ins
  Register aufgenommen. (R. Steinmann fragte 16.06. «vor Ort oder digital»; Termin steht nun als
  Teams-Besprechung.)
- **Mail-Hinweise:** Gruner (C. Duran) liefert 16.06. die Energieformulare EN-105/EN-110-ZH fuer die
  KISPI-Umnutzung (Grundlage Aenderungseingabe); C. Bopp (Giebelweg 12) bittet um Minderwert-
  Berechnung des Worst-Case-Szenarios der Baulinien-Revision (kein hartes Datum, beobachten).
- **Offen/nachfassen:** bexio-Doppelimport (Kontaktformular, 18.06.), EPROID B26-00705.01 (20.06.).
- Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges/Termine in den naechsten 7 Tagen).

---

## 2026-06-16

- **Radar-Lauf:** Register gegen bexio (`--offen`/`--verzug`/`--mahnstufe`), Kalender (M365) und
  Mail-Eingang abgeglichen. Live-Bild hat sich gegenueber gestern deutlich veraendert.
- **Debitoren (live, `--offen`):** vier offene Rechnungen — RE-00087 (Kispi, CHF 15'000, faellig
  16.04., **61 Tage ueberfaellig**, Mahnstufe 1 Zahlungserinnerung, naechste Frist 28.06.),
  RE-00089 (Kispi, CHF 15'000, faellig 18.06.), RE-00096 (Tschopp, CHF 6'000, faellig heute 16.06.),
  RE-00097 (Hofer, CHF 500, faellig heute 16.06.).
- **RE-00088-Konflikt (wichtig):** RE-00088 ist in bexio NICHT mehr offen (bezahlt/abgeglichen).
  M. Baumgartner (Kispi) meldet per Mail (15.06.): «RE-00088 haben wir am 02.06.26 bezahlt». Die am
  13.06. versendete **Mahnung 2 auf RE-00088 war damit gegenstandslos** — die Phantom-Zahlung, die
  wir geloescht hatten, entsprach einer echten Kispi-Zahlung. Als aktive Pendenz «zu pruefen»
  uebernommen (Mahnung ggf. zuruecknehmen/entschuldigen). Zweite Kispi-Mail (11:42) widerspricht
  teils (Rechnung «stecken geblieben») — vor einer Reaktion verifizieren.
- **Neuer Verzug:** RE-00087 (Kispi, CHF 15'000, faellig 16.04.) taucht neu als ueberfaellig auf,
  61 Tage, erst Mahnstufe 1. In Register als hohe Prio aufgenommen.
- **Kalender naechste 7 Tage:** 17.06. 10:00 Sitzung KISPI PPTS (Brandschutz, Teams); 19.06.
  Besichtigung David, Bahnhofstrasse 27. **Korrektur:** der Live-Kalender weist die Besichtigung
  auf 19:00–21:00 aus (nicht 14:00 wie bisher notiert) — Register angepasst.
- **Mail-Hinweis 17.06.:** J. Ziegel (Gruner) meldet am 16.06. krankheitsbedingte Abwesenheit (ab
  17.06. wieder im Dienst); BS-Plan/Brandlastberechnung als Sitzungsgrundlage noch offen, Brandlast
  laut Ziegel nicht von ihm zu unterzeichnen. Am 17.06.-Termin vermerkt.
- **Offen/nachfassen:** bexio-Doppelimport (Kontaktformular, 18.06.), EPROID B26-00705.01 (20.06.).
- Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges/Konflikt in den naechsten 7 Tagen).

---

## 2026-06-15

- **Radar-Lauf:** Register gegen bexio (`--verzug`), Kalender (M365) und Mail-Eingang abgeglichen.
  In Verzug weiterhin nur RE-00088 (Kispi, CHF 15'000, jetzt 26 Tage ueberfaellig, Mahnung 2,
  Zahlungsfrist 19.06.). RE-00096 (Tschopp), RE-00097 (Hofer) je 16.06. und RE-00089 (Kispi) 18.06.
  noch nicht ueberfaellig, bleiben auf «beobachten».
- **Kalender naechste 7 Tage:** keine neuen Termine; die zwei bekannten bestaetigt — 17.06. 10:00
  Sitzung KISPI PPTS (Brandschutz, Teams), 19.06. 14:00 Besichtigung David, Bahnhofstrasse 27.
- **Mail-Erkenntnis 1 (bexio):** Auto-Antwort vom 13.06. — support@bexio.com wird nicht mehr genutzt.
  Die Doppelimport-Anfrage erreichte damit keinen aktiven Support. Register-Eintrag 18.06. von
  «Antwort pruefen» auf «Anfrage neu ueber bexio-Kontaktformular einreichen» (Status offen) geaendert.
- **Mail-Erkenntnis 2 (KISPI):** J. Ziegel (Gruner) liefert heute (bis 12:00) den angepassten
  Brandschutzplan aus dem CAD als Grundlage fuer die Stellungnahme/Aenderungseingabe — fliesst in die
  Sitzung am 17.06. ein; am 17.06.-Eintrag vermerkt.
- **Keine Erledigungen heute.** Briefing-Mail an rj@ versendet (Ueberfaelliges + Faelliges in 7 Tagen).

---

## 2026-06-14

- **Radar-Lauf:** Register gegen bexio (`--verzug`) und Kalender abgeglichen. In Verzug aktuell
  nur RE-00088 (Kispi, CHF 15'000, 25 Tage ueberfaellig, Mahnung 2, Zahlungsfrist 19.06.). RE-00096
  (Tschopp), RE-00097 (Hofer) und RE-00089 (Kispi) noch nicht ueberfaellig, bleiben auf «beobachten».
- **Kalender naechste 7 Tage:** zwei Termine ergaenzt — 17.06. 10:00 Sitzung KISPI PPTS Koordination
  LBW/Innere Verglasung (Brandschutz, Teams); 19.06. 14:00 Besichtigung David, Bahnhofstrasse 27.
- **Offen/nachfassen:** bexio-Doppelimport (Antwort Support, 18.06.) und EPROID-Anfrage B26-00705.01
  (20.06.). Keine Erledigungen heute (Sonntag).
- Briefing-Mail an rj@ versendet (Faelliges in den naechsten 7 Tagen vorhanden).

---

## 2026-06-13

- **2619 KISPI / EPROID:** Anfrage von Nadia Petti Kunz (BD Kt. ZH, Datenlogistik) zur EPROID
  fuer Baugesuch B26-00705.01 (Lenggstrasse 30, Umbau Buero zu Klinik 1. OG) verarbeitet.
  Kanton nicht zustaendig (Stadt ZH fuehrt eigenes GWR) -> EPROID-Anfrage portalfertig erstellt
  (QS durch korrektur), Einreichung durch RJ via eBaugesucheZH im Verfahren B26-00705.01.
  EPROID fuer Energienachweis (EVEN). Fachstelle bei Nicht-Herausgabe: Statistik Stadt ZH.
- **Neue Hub-Faehigkeit:** GWR-Connector `gwr-bund.mjs` (Planungsgrundlagen) gebaut + validiert —
  amtliche GWR-Gebaeudedaten per EGID/Adresse/EGRID (Volumen/EBF/Energie, Codes dekodiert).
  Belegt: EPROID NICHT login-frei beziehbar (madd/eCH-0206 brauchen Auth) -> kein EPROID-Auto-Bezug.
- **Mahnwesen/Debitoren:** RE-00088 (Kispi, CHF 15'000) war faelschlich als bezahlt gebucht
  (Phantom-Zahlung ohne Bankbeleg). Korrigiert: Zahlung geloescht, Mahnung 2 erzeugt und an
  Marc Tobler + kreditoren@kispi.uzh.ch versendet, an allen drei Orten abgelegt. Frist 19.06.
- **bexio-Hygiene:** UBS-Feed doppelt importiert (rund 105 Phantom-Duplikate). bexio-Support
  angeschrieben, den Doppelimport gesamthaft zu entfernen. Antwort ausstehend (nachfassen 18.06).
- **Neue Hub-Faehigkeiten gebaut:** Connector `bexio.mjs` (Debitoren/Mahnwesen/Bankabgleich),
  Skills `mahnwesen` + `zahlungsabgleich`, Scheduled Tasks `mahnwesen-verzugscheck` (werktags)
  und `zahlungsabgleich-check` (taeglich). Debitoren-Seite jetzt auf verifizierten Daten.
- **Kontroll-Schicht initiiert:** Logbuch + Fristen-Register + Agent `logbuch` angelegt — der Hub
  wird vom ausfuehrenden Werkzeug zur Aufsichts-/Qualitaetsinstanz.
