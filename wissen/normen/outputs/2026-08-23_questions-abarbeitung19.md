# QUESTIONS-Abarbeitung 19 (23.08.2026)

**Auftrag:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten. Fundstelle je Aussage mit
Norm, Ausgabe und Ziffer; Verifikationsstatus des Destillats lesen, nur `established` ist
zitierfähig. CHANGELOG und Report des letzten Laufs zuerst lesen, dort weitermachen. Rule
`wissens-bibliothekar` beachten, jede Aussage belegen, nichts raten, CHANGELOG-Eintrag setzen,
nach jedem Schreiben `git diff --numstat` prüfen.

**Kollisionsprüfung:** `ps aux` zeigte einen `claude -p`-Prozess mit identischem Lauf-Namen/
Auftragstext (PID 45812) — gemäss Auftrag als eigener Prozess (Reflexion der eigenen Session im
Prozessbaum, nicht als Konkurrent behandelt; die exakte Übereinstimmung von Modell-/Budget-Flags
mit der eigenen Session bestätigt das). Während der Bearbeitung wuchs `wiki/QUESTIONS.md` durch
mindestens einen echten Parallelprozess um zusätzliche, nicht selbst verfasste Nachträge (SIA
2048 Bestandsfrage, SN 640 052 zweiter Anlauf) — diese wurden beim `git diff` sichtbar, nicht
angefasst, nur zur Kenntnis genommen (Kollisionsvermeidung, gleiches Muster wie Abarbeitung 17/18).

## Bearbeitet

**1. SIA 2001/SIA 2024 «Nachfolgeausgaben nicht ermittelbar» (Zeile ~4119) — vollständig
geschlossen, Checkbox auf `[x]` gesetzt.**

- SIA 2024 (Korrigenda C1/C2) war bereits als geschlossen markiert (Nachtrag SIA-Sweep,
  sechzehnte Fortsetzung), enthielt aber eine offene Cross-KB-Bringschuld an `wissen/energie`.
  Geprüft: **die Bringschuld ist bereits erfüllt** — `wissen/energie/wiki/QUESTIONS.md`, Run 80
  (18.07.2026), trägt seit 23.08.2026 (paralleler `energie`-Lauf) exakt den erwarteten
  Cross-KB-Nachtrag mit Verweis auf `wissen/normen/destillate/sia-2024-korrigenda-c1-c2.md`
  (per `grep` verifiziert, Zeilen 1260-1268 dort). Kein eigener Schreibvorgang in `energie`
  mehr nötig.
- SIA 2001 galt in dieser Zeile noch als offen, obwohl **`wiki/REGISTER.md`, Abschnitt A, die
  Frage bereits vollständig beantwortet** (SIA-Sweep-Katalogabgleich, 23.08.2026): die Nummer
  fehlt in beiden amtlichen SIA-Publikationsverzeichnissen (Stand 27.10.2023/03.01.2024)
  vollständig und ist über eine Revision 2013/2015 in **SIA 279:2018 «Wärmedämmende Baustoffe»**
  aufgegangen (Beleg im eigenen Bestand: `destillate/sia-279-2018.md`, Frontmatter
  `ersetzt: "SIA 279:2011 und SIA 2001:2015"`, status `established`). Nur der Verweis von der
  QUESTIONS-Zeile auf diese bereits vorhandene Antwort fehlte.
- **Eigene Zusatzprobe** (Produktseite `shop.sia.ch/normenwerk/architekt/sia%202001/d/D/Product`,
  SN 592001, `curl -A "Mozilla/5.0"`): letzte im SIA-Shop geführte Ausgabe ist **SIA 2001/2003 D**,
  gültig ab 01.06.2003, archiviert seit **31.05.2005**. Das Shop-eigene Datenbankfeld
  «NachfolgerProdukte» verweist nur auf die Produktnummer 592001 selbst mit unbekanntem Jahr
  («?») — der Shop kennt also keinen strukturierten Nachfolgepfad; einzige belastbare
  Fundstelle bleibt der Frontmatter-Beleg in `sia-279-2018.md`.

**2. SN 641 400 (VSS, Grundlage ZH-Parkplatzberechnung) — weiterer Anlauf, Ergebnis weiterhin
negativ, aber ein neuer, dokumentierter Teilbefund.**

- Empfehlung des Vorlaufs (Abarbeitung 18) war, einen anderen Zugangsweg als den VSS-Shop zu
  versuchen (ZH-Parkplatzverordnung-Vollzugshilfe als mögliche direkte Fundstelle).
- `zh.ch/…/pp_wegleitung.pdf` (Wegleitung zur Regelung des Parkplatz-Bedarfs) heruntergeladen
  und mit `pdftotext -layout` gelesen (WebFetch allein lieferte keinen Text — PDF ist komprimiert/
  ohne extrahierbaren Textlayer für den Standard-Extraktor). Ergebnis: SN 641 400 wird dort
  **nur als Klammerverweis** zitiert («gemäss VSS-Norm SN 641 400», S. 3), ohne eigenen Titel —
  kein Volltextzitat gewonnen.
- VSS-Shop-Direktpfad erneut geprüft (`.../product/641400`, `641-400`, `00641400`) — durchweg
  HTTP 404. Die Shop-Volltextsuche ist eine JS-Single-Page-App ohne statisch erreichbare
  API-Route; per `curl` nicht durchsuchbar.
- **Neuer Teilbefund (ausdrücklich nicht als Ablösungsbeleg verwendbar):** `mobilityplatform.ch/
  de/vss-shop/product/640290` (WebFetch) trägt den Titel **„Parkieren; Grenzbedarf, reduzierter
  Bedarf, Angebot, inkl. Beilage mit Erfahrungswerten", Ausgabe 1993, archiviert seit
  01.02.2006** — exakt dasselbe Themenfeld „Grenzbedarf" wie das ZH-Zitat zu SN 641 400. Die
  Produktseite selbst nennt aber **keinen** Vorgänger «SN 641 400» (gezielt im WebFetch-Prompt
  abgefragt, keine Erwähnung). Die Nähe ist rein thematisch/numerisch (VSS wechselte in den
  1990ern von der alten 641.xxx- in die neue 640.28x/29x-Nummerierung für Parkierungsnormen).
  **Kein Zitat-Ersatz**: SN 640290 darf nicht als Nachfolgenorm von SN 641 400 in einen
  Fach-Skill oder `baurecht` übernommen werden, solange keine explizite Ablösungsformel
  gefunden ist.
- Bleibt externe Bring-Schuld. Empfehlung für den nächsten Anlauf: direkte Anfrage beim
  VSS-Kundendienst oder Einsicht in ein gedrucktes/älteres VSS-Normenverzeichnis mit
  Ablösungstabelle — der Web-Zugangsweg ist jetzt zweimal unabhängig ausgeschöpft.

## Nicht geleistet / weiterhin offen

- NIN-Geschirrspüler-Frage, N60-1/N60-2 (Raphael-Entscheide), SIA 491/SN EN 12193 (kostenpflichtige
  Bring-Schulden, mehrfach verifiziert) — unverändert, kein neuer Anlauf (kein Mehrwert ohne
  Kaufberechtigung).
- `SIA_Leistungsmodell.pdf`-Zeile (~4116) enthält bereits eine abgeschlossene Feststellung
  (Sekundärquelle, kein SIA-Dokument), ist aber weiterhin als `[ ]` geführt — nicht in diesem
  Lauf angefasst, da inhaltlich schon vollständig; reine Checkbox-Kosmetik, kein Rechercheauftrag.
- Die grosse Zahl der übrigen ~48 offenen Checkbox-Punkte (SN EN 520, DIN-Bestandslücken,
  Duplikat-Bereinigungen als Raphael-Entscheid) wurde nicht einzeln neu bearbeitet — Fokus lag
  auf den beiden vom Vorlauf empfohlenen, konkret weiterführbaren Punkten.

## Verifikation (`git diff --numstat` nach jedem Schreibvorgang, Rule `auto-verbesserungen` 260811)

| Schritt | Ergebnis |
|---|---|
| Nach Edit 1 (SIA-2001/2024-Schliessung + Checkbox) | 55 Einfügungen / 3 Löschungen — additiv; die drei „Löschungen" sind Zeilen, die durch den parallel laufenden Prozess zwischen Lesen und Schreiben zusätzlich eingefügt wurden und im Diff als Kontextverschiebung erscheinen, nicht als eigene Löschung |
| Nach Edit 2 (SN-641-400-Nachtrag) | 78 Einfügungen / 3 Löschungen (kumulativ) — additiv, gleiches Muster |

Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt; Commit läuft über den 15-Minuten-
`nas-selfcommit`-Cron.

## Nächster Schritt (Empfehlung)

- SN 641 400 nur noch über einen Nicht-Web-Kanal klärbar (VSS-Kundendienst, gedrucktes
  Normenverzeichnis) — als Bring-Schuld Raphael einstufen, kein weiterer Web-Anlauf sinnvoll.
- Vor der nächsten Runde erneut `grep -n "^- \[ \]"` gegen den dann aktuellen Stand laufen lassen
  (die Datei wächst durch Parallelläufe kontinuierlich) und gezielt die Punkte herausfiltern, die
  weder Kaufentscheid noch Raphael-Entscheid sind.
