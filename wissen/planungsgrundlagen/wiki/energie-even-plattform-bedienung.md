---
title: EVEN — Bedienung, Rollen & Workflow (energievollzug.ch)
status: established
last_updated: 2026-07-30
sources: [EnDK-Schulung «EVEN — elektronischer Vollzug energetischer Nachweise / Schulung der Bewilligungsbehörden in Kantonen mit Privater Kontrolle» Version 1.4 Stand 13.10.2025 (energieagentur-sg.ch, 68 Folien), www.zh.ch/de/planen-bauen/bauvorschriften/bauvorschriften-gebaeude-energie/energienachweise.html (abgerufen 04.07.2026), energie-zentralschweiz.ch/vollzug/even (abgerufen 04.07.2026), energievollzug.ch, realer Fallverlauf 2619-KISPI (Projektablage + Büro-Memory, Stand 13.07.2026/Run 20)]
links: [[energie-energienachweis-zh-formulare]], [[energie-uebersicht]], [[energie-private-kontrolle-zh]], [[kartenportale-gwr-bund]], [[recht-norm-quellenlandkarte]]
---

# EVEN — Bedienung, Rollen & Workflow (energievollzug.ch)

Beantwortet **D6** (QUESTIONS): die konkrete Bedienung der Plattform **EVEN — Elektronischer
Vollzug Energetischer Nachweise** (`energievollzug.ch`), über die der Kt. ZH **seit 01.01.2026**
den Energienachweis abwickelt. Der Vorgänger-Artikel `[[energie-energienachweis-zh-formulare]]`
liefert die **Formular-Logik** (welcher EN-Nachweis wann, welche Rechtsgrundlage); dieser Artikel
liefert die **Handhabung** (Rollen, Projektstruktur, Ablauf, Statusmodell) — die Struktur
*innerhalb* von EVEN. Faktenbasis: offizielle **EnDK-Schulungsunterlage Version 1.4 (13.10.2025)**
für Kantone **mit Privater Kontrolle** (= Kt. ZH, siehe `[[energie-private-kontrolle-zh]]`).

## 1 — Was EVEN ist (und was nicht)

- **EVEN** = **E**lektronischer **V**ollzug **E**nergetischer **N**achweise: Digitalisierung des
  Prozesses, mit dem die Gesuchstellerschaft die Einhaltung der energierechtlichen Vorgaben
  nachweist — im ordentlichen Verfahren wie im Meldeverfahren.
- EVEN bildet **nur die Energienachweise und -Meldungen** ab, **nicht den gesamten
  Baubewilligungsprozess** (Schulung Folie 5). Das Baugesuch selbst läuft weiter über die
  kantonale/kommunale Baugesuchslösung (z. B. eBAU); EVEN hat **offene Schnittstellen** dorthin.
- **Auslöser:** die früheren PDF-Formulare EN-101…EN-141 waren «End of Life» (Mehrsprachigkeit,
  Platz, eingeschränkte Bearbeitung). EVEN ersetzt sie durch **web-basierte Formulare** mit
  geführter Eingabe (Einstieg mit wenigen zentralen Angaben, weitere Felder erst bei Bedarf).
- **Betreiber/Träger:** Projekt der **EnDK** (Konferenz Kantonaler Energiedirektoren), gestartet
  Ende 2023 von 25 Kantonen; unterstützt von EnergieSchweiz.

### Teilnehmende Kantone (Folie 16, Stand 10/2025)
**Alle Kantone ausser Bern** + **Fürstentum Liechtenstein** (25 Kantone + FL) — die gleiche
Oberfläche für planendes und ausführendes Gewerbe. **Kt. Aargau** war Ersteinführer
(digitale Einreichung ab **01.04.2025**); Kt. ZH und die meisten übrigen ab **01.01.2026**.
Auf der Willkommensseite (`energievollzug.ch`) wählt man **zuerst den Kanton des Bauprojekts**,
dann Login/Registrierung.

## 2 — Projektstruktur (die Datenhierarchie)

Ein **Projekt** umfasst (Folien 33-34):
- **eine Bauherrschaft**,
- **eine oder mehrere Parzellen**,
- **mindestens ein Gebäude**, dem **genau ein EGID** (eidg. Gebäudeidentifikator) zugeordnet ist
  → je EGID **ein** Gebäude erfassen (Bezug EGID → `[[kartenportale-gwr-bund]]`).

Darunter:
- Jedes **Gebäude** enthält mind. **eine Gebäudekategorie** (SIA-Kategorie, z. B. «Wohnen MFH»),
  optional mehrere **Zonen** (z. B. «Wohnen» + «Verkauf»).
- **Teilnachweise** werden **Gebäude / Gebäudekategorie / Zone** zugeordnet; ein Teilnachweis
  kann **für mehrere Gebäude** eines Projekts gelten (z. B. EN-103 Heizung projektweit).
- **Begriffe:** der **Nachweis** ist das Ganze; er umfasst je nach Bauvorhaben **einen oder
  mehrere Teilnachweise** (EN-101b, EN-102a, EN-103, EN-104-ZH …). Die Auswahl der nötigen
  Teilnachweise steuert weiterhin die EN-ZH-Checkliste → `[[energie-energienachweis-zh-formulare]]`.

## 3 — Rollen (wer macht was)

Jede/r Nutzende hat einen **persönlichen Account mit mindestens einer Rolle**; mit mehreren Rollen
wechselt man über ein Menü oben rechts («Rollenumschaltung»). Zwei Seiten:

### A) Nachweis-/Meldepflichtige (Planer-/Bauherrenseite)
Architektur-/Fachplanungsbuero, Bauherrschaft, Fachplaner. Wichtigste Rollen:
- **Projektkoordination** — die zentrale Rolle (nicht dem Zufall überlassen): **legt das Projekt
  an**, erfasst die Gebäude (je EGID), **lädt weitere Fachplaner/Personen ein**, wählt die
  Massnahmen/Formulare, **reicht das Projekt ein** und ist Kommunikationspartner bei Beanstandungen.
  Beauftragt in Kantonen mit PK **vor der Einreichung** die Private Kontrolle mit der Prüfung.
- **Nachweisverfassung** — **füllt die Teilnachweise aus** (die eigentliche Fachplaner-Arbeit).
- Rechte je Rolle z. B.: Leserecht, Nutzende einladen, Teilnachweis ausfüllen, Nachweise bei der
  Bewilligungsbehörde einreichen.

### B) Bewilligungsbehörde (Vollzugsseite)
Persönliche Accounts; **Lesezugriff auf das gesamte Projekt und alle eingereichten Daten/Beilagen**;
können Prüfungen durchführen und **protokollieren**.
- **Vollzugsverantwortung** (implizites Merkmal der internen Prüfung): Zugriff auf **alle Projekte
  der Gemeinde/des Kantons**; koordiniert den energetischen Vollzug, **löst Beanstandungen aus**,
  **lädt externe Prüfende ein**, **stösst Ausführungskontrollen an**, kann **Teilnachweise
  ablehnen** und Projektfreigaben erteilen.
- **Interne Prüfer** — Mitarbeitende Gemeinde/Kanton, vom Vollzugsverantwortlichen mit der
  Prüfung beauftragt; protokollieren Prüfergebnisse, können **Nachträge direkt bei den
  Nachweiserstellenden** einfordern.
- **Externe Prüfer** — privatwirtschaftliche Ingenieurbüros, vom Vollzugsverantwortlichen
  beauftragt; gleiche Lese-/Protokoll-/Nachtrags-Rechte. (Übernimmt eine externe Firma den
  **ganzen** Prüfprozess inkl. Zuteilung, wird sie als interner Prüfer angelegt.)

### C) Private Kontrolle — **relevant für ZH** (Kanton mit PK)
- **Nur in Kantonen mit Privater Kontrolle** (ZH gehört dazu). Befugte zur PK werden **von der
  Projektkoordination vor der Einreichung** mit der Prüfung der Teilnachweise beauftragt.
- Dadurch **Leserechte** auf alle Projekt-Infos/Dokumente/Teilnachweise; sie **bestätigen in EVEN
  die Rechtmässigkeit der Angaben** und führen während der Bauausführung die
  **Ausführungskontrolle** durch (ebenfalls in EVEN protokolliert).
- Wer welches EN-Formular zeichnen darf (Befugnis-Matrix Wä/He/Kl/Bl/Lä) →
  `[[energie-private-kontrolle-zh]]`.

### D) Weitere Rollen
**Globale Administration** (mandantenübergreifend), **Kantons-Administration** (Nachweis-Sets,
User, kantonale Texte), **Gemeinde-Administration** (Nutzende der Gemeinde), **Statistik-Auswertung**
(Statistik-Panel).

## 4 — Ablauf «Happy Case» (Schritt für Schritt, Folie 45)

1. **Login** — `energievollzug.ch`, Kanton des Bauprojekts wählen, Konto erstellen/anmelden
   (kantonale Eigenheit: in AG Login auch über «Smart Service Portal»).
2. **Projekterstellung** — Projektkoordination legt Projekt an (Gemeinde/BFS, Bauherrschaft).
3. **Erstes Gebäude** erfassen (Neubau **und** Bestand), je **EGID**.
4. **Teilnachweis hinzufügen und verfassen** — Massnahmen/Formulare wählen; Fachplaner
   (Nachweisverfassung) einladen; **Beilagen** je Teilnachweis hochladen (Anhänge/«Beilagen &
   Erläuterungen»).
5. **Projekt einreichen** — durch die **Projektkoordination**; in ZH vorher Beauftragung der
   **Privaten Kontrolle**.
6. **Prüfung** — intern (Gemeinde/Kanton) und/oder extern; in ZH **Private Kontrolle**. Bei Mängeln
   **Nachtrag** oder **Beanstandung** (siehe unten).
7. **Projekt abschliessen** — nach Freigabe-Kaskade und ggf. Ausführungskontrolle.

**Beilagen-Upload:** Dateien werden **je Teilnachweis** als Anhänge hochgeladen (Büroklammer-Icon
oben; Abschnitt «Beilagen & Erläuterungen»). Die Bewilligungsbehörde hat Lesezugriff auf alle
hochgeladenen Dokumente. Beim Teilnachweis-Formular gibt es je Abschnitt einen **Kommentar** (Prüfer)
und die Aktionen **«Nachtrag einfordern»** / **«Prüfung abschliessen»**.

## 5 — Aktionen & Kommunikation (bei Privater Kontrolle, Folie 35)

| Aktion | Ebene | Wer ↔ Wer | Zweck |
|---|---|---|---|
| **Prüfung** | Teilnachweis | Befugte/r PK prüft | ein Teilnachweis wird geprüft |
| **Nachtrag** | Teilnachweis | Prüfende ↔ Nachweisverfassung | Nachbesserung eines spezifischen Teilnachweises |
| **Beanstandung** | ganzes Projekt | Vollzugsverantwortliche/r ↔ Projektkoordination | Mängel, kann mehrere Teilnachweise umfassen |
| **Ausführungskontrolle** | Projekt | PK-befugte Person während Bauphase | Kontrolle der Umsetzung am Bau |
| **Vollzugskontrolle** | Projekt | Vollzugsverantwortliche/r initiiert | Stichprobenkontrolle |

## 6 — Statusmodell & Freigabe-Kaskade

**Projekt-Status** (Filter der Projektliste): `initialisiert` → `in Pruefung` → `Prov. freigegeben`
→ `Freigegeben` → `Prov. abgeschlossen` → `Abgeschlossen`.
**Teilnachweis-Status:** in Bearbeitung → `Eingereicht` → `in Pruefung` → `Geprueft` / `Abgelehnt` /
`in Nachbearbeitung` → `Abgeschlossen`.

**Freigabe-Kaskade der Vollzugsverantwortung** (Folie 28) — drei Freigaben, je mit Datum + Person:
1. **Bewilligungsbereit** → Projekt-Status **Prov. Freigegeben** (Energie-OK für die Baubewilligung).
2. **Baufreigabebereit** → Status **Freigegeben** + **automatische Einladung der Projektkoordination
   zur Ausführungskontrolle**.
3. **Bezugsbereit** → **alle Nachweise werden prov. abgeschlossen** (Voraussetzung Bezugsbewilligung).
4. **Projekt abschliessen**; optional **Vollzugskontrolle** stichprobenartig beauftragen.

Diese drei Freigaben spiegeln die zwei Nachweis-Zeitpunkte im ZH-Verfahren
(`[[energie-energienachweis-zh-formulare]]`): **Projektkontrolle vor Baubeginn** → Baufreigabe;
**Ausführungskontrolle nach Bauabschluss** → Bezugsbewilligung (www.zh.ch/de/planen-bauen/bauvorschriften/bauvorschriften-gebaeude-energie/energienachweise.html).

## 7 — Portalfunktionen & Arbeitsweise (Folien 46-53)

- **Projektliste:** alle eingereichten Projekte der Gemeinde/des Kantons; filterbar nach Status +
  Kanton; Spalten u. a. Projekt-ID, Name, Gemeinde, **Nachweis-Status** (Fortschrittsbalken),
  Projektkoordination, Vollzugsverantwortung.
- **Projektansicht:** links Projektstatus/**Freigaben**/Projektangaben/Projektorganisation; rechts
  die **Gebäude + ihre Teilnachweise mit Status**; oben die **Aktionen** («Projekt beanstanden»,
  «Ausführungskontrolle erstellen», «Prüfer zuweisen», «Projektfreigabe erteilen», «Projekt
  abschliessen») und die **Rollenumschaltung**. Klick auf einen Teilnachweis öffnet die
  **Formularbearbeitung** (Angaben prüfen, Kommentare, Nachtrag/Prüfung abschliessen).
- **Gebäudeansicht:** zeigt **Gebäude-Status lt. GWR**, EGID, Parzellennummern,
  Minergie-Zertifizierung (Ja/Nein) — **GWR-Anbindung** (relevante Daten können ans **GWR
  übermittelt** werden) → `[[kartenportale-gwr-bund]]`.
- **Einladungen / Nachrichten / Pendenzen** (Icons oben): Einladungen per **Code einlösen**;
  internes Nachrichtensystem (Posteingang/Gesendet, automatische **Eingabequittung**-Mail);
  Pendenzen mit **Fälligkeitsdatum**.
- **Arbeitsweise (wichtig):** **alle Änderungen werden sofort gespeichert**; **kein Offline-Modus**
  (Internetverbindung nötig); **keine Undo-Funktion**; wichtige Eingaben/Aktivitaeten werden mit
  Zeitstempel + Person + Rolle **protokolliert** (Änderungsprotokollierung, «Differenz anzeigen»).
- **Behördenseitig:** standardisierte Kontrollformulare («Papagei») elektronisch; **EN-101b
  (Minergie)** ist ins Tool integriert; Statistiken abrufbar.

## 8 — Praxis-Merkposten JANS

- **Rolle klären:** Wer im Büro ist **Projektkoordination** (legt an, reicht ein, beauftragt PK),
  wer **Nachweisverfassung**? Ein persönlicher Account je Person; Rollen sind einladbar.
- **EGID zuerst:** je Gebäude den EGID bereithalten (`gwr-bund.mjs`,
  `[[kartenportale-gwr-bund]]`) — EVEN verlangt je Gebäude genau einen EGID.
- **KISPI (2619):** Auflage UGZ II.8.a/b/c → EN-ZH / EN-105 / EN-110-ZH wird in EVEN geführt
  (Büro-Arbeitsstand im OneDrive-KISPI-Ordner). Umbau/Umnutzung → nur betroffene Bauteile/
  Anlageteile als Teilnachweise; Kühlung Bestand = EN-110-ZH, Lüftung neu/umgebaut = EN-105.
- **PK nicht vergessen:** in ZH muss die Projektkoordination die **Private Kontrolle vor der
  Einreichung** beauftragen — sonst hängt die Prüfung.
- **Kein Undo, alles geloggt:** sauber arbeiten, da jede Aktion protokolliert und sofort gespeichert
  wird; Nachbesserung läuft über **Nachtrag** (Teilnachweis) bzw. **Beanstandung** (Projekt).

## 9 — Realer Fall: 2619-KISPI (D6-Praxisbenchmark, Stand 2026-07-13/Run 20)

Erster realer JANS-Anwendungsfall der Privaten-Kontrolle-Rolle (§3 C), Projekt Lenggstrasse 30
Zürich, Umbau/Umnutzung 1. OG (Auflage BE 1171/26 Ziff. II.8, drei Teilnachweise EN-ZH/EN-105/
EN-110-ZH). Zeigt Reibungspunkte, die die generische EnDK-Schulung (§§1-8) **nicht** abdeckt:

- **Nachweisverfassung ≠ Private Kontrolle — echte Verwechslungsgefahr.** Der Lüftungsplaner
  (Gruner AG, Cekdar Duran) hat die Teilnachweise EN-105/EN-110 **als Fachplaner in EVEN
  ausgefüllt und von JANS freigeben lassen** (Rolle Nachweisverfassung/Projektkoordination-
  Freigabe) — das ist **nicht** die in §3-C beschriebene Bestätigung durch eine **Kl-befugte**
  Person (Befugnis-Matrix Wä/He/**Kl**/Bl/Lä, siehe `[[energie-private-kontrolle-zh]]`). Ohne
  diese zweite, unabhängige PK-Bestätigung hängt die Einreichung.
- **Befugnis vor Büro prüfen, nicht annehmen.** Das planende HLK-Büro hat nicht automatisch
  die nötige Befugnis: Gruner AG war in der offiziellen ZH-Liste «Private Kontrolle» (Stand
  28.04.2026) nur mit **Wä** (Wärme) und **Lä** (Lärm) geführt — **keine Kl-Befugnis** für
  Lüftung/Kaelte (EN-105/EN-110/EN-101/EN-104/EN-132). Konsequenz: **vor** Beauftragung die
  aktuelle Befugnis-Liste (`energie@bd.zh.ch`, PDF «Private Kontrolle») nach der **Kl-Spalte**
  prüfen — nicht nach dem planenden Büro fragen, ob es "das macht".
  Alternativ-Kl-befugte Büros Raum ZH (Stand 19.06.2026): 3-Plan, Pfiffner, EBP, eicher+pauli,
  Helbling.
- **Einladung nur über die bei der Fachstelle hinterlegte Mail-Adresse.** Die öffentliche
  Befugnis-Liste enthält **keine persönlichen Kontaktdaten** (nur `energie@bd.zh.ch`
  Sekretariat) — die EVEN-Einladung an eine Kl-befugte Person braucht deren **beim Sekretariat
  hinterlegte** E-Mail, die man direkt vom Büro/der Person erfragen muss. Kein öffentliches
  Verzeichnis mit Mailadressen.
- **Status 13.07.2026:** Fall **nicht abgeschlossen** — JANS wartete seit 19.06.2026 auf
  Rückmeldung von Gruner (Name + EVEN-Mail einer Kl-befugten Person, sonst externe Vergabe).
  Kein Update auf der Projektablage seit 15.06.2026 gefunden → nächster Schritt bleibt
  Nachfassen/externe Vergabe prüfen (Kandidaten oben). EVEN-Kontoregistrierung JANS musste
  Raphael persönlich vornehmen (Rule-Grenze: Account-/Login-Erstellung nicht durch Assistenten).

**Lehrsatz für künftige Fälle:** bei Umbau/Umnutzung mit Lüftungs-/Kaelte-Teilnachweis IMMER
zuerst die **Kl-Befugnis** des vorgesehenen HLK-Planers gegen die aktuelle ZH-Liste prüfen,
bevor die Teilnachweis-Erfassung beginnt — sonst Doppelaufwand (Fachplaner-Entwurf steht, aber
keine gültige PK-Bestätigung).

## Datenstand / offen
- ✓ Belegt aus **EnDK-Schulung V1.4 (13.10.2025)** + zh.ch/energie-zentralschweiz (04.07.2026) +
  realer KISPI-Fallverlauf (§9, Stand 13.07.2026).
- ⚠ EVEN entwickelt sich laufend; Masken/Statusbezeichnungen können sich ändern — vor
  Schulungen/Neuprojekten die aktuelle Version auf `energievollzug.ch` bzw. die EnDK-Schulungsvideos
  prüfen. Screenshots der Schulung basieren auf AG-Testdaten (RC6).
- Offen: **KISPI-Fall abschliessen** (Kl-befugte PK-Person finden, EVEN-Projekt tatsächlich
  einreichen) — sobald erledigt, hier den Freigabe-/Abschluss-Screenshot nachziehen; kantonale
  ZH-Eigenheiten der Formularsätze im Detail (Nachweis-Sets).
