# Konversations-Destillat 26.08.2026

**Abdeckung:** MacBook Pro 28 Sessions · Mac Mini 7 Sessions · Cloud/Dispatch 5 Dispatch-Protokolle
(`remote-tasks/results/` leer) — Fenster 26 h (25.08.2026 04:13 bis 26.08.2026 06:13 CEST).

**Lage in einem Satz:** In diesem Fenster hat Raphael **kein einziges Gespräch** mit Claude geführt.
Alle 35 Sessions sind automatische Läufe; die drei «RAPHAEL:»-Zeilen auf dem MacBook Pro sind
Fensterproben des Vollgas-Radars («Antworte nur mit: OK»), die sieben auf dem Mac Mini sind der
Nachtschicht-Auftrag und Skill-Einspielungen. Der Tag trägt deshalb **keine Gesprächsthemen**,
sondern nur Befunde aus dem Automatikbetrieb. Die operativen Punkte des Vortages (KISPI-Türmatrix,
AG-Gründung, bexio) stehen unverändert offen und sind bereits registriert.

**Grenze der Abdeckung:** Chats in der Claude-App auf iPhone/iPad sind headless nicht auslesbar
(README dieses Ordners). «Kein Gespräch» heisst hier: kein Gespräch über Claude Code, Cowork,
Dispatch oder remote-tasks. Ein reiner App-Chat wäre unsichtbar geblieben.

---

## 1. Die drei offenen operativen Punkte laufen unverändert weiter (beide Stationen, ganzes Fenster)

- **Kern/Entscheid:** Kein Lauf im Fenster hat einen der drei Punkte bewegt, weil alle drei
  Raphaels Hand brauchen. (a) **AG-Gründung:** das UBS-Kapitaleinzahlungskonto der Raphael Jans AG
  in Gründung ist seit **17.08.2026 10:18** eröffnet (IBAN CH46 0027 6276 1238 74D7 N, BIC
  UBSWCHZH80A); die Einzahlung **CHF 50'000 Vollliberierung** ist nicht ausgelöst, die
  Kapitalbescheinigung kommt erst danach, die Beurkundung frühestens rund 05.09.2026. Der
  `ag-gruendung-monitor` hat den Punkt am 25.08. ins Logbuch geschrieben, weil Apple Mail blockiert
  war. (b) **KISPI-Türmatrix:** von den 61 olivgrünen Architektur-Spalten sind **55 bei allen 33
  Umbau-Türen leer**, gegengeprüft an 60 bestehenden Innentüren desselben Geschosses (dort 60/60
  gefüllt) — rund 1'800 Einträge, nicht die im Radar geschätzten zwei bis drei Stunden. Schalldämmwert,
  Prüfklima, U-Wert und Strahlenschutz sind Zulieferungen von Bauphysik und MED-Planung und bisher
  **nicht angefragt**. (c) **bexio:** der Token wird seit dem 09.08. mit HTTP 401 abgelehnt,
  gegengeprüft am Aussteller; letzter verifizierter Zahlstatus **08.08.2026 08:36**, das sind
  achtzehn Kalendertage. Vier Kinderspital-/Tschopp-Positionen stehen auf dem Registerstand vom
  08.08., nichts wurde gemahnt.
- **Offene Punkte / Folgeaktionen:** Alle drei sind Aktion Raphael und bereits registriert; dieser
  Eintrag doppelt sie nicht, sondern hält fest, dass sich im Fenster **nichts** bewegt hat.
- **Radar-relevant:** ja — betrifft die bestehenden Register-Punkte AG-Gründung (Nachtrag 25.08.
  06:2x/07:0x), Türmatrix (Zeile 25.08. 07:0x mit Hub-Chef-Nachtrag 08:4x, Produktionsstart
  **01.09.2026**) und bexio (Zeile seit 09.08.). Keine neuen Zeilen nötig.

## 2. Apple Mail fällt auf beiden Melde-Wegen aus, Graph trägt den Ersatz (MacBook Pro, 25.08. 06:5x bis 08:5x)

- **Kern/Entscheid:** Apple Mail antwortet auf dieser Station nicht mehr auf `osascript`. Betroffen
  waren nacheinander der `logbuch-radar` (06:5x), der `ag-gruendung-monitor` (07:0x) und der
  `hub-chef` (08:4x). Radar und Chef sind über das Wege-Register auf **Graph `Mail.Send`** über die
  zertifikatsangemeldete M365-CLI ausgewichen und haben je in den Gesendeten nachgemessen statt am
  Rückgabewert: Radar-Briefing 07:12:46, Chef-Briefing 08:50:58 (4'389 Zeichen, kein Leer-Draft).
  Der `ag-gruendung-monitor` konnte nicht ausweichen und hat seinen P1 stattdessen ins
  `logbuch/LOGBUCH.md` geschrieben, wo der Chef ihn um 08:39 aufnahm. Damit ist auch der
  **Chef-Ausfall vom 24.08.** erklärt: dreifach gemessen (keine Chef-Sektion im Logbuch, kein
  Eintrag in `widerruf/versand.log`, kein Briefing in den Gesendeten) — Montags Radar-Briefing hat
  Raphael nie erreicht.
- **Offene Punkte / Folgeaktionen:** Der Skill `hub-chef` hat den Graph-Rückfall **nicht eingebaut**;
  der Ausweg lief beide Male von Hand. Der Ersatzweg ist im Wege-Register erstmals produktiv belegt.
- **Radar-relevant:** ja — der Punkt steht bereits doppelt belegt im Register (Radar 25.08. und
  Chef 25.08.); hier nur die Bestätigung, dass er die Ursache des 24.08.-Ausfalls ist.

## 3. Der Erreichbarkeits-Schutz existiert weiterhin nicht — Patch liegt fertig vor (MacBook Pro, 25.08. 09:4x)

- **Kern/Entscheid:** Der `heartbeat` lief grün über alle acht Checks. Beim Gegenlesen zeigte sich,
  dass der seit dem 24.08. in CLAUDE.md und im Register geführte «heartbeat Check 15» für die
  Tailscale-Erreichbarkeit **gar nicht existiert**: `grep -i tailscale scripts/heartbeat.sh` liefert
  null Treffer, letzter Commit des Scripts `50f4553a9` vom 13.08., also elf Tage **vor** dem
  Wochenendausfall. Wächter-Script und plist-Vorlage existieren, die Verdrahtung wurde nie gebaut,
  der launchd-Job ist auf dem Mini nicht geladen. Ist-Zustand ist grün (Tailscale aktiv, `ssh mini`
  antwortet) — behoben ist der Vorfall, nicht der Schutz davor.
- **Offene Punkte / Folgeaktionen:** Zweiteilig und beides Aktion Raphael. (1) Der nachgerüstete
  Check ist **fertig gebaut und getestet**, aber nicht geschrieben — der Auto-Mode-Klassifikator hat
  den Schreibzugriff blockiert und wurde regelkonform nicht umgangen; die gepatchte Fassung liegt
  abgelegt, `bash -n` bestanden, Codepfad isoliert getestet, Diff +66/−2 (belegte Zeilenersetzungen).
  (2) plist installieren und laden — Klasse Systemdienst, fällt unter die Freigabe-Schwelle.
- **Radar-relevant:** ja — betrifft den Register-Punkt vom 25.08. 09:4x (Hub-Infrastruktur
  Erreichbarkeit, hoch/offen). Keine neue Zeile, der Nachtrag ist vollständig.

## 4. Der Werkzeug-Detektor des Twin-Harness ist gefallen (MacBook Pro, 26.08. 05:11)

- **Kern/Entscheid:** Der Twin lernt Stil ausschliesslich aus Raphaels eigener Hand. Bis zum 25.08.
  bewies die `internetMessageId` mit `PROD.OUTLOOK.COM` die eigene Hand, weil der Hub nur über Apple
  Mail versendete. Seit dem Apple-Mail-Ausfall weicht der Hub auf Graph aus — und die beiden
  Hub-Briefings tragen jetzt **zeichengenau denselben Host** wie Raphaels eigene OWA-Mails. **Ab
  sofort beweist die Message-ID nichts mehr**; wer sie weiterverwendet, zieht Hub-Erzeugnisse als
  Stilquelle ein und lässt den Zwilling sein eigenes Echo lernen. Ersatz gebaut und **gemessen statt
  vermutet**: ein CSS-Fingerabdruck an vier Mails (`Aptos,Calibri`/`#000000` für den Hub gegen
  `Aptos,Arial`/`rgb(0,0,0)` für die eigene Hand), zweistufig mit kostenlosem Vorfilter. Die in
  Batch 104 gesetzte Vorbedingung (`grep "sendMail"`) hat nie ausgelöst und konnte es nicht, weil
  der Graph-Weg über die CLI lief — eine Vorbedingung, die nur den bekannten Weg prüft, sichert
  nichts.
- **Offene Punkte / Folgeaktionen:** Der Fidelity-Review vom 26.08. hat aus demselben Grund den
  Strang **AG-Gründung/Notariat gesperrt**, den der Vorlauf noch als offenes Gold empfohlen hatte:
  die Mails ans Notariat sind claude-aera und über die Message-ID nicht von echtem Gold zu trennen.
  Gesamt-Fidelity 32 (nach 36 am 25.08.), Gehirn neu kompiliert bei 33'965 B.
- **Radar-relevant:** nein — Hub-intern, methodisch, im selben Lauf behoben. Kein Termin, keine
  Zusage, keine Aussenwirkung auf ein bereits versandtes Erzeugnis.

## 5. SIA 118:1991 hatte 84 Kernlücken — das meistgezogene Destillat des Hub (MacBook Pro, 26.08. 01:28 bis 05:11)

- **Kern/Entscheid:** Der Normen-Lauf 62 hat die Abdeckungsrichtung erstmals auf `sia-118-1991.md`
  gefahren. Das Destillat trug seit dem 17.07. `established`, gestützt auf drei bestandene Prüfrunden
  — die Abdeckungsrichtung war dort nie gelaufen. Ergebnis: **84 Kernlücken und 82 Nebenlücken bei
  null falschen Werten.** Alle Zahlen stimmten, es fehlte Inhalt. Die Norm ist über Rule
  `normen-referenz` für `werkvertrag`, `unternehmerkontrolle`, `kostenkontrolle` und `ausschreibung`
  verbindlich, die Ausgabe 2013 ist nicht im Haus. Die folgenreichsten Funde für die JANS-Bauleitung:
  **Art. 163** fehlte ganz (ein bei der Abnahme erkannter, aber nicht protokollierter Mangel gilt als
  stillschweigend genehmigt, die Unternehmerhaftung entfällt insoweit); **Art. 125 Abs. 2** war
  halbiert und neigte sich gegen den Unternehmer (verlangt die Bauleitung längeres Vorhalten des
  Gerüsts, hat er Anspruch auf zusätzliche Vergütung — so gelesen wirkte längeres Vorhalten gratis);
  **Art. 83** Bauhandwerkerpfandrecht fehlte inhaltlich ganz, verschluckt durch eine falsche
  Bereichsgrenze in den eigenen «Offenen Punkten»; **Art. 86 Abs. 4** nennt die Ausnahme zur
  ±20-%-Regel, die als zentrale Kennzahl ohne ihre Schranke dastand; **Art. 147/151** regeln die
  eigene Zahlungssystematik der Gesamtpreisverträge. 18 Blöcke wurden inline eingearbeitet, jeder
  Kernbefund vom Hauptprozess selbst am Original nachgelesen, drei Agentenbefunde dabei korrigiert
  oder verworfen.
- **Offene Punkte / Folgeaktionen:** Die methodische Lehre steht als Nachtrag in der KB: die
  Q&A-Selbstbefragung bildet ihre Fragen **aus dem Destillat** und teilt darum die Blindheit der
  Refuter-Richtung — drei Prüfrunden konnten 84 Lücken nicht sehen. Eine Regeländerung wurde
  bewusst nicht vorgenommen, das bleibt Raphaels Entscheid.
- **Radar-relevant:** ja — kein Termin, aber beratungsrelevant für jede laufende Bauleitung.
  Als neue Register-Position eingetragen.

## 6. Zwei Rechtskorrekturen mit Aussenwirkung auf die Bauherren-Beratung (MacBook Pro, 25.08. 23:1x bis 26.08. 05:11)

- **Kern/Entscheid:** Der Wissens-Chef-Lauf 43 hat zwei Fehler desselben Typs gefunden — eine
  Korrektur, die ihre Nachbar-KB nicht erreicht hat. (a) **RPV Art. 42 Abs. 3:** `baurecht` hatte am
  24.08. die eigene Formel korrigiert, `planungsgrundlagen` führte die falsche weiter, ausgerechnet
  in einem Abschnitt, der ausdrücklich zum Nachschlagen einlädt. Richtig sind **zwei getrennte
  Schwellen**: lit. a innerhalb des Gebäudevolumens **+60 % der aBGF**, lit. b ausserhalb weder 30 %
  noch 100 m² — und die Erweiterungen **innerhalb** werden halb angerechnet. Die Anrechnungsrichtung
  stand umgekehrt, die 60-%-Innenschwelle fehlte ganz. Wer die alte Zeile einer Bauherrschaft gibt,
  **halbiert ihr den Innenausbau-Spielraum und rechnet den Anbau zu günstig**. Der Refuter ergänzte
  am amtlichen Volltext zwei Punkte: massgeblicher Vergleichszustand ist nach Art. 42 Abs. 2 RPV der
  Zeitpunkt der Zuweisung zum Nichtbaugebiet, und lit. a kennt seit 01.01.2026 (AS 2025 659) eine
  Überschreitung bis 100 m² aBGF bei altrechtlicher Erstwohnung. (b) **Art. 229 StGB** stand in zwei
  `normen`-Destillaten mit «bis zu drei Jahren» für beide Tatbestände; richtig ist Abs. 1 vorsätzlich
  **bis fünf Jahre**, Abs. 2 fahrlässig bis drei — derselbe Fehler, den `baurecht` in Buch-Run 101 an
  sich selbst korrigiert hatte.
- **Offene Punkte / Folgeaktionen:** Alle Fundstellen sind nachgezogen. Ein Vermerk an einer
  importierten Rule wurde vom Auto-Mode-Klassifikator blockiert und liegt regelkonform als fertiger
  Vorschlag im Laufbericht `wissen/koordination/outputs/2026-08-25_wissens-chef-run43.md`.
- **Radar-relevant:** ja — kein Termin, aber beratungsrelevant. Als neue Register-Position
  eingetragen.

## 7. Energie-KB: zwei Datenstands-Termine, bereits registriert (Mac Mini, 25.08. 21:0x und 23:1x)

- **Kern/Entscheid:** Die Läufe 162 und 163 haben beide PDF-Korpora erschöpft und stattdessen die
  meistzitierten Destillate an der Primärquelle geprüft. Drei Funde mit Aussenwirkung: **SIA 390/1
  «Klimapfad»** ist seit dem 01.02.2025 publiziert und ersetzt SIA 2040:2017 — die KB führte sie an
  fünf Stellen als «in Vernehmlassung», unter anderem in der Bauherren-Antwort zu Netto-Null. Die
  **Uf-Fallback-Werte für Fensterrahmen** (Holz 1,9 · Kunststoff 2,5 · Verbundprofil 3,3) sind seit
  **August 2009 amtlich abgelöst**, es gelten **1,8 · 2,2 · 2,8**; die Ablösungsklausel wurde wörtlich
  an der Quelle verifiziert und löst damit einen seit dem 03.08. offenen Widerspruch. Dazu ein
  Zahlendreher in der Minergie-Tabelle (Original 46/35, Destillat 45/36) und drei Leistungsbänder
  bei der Zürcher Fernwärme, von denen das Destillat nur eines kannte.
- **Offene Punkte / Folgeaktionen:** Die Fernwärme-Tarifstruktur der Stadt Zürich wechselt per 2027
  auf ein kostenbasiertes Gebührenmodell; amtlich belegt ist nur die Richtung, nicht die Höhe — wer
  bis dahin eine Fernwärme-Rechnung aufstellt, nennt den Vorbehalt. Agro Energie Schwyz: Grund- und
  Arbeitspreis laufen am **30.09.2026** ab, ab Oktober neu ziehen.
- **Radar-relevant:** ja, aber **bereits eingetragen** — der Lauf hat seine Funde nach Rule 260805
  selbst ins Register geschrieben (Nachtrag 25.08. 23:1x). Keine Doppelung.

## 8. Routine-Läufe

35 Sessions im Fenster, davon **kein einziges Gespräch**. Die Automatik lief ohne Blocker:
Vollgas-Chef-Radar und Frühwarnung (Fenster durchgehend [FREI], Wochenbudget 16.91 von 167 Mio bei
22.0 % verstrichener Woche, Verbrauch 11.9 Punkte hinter dem Zeitverlauf), Logbuch-Radar, Hub-Chef,
Heartbeat, Tenant-Hygiene, Mahnwesen-Verzugscheck und Zahlungsabgleich, die Lern-Loops `normen`
(Runs 61 und 62), `energie` (Runs 162 und 163), `twin` (Batches 104 und 105), `baurecht`
(Buch-Run 140), die Wissens-Chef-Läufe 42 und 43, die Synergie-Läufe 17 und 18 sowie fünf
Nachtschicht-Zyklen auf dem Mac Mini inklusive eines `wissenscheck` auf `projekt-lessons`.

Zwei Betriebsbefunde des Vortages haben sich im Fenster **erledigt**: `ch.jans.nachtschicht` ist auf
dem Mac Mini wieder geladen und hat den 23:30-Slot gearbeitet, und der GitHub-Backup-Stau (3 Commits
ungepusht, 50 nicht eingearbeitet) ist über den Merge `9bb816682` aufgelöst; `git-divergenz.sh`
meldet beide Richtungen deckungsgleich. Der P2-Befund «13:30-Slot fehlt spurlos» ist entkräftet, der
Slot hat am 25.08. gefeuert (Exit 0, 537 s) — der Ausfall vom 24.08. bleibt ein Einzelfall.

Der Tenant-Speicher steht bei **878.52 GB von rund 1'054 GB (83.35 %)**, Zuwachs 2.08 GB in 24 h
nach 13.90 GB am Montag; **95 Prozent des Tageszuwachses sind Versionsverlauf über bestehendem
Inhalt**, nicht neue Arbeit. Restlaufzeit 26 Tage im Wochenschnitt, achter Tag in Folge unter der
60-Tage-Schwelle. Grösster offener Hebel bleibt der Versions-Trim auf JANS.PROJEKTE, Potenzial rund
91 GB. Bereits registriert.
