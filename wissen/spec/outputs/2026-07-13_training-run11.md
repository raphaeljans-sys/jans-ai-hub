# Spec-Training — Lauf 11 (2026-07-13)

Teil des VOLLGAS-Endlos-Runners (Auftrag Raphael 12.07.2026). NAS gemountet: erfuellt.
Vierter Lauf am selben Tag (nach Lauf 8 05:15, Lauf 9 06:29, Lauf 10 09:30). Statt eines
weiteren generischen Environment-Sweeps: gezielte **Reue-Pruefung** einer bereits behobenen
Lektion (Lauf 9, «Zwei Blocker-Typen») — mit einem konkreten, ueberraschenden Befund.

## 1. Stand gelesen
- `wiki/QUESTIONS.md`: F1 (Ueberdehnungs-Gegentest) weiter offen, F3 nur noch Marketing/Text
  offen, F4/F5 vollstaendig eingeloest, F6/F7 stabil.
- `outputs/`: seit Lauf 7 (Wettbewerbs-Layer 12.07.) weiterhin **keine neue reale Spec-Anwendung**.
- `CHANGELOG.md`: Laeufe 8–10 waren Environment-/Methodik-Laeufe; Lauf 10 hatte keinen offenen
  «naechstes»-Punkt mehr ausser den strukturellen F1/F3-Luecken.

## 2. Reue-Pruefung statt neuer Breitband-Audit
Drei Laeufe am selben Tag haben CLAUDE.md/rules/skills bereits breit gescannt (Drei-Listen-
Konsistenz, Twin-Fidelity-Kausalitaet). Ein vierter gleichartiger Sweep haette wenig Grenznutzen.
Stattdessen: die Lauf-9-Lektion («selbst-blockierte Owner-Aktion gehoert als aktive Nudge in
jeden Monitor-Lauf, nie unter ‹nichts Neues›») am **selben realen Fall** (AG-Gruendung, lebende
Spec seit 21.06.) 4 Tage spaeter erneut gegengeprueft — nicht nur behauptet, dass sie hielt.

**Befund — Regression statt Bestaetigung:**
- Der dedizierte `ag-gruendung-monitor`-Loop hat seit **10.07.2026 keinen einzigen Eintrag mehr**
  geschrieben (Monitor-Log in `outputs/2026-06-21_ag-gruendung_spec.md` endet beim 10.07.-Eintrag;
  3 Tage vollstaendiger Stillstand, nicht einmal ein «nichts Neues»).
- Der taegliche `logbuch-radar` (`logbuch/LOGBUCH.md`) hat die AG-Gruendung/Notariat-Zeile in
  **vier Briefings in Folge** (10./11./12./13.07., verifiziert per Volltextsuche in den jeweiligen
  Tagesabschnitten) **nicht mehr erwaehnt** — trotzdem fuehrt `logbuch/fristen.md` dieselbe Zeile
  unveraendert mit Status **«offen»**, Prioritaet **«hoch»**, Datum 27.06. (damit **16 Tage** ohne
  Fortschritt seit der Faelligkeit; der zugrunde liegende Notariats-Befund ist **21 Tage** alt).
- Das ist ein **staerkerer** Fehlerfall als der urspruengliche Lauf-9-Befund: dort war die Aktion
  wenigstens noch sichtbar (unter der falschen «nichts Neues»-Zeile), hier ist sie aus der
  taeglichen Sicht komplett verschwunden, obwohl das Register sie weiterhin als «hoch» fuehrt.

**Einordnung:** eine im Wiki dokumentierte Verhaltensregel ist kein Selbstlaeufer. Sie wurde
nachweislich einmal befolgt (07.–09.07., die Zeile erschien taeglich in `LOGBUCH.md`) und ist
danach wieder abgerissen — ohne dass irgendwo ein Fehler geloggt wurde (das System meldet ja
gerade nichts, wenn ein Punkt verschwindet, das macht die Regression selbst still).

## 3. Nachschaerfen
- `wiki/verifier.md`: neue Sektion **«Eine Monitor-Lektion haelt nicht von selbst — Reue-Pruefung
  noetig»** ergaenzt den Lauf-10-Befund («Mass validiert nur, wenn der Mess-Prozess die Aenderung
  konsumiert»): dort fehlte die Konsumierung eines Fixes durch ein Mass, hier fehlt die
  **Fortdauer eines Verhaltens** ueberhaupt. Neue Trennfrage fuer kuenftige Laeufe: «Ist die
  zuletzt behobene Monitor-/Nudge-Lektion beim naechsten Blick noch sichtbar in der Praxis — oder
  nur noch im Wiki?»
- `wiki/QUESTIONS.md` F2 um den 13.07.-Regressionsbefund ergaenzt.
- **Bewusst NICHT autonom repariert:** die Ursache (warum `ag-gruendung-monitor` seit 10.07. nicht
  mehr lief und warum `logbuch-radar` die Zeile fallen liess) liegt ausserhalb des Mandats der
  KB `wissen/spec` — das ist Betrieb des Skills `logbuch`/der Scheduled-Task-Landschaft, nicht der
  Spec-Methodik selbst. Klar als Befund dokumentiert und hier an Raphael/`logbuch` geflaggt statt
  eigenmaechtig in fremde Skills einzugreifen (Grenzfall-Regel `spec-methode.md`/Leitplanke
  «Mensch entscheidet bei Grenzfaellen»). Kein Mail-Versand (Prompt verlangt es nicht ausdruecklich).
- Rule `spec-methode.md` unveraendert — dies ist kein Gate-Ueberdehnungs-/Untertrigger-Beleg,
  sondern eine Betriebsfrage nachgelagerter Automationen.

## 4. Quellen-Schuld
Keine offen — F4/F5 bleiben vollstaendig eingeloest.

## Was als naechstes
- **Flag fuer Raphael/hub-chef/logbuch:** die AG-Gruendung-Notariat-Owner-Aktion («Antwort ans
  Notariat raus, Name bestaetigen + Word-Dateien Urkunde/Statuten 260627 senden») ist seit 27.06.
  offen (16 Tage) und seit 10.07. aus der taeglichen Sichtbarkeit verschwunden — sollte im naechsten
  `logbuch-radar`/`hub-chef`-Lauf wieder aktiv auftauchen, nicht erst hier.
- F1-Ueberdehnungs-Gegentest (mittelgrosser, genervter Mittelfall) fehlt weiter in `outputs/`.
- F3: Domaene Marketing/Text weiterhin ohne belegte Verifier-Zeile.
- Methodische Folgefrage fuer Lauf 12+: ist die Regression ein Einzelfall (dieser eine Loop) oder
  ein Muster (pruefen, ob andere Monitor-/Nudge-Loops aehnlich stillstehen)?
