# E12-Restpunkt geschlossen: EnV Art. 16a/16b für die ZEV-Mieterpreisregel primärquellen-verifiziert

Datum: 2026-08-24 · Lauf: Scheduled Task `energie-training` (interaktive Fortsetzung desselben Tages)

## Auftrag

Weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, belegt mit Quelle und Datenstand, danach
in die Wiki-Artikel einarbeiten. Anschluss an den CHANGELOG-Stand des Tages (zuletzt: ecoBKP-
Konsolidierungsentscheid E-R230-2 als neuer, an Raphaels Entscheid gebundener Punkt eröffnet).

## Vorgehen

1. Zuerst den gesamten `- [ ]`/`- [~]`-Bestand von `QUESTIONS.md` durchgesehen, nicht der Prosa
   der zahlreichen Vorläufe desselben Tages vertraut. Ergebnis deckungsgleich mit den Vorläufen:
   praktisch jeder Punkt ist entweder an Raphaels Entscheid gebunden (Normkauf SIA 380/1:2016,
   SN EN ISO 6946, JANS-Projektdaten E103/E94, ecoBKP-Konsolidierung E-R230-2) oder als P3/P4
   bereits erschöpfend dokumentierter Negativbefund (E-R134-3, E-R150-3, E-R132-4).
2. Einzig **E12** («Naturdämmstoffe in der Praxis», weitgehend belegt seit 2026-07-06) trug noch
   einen echten, öffentlich mit Primärtext lösbaren Rest: die exakte EnV-Artikelnummer der
   ZEV-Mieter-Preisregel («80 %-Pauschale ODER Gestehungskosten mit Hälfte-Differenz») war nur
   über die Sekundärquelle lokalerstrom.ch als «EnV Art. 16a/16b» vermutet.
3. Energieverordnung (EnV, SR 730.01) über den in `docs/referenz/fedlex-volltexte.md`
   dokumentierten Ausweichweg (`fedlex.data.admin.ch` statt `www`) geladen: ELI `2017/763`,
   Konsolidierungsstand `20260101`, PDF 752'919 Byte, vor Auswertung per `curl -w
   "%{content_type} %{size_download}"` als echtes PDF verifiziert. Vollständig mit PyPDF2
   ausgelesen (70 Seiten).
4. Ergänzend den Erläuternden Bericht des BFE zur EnV-Änderung geladen
   (`pubdb.bfe.admin.ch/de/publication/download/11639`, 34 Seiten, 971'206 Byte) und gezielt nach
   den Artikeln 16a/16b sowie nach einem Rp./kWh-Zahlenbeispiel durchsucht.

## Ergebnis

**Die Vermutung von lokalerstrom.ch ist bestätigt, jetzt mit exakter Absatz-Zuordnung:**

- **Art. 16a EnV** («Abrechnung der externen Kosten eines Zusammenschlusses»): extern bezogene
  Elektrizität sowie Netznutzung/Messung des Zusammenschlusses (Abs. 1) werden den Teilnehmenden
  **verbrauchsabhängig** in Rechnung gestellt (Abs. 2) — **keine** 80 %-Deckelung. Nur wenn darin
  ein Anteil für ein ZEV-internes Verteilnetz steckt (Abs. 1 Bst. b), gilt eine Deckelung: nicht
  höher, als bei Nichtteilnahme am ZEV (Abs. 3).
- **Art. 16b EnV** («Abrechnung der internen Kosten eines Zusammenschlusses»): trägt die
  eigentliche Preisregel. Abs. 2 die **80 %-Pauschale** (max. 80 % dessen, was der Teilnehmende
  bei Nichtteilnahme für die entsprechende Menge Elektrizität zahlen würde). Abs. 3 die
  **effektiven Kosten** (abzüglich Einspeiseerlös, gedeckelt auf denselben Vergleichswert), mit
  Bst. c der **«Hälfte der Differenz»**, wenn die effektiven Kosten unter dem Deckel liegen —
  wortgleich mit dem, was das Destillat bereits als Rechenlogik beschrieb.
- Beide Artikel wurden erst durch die EnV-Änderung vom 20.11.2024 **eingefügt**, in Kraft seit
  **1.1.2025** (AS 2024 702). Laut Erläuterndem Bericht («Absatz 2 übernimmt, redaktionell leicht
  angepasst, den bisherigen Regelungsgehalt») ist die 80 %-Zahl selbst dabei **materiell
  unverändert** aus der Vorgängerfassung von Art. 16 EnV übernommen worden — nur die
  Artikelnummerierung/-aufteilung in 16a (extern) und 16b (intern) ist neu.
- **Kein Zahlenbeispiel gefunden:** der Erläuternde Bericht enthält zwar 49 Rp.-Nennungen, diese
  betreffen aber durchweg die Herkunftsnachweis-Vergütung (ein anderes Thema, andere Tabelle) —
  kein Rechenbeispiel zur 80 %-/Gestehungskosten-Regel. Ein solches Zahlenbeispiel existiert laut
  bisherigem Kenntnisstand nur im projektbezogen zu befüllenden EnergieSchweiz-Excel «Berechnung
  der PV-Stromkosten im Eigenverbrauch in einem ZEV» — bleibt offen, jetzt aber als geprüfte
  Aussage statt als Annahme.

## Eingearbeitet

- `destillate/zev-mieter-strompreis-eigenverbrauch.md`: neuer Abschnitt «Rechtsgrundlage»
  (Art. 16a vs. 16b, Inkrafttreten, materielle Kontinuität), Frontmatter (Quelle/gelesen/
  datenstand/last_updated), Abschnitt «Was einfliessen darf» um externe/interne Zuordnung
  ergänzt, Offene-Punkte-Abschnitt beide bisherigen Punkte abschliessend beantwortet.
- `wiki/pv-eigenverbrauch-zev.md`: Quellenzeile präzisiert (EnV Art. 16 → Art. 16b Abs. 2/3).
- `wiki/BAUHERREN-FAQ.md` F32: Quellenzeile präzisiert, gleiche Korrektur.
- `destillate/INDEX.md`: Zeile aktualisiert (Datenstand, Status-Vermerk).
- `wiki/QUESTIONS.md`: neuer datierter Abschnitt, E12-Restpunkt geschlossen.
- `CHANGELOG.md`: Eintrag oben angefügt (neueste zuoberst).

`git diff --numstat` **nativ per ssh** (`raphaeljans@192.168.1.10`, nie über den SMB-Mount) nach
allen Schreibvorgängen geprüft: `CHANGELOG.md` +43/-0, `destillate/INDEX.md` +1/-1 (eine Zeile
präzisiert), `destillate/zev-mieter-strompreis-eigenverbrauch.md` +40/-8 (Abschnitt «Rechtsgrundlage»
neu, Offene-Punkte-Abschnitt ersetzt), `wiki/BAUHERREN-FAQ.md` +2/-1, `wiki/QUESTIONS.md` +27/-0,
`wiki/pv-eigenverbrauch-zev.md` +2/-1. Durchgehend additiv/präzisierend, keine Löschung von
Bestand.

## Für den nächsten Lauf

Wie von den Vorläufen bereits benannt: **E-R230-2** (Konsolidierungsentscheid ecoBKP-2026-Dateien)
ist Raphael vorzulegen. Ohne dessen Entscheid bleiben **E-R132-4-Nachfolge** und **E-WC32-1**
(Methodendisziplin: vor jeder «Quelle nie eingelesen»-Aussage die Verzeichnisliste `destillate/`
gegen den Linknamen prüfen) die nächsten ohne Raphaels Entscheid bearbeitbaren Punkte. Der
A-BLIND-Vorrat (Primärquellenverifikation stark zitierter Destillate) gilt laut mehreren
Vorläufen für dieses Quartal als ausgeschöpft.
