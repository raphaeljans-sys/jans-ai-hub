# QUESTIONS-Abarbeitung 18 — KB `wissen/normen`, 23.08.2026

**Auftrag:** Weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten. Fundstelle je Aussage mit
Norm, Ausgabe und Ziffer; Verifikationsstatus des Destillats lesen, nur `established` zitierfähig.
Rule `wissens-bibliothekar` beachten, jede Aussage belegen, nichts raten, `git diff --numstat`
nach jedem Schreiben prüfen.

**Vorlauf gelesen:** `CHANGELOG.md`-Kopf (SIA-Sweep, zweiundzwanzigste Fortsetzung) und die
Reports der laufenden `QUESTIONS-Abarbeitung`-Serie (bis Lauf 17). Parallelität geprüft
(`ps aux`): zwei weitere `claude -p`-Prozesse liefen zeitgleich an derselben KB
(`wiki/QUESTIONS.md`, PID 39144, exakt derselbe Auftragstext — als eigener, nicht konkurrierender
Lauf behandelt) sowie an `wissen/baurecht` (PID 41593, Reglemente-Queue). Vor jedem Schreiben
die Zielzeile frisch neu gelesen (Rule `auto-verbesserungen` 260811/260730b) — die Datei wuchs
während dieses Laufs mehrfach um Absätze des Parallelprozesses (4582 → 4675 Zeilen), Zeilennummern
daher stets unmittelbar vor dem Edit neu ermittelt.

## Bearbeitet

1. **SIA 400:2000 — Aktualität gegen den suissetec-Hinweis geprüft (Teil 1 der
   BRING-SCHULD-P2-Frage «Nachfolgewerke SIA 410»).** `shop.sia.ch/normenwerk/architekt/
   400_2000_d/D/Product` (`curl -A "Mozilla/5.0"`) gelesen: SIA 400 D-400, Jahr 2000, gültig ab
   01.10.2000, **Revision 1, Revisions-Datum 18.08.2015**, kein Nachfolger auf der Produktseite
   gelistet (nur Vorgänger 1985). SIA 400:2000 (Rev. 1/2015) bleibt die aktuell gültige Ausgabe.
   Nachgetragen in `destillate/sia-400-2000.md` (Abschnitt «Offene Punkte», `last_updated`
   aktualisiert) und in `wiki/QUESTIONS.md` (Teilschliessung, Teil 2 — suissetec-Planungs-
   richtlinien — bleibt offen).

2. **SIA-Merkblatt 2048 «Energetische Betriebsoptimierung» — Bestandsfrage geprüft, negativ.**
   (a) SharePoint-Bestand (Site PL, Drive `02_Recht_Norm`) per M365-Graph-Connector durchsucht:
   `/drives/{id}/root/search(q='2048')` über den ganzen Drive sowie gezielt in `SIA_Norm:` und
   `04_Merkblätter:` — kein Treffer. (b) Produktseite `shop.sia.ch/normenwerk/architekt/
   sia%202048/d/D/Product` (WebFetch) bestätigt: SIA 2048/2015 D, aktuell, gültig ab 01.07.2015,
   **Preis 100.00 CHF**, kein kostenloser Volltext (nur Inhaltsverzeichnis gratis) — eine
   IFMA-Sekundärquelle, die einen kostenlosen Download suggerierte, ist nicht mehr erreichbar
   (404) und nicht verifizierbar. Bring-Schuld bleibt offen (Beschaffung SIA-Abo/Kauf),
   Bestandsfrage ist jetzt beantwortet.

3. **SN 640 052 (VSS, «Kehrplatz/Kehrmöglichkeit bei Stichstrassen») — Bestand/Status/Preis
   geprüft; wichtiger Befund.** Der zuvor gescheiterte Zugangsweg (Sucheingabe im VSS-Shop) war
   nicht nötig: `mobilityplatform.ch/de/vss-shop/product/640052` liefert die Produktseite direkt
   über die Norm-Nummer als URL-Pfad. Ergebnis: **SN 640 052 «Wendeanlagen», Ausgabe 1977, gültig
   01.01.1977 bis 31.03.2019, seither AUSSER KRAFT**, Preis CHF 45.20. Ein WebSearch-Treffer
   behauptete SN 640060 als Nachfolgenorm — direkt gegengeprüft und **widerlegt** (SN 640060 =
   «Leichter Zweiradverkehr; Grundlagen», thematisch unverwandt, ebenfalls seit 31.03.2019 ausser
   Kraft). Der tatsächliche Nachfolger ist unbekannt. **Cross-KB-Nachtrag in `wissen/baurecht`
   gesetzt:** `wiki/baureife-und-erschliessung.md` (Zeile mit SN-640-052-Zitat) trägt jetzt eine
   inline Warnung zur überholten Norm — additive Ergänzung, kein bestehender Satz verändert.
   **SN 641 400** bleibt ungeprüft: derselbe URL-Pfad-Trick (`.../product/641400`) liefert
   HTTP 404, kein Ersatzpfad gefunden.

4. **N61 (Cross-KB Primärenergiefaktoren `energie` ↔ SIA 2031-C1) und mehrere weitere Punkte
   (VKF BRL 13-15/17-15-Duplikate, SIA 382/2 ↔ 416/1, SIA-Merkblatt-2000er-Serie) waren beim
   zweiten Lesen bereits vom Parallelprozess geschlossen** — nicht doppelt bearbeitet, nur
   zur Kenntnis genommen (Kollisionsvermeidung).

## Nicht geleistet / weiterhin offen

- **NIN Geschirrspüler-Stromkreis**: zweifach recherchiert, echte Sackgasse (Normtext hinter
  kostenpflichtiger Anmeldung `ninonline.electrosuisse.ch`) — kein dritter Anlauf unternommen.
- **N60-1 (AFC-Synopse-Duplikat)** und **N60-2 (Methodik-Pflicht-14-Vorschlag)**: beide explizit
  als ENTSCHEID/FREIGABE RAPHAEL markiert — nicht selbständig entschieden.
- **SN 641 400**: Bestand/Preis weiterhin nicht verifiziert, VSS-Shop-URL-Pfad liefert 404.
- **SIA 491 / SN EN 12193**: bereits mehrfach als «nicht im Haus, kostenpflichtig» belegt
  (Run 30/36) — kein neuer Beschaffungsversuch, da ohne Kaufberechtigung kein Mehrwert.
- Die grosse Zahl älterer, noch offener `- [ ]`-Punkte (SN EN 520, SIA 491, DIN-Bestand-Lücken,
  Duplikat-Bereinigungen) wurde gesichtet, aber aus Zeit-/Kollisionsgründen nicht mit einem
  eigenen Lauf angegangen — die meisten sind kostenpflichtige Bring-Schulden (Raphael) oder
  destruktive Entscheide (Raphael).

## Verifikation (`git diff --numstat` nach jedem Schreibvorgang)

| Datei | Befund |
|---|---|
| `destillate/sia-400-2000.md` | additive Änderung (Offener-Punkt-Zeile ersetzt + `last_updated`); vom nas-selfcommit zwischenzeitlich bereits committet (`f9a17538`-Umfeld), Inhalt am Original erneut gegengelesen |
| `wiki/QUESTIONS.md` | drei Edits, insgesamt additiv (Teilschliessungen als Blockquote eingefügt, keine bestehende Zeile gelöscht — die vom `git diff` gemeldeten "Deletions" sind ausschliesslich die letzte Zeile eines jeweils erweiterten Absatzes) |
| `wissen/baurecht/wiki/baureife-und-erschliessung.md` | 7 Einfügungen / 0 Löschungen — reine additive Warnzeile |

Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt (Commit läuft über den 15-Minuten-
`nas-selfcommit`-Cron, mehrfach während dieses Laufs beobachtet).

## Nächster Schritt (Empfehlung für den nächsten Lauf)

- SN 641 400 über einen anderen Zugangsweg verifizieren (ZH-Parkplatzverordnung-Vollzugshilfe
  könnte die aktuell zitierfähige Fundstelle direkt nennen, statt den VSS-Shop zu erraten).
- Die Cross-KB-Warnung in `wissen/baurecht` ist nur inline gesetzt — bei Gelegenheit prüfen, ob
  `baurecht/wiki/QUESTIONS.md` einen eigenen Eintrag dazu führen soll (Konvention dieser KB).
- Vor der nächsten QUESTIONS-Runde per `grep -n "^- \[ \]"` neu abgleichen, welche der ~50 noch
  offenen Checkbox-Punkte NICHT bereits externe Bring-Schulden (Kauf) oder Raphael-Entscheide
  sind — das ist die eigentlich noch bearbeitbare Restmenge.
