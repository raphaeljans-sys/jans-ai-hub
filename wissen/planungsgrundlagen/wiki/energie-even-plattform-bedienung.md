---
title: EVEN — Bedienung, Rollen & Workflow (energievollzug.ch)
status: established
last_updated: 2026-07-13
sources: [EnDK-Schulung «EVEN — elektronischer Vollzug energetischer Nachweise / Schulung der Bewilligungsbehoerden in Kantonen mit Privater Kontrolle» Version 1.4 Stand 13.10.2025 (energieagentur-sg.ch, 68 Folien), zh.ch/energienachweise (abgerufen 04.07.2026), energie-zentralschweiz.ch/vollzug/even (abgerufen 04.07.2026), energievollzug.ch, realer Fallverlauf 2619-KISPI (Projektablage + Buero-Memory, Stand 13.07.2026/Run 20)]
links: [[energie-energienachweis-zh-formulare]], [[energie-uebersicht]], [[energie-private-kontrolle-zh]], [[kartenportale-gwr-bund]], [[recht-norm-quellenlandkarte]]
---

# EVEN — Bedienung, Rollen & Workflow (energievollzug.ch)

Beantwortet **D6** (QUESTIONS): die konkrete Bedienung der Plattform **EVEN — Elektronischer
Vollzug Energetischer Nachweise** (`energievollzug.ch`), ueber die der Kt. ZH **seit 01.01.2026**
den Energienachweis abwickelt. Der Vorgaenger-Artikel `[[energie-energienachweis-zh-formulare]]`
liefert die **Formular-Logik** (welcher EN-Nachweis wann, welche Rechtsgrundlage); dieser Artikel
liefert die **Handhabung** (Rollen, Projektstruktur, Ablauf, Statusmodell) — die Struktur
*innerhalb* von EVEN. Faktenbasis: offizielle **EnDK-Schulungsunterlage Version 1.4 (13.10.2025)**
fuer Kantone **mit Privater Kontrolle** (= Kt. ZH, siehe `[[energie-private-kontrolle-zh]]`).

## 1 — Was EVEN ist (und was nicht)

- **EVEN** = **E**lektronischer **V**ollzug **E**nergetischer **N**achweise: Digitalisierung des
  Prozesses, mit dem die Gesuchstellerschaft die Einhaltung der energierechtlichen Vorgaben
  nachweist — im ordentlichen Verfahren wie im Meldeverfahren.
- EVEN bildet **nur die Energienachweise und -Meldungen** ab, **nicht den gesamten
  Baubewilligungsprozess** (Schulung Folie 5). Das Baugesuch selbst laeuft weiter ueber die
  kantonale/kommunale Baugesuchsloesung (z. B. eBAU); EVEN hat **offene Schnittstellen** dorthin.
- **Ausloeser:** die frueheren PDF-Formulare EN-101…EN-141 waren «End of Life» (Mehrsprachigkeit,
  Platz, eingeschraenkte Bearbeitung). EVEN ersetzt sie durch **web-basierte Formulare** mit
  gefuehrter Eingabe (Einstieg mit wenigen zentralen Angaben, weitere Felder erst bei Bedarf).
- **Betreiber/Traeger:** Projekt der **EnDK** (Konferenz Kantonaler Energiedirektoren), gestartet
  Ende 2023 von 25 Kantonen; unterstuetzt von EnergieSchweiz.

### Teilnehmende Kantone (Folie 16, Stand 10/2025)
**Alle Kantone ausser Bern** + **Fuerstentum Liechtenstein** (25 Kantone + FL) — die gleiche
Oberflaeche fuer planendes und ausfuehrendes Gewerbe. **Kt. Aargau** war Ersteinfuehrer
(digitale Einreichung ab **01.04.2025**); Kt. ZH und die meisten uebrigen ab **01.01.2026**.
Auf der Willkommensseite (`energievollzug.ch`) waehlt man **zuerst den Kanton des Bauprojekts**,
dann Login/Registrierung.

## 2 — Projektstruktur (die Datenhierarchie)

Ein **Projekt** umfasst (Folien 33-34):
- **eine Bauherrschaft**,
- **eine oder mehrere Parzellen**,
- **mindestens ein Gebaeude**, dem **genau ein EGID** (eidg. Gebaeudeidentifikator) zugeordnet ist
  → je EGID **ein** Gebaeude erfassen (Bezug EGID → `[[kartenportale-gwr-bund]]`).

Darunter:
- Jedes **Gebaeude** enthaelt mind. **eine Gebaeudekategorie** (SIA-Kategorie, z. B. «Wohnen MFH»),
  optional mehrere **Zonen** (z. B. «Wohnen» + «Verkauf»).
- **Teilnachweise** werden **Gebaeude / Gebaeudekategorie / Zone** zugeordnet; ein Teilnachweis
  kann **fuer mehrere Gebaeude** eines Projekts gelten (z. B. EN-103 Heizung projektweit).
- **Begriffe:** der **Nachweis** ist das Ganze; er umfasst je nach Bauvorhaben **einen oder
  mehrere Teilnachweise** (EN-101b, EN-102a, EN-103, EN-104-ZH …). Die Auswahl der noetigen
  Teilnachweise steuert weiterhin die EN-ZH-Checkliste → `[[energie-energienachweis-zh-formulare]]`.

## 3 — Rollen (wer macht was)

Jede/r Nutzende hat einen **persoenlichen Account mit mindestens einer Rolle**; mit mehreren Rollen
wechselt man ueber ein Menue oben rechts («Rollenumschaltung»). Zwei Seiten:

### A) Nachweis-/Meldepflichtige (Planer-/Bauherrenseite)
Architektur-/Fachplanungsbuero, Bauherrschaft, Fachplaner. Wichtigste Rollen:
- **Projektkoordination** — die zentrale Rolle (nicht dem Zufall ueberlassen): **legt das Projekt
  an**, erfasst die Gebaeude (je EGID), **laedt weitere Fachplaner/Personen ein**, waehlt die
  Massnahmen/Formulare, **reicht das Projekt ein** und ist Kommunikationspartner bei Beanstandungen.
  Beauftragt in Kantonen mit PK **vor der Einreichung** die Private Kontrolle mit der Pruefung.
- **Nachweisverfassung** — **fuellt die Teilnachweise aus** (die eigentliche Fachplaner-Arbeit).
- Rechte je Rolle z. B.: Leserecht, Nutzende einladen, Teilnachweis ausfuellen, Nachweise bei der
  Bewilligungsbehoerde einreichen.

### B) Bewilligungsbehoerde (Vollzugsseite)
Persoenliche Accounts; **Lesezugriff auf das gesamte Projekt und alle eingereichten Daten/Beilagen**;
koennen Pruefungen durchfuehren und **protokollieren**.
- **Vollzugsverantwortung** (implizites Merkmal der internen Pruefung): Zugriff auf **alle Projekte
  der Gemeinde/des Kantons**; koordiniert den energetischen Vollzug, **loest Beanstandungen aus**,
  **laedt externe Pruefende ein**, **stoesst Ausfuehrungskontrollen an**, kann **Teilnachweise
  ablehnen** und Projektfreigaben erteilen.
- **Interne Pruefer** — Mitarbeitende Gemeinde/Kanton, vom Vollzugsverantwortlichen mit der
  Pruefung beauftragt; protokollieren Pruefergebnisse, koennen **Nachtraege direkt bei den
  Nachweiserstellenden** einfordern.
- **Externe Pruefer** — privatwirtschaftliche Ingenieurbueros, vom Vollzugsverantwortlichen
  beauftragt; gleiche Lese-/Protokoll-/Nachtrags-Rechte. (Uebernimmt eine externe Firma den
  **ganzen** Pruefprozess inkl. Zuteilung, wird sie als interner Pruefer angelegt.)

### C) Private Kontrolle — **relevant fuer ZH** (Kanton mit PK)
- **Nur in Kantonen mit Privater Kontrolle** (ZH gehoert dazu). Befugte zur PK werden **von der
  Projektkoordination vor der Einreichung** mit der Pruefung der Teilnachweise beauftragt.
- Dadurch **Leserechte** auf alle Projekt-Infos/Dokumente/Teilnachweise; sie **bestaetigen in EVEN
  die Rechtmaessigkeit der Angaben** und fuehren waehrend der Bauausfuehrung die
  **Ausfuehrungskontrolle** durch (ebenfalls in EVEN protokolliert).
- Wer welches EN-Formular zeichnen darf (Befugnis-Matrix Wä/He/Kl/Bl/Lä) →
  `[[energie-private-kontrolle-zh]]`.

### D) Weitere Rollen
**Globale Administration** (mandantenuebergreifend), **Kantons-Administration** (Nachweis-Sets,
User, kantonale Texte), **Gemeinde-Administration** (Nutzende der Gemeinde), **Statistik-Auswertung**
(Statistik-Panel).

## 4 — Ablauf «Happy Case» (Schritt fuer Schritt, Folie 45)

1. **Login** — `energievollzug.ch`, Kanton des Bauprojekts waehlen, Konto erstellen/anmelden
   (kantonale Eigenheit: in AG Login auch ueber «Smart Service Portal»).
2. **Projekterstellung** — Projektkoordination legt Projekt an (Gemeinde/BFS, Bauherrschaft).
3. **Erstes Gebaeude** erfassen (Neubau **und** Bestand), je **EGID**.
4. **Teilnachweis hinzufuegen und verfassen** — Massnahmen/Formulare waehlen; Fachplaner
   (Nachweisverfassung) einladen; **Beilagen** je Teilnachweis hochladen (Anhaenge/«Beilagen &
   Erlaeuterungen»).
5. **Projekt einreichen** — durch die **Projektkoordination**; in ZH vorher Beauftragung der
   **Privaten Kontrolle**.
6. **Pruefung** — intern (Gemeinde/Kanton) und/oder extern; in ZH **Private Kontrolle**. Bei Maengeln
   **Nachtrag** oder **Beanstandung** (siehe unten).
7. **Projekt abschliessen** — nach Freigabe-Kaskade und ggf. Ausfuehrungskontrolle.

**Beilagen-Upload:** Dateien werden **je Teilnachweis** als Anhaenge hochgeladen (Bueroklammer-Icon
oben; Abschnitt «Beilagen & Erlaeuterungen»). Die Bewilligungsbehoerde hat Lesezugriff auf alle
hochgeladenen Dokumente. Beim Teilnachweis-Formular gibt es je Abschnitt einen **Kommentar** (Prüfer)
und die Aktionen **«Nachtrag einfordern»** / **«Pruefung abschliessen»**.

## 5 — Aktionen & Kommunikation (bei Privater Kontrolle, Folie 35)

| Aktion | Ebene | Wer ↔ Wer | Zweck |
|---|---|---|---|
| **Pruefung** | Teilnachweis | Befugte/r PK prueft | ein Teilnachweis wird geprueft |
| **Nachtrag** | Teilnachweis | Pruefende ↔ Nachweisverfassung | Nachbesserung eines spezifischen Teilnachweises |
| **Beanstandung** | ganzes Projekt | Vollzugsverantwortliche/r ↔ Projektkoordination | Maengel, kann mehrere Teilnachweise umfassen |
| **Ausfuehrungskontrolle** | Projekt | PK-befugte Person waehrend Bauphase | Kontrolle der Umsetzung am Bau |
| **Vollzugskontrolle** | Projekt | Vollzugsverantwortliche/r initiiert | Stichprobenkontrolle |

## 6 — Statusmodell & Freigabe-Kaskade

**Projekt-Status** (Filter der Projektliste): `initialisiert` → `in Pruefung` → `Prov. freigegeben`
→ `Freigegeben` → `Prov. abgeschlossen` → `Abgeschlossen`.
**Teilnachweis-Status:** in Bearbeitung → `Eingereicht` → `in Pruefung` → `Geprueft` / `Abgelehnt` /
`in Nachbearbeitung` → `Abgeschlossen`.

**Freigabe-Kaskade der Vollzugsverantwortung** (Folie 28) — drei Freigaben, je mit Datum + Person:
1. **Bewilligungsbereit** → Projekt-Status **Prov. Freigegeben** (Energie-OK fuer die Baubewilligung).
2. **Baufreigabebereit** → Status **Freigegeben** + **automatische Einladung der Projektkoordination
   zur Ausfuehrungskontrolle**.
3. **Bezugsbereit** → **alle Nachweise werden prov. abgeschlossen** (Voraussetzung Bezugsbewilligung).
4. **Projekt abschliessen**; optional **Vollzugskontrolle** stichprobenartig beauftragen.

Diese drei Freigaben spiegeln die zwei Nachweis-Zeitpunkte im ZH-Verfahren
(`[[energie-energienachweis-zh-formulare]]`): **Projektkontrolle vor Baubeginn** → Baufreigabe;
**Ausfuehrungskontrolle nach Bauabschluss** → Bezugsbewilligung (zh.ch/energienachweise).

## 7 — Portalfunktionen & Arbeitsweise (Folien 46-53)

- **Projektliste:** alle eingereichten Projekte der Gemeinde/des Kantons; filterbar nach Status +
  Kanton; Spalten u. a. Projekt-ID, Name, Gemeinde, **Nachweis-Status** (Fortschrittsbalken),
  Projektkoordination, Vollzugsverantwortung.
- **Projektansicht:** links Projektstatus/**Freigaben**/Projektangaben/Projektorganisation; rechts
  die **Gebaeude + ihre Teilnachweise mit Status**; oben die **Aktionen** («Projekt beanstanden»,
  «Ausfuehrungskontrolle erstellen», «Pruefer zuweisen», «Projektfreigabe erteilen», «Projekt
  abschliessen») und die **Rollenumschaltung**. Klick auf einen Teilnachweis oeffnet die
  **Formularbearbeitung** (Angaben pruefen, Kommentare, Nachtrag/Pruefung abschliessen).
- **Gebaeudeansicht:** zeigt **Gebaeude-Status lt. GWR**, EGID, Parzellennummern,
  Minergie-Zertifizierung (Ja/Nein) — **GWR-Anbindung** (relevante Daten koennen ans **GWR
  uebermittelt** werden) → `[[kartenportale-gwr-bund]]`.
- **Einladungen / Nachrichten / Pendenzen** (Icons oben): Einladungen per **Code einloesen**;
  internes Nachrichtensystem (Posteingang/Gesendet, automatische **Eingabequittung**-Mail);
  Pendenzen mit **Faelligkeitsdatum**.
- **Arbeitsweise (wichtig):** **alle Aenderungen werden sofort gespeichert**; **kein Offline-Modus**
  (Internetverbindung noetig); **keine Undo-Funktion**; wichtige Eingaben/Aktivitaeten werden mit
  Zeitstempel + Person + Rolle **protokolliert** (Aenderungsprotokollierung, «Differenz anzeigen»).
- **Behoerdenseitig:** standardisierte Kontrollformulare («Papagei») elektronisch; **EN-101b
  (Minergie)** ist ins Tool integriert; Statistiken abrufbar.

## 8 — Praxis-Merkposten JANS

- **Rolle klaeren:** Wer im Buero ist **Projektkoordination** (legt an, reicht ein, beauftragt PK),
  wer **Nachweisverfassung**? Ein persoenlicher Account je Person; Rollen sind einladbar.
- **EGID zuerst:** je Gebaeude den EGID bereithalten (`gwr-bund.mjs`,
  `[[kartenportale-gwr-bund]]`) — EVEN verlangt je Gebaeude genau einen EGID.
- **KISPI (2619):** Auflage UGZ II.8.a/b/c → EN-ZH / EN-105 / EN-110-ZH wird in EVEN gefuehrt
  (Buero-Arbeitsstand im OneDrive-KISPI-Ordner). Umbau/Umnutzung → nur betroffene Bauteile/
  Anlageteile als Teilnachweise; Kuehlung Bestand = EN-110-ZH, Lueftung neu/umgebaut = EN-105.
- **PK nicht vergessen:** in ZH muss die Projektkoordination die **Private Kontrolle vor der
  Einreichung** beauftragen — sonst haengt die Pruefung.
- **Kein Undo, alles geloggt:** sauber arbeiten, da jede Aktion protokolliert und sofort gespeichert
  wird; Nachbesserung laeuft ueber **Nachtrag** (Teilnachweis) bzw. **Beanstandung** (Projekt).

## 9 — Realer Fall: 2619-KISPI (D6-Praxisbenchmark, Stand 2026-07-13/Run 20)

Erster realer JANS-Anwendungsfall der Privaten-Kontrolle-Rolle (§3 C), Projekt Lenggstrasse 30
Zuerich, Umbau/Umnutzung 1. OG (Auflage BE 1171/26 Ziff. II.8, drei Teilnachweise EN-ZH/EN-105/
EN-110-ZH). Zeigt Reibungspunkte, die die generische EnDK-Schulung (§§1-8) **nicht** abdeckt:

- **Nachweisverfassung ≠ Private Kontrolle — echte Verwechslungsgefahr.** Der Lueftungsplaner
  (Gruner AG, Cekdar Duran) hat die Teilnachweise EN-105/EN-110 **als Fachplaner in EVEN
  ausgefuellt und von JANS freigeben lassen** (Rolle Nachweisverfassung/Projektkoordination-
  Freigabe) — das ist **nicht** die in §3-C beschriebene Bestaetigung durch eine **Kl-befugte**
  Person (Befugnis-Matrix Wä/He/**Kl**/Bl/Lä, siehe `[[energie-private-kontrolle-zh]]`). Ohne
  diese zweite, unabhaengige PK-Bestaetigung haengt die Einreichung.
- **Befugnis vor Buero pruefen, nicht annehmen.** Das planende HLK-Buero hat nicht automatisch
  die noetige Befugnis: Gruner AG war in der offiziellen ZH-Liste «Private Kontrolle» (Stand
  28.04.2026) nur mit **Wä** (Waerme) und **Lä** (Laerm) gefuehrt — **keine Kl-Befugnis** fuer
  Lueftung/Kaelte (EN-105/EN-110/EN-101/EN-104/EN-132). Konsequenz: **vor** Beauftragung die
  aktuelle Befugnis-Liste (`energie@bd.zh.ch`, PDF «Private Kontrolle») nach der **Kl-Spalte**
  pruefen — nicht nach dem planenden Buero fragen, ob es "das macht".
  Alternativ-Kl-befugte Bueros Raum ZH (Stand 19.06.2026): 3-Plan, Pfiffner, EBP, eicher+pauli,
  Helbling.
- **Einladung nur ueber die bei der Fachstelle hinterlegte Mail-Adresse.** Die oeffentliche
  Befugnis-Liste enthaelt **keine persoenlichen Kontaktdaten** (nur `energie@bd.zh.ch`
  Sekretariat) — die EVEN-Einladung an eine Kl-befugte Person braucht deren **beim Sekretariat
  hinterlegte** E-Mail, die man direkt vom Buero/der Person erfragen muss. Kein oeffentliches
  Verzeichnis mit Mailadressen.
- **Status 13.07.2026:** Fall **nicht abgeschlossen** — JANS wartete seit 19.06.2026 auf
  Rueckmeldung von Gruner (Name + EVEN-Mail einer Kl-befugten Person, sonst externe Vergabe).
  Kein Update auf der Projektablage seit 15.06.2026 gefunden → naechster Schritt bleibt
  Nachfassen/externe Vergabe pruefen (Kandidaten oben). EVEN-Kontoregistrierung JANS musste
  Raphael persoenlich vornehmen (Rule-Grenze: Account-/Login-Erstellung nicht durch Assistenten).

**Lehrsatz fuer kuenftige Faelle:** bei Umbau/Umnutzung mit Lueftungs-/Kaelte-Teilnachweis IMMER
zuerst die **Kl-Befugnis** des vorgesehenen HLK-Planers gegen die aktuelle ZH-Liste pruefen,
bevor die Teilnachweis-Erfassung beginnt — sonst Doppelaufwand (Fachplaner-Entwurf steht, aber
keine gueltige PK-Bestaetigung).

## Datenstand / offen
- ✓ Belegt aus **EnDK-Schulung V1.4 (13.10.2025)** + zh.ch/energie-zentralschweiz (04.07.2026) +
  realer KISPI-Fallverlauf (§9, Stand 13.07.2026).
- ⚠ EVEN entwickelt sich laufend; Masken/Statusbezeichnungen koennen sich aendern — vor
  Schulungen/Neuprojekten die aktuelle Version auf `energievollzug.ch` bzw. die EnDK-Schulungsvideos
  pruefen. Screenshots der Schulung basieren auf AG-Testdaten (RC6).
- Offen: **KISPI-Fall abschliessen** (Kl-befugte PK-Person finden, EVEN-Projekt tatsaechlich
  einreichen) — sobald erledigt, hier den Freigabe-/Abschluss-Screenshot nachziehen; kantonale
  ZH-Eigenheiten der Formularsaetze im Detail (Nachweis-Sets).
