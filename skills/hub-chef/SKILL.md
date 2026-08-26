---
name: hub-chef
description: >-
  Dach-Orchestrator des JANS AI Hub — konsolidiert taeglich alle Signale (Logbuch, Fristen,
  Loop-Reports, Mail, bexio, Kalender, Projekte), priorisiert, dispatcht Arbeitspakete an die
  Skill-Agenten, fuehrt Whitelist-Aktionen (Autonomie Stufe 3) selbst aus und liefert EIN
  Briefing mit fertigen Entwuerfen. Prueft Anfragen gegen den Service-Katalog (services/
  KATALOG.md) und schlaegt produktisierte Deliverables vor. Diesen Skill verwenden wenn der
  Benutzer fragt: "Hub-Chef", "Tagesbriefing", "was liegt an", "orchestriere den Tag",
  "Arbeitspakete verteilen", "konsolidiertes Briefing" — und automatisch via Scheduled Task
  hub-chef-taeglich (08:35). Dach ueber logbuch/heartbeat//morgen; Governance in
  logbuch/AKTIONS-WHITELIST.md.
---

# Hub-Chef — Dach-Orchestrator (Autonomie Stufe 3)

> Der Hub arbeitet nicht mehr als 14 parallele Melde-Loops, sondern als EINE orchestrierte
> Instanz: konsolidieren → priorisieren → dispatchen → handeln (Whitelist) → EIN Briefing.
> Spec: `wissen/spec/outputs/2026-07-02_hub-chef-harness_spec.md`.

## Contract
- **Trigger:** Scheduled Task `hub-chef-taeglich` (08:35, nach allen Morgen-Loops) oder auf
  Zuruf («Hub-Chef», «Tagesbriefing», «was liegt an»).
- **Inputs:** `logbuch/LOGBUCH.md` + `logbuch/fristen.md` (Kontroll-Schicht), die Tages-Reports
  der Morgen-Loops (twin, logbuch-radar, zahlungsabgleich, heartbeat, mahnwesen, ggf.
  ag-gruendung-monitor), Outlook-Mail/-Kalender (M365), bexio (`connectors/bexio.mjs`),
  Sync-/Remote-Task-Queues, `services/KATALOG.md`, `logbuch/AKTIONS-WHITELIST.md`.
- **Output:** ausgefuehrte Whitelist-Aktionen (protokolliert), bereitgestellte Entwuerfe
  (Mail-Drafts, Dokumente, Terminvorschlaege), Logbuch-Eintrag — und **nur bei bestandener
  Sende-Schwelle** ein konsolidiertes Briefing als Mail an rj@raphaeljans.ch (QS via
  `korrektur`).
- **Nicht-Ziel:** Doppelspurigkeit — der Hub-Chef ersetzt keine Fach-Loops, er konsolidiert
  ihre Ergebnisse.

### Sende-Schwelle (verschaerft 03.08.2026, Entscheid Raphael)

Der Hub-Chef ist **still by default**. Er sendet **nur**, wenn mindestens eines zutrifft:

1. eine **Whitelist-Aktion wurde ausgefuehrt** (A1–A5) und Raphael muss sie kennen;
2. ein **versandbereiter Entwurf** liegt vor und wartet auf seine Freigabe;
3. ein **operativer Befund**, der Raphaels Handeln betrifft (Geld, Frist, Termin, Behoerde,
   Kunde, Projekt) und den der `logbuch-radar` heute noch nicht gemeldet hat;
4. ein **P1-Blocker** im Betrieb, der die Arbeitsfaehigkeit gefaehrdet;
5. ein **Sync-Task wartet laenger als 24 h auf Freigabe** (`scripts/freigabe-status.sh`,
   Exit 1). Neu am 12.08.2026: ein zurueckgehaltener Reparatur-Task lag 41 h in der Queue,
   waehrend die Wissens-Kette stillstand — Guard und Diagnose arbeiteten fehlerfrei, nur las
   niemand das Wartezimmer. Ein wartender Eintrag ist **kein** Hub-Internum im Sinne der
   Ausschlussliste: er haelt echte Arbeit an und braucht eine Entscheidung, die nur Raphael
   treffen kann. **Ein Stand von 0 oder ein Eintrag juenger als 24 h ist dagegen NIE ein
   Sendegrund** — er wird nur im ohnehin erzeugten Briefing mitgefuehrt.

**Ausdruecklich NICHT sendewuerdig** (das war die Luecke: bis 03.08. galt jeder «Befund» als
Sendegrund, auch reine Hub-Interna — am 01.08. loeste ein Locale-Fix in einem Script plus die
Selbstkorrektur des eigenen Morgenbriefings eine zweite Mail 90 Minuten nach dem Radar aus):

- Hub-Interna ohne Aussenwirkung: Script-Fixes, Locale-/Encoding-Drift, Registerpflege,
  Wissenscheck- und Loop-Ergebnisse, Takt- und Rollen-Buchhaltung;
- **Korrekturen des eigenen frueheren Briefings** — nur dann per Mail, wenn der Fehler
  Raphaels Handeln beeinflusst haette; sonst still im Register richtigstellen;
- alles, was der `logbuch-radar` heute schon gemeldet hat (verweisen statt wiederholen);
- ein Lauf, der nur bestaetigt, dass sich nichts bewegt hat.

Faellt die Mail weg, bleibt der Rest unveraendert Pflicht: Aktionen ausfuehren, Entwuerfe
bereitstellen, Register und Logbuch pflegen, Vermerk «Hub-Chef-Lauf ohne Befund, still
beendet» mit einem Satz zum Grund. **Der Lauf faellt nie aus, nur die Mail.**

Hintergrund: Zwei garantierte Tagesbriefings (Radar 06:55, Chef 08:39) im Abstand von 90
Minuten waren der belegte Grund fuer die Postfach-Last; der Radar bleibt taeglich und traegt
die Fristenschaerfe, der Chef meldet sich nur, wenn er etwas beizutragen hat.

## Ablauf (6 Phasen)

### Phase 1 — Signale einsammeln
Fristen-Register + Logbuch lesen (Horizont 7 Tage), heutige Loop-Ergebnisse aggregieren,
Mail-Eingang seit letztem Lauf sichten, bexio-Verzugsstand (`--verzug`) und Bankverifikation
(`--abgleich`) uebernehmen, Kalender naechste 7 Tage, offene Sync-/Remote-Tasks.

**Pflicht in jedem Lauf** — der Freigabestand beider Stationen:

```bash
bash /Volumes/daten/jans-ai-hub/scripts/freigabe-status.sh --kurz
```

Exit 1 heisst: mindestens ein Eintrag wartet laenger als 24 h → Sendegrund 5. Exit 2 heisst
**UNBEKANNT** (NAS nicht gemountet) und wird als solches gemeldet — nie als «0» gelesen.

**Zusaetzlich Pflicht (Massnahme A5, Hub-Audit 260812, gegen R7):** die niedrigere
12-h-Schwelle fuer die Briefing-Zeile selbst, unabhaengig vom 24-h-Sendegrund:

```bash
bash /Volumes/daten/jans-ai-hub/scripts/freigabe-status.sh --briefing
```

Jede Zeile der Ausgabe (Station, Titel, Alter, Dateiname) wandert unveraendert in den
Abschnitt «Wartet auf Deine Freigabe» (Phase 6) — auch wenn sie noch nicht sendewuerdig
ist. Genau diese Zeile haette den 41-h-Stillstand vom 11./12.08.2026 zwoelf Stunden frueher
sichtbar gemacht, statt erst bei Sendegrund 5.

**Ebenfalls Pflicht (Massnahme A1, Hub-Audit 260812, gegen R2/R3):** lebt die andere Station?

```bash
bash /Volumes/daten/jans-ai-hub/scripts/stationen-watchdog.sh --briefing
```

Die Ausgabe ist immer eine Zeile wert, auch die unauffaellige («alle Stationen und Sync-Jobs
melden sich fristgerecht»). Grund: dieses Briefing ist der einzige regulaere Meldekanal, und
ein Kanal, der ueber den Zustand der Gegenstation schweigt, laesst deren Ausfall wie einen
ruhigen Tag aussehen. **Exit 1 ist ein Sendegrund** — ein stehender Mac Mini ist operativ,
keine Hub-Interna: auf ihm liegt die Nachtschicht, und solange er steht, arbeitet niemand.

Solange `hub-chef-taeglich` selbst noch auf dem MacBook Pro liegt (offener Punkt B1), deckt
diese Zeile den eigenen blinden Fleck nur halb ab: faellt das MacBook aus, laeuft auch dieses
Briefing nicht. Der scharfe Watchdog-Lauf auf dem Mac Mini mailt dann unabhaengig davon.

### Phase 2 — Priorisieren
Reihenfolge: (1) Geld/Fristen faellig <= 7 Tage, (2) externe Kunden/Behoerden warten auf JANS,
(3) laufende Projekte (KISPI, Albertstrasse, ...), (4) Service-Chancen (Anfragen, die auf den
Katalog passen), (5) Interna/Infrastruktur. Je Pendenz entscheiden: Whitelist-Aktion /
Entwurf / nur melden.

### Phase 3 — Dispatchen (Fan-out)
Arbeitspakete parallel an die zustaendigen Agenten/Skills vergeben (z.B. `email`-Agent fuer
Antwort-Entwuerfe, `mahnwesen` fuer Mahnvorschlaege, `pendenzenliste`/`protokoll` fuer
Projektstoff, Service-Pipelines gemaess `services/KATALOG.md`). Enge Scopes, klare Uebergabe.

### Phase 4 — Handeln (NUR Whitelist)
Aktionen A1–A5 gemaess `logbuch/AKTIONS-WHITELIST.md` ausfuehren — jede mit Guard-Pruefung
VORHER (externes Signal, nie Vermutung: Mahnaktion nur nach bestandenem `--abgleich`) und
Logbuch-Protokoll NACHHER (Was/Ausloeser/Guards/Ergebnis). Alles ausserhalb der Whitelist
wird Entwurf. Verbotsliste ist absolut.

### Phase 5 — Qualitaet
Jedes Erzeugnis durch `korrektur` (Rechtschreibung+Layout), ausgehende Texte zusaetzlich durch
das `twin`-Fidelity-Gate. Zahlen/Fakten gegen Quelle belegt, nie erfunden.

### Phase 6 — EIN Briefing
Struktur: **Erledigt (autonom)** → **Entwuerfe bereit (1 Klick)** → **Faellig/Droht (7 Tage)**
→ **Wartet auf Deine Freigabe** → **Service-Chancen** → **Beobachten**. Kompakt,
sechsstellige Daten, keine Doppelmeldung von Dingen, die ein Fach-Loop heute schon gemailt
hat (stattdessen Verweis). Versand an rj@raphaeljans.ch; Vermerk im Logbuch.

**Der Abschnitt «Wartet auf Deine Freigabe» steht in JEDEM Briefing — auch bei null.** Er
nennt die Zahl je Station («mac-mini: 0 · macbook-pro: 0») und markiert jeden Eintrag aelter
als 24 h mit seiner Wartezeit. Eine Null ist hier eine Aussage, kein Grund zum Weglassen:
genau die stille Null haette den 41-h-Stillstand vom 11./12.08.2026 sichtbar gemacht. Ist
der Stand UNBEKANNT (NAS nicht gemountet), steht das da — Schweigen wuerde als «nichts
offen» gelesen.

**Pflichtzeile ab 12 h (Massnahme A5):** unter derselben Ueberschrift zusaetzlich jeder
Eintrag aus `freigabe-status.sh --briefing`, mit Titel, Station, Alter und Dateiname — auch
wenn er die 24-h-Sendeschwelle noch nicht erreicht. Ohne Eintrag: «keine Eintraege ab 12 h».

### Versandweg — Apple Mail zuerst, Graph als belegter Ersatzweg (nachgetragen 26.08.2026)

Der Versand läuft über Apple Mail (osascript, `application id "com.apple.mail"`, Absender
rj@raphaeljans.ch). **Antwortet Apple Mail nicht, fällt der Lauf NICHT aus** — er weicht auf
Weg 2 aus. Das war vom 24. bis 26.08.2026 dreimal nötig und wurde jedes Mal von Hand
gespielt, weil dieser Abschnitt fehlte; am 24.08. fiel das Tagesbriefing deswegen ganz aus.

1. **Erreichbarkeit prüfen, mit Zeitgrenze.** `timeout` gibt es auf macOS nicht: den
   osascript-Aufruf als Hintergrund-PID starten und nach rund 25 s abbrechen. Hängt er,
   ist Apple Mail blockiert (Symptom: Prozess läuft, AppleEvent-Zeitüberschreitung -1712).
2. **Weg 2, Graph `Mail.Send` über die m365-CLI** (Arbeitsverzeichnis
   `~/Developer/jans-ai-hub`, Zertifikats-Anmeldung, `m365 status` zeigt
   `authType: certificate`; die CLI liegt **nicht** im `PATH`):

```
./node_modules/.bin/m365 outlook mail send \
  --to "rj@raphaeljans.ch" --sender "rj@raphaeljans.ch" \
  --subject "<Betreff>" --bodyContentType HTML \
  --bodyContents "$(cat <body>.html)"
```

   `--sender` ist bei App-Auth Pflicht. Rule `mail-formatierung` gilt unverändert: Body als
   HTML mit `font-family:Aptos,Calibri,Helvetica,sans-serif; font-size:12pt; color:#000000`.
   **Diese Zeichenfolge nicht ohne Gegenprüfung ändern.** Sie ist seit dem 26.08.2026 zugleich
   der Echo-Schutz-Detektor des Zwillings: `wissen/twin/wiki/arbeitsweise.md` (Tabelle Z. 3481
   bis 3483) trennt eine Hub-Mail von Raphaels eigener Hand allein an `Aptos,Calibri`/`#000000`
   gegen `Aptos,Arial`/`rgb(0,0,0)`. Eine Angleichung an die OWA-Signatur liesse den Detektor
   still ausfallen, und Hub-Briefings wanderten als Stil-Gold ins Twin-Wiki — der Echo-Schutz
   aus Rule `jans-dna` ist als eisern bezeichnet. Befund SYN-51, Synergie-Lauf 19.
3. **Immer in den Gesendeten nachmessen**, nie am Rückgabewert (Lehre 24.08.2026) — Zeichen-
   bzw. Bytezahl des Bodys ins Logbuch.
4. **Den Ersatzweg im Briefing und im Logbuch benennen.** Ein Meldekanal, der still auf einen
   Ersatzweg wechselt, verdeckt den Ausfall des Hauptwegs — genau das hat die Blockade drei
   Tage lang unsichtbar gehalten.

Volles Wege-Register samt Sackgassen: `connectors/WEGE.md`, Abschnitt «Mail senden, zweiter
Weg». **Ein Nebeneffekt für den Twin ist zu beachten:** seit dem Ausweichen auf Graph tragen
Hub-Briefings denselben `PROD.OUTLOOK.COM`-Host wie Raphaels eigene OWA-Mails; die
`internetMessageId` beweist die eigene Hand nicht mehr (Befund `twin` 26.08.2026).

## Compounding
Korrektur-Deltas (was Raphael am Briefing/Entwurf aendert) und neue Whitelist-Kandidaten im
Logbuch festhalten; Vorschlaege zur Whitelist-Erweiterung nur unterbreiten, nie selbst
aktivieren. Gute Briefings/Entwuerfe als Muster in die passende KB zurueckspielen.

## Verweise
- Governance: `logbuch/AKTIONS-WHITELIST.md` (Stufe 3, v1) · Kontroll-Schicht: Skill `logbuch`
- Services: `services/KATALOG.md` · Spec-Gate: Rule `spec-methode` fuer neue grosse Vorhaben
- QS: Skills `korrektur` + `twin` · System-Health: `heartbeat` (bleibt eigenstaendig)

## Verbindliche Regeln (Verweis)

EIN Tagesbriefing pro Tag und Pflicht-Lektüre des Konversations-Destillats: verbindlich
geregelt in `skills/logbuch/SKILL.md`, Abschnitt «Verbindliche Regeln» (Regeln 260710/260716).
