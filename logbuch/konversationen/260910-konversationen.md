# Konversations-Destillat 10.09.2026

**Abdeckung:** MacBook Pro 20 Sessions · Mac Mini 7 Sessions · Cloud/Dispatch 5
(alle fünf Dispatch-Protokolle sind Nachtschicht-Läufe des Mac Mini, inhaltsgleich mit
dessen Sessions; `remote-tasks/results/` im Fenster leer) — Fenster 26 h, Stand
10.09.2026 06:1x CEST.

**Befund vorweg: im Fenster liegt kein neues Gespräch.** Auf beiden Stationen steht keine
einzige inhaltliche Eingabe von Raphael, die nicht bereits destilliert wäre. Die 20 Sessions
auf dem MacBook Pro sind Scheduled Tasks und Nachtläufe; ihre «RAPHAEL:»-Zeilen sind zwei
Verbindungstests («Antworte nur mit: OK»), zwei Stop-Hook-Rückmeldungen zu ASCII-Umlauten und
ein geladener Skill-Prompt. Auf dem Mac Mini sind sechs der sieben Sessions Nachtschicht-Zyklen.

**Methodischer Hinweis, zweiter Tag in Folge derselbe.** Die Zeitstempel des Extract-Scripts
sind Datei-mtimes, nicht der Zeitpunkt der letzten Nachricht. Die Steinbrüchelstrasse-Session
`4898bf59` erscheint mit «letzte Aktivität 09.09.2026 08:52» erneut im Rohdigest; am
JSONL nachgemessen läuft sie vom **08.09.2026 13:07 bis 17:24** und ist im Destillat vom
09.09.2026 vollständig behandelt. Sie wird hier nicht wiederholt.

---

## 01 Debitoren: bexio-Zugang am 32. Tag tot, die Abo-Frist ist gestern verstrichen

**Station und Zeit:** MacBook Pro, 09.09.2026 08:2x (Verzugscheck-Lauf, Session `27bef9fc`).

**Kern und Entscheide.** Der Verzugscheck meldet zum **zweiunddreissigsten Kalendertag in
Folge** «kein Verzugscheck möglich». Drei unabhängige Proben liefern je **HTTP 401**: der
Connector (`--verzug --json`), die Gegenprobe am Aussteller
(`auth.bexio.com/.../userinfo`) und die Direktprobe `api.bexio.com/2.0/company_profile`.
Der Token in `~/.bexio.env` ist gesetzt und läuft erst am 13.12.2026 ab; Warten hilft nicht.

**Blockierte Positionen, Stand 08.08.2026 und seither unverifiziert:**

01.1 **RE-00098 und RE-00099**, Universitäts-Kinderspital Zürich, zusammen
**CHF 17'280.00**, Mahnfrist 12.08.2026 abgelaufen, damit 28 Tage überfällig. Nächste Stufe
wäre Mahnung 1, sobald der Restbetrag am Live-Stand bestätigt ist.

01.2 **RE-00100**, Nova Property Fund Management AG, **CHF 13'120.00**, 20 Tage über der
Frist der Zahlungserinnerung, gesperrt bis die Fälligkeit 30.07.2026 am Beleg bestätigt ist.

01.3 Zusammen sind damit **CHF 30'400.00** ohne belegte Datengrundlage.

**Offene Punkte und Folgeaktionen.** Der Registerpunkt «bexio-Abo: Entscheid vor der
automatischen Migration Starter → Advanced am 08.10.2026» trägt die Frist **08.09.2026** und
ist gestern ohne Vermerk verstrichen; die Kündigung oder ein Paketwechsel wirken nur bis
spätestens 30 Tage vor Ablauf. Entscheidungsgrundlage liegt vor:
`wissen/firmengruendung-ch/outputs/2026-08-30_bexio-vs-alternativen-buchhaltung.md`
(bexio zweites Abo rund CHF 924/Jahr gegen CashCtrl PRO rund CHF 350/Jahr für zwei
Organisationen). Die Wiederherstellung des API-Zugangs hängt am selben Entscheid.

**Radar-relevant: ja.** Geldbetrag, verstrichene Frist, und die Debitoren-Aufsicht ist seit
einem Monat blind. Betrifft die Register-Punkte «bexio-Zugang tot» (offen, seit 09.08.2026)
und die Aktivzeile «08.09.2026 — bexio-Abo». Als Nachtrag ins Register eingetragen.

---

## 02 2619 KISPI PPTS: die Bestätigung für den Samstagstermin 19.09. ist morgen fällig

**Station und Zeit:** MacBook Pro 10.09.2026 03:5x (`twin-mail-training` Batch 118) und
Mac Mini 10.09.2026 05:2x bis 05:3x (Nachtschicht, Priorität 3).

**Kern und Entscheide.** Raphael schreibt am **09.09.2026 10:58** an O. Stadelmann und T. Tus
(Estermann) sowie A. Spahic, M. Spörri und F. Wuersch (KISPI): der Umbau der Schiebetüre und
der Einbau des RHS ist gesetzt auf **Samstag, 19.09.2026, ab 06:30 durch Estermann**. Daran
hängen zwei vorgelagerte Termine aus seiner eigenen Formulierung: **Vorleistungen
abgeschlossen bis Freitag, 18.09.2026** (Mobiliar aus dem Raum, Boden mit Hart-Pavatex
geschützt) und **«Seitens KISPI brauche ich bis Freitag, 11.09.2026, die Bestätigung.»**

Die Nachtschicht hat den ersten Schritt erledigt und den Eingang nativ per M365-Graph
geprüft (Postfach rj@, Volltextsuche auf «Estermann», «Schiebetüre», «RHS», dazu der volle
Posteingang ab 09.09. 10:58 bis 09.09. 20:53): **keine Antwort** von Spahic, Spörri, Wuersch,
Stadelmann oder Tus. Die einzige KISPI-Mail des Fensters (Spahic, 09.09. 10:51) betrifft die
Lüftungs- und Ausführungsplanung, einen anderen Strang.

**Offene Punkte und Folgeaktionen.** Die Bestätigungsfrist läuft **morgen, 11.09.2026**, ab
und liegt bei der Bauherrschaft. Kein Entwurf angelegt: die Bitte ist versandt, eine
Erinnerung vor Fristablauf ist Ermessensentscheid Raphaels.

**Radar-relevant: ja**, Frist morgen. Bereits als eigene Registerzeile geführt (Eintrag
10.09.2026 03:5x samt Nachtrag 05:3x), deshalb hier **kein** zweiter Eintrag.

---

## 03 Feuerpolizei Stadt Zürich: Nachlieferung übernommen, Quittung offen

**Station und Zeit:** MacBook Pro 10.09.2026 03:5x (`twin-mail-training` Batch 118, Fund am
Beleg).

**Kern.** Die Nachlieferung der Brandschutz- und Lüftungsunterlagen an M. Gantenbein
(Feuerpolizei Stadt Zürich) hat Raphael am **09.09.2026 14:35 selbst übernommen**, weil
J. Ziegel (Gruner) krank ist. Er hat den SharePoint-Link zusätzlich per WeTransfer gedoppelt,
nachdem eine Zustellung beim Empfänger schon einmal gescheitert war («UNSCANNABLE EXTRACTION
FAILED» in der Betreffzeile).

**Offen.** Ob die Feuerpolizei den Empfang quittiert. Kein Termin gesetzt.

**Radar-relevant: bedingt** — Behördenkontakt ohne Frist, bereits im Register als zweiter
Fund derselben Zeile vermerkt. Kein neuer Eintrag.

---

## 04 Routine-Läufe des Fensters

**Sammelzeile, keine Gesprächsthemen.** Rund zwei Dutzend Läufe, alle mit Ergebnis und ohne
Blocker: `logbuch-radar` (09.09. 06:5x, Register plus 18 Zeilen, Briefing im Logbuch,
Commit `30a22efa4`), `hub-chef` (09.09. 08:4x), `ag-gruendung-monitor`,
`twin-fidelity-review` (Gesamt-Fidelity **26** nach 25 am Vortag, vier Golds der
Mikrotext-Gattung, erster belegter Schadensfall des Byte-Riegels), `twin-mail-training`
Batch 118 (Commit `534c33320`), `normen` Run 83 (33 angeblich quellenlose Destillate geprüft,
vier echte tote Pfade repariert, Commit `0a91938ff`), `energie` Runs 189 und Folgeläufe
(Commits `0eef1573e`, `b1050e2aa`, `6eac133ad`, `327532af2`), `spec-training`, `wissens-chef`
(115 Commits in 24 h gemessen), `heartbeat`.

**Zwei Befunde daraus, beide Hub-intern und ohne Aussenwirkung:** (1) Das
Prüfwerkzeug `datenstand-waechter` meldete seine eigene Fehlerdokumentation als neuen
Prüfstichtag; die Ausnahme `BEFUNDREFERENZ` behebt das, drei Artefakte weg, die fünf echten
Stichtage unverändert. (2) In der KB `normen` führen 17 Destillate der VKF-100er-Reihe die
Gattung falsch («Richtlinie» statt «Brandschutzerläuterung»); der Fliesstext wurde
gegengeprüft.

**Radar-relevant: nein.**

---

**Nicht aufgenommen.** Die vier bzw. fünf Bildeinfügungen der Steinbrüchelstrasse-Session
(Kanalkataster-Screenshots, Renderings) gehören zum bereits destillierten Gespräch vom 08.09.
Der dort offene Punkt bleibt bestehen: die vier Screenshots liegen noch nicht im Ordner
`09 Dokumente/260908-Kanalkataster-Screenshots`, und die Chrome-Erweiterung «Claude in Chrome»
ist nicht verbunden.
