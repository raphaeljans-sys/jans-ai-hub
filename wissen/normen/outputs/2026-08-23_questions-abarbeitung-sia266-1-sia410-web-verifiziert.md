# QUESTIONS-Abarbeitung: SIA 266/1 und SIA 410/410-1/2 web-verifiziert

**Auftrag Raphael:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je
Aussage (Norm, Ausgabe, Ziffer), Verifikationsstatus des Destillats vor Zitat lesen. Vorlauf
gelesen: `CHANGELOG.md` (Kopf: zehnte SIA-Sweep-Fortsetzung), `outputs/2026-08-23_questions-abarbeitung6.md`.
Ein parallel laufender `claude`-Prozess (PID 90028, exakt dieser Auftragstext als
`-p`-Aufruf) ist dieser Lauf selbst — kein Konkurrent, per `ps aux` bestätigt.

**Rahmenbedingung:** Der SharePoint-/OneDrive-Zugriff (`OneDrive-FreigegebeneBibliotheken–JANS`
und die drei mit Präfix-Kollision benannten Zweitmounts) war während dieses Laufs nicht
erreichbar — jeder `ls`/`find` darauf endete mit `fts_read: Operation timed out`. Alle offenen
Fragen, die einen SharePoint-Volltext voraussetzen (die drei BRING-SCHULD-P1-Einträge SIA
380/1, SIA 385/1, VKF-BRL-16-15-Vollfassung), waren damit nicht bearbeitbar. Stattdessen zwei
Fragen bearbeitet, die über öffentlich zugängliche Web-Quellen (SIA-Shop, suissetec)
abschliessend klärbar sind — dieselbe Methode wie beim vorherigen Suva-67012.d-Fund.

## 1. SIA 266/1: geltende Ausgabe ist 2015, nicht 2003 — Destillat von established auf superseded umgestellt

**Frage (QUESTIONS.md, seit Run 22/25.07.2026 offen):** «SIA 266/1: neuere Ausgabe abklären.»
Das Vorwort der 2003er-Ausgabe kündigt kurze Revisionszyklen an; eine Ausgabe 2015 war
plausibel, am 12-seitigen Original selbst aber nicht verifizierbar.

**Beleg:** SIA-Shop-Produktseite `shop.sia.ch/normenwerk/ingenieur/266-1_2015_d/D/Product`
(WebFetch, 23.08.2026): «SIA 266/1:2015 Bauwesen 505 266/1 Ersetzt Norm SIA 266/1:2003»,
gültig ab 01.07.2015, 16 Seiten, CHF 30.-. Parallel dazu wurde auch SIA 266 selbst 2015
revidiert (bereits bekannt, REGISTER-Zeile SIA 266 unverändert korrekt für die Frage der
Tragwerksnorm — hier ging es nur um die Prüfnorm-Ergänzung 266/1).

**Umgesetzt:**
- `destillate/sia-266-1-2003.md`: `status` von `established` auf
  `superseded (Bestandsfassung 2003; geltende Fassung SIA 266/1:2015 seit 01.07.2015, Volltext
  nicht im Bestand)`, neues Feld `fassung`, Verifikationsfeld ergänzt, Warnblock am Kopf des
  Fliesstexts (Muster aus `vkf-merkblatt-2001-15-solaranlagen.md` übernommen).
- `wiki/REGISTER.md`, Zeile SIA 266/1: Validitätsmarker von `2003✓` auf
  `2003✗ (überholt seit 01.07.2015)`, Notiz um den Web-Beleg ergänzt.
- `destillate/INDEX.md`, Zeile `sia-266-1-2003.md`: Statuszeile ergänzt.
- `wiki/QUESTIONS.md`: Eintrag als `[x]` geschlossen, neue Bring-Schuld P1 «Volltext SIA
  266/1:2015 beschaffen» ergänzt (die Textinhalte der 2003er-Fassung selbst bleiben als
  historische Dokumentation korrekt destilliert — nur die Norm ist überholt, nicht die
  Wiedergabe).

## 2. SIA 410 UND SIA 410/1+410/2 sind seit 01.01.2025 zurückgezogen

**Frage (QUESTIONS.md, seit Run 22/25.07.2026 offen):** «SIA 410: Aktualität und SIA 410/1.»
Der Hauptteil datiert von 1978/1986 (Kap. 6 von 1993), eine zwischenzeitliche Revision oder
Ablösung war plausibel, aber unbelegt.

**Beleg:** suissetec-Meldung
`suissetec.ch/de/news-detail/rueckzug-normen-sia-410-1986-und-sia-410-1-2-1981.html`
(WebFetch, 23.08.2026). Rückzugsdatum **01.01.2025**, Begründung wörtlich: «die Darstellung
von Aussparungen [ist] nun ausschliesslich in der Norm SIA 400 «Planbearbeitung im Hochbau»
abgebildet»; für die HLKS-Symbole (Heizung, Lüftung/Klima, Sanitär) gelten neu die
**suissetec-Planungsrichtlinien** als «einheitliche und praxisgerechte Grundlage». Der Titel
der Meldung selbst nennt ausdrücklich BEIDE hier in der KB destillierten Dokumente: «Rückzug
Normen SIA 410/1986 und SIA 410/1/2:1981».

**Bedeutung für die KB:** Beide Destillate (`sia-410-1986.md` für den Hauptteil,
`sia-410-1-2-1981.md` für das Farbcode-/Aussparungs-Doppelheft) waren bislang mit `established`
markiert — korrekt für die Texttreue der Wiedergabe, aber ohne jeden Hinweis, dass die Normen
selbst nicht mehr in Kraft sind. Der Farbcode (Ziff. 3.1-3.5 des Doppelhefts) und die
Aussparungs-Kurzzeichen (Ziff. 2.1) sind damit für neue Pläne nicht mehr die geltende Quelle.

**Umgesetzt:**
- `destillate/sia-410-1986.md` und `destillate/sia-410-1-2-1981.md`: `status` je auf
  `zurückgezogen per 01.01.2025; ersetzt durch SIA 400 (Aussparungen) + suissetec-
  Planungsrichtlinien (Sinnbilder/Farbcode HLKS)`, neues Feld `fassung`, Verifikationsfeld
  ergänzt, Warnblock am Kopf des Fliesstexts in beiden Dateien.
- `wiki/REGISTER.md`, Zeile SIA 410: Validitätsmarker von `1986✓` auf `1986✗ (zurückgezogen
  01.01.2025)`, vollständiger Beleg samt Nachfolgewerken ergänzt.
- `destillate/INDEX.md`: beide Zeilen ergänzt.
- `wiki/QUESTIONS.md`: Eintrag als `[x]` geschlossen, neue Bring-Schuld P2 «Nachfolgewerke SIA
  400 + suissetec-Planungsrichtlinien beschaffen» ergänzt (niedrigere Priorität als die
  SIA-266/1-Bring-Schuld, da SIA 410 nur Empfehlungscharakter hatte).

## Verifikationsstand

Beide Web-Belege sind Primärquellen des jeweiligen Herausgebers bzw. des Branchenverbands
(SIA-Shop-Produktseite direkt vom SIA betrieben; suissetec ist der Verband, der die
Planungsrichtlinien selbst herausgibt und dessen Meldung explizit die eigenen Nachfolgewerke
benennt) — keine Sekundärquelle. Beide Seiten wurden per WebFetch vollständig abgerufen, nicht
nur über die Suchergebnis-Snippets übernommen. Nach jedem Schreiben `git diff --numstat`
geprüft: `destillate/sia-266-1-2003.md` 12/3, `destillate/sia-410-1986.md` 13/3,
`destillate/sia-410-1-2-1981.md` 13/3, `destillate/INDEX.md` 3/3, `wiki/REGISTER.md` 2/2,
`wiki/QUESTIONS.md` 33/10 — alle Diffs sind Erweiterungen/Präzisierungen an genau den editierten
Stellen, keine unerwartete Löschung. Kein `git` über SMB ausgeführt.

## Bewusst nicht weiterverfolgt (SharePoint nicht erreichbar)

- BRING-SCHULD P1 SIA 380/1:2016 Volltext, BRING-SCHULD P1 SIA 385/1:2011 Volltext,
  VKF-BRL-16-15-Vollfassung «Stand 01.12.2022»: alle drei liegen im OneDrive-Bestand, der
  während dieses Laufs durchgehend mit `fts_read: Operation timed out` antwortete (betrifft
  sowohl den Haupt- als auch beide Zweitmounts) — nicht auf einen Werkzeugfehler
  zurückzuführender Bearbeitungsversuch, sondern eine Infrastruktur-Störung ausserhalb dieses
  Laufs. Für einen Folgelauf: zuerst NAS/OneDrive-Erreichbarkeit prüfen (`heartbeat`), dann
  diese drei Punkte zuerst angehen (höchste Priorität P1 im Register).
- N-R40-1 bis N-R40-4, N-R21-2, weitere P3/P4-Einträge: unverändert offen, keine neue Methode
  gegenüber den Vorläufen verfügbar.
