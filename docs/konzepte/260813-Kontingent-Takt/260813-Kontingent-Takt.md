---
title: Kontingent-Takt-Entscheidungsvorlage — neue Lage (Max 20x + Team-Abo 2 Seats)
datum: 2026-08-13
station: Mac Mini
verfasser: Claude (Dispatch-Auftrag Raphael, 13.08.2026)
status: Entscheidungsvorlage, NICHTS entpaust/umgestellt
---

## Belegstatus-Legende

BELEGT = aus Datei/Log/Register nachgewiesen. VERMUTET = plausibel, nicht nachgemessen.
SCHAETZUNG = Token-/Kostenangabe ohne belastbare Direktmessung, aus Referenzwerten
hochgerechnet, im Text so markiert.

## Ausgangslage

Neue Kontingent-Lage (Ansage Raphael 13.08.2026, Chronik-Eintrag `rules/betrieb-chronik.md`
260813): privates Max-Abo bleibt bei **20x**, zusaetzlich **Team-Abo mit zwei Seats** fuer die
Stationen (Standard-Nutzung). Das loest die bisherige Drossel-Logik ab, die seit Ende Juli auf
ein knappes Einzelkontingent optimiert war (Massnahmen wie Deaktivierung von planungsgrundlagen-
training, synobsis-Stilllegung, Festigungsmodus baurecht). Mit real mehr Kapazitaet lohnt sich
eine Neubewertung — **ohne** dass diese Vorlage selbst etwas umstellt.

Zwei Sachverhalte sind getrennt zu halten: (A) Welche Loops werden reaktiviert/umgetaktet —
Punkt 1 unten. (B) Wie die drei Toepfe technisch genutzt werden (welches Konto auf welcher
Station) — Migrationsplan, Punkt 2 unten. (A) kann unabhaengig von (B) entschieden werden: die
Reaktivierung eines Loops braucht nicht zwingend das Team-Abo, sie braucht nur wieder mehr
Spielraum im ohnehin genutzten Kontingent.

---

## 1. Vorschlagsliste: Loop-Reaktivierung

| Loop | Aktueller Status (BELEGT) | Vorschlag | Begruendung | Token-Schaetzung |
|---|---|---|---|---|
| `planungsgrundlagen-training` | DEAKTIVIERT 03.08.2026 (Umwidmung grower→maintainer), Ersatz `planungsgrundlagen-wartung` laeuft monatlich, 1., 04:10, macbook-pro | **Reaktivieren, aber gedrosselt** (z.B. woechentlich statt taeglich) statt Vollbetrieb | Die Deaktivierung war eine Rollen-Entscheidung (maintainer statt grower), nicht nur eine Kontingent-Drossel — die KB war zum Stichtag nicht erschoepft, nur die Rolle gewechselt. Volle Reaktivierung auf grower wuerde die Rollen-Taxonomie-Entscheidung vom 03.08. revidieren; das ist mehr als eine Kontingent-Frage und gehoert extra begruendet, nicht automatisch mit der Kontingent-Erhoehung mitgezogen. | SCHAETZUNG 3-8 Mio Token/Lauf (Referenzband anderer Trainings-Loops, `vollgas-fruehwarnung` SKILL.md Z.18: "Drosselphase MacBook Pro 3-15 Mio/Tag" fuer die Gesamtstation, nicht loop-scharf) |
| `synobsis-batch-nacht` (architekten-synobsis) | DEAKTIVIERT 28.07.2026: KB saturiert 853/853 Architekten | **Pausiert lassen** | Kein Kontingent-Grund fuer die Pause — die KB ist inhaltlich fertig (853/853). Reaktivierung braucht neues Quellmaterial, nicht mehr Token-Budget. Gehoert nicht auf diese Liste, sondern wartet auf einen Content-Anlass. | 0 (kein Lauf faellig) |
| Nachtfenster-Dichte (Mittags-Slot 13:30, `scripts/nachtschicht-run.sh`) | Aktiv seit 29.07.2026 als "befristeter Versuch", nie zurueckgebaut, `MITTAG_SLOT` Default 13 | **Beibehalten und entfristen** (aus "Versuch" einen festen vierten Slot machen) ODER explizit zurueckbauen — beides ist jetzt eine bewusste Entscheidung, keine Verlaengerung durch Unterlassung | Mit mehr Kontingent traegt die Station den vierten Taktschlag leichter; der offene Punkt ist nicht mehr Kapazitaet, sondern ob der Slot inhaltlich etwas liefert (das misst `vollgas-fruehwarnung` Schritt 5b bereits — dort nachschauen, ob der Slot in der Woche seit 29.07. Delta-Null-Serien zeigte, bevor entschieden wird) | SCHAETZUNG +1 Lauf/Tag zusaetzlich zu den 3 Nachtslots, Groessenordnung wie ein regulaerer Nachtschicht-Zyklus |
| `KORPUS-QUEUE bauprodukte` (`skills/wissens-destillat/KORPUS-QUEUE.md`, Rang 1) | **Nicht pausiert** — Status "in Arbeit" (Stand-Feld im Register veraltet: 28.07. 06:30, seither nicht nachgefuehrt) | Kein Reaktivierungs-Entscheid noetig, aber das Stand-Feld im Register sollte bei Gelegenheit aktualisiert werden (kein Kontingent-Thema, ein Pflege-Punkt) | Laeuft bereits, keine Umtaktung vorgeschlagen | entfaellt |
| `baurecht-buch-training` | Festigungsmodus woechentlich, **eigener Entscheid Raphael vom 17.07.2026** | **Bewusst pausiert/gedrosselt lassen**, wie im Auftrag verlangt | Das war nie eine Kontingent-Drossel, sondern eine inhaltliche Entscheidung (Festigung statt Neuzugang). Mehr Kontingent aendert daran nichts — der Loop braucht keinen Rueckenwind, er braucht eine neue inhaltliche Entscheidung Raphaels, wenn sich das aendern soll. | entfaellt (0 zusaetzlich vorgeschlagen) |

**Kurzfazit dieser Liste:** von den vier genannten Kandidaten ist nur `planungsgrundlagen-training`
ein echter Reaktivierungs-Kandidat im engeren Sinn; `synobsis` und `baurecht-buch` sind aus
inhaltlichen (nicht Kontingent-)Gruenden pausiert und die Nachtfenster-Dichte ist bereits aktiv
und braucht nur eine Ja/Nein-Entscheidung statt eines weiteren "vorlaeufig". `bauprodukte` laeuft
ohnehin. **Alle Token-Schaetzungen sind SCHAETZUNG**, keine der vier Zeilen wurde fuer diese
Vorlage frisch gemessen (Budget-/Zeitrahmen dieses Laufs liess keine Live-Messung je Loop zu) —
vor einer tatsaechlichen Reaktivierung empfiehlt sich ein einzelner Testlauf mit Kostenmessung,
bevor ein neuer Dauertakt gesetzt wird.

---

## 2. Migrationsplan Team-Abo (Vorlage, NICHTS umgestellt)

### 2.1 Konto-Zuordnung, zur Wahl

Drei Toepfe, zwei Stationen (Mac Mini Always-On, MacBook Pro mobil) plus die Cloud-Sessions
(claude.ai/code, Dispatch/Handy). Zwei plausible Zuordnungen:

- **Variante A — Stationen bekommen je einen Team-Seat, das private 20x bleibt fuer Raphael
  persoenlich (mobile/interaktive Sessions, gleich auf welcher Station gerade getippt wird).**
  Vorteil: die Scheduled-Task-Engine (die automatisierten Loops) laeuft dann konsequent auf
  Team-Kontingent, das private 20x bleibt fuer Raphaels eigene interaktive Arbeit reserviert und
  wird nicht von Loops mitverbraucht — genau die Trennung, die die bisherigen Kontingent-Vorfaelle
  (26./27.07., 01.08.) durchgehend als Ursache hatten: Loops assen das Kontingent auf, das
  Raphael fuer sich selbst brauchte.
- **Variante B — Mac Mini (Always-On, traegt fast alle automatisierten Loops) bekommt BEIDE
  Team-Seats oder eines plus das private 20x als Zweitkonto, MacBook Pro bleibt beim privaten
  20x fuer Raphaels mobile Arbeit.** Vorteil: einfachere Kontenverwaltung (nur eine Station mit
  Mehrfachkonto), aber ein Single Point of Failure bleibt bestehen (faellt der Mac Mini aus,
  fallen beide Team-Seats mit).

**Empfehlung dieser Vorlage:** Variante A, aus genau dem Trennungsgrund oben — aber das ist ein
Vorschlag, kein Entscheid; Raphael waehlt.

### 2.2 Auswirkung auf Scheduled-Task-Registry, Routinen, Sessions

**BELEGT (Recherche dieses Laufs):** Die Scheduled-Task-Registry ist **lokal je Station**
(`~/.claude/scheduled-tasks/<task>/SKILL.md`), der NAS-Bestand unter
`templates/scheduled-tasks/` ist nur ein **Dokumentations-Spiegel**
(`scripts/scheduled-tasks-mirror.sh`, rsync --delete) — "Der Spiegel ist Dokumentation, nie
Live-Zustand" (`templates/scheduled-tasks/README.md`). Wahrheit hat ausschliesslich, was die
Task-Engine der jeweiligen Station tatsaechlich als registrierte Tasks fuehrt.

**Was ein Kontowechsel (`claude /login` mit neuem Team-Konto) auf einer Station konkret
beruehrt:**
1. Das OAuth-Token in der macOS-Keychain ("Claude Code-credentials") wechselt auf das neue
   Konto. `connectors/claude-usage.mjs` liest genau diesen einen Keychain-Eintrag — nach dem
   Wechsel misst der Connector auf dieser Station automatisch das NEUE Konto, nicht mehr das
   alte. Das ist fuer die Kontingent-Aufsicht (Punkt 4 des Auftrags) der kritische Punkt: ohne
   Anpassung wuerde `claude-abo-auslastung` nach einem Kontowechsel auf dem Mac Mini
   stillschweigend den Team-Seat statt des privaten 20x messen und die andere Zahl NICHT mehr
   sehen — SCHWARZ-Fall (Messausfall) ist das nicht, weil der Connector ja weiterhin einen
   gueltigen Prozentwert liefert, nur fuer das falsche Konto. Genau diese Fehlerfamilie ist
   gefaehrlicher als ein sichtbarer Ausfall (Analogie 260812: "eine stille Null ist von einer
   ungeprueften Queue nicht unterscheidbar").
2. Die lokale Scheduled-Task-Registry der Station selbst aendert sich durch einen Kontowechsel
   NICHT automatisch — Tasks, die vorher unter Konto X liefen, bleiben in der Registry
   eingetragen und feuern nach dem Wechsel unter Konto Y weiter, ohne dass irgendein Mechanismus
   das protokolliert. Wer nachtraeglich fragt "auf wessen Kontingent lief dieser Lauf", muss den
   Task-Zeitpunkt gegen den Zeitpunkt des Kontowechsels halten — dafuer existiert aktuell kein
   Log-Eintrag, der einen Kontowechsel selbst festhaelt.
3. **Laufende/offene Sessions** (insbesondere Dispatch-Laeufe und Remote-Tasks, die im
   Hintergrund auf einer Station stehen) sind an das zum Startzeitpunkt aktive Konto gebunden;
   ein Kontowechsel waehrend eine Session laeuft, ist ein unbeobachtetes Risiko (kein belegter
   Fall, aber auch keine Guard-Pruefung dagegen).

**Risiko, Lehre 09.08. (BELEGT, aber praezisiert):** Der recherchierte 09.08.-Vorfall
(`rules/betrieb-chronik.md` 260812b) ist **kein** Konto-/Login-Vorfall, sondern ein anderer:
die Task-Engine auf dem MacBook Pro lief seit 09.08. 19:27 schlicht nicht mehr (Ursache: die
drei Mac-Mini-Neustarts vom 12.08., Kollateralschaden gesperrter Schluesselbund), waehrend
`hub-chef-taeglich` und `logbuch-radar` ausschliesslich dort registriert waren — vier Tage ohne
Briefing/Radar, zwei Warnmails lagen unversendet in den Entwuerfen. Die **strukturelle Lehre**
gilt trotzdem fuer die Kontenmigration: **eine Registry, die an genau einer Station haengt (egal
ob durch Ausfall oder durch Kontowechsel), meldet ihren eigenen Stillstand nicht selbst.**
Uebertragen auf den Kontowechsel: **keine kritische Task (Briefings, Radar, Kontingent-Aufsicht
selbst) sollte nur unter einem einzigen der drei Toepfe laufen**, sonst wiederholt eine
Migration exakt dieses Muster mit einer neuen Ursache.

### 2.3 Nachmessung via `task-takt-nachweis` (A8)

**BELEGT:** `scripts/task-takt-nachweis.sh` ist **nicht gebaut**. Es ist in
`docs/konzepte/260812-Hub-Audit/260812-Hub-Audit.md` (Massnahme A8, gegen Risiko R11 "Registry
ist nicht steuerbar") geplant — soll `logbuch/laeufe/*.jsonl` gegen den behaupteten Takt jeder
Task spiegeln. Der Dispatch-Lauf, der A8 haette bauen sollen (A-Paket, Session
`20260812-233128-20624`), ist mit `budget_exhausted` bei 5.02 USD abgebrochen; nur A1, A2, A5
sind tatsaechlich umgesetzt. **A8 existiert also nicht** und kann in dieser Vorlage nicht als
verfuegbares Werkzeug fuer die Migrations-Nachmessung vorausgesetzt werden.

**Empfehlung:** A8 vor oder spaetestens waehrend der Kontenmigration bauen, nicht danach — genau
weil die Migration den Fall erzeugt, den A8 sichtbar machen soll (Tasks, die unter einem anderen
Konto laufen als angenommen). Bis A8 steht, ist die einzige Nachmessung der manuelle Soll/Ist-
Abgleich: registrierte Tasks je Station (`list_scheduled_tasks`) gegen die drei
Ampel-Berichte der erweiterten `claude-abo-auslastung` (Punkt 4 dieses Auftrags, siehe Chronik
260813b) halten.

### 2.4 Ablauf-Vorschlag (zur Wahl, nichts ausgefuehrt)

1. A8 (`task-takt-nachweis.sh`) bauen.
2. Team-Seats einrichten (Login je Seat auf der vorgesehenen Station, Variante A oder B).
3. `connectors/claude-usage.mjs` pruefen: liest weiterhin nur das jeweils AKTIVE Keychain-Token
   der Station — fuer drei separate Toepfe auf ggf. verschiedenen Stationen ist das ausreichend,
   sobald jede Station nur EIN Konto aktiv haelt (Variante A). Bei Mehrfachkonto auf einer
   Station (Variante B) braucht der Connector eine Konto-Auswahl (z.B. per zweitem Keychain-
   Service-Namen) — das ist eine Erweiterung, kein Vorhandenes.
4. Kritische Tasks (Briefings, Radar) NICHT beide auf denselben Topf legen (2.2).
5. Ersten Kontroll-Zyklus mit A8 fahren, danach erst den bisherigen Alt-Kontostand (falls
   relevant) stilllegen.

---

## Zusammenfassung fuer die Entscheidung

Raphael entscheidet per dieser Liste:
- Punkt 1: welche der vier Loop-Zeilen reaktiviert/umgetaktet werden (Vorschlag: nur
  `planungsgrundlagen-training`, gedrosselt).
- Punkt 2: Variante A oder B der Kontenzuordnung, und ob A8 vor der Migration gebaut wird
  (Vorschlag: ja, davor).

Nichts aus dieser Vorlage wurde umgesetzt.
