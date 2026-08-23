# QUESTIONS-Abarbeitung 21 (23.08.2026)

**Auftrag:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten. Fundstelle je Aussage mit
Norm, Ausgabe und Ziffer; Verifikationsstatus des Destillats lesen, nur `established` ist
zitierfähig. CHANGELOG und Report des letzten Laufs (Abarbeitung 20) zuerst gelesen, dort
weitergemacht. Rule `wissens-bibliothekar` beachten, jede Aussage belegen, nichts raten,
CHANGELOG-Eintrag setzen, nach jedem Schreiben `git diff --numstat` prüfen.

## Kollisionshinweis

Während des Laufs meldete das Edit-Tool beim ersten Schreibvorgang auf `wiki/QUESTIONS.md`,
die Datei sei seit dem letzten Lesen extern verändert worden — ein anderer, paralleler Prozess
mit einem eigenen Lauf-Namen hat gleichzeitig geschrieben (kein Konkurrent, sondern ein
weiterer Lauf derselben KB, siehe die parallel entstandene CHANGELOG-Zeile «SIA-Sweep,
fünfundzwanzigste Fortsetzung»). Alle eigenen `old_string`-Matches blieben exakt vorhanden, der
Edit ist sauber angewendet worden. Nach jedem eigenen Schreibvorgang wurde zusätzlich
`git diff | grep "^-"` gefahren, um zu bestätigen, dass jede Löschzeile exakt einer selbst
ersetzten Checkbox-Zeile entspricht — keine fremde Zeile wurde berührt.

## Methodik

Fortsetzung der in Abarbeitung 20 bewährten Methode (Bestandsabgleich gegen REGISTER/INDEX für
bereits anderswo gelöste Punkte), ergänzt um echte neue Web-Recherche für zwei Punkte, die im
Bestandsabgleich als tatsächlich offen bestätigt wurden: die SIA-Raumakustik-Lücke und die
Suva-/EKAS-Fassadengerüst-Frage. Für Letztere liess sich sogar der volle Primärtext kostenlos
beschaffen (nicht nur ein Produktdatenblatt wie bei den meisten SIA-Bring-Schulden).

## Bearbeitet (sechs Punkte, davon zwei mit echtem Neufund)

**1. SIA 181/1:2026 «Raumakustik» — NEU IDENTIFIZIERT, teilweise geschlossen.**
`wiki/QUESTIONS.md` (Mini-Run 30) hielt fest, dass keine SIA-Norm zur Raumakustik im Bestand
oder Destillat-Index auffindbar sei. Websuche + WebFetch auf `shop.sia.ch` bestätigt: **SIA
181/1:2026, SN 520181/1, Titel «Raumakustik» (fr. «Acoustique des salles»), gültig ab
01.02.2026**, 24 Seiten, 110.00 CHF, als «Titre actuel» geführt — eine brandneue, eigenständige
Norm ohne Vorgängerausgabe, die SIA 181 (baulicher Schallschutz) um die raumakustische
Innenbetrachtung ergänzt. Metadaten-Stub `destillate/sia-181-1-2026.md` angelegt (Status
`speculative`, da nur Produktdatenblatt verifiziert), Registerzeile in `wiki/REGISTER.md`
Abschnitt A. Volltext bleibt kostenpflichtige Bring-Schuld; DIN 18041 bleibt bis dahin die
einzige zitierfähige Nachhallzeit-Quelle dieser KB.

**2. Suva 44077.d «Fassadengerüste — Sicherheit durch Planung» — vollständig destilliert.**
Die QUESTIONS-Zeile «Keine Suva-/EKAS-Richtlinie zu Fassadengerüst-Verankerung/Dachhaken»
verlangte eine externe Beschaffung. Recherche-Weg: Websuche → Suva-Präventionsseiten und die
SGUV-FAQ «Fragen und Antworten zu Fassadengerüsten» (Version 4.4, November 2024) fanden den
konkreten Verweis **Suva-Merkblatt 44077.d**. Die HTML-Downloadseite `www.suva.ch/44077.d`
lieferte selbst keinen direkten PDF-Link (JS-Viewer); der tatsächliche Binärlink liess sich aus
dem HTML extrahieren (`suva-p-001-delivery.sitecorecontenthub.cloud/api/public/content/...`),
das PDF wurde geladen (2,1 MB, 24 Seiten) und mit `pymupdf` vollständig als Text extrahiert.
**Kernbefund (Ziff. 4.5.1, S. 15):** Gerüstfläche pro Anker max. 25 m² (unverkleidet), 20 m²
(Netzverkleidung), 10 m² (winddurchlässiges Material); für Regelgerüste über 40 m Gesamthöhe
zusätzlich Höhenstaffelung (1 Anker/4 m bzw. 8 m bzw. min. 1/10 m). Weitere Kernwerte:
Gerüstgruppen 2,00/3,00/4,50 kN/m² (Ziff. 3.5), Fassadengerüst-Pflicht ab 3 m Absturzhöhe
(Ziff. 4.1), Dachrand-Staffelung nach Neigung (Ziff. 4.6: Spenglergang bis 30°,
Dachdeckerschutzwand 30°-60°, nur Gerüst/Hubarbeitsbühne über 60°). Neues Destillat
`destillate/suva-44077-2022-fassadengeruest-verankerung.md`, Status `established` (direkte
Lektüre des Originaltexts, keine unabhängige Zweitprüfung).

**Wichtiger Nebenfund während der Recherche:** `destillate/INDEX.md` führte bereits **vier**
Suva-Destillate (44006, 44066, 67001, 67012), darunter **`suva-44066-arbeiten-auf-daechern.md`**
(established, Run 40) — genau die zweite Teilfrage der QUESTIONS-Zeile («Dachhaken»). Das
Destillat dokumentiert unter Ziff. 4.3 die Pflicht zu «Anschlageinrichtungen (Ankerpunkten)
gemäss EN 795» ab 3,0 m Absturzhöhe — der fachlich korrekte Begriff für den umgangssprachlich
in der Frage verwendeten «Dachhaken». Beide Quellen zitieren sich bereits im Originaltext
gegenseitig (44066 verweist auf 44077 als Fassadengerüst-Referenz, S. 14). Die QUESTIONS-Zeile
ist damit **vollständig geschlossen**. Ein neuer Suva/EKAS-Block wurde in `wiki/REGISTER.md`
Abschnitt D angelegt (Tabelle aller fünf Suva-Destillate + Liste weiterer kostenloser
Bring-Schuld-Kandidaten derselben Publikationsreihe, damit künftige Läufe nicht erneut von
null suchen müssen).

**3. SIA 279:2018 / 281:2017 / 329:2018 „neuer als 2013-Register" — GESCHLOSSEN
(Bestandsabgleich).** Der Fakt steht bereits doppelt in `wiki/REGISTER.md`: Abschnitt A je
eigener Normzeile («Bestand 2018 → neuer als Register 2013») und redundant in Abschnitt D
Zeilen 896-899 («gilt; … neuer als 2013-Register (aktuell)»). Keine neue Recherche nötig.

**4. `SIA_Leistungsmodell.pdf` ist kein SIA-Dokument — GESCHLOSSEN (Bestandsabgleich).** Das
Destillat `destillate/sia-112-leistungsmodell.md` (established) führt Herausgeber
(«KUNDERT PLANER AG … KEIN SIA-Originaldokument») bereits korrekt im Frontmatter und
wiederholt die Negativ-Aussage («kein SIA-Originaldokument», «keine Norm-Ziffern zitiert») im
Fliesstext. Nichts zu ändern.

**5. SIA-Merkblatt 2048 ins Inventar aufnehmen — Checkbox-Marker korrigiert.** Die inhaltliche
Prüfung war bereits in Abarbeitung 20 (23.08.2026) vollständig negativ abgeschlossen: kein
SharePoint-Fund, Produktseite bestätigt 100 CHF Bring-Schuld, kein kostenloser Volltext. Nur
die äussere Checkbox blieb `[ ]` statt `[~]` — korrigiert, damit künftige Läufe den Punkt nicht
für vollständig offen halten.

## Teilweise geklärt

**6. «2026 verschärfte kantonale Velo-Abstellpflicht» — kein Beleg für geltendes Recht,
aber ein hängiges Verfahren gefunden.** Websuche findet keine bereits in Kraft gesetzte
2026er-Verordnung. Ein Artikel von `gruene-zh.ch` (02.07.2024) beschreibt eine PBG-Revision zur
Neuregelung von Abstellplätzen (**Vorlage 171a/2020**), die die zuständige Kommission «zu
Handen des Kantonsrats verabschiedet» habe — Inkrafttretungsdatum und abschliessende
Ratifizierung durch das Plenum werden nicht genannt, Stand seit Juli 2024 nicht
weiterverfolgt. Nicht zitierfähig als geltendes Recht. Die städtische Übersichtsseite
`zh.ch/.../veloparkierung.html` (WebFetch) nennt nur den bestehenden Leitfaden, keine
2026er-Änderung. Checkbox auf `[~]` gesetzt mit Verweis auf die Vorlagen-Nummer für eine
künftige gezieltere Recherche (Kantonsratsprotokoll oder direkte Anfrage ans Amt für
Mobilität).

## Nicht bearbeitet / weiterhin offen

Die übrigen rund 40 offenen Checkbox-Punkte betreffen mehrheitlich P3/P4-Prioritäten,
Raphael-Entscheide (Duplikat-Merges, Kaufentscheide bei kostenpflichtigen Normen) oder wurden
in Abarbeitung 19/20 bereits als externe Bring-Schulden ohne neuen Ansatzpunkt bestätigt (NIN-
Geschirrspüler, N60-1/N60-2, SIA 491/SN EN 12193, SN 641 400 VSS). Kein neuer Anlauf ohne
Mehrwert in diesem Lauf.

## Verifikation (`git diff --numstat` nach jedem Schreibvorgang, Rule `auto-verbesserungen` 260811)

| Datei | Kumulativ (Einfügungen/Löschungen) |
|---|---|
| `destillate/suva-44077-2022-fassadengeruest-verankerung.md` | neue Datei (`git status` `??`) |
| `destillate/sia-181-1-2026.md` | neue Datei (`git status` `??`) |
| `destillate/INDEX.md` | +2 / -0 — additiv |
| `wiki/REGISTER.md` | +21 / -0 — additiv |
| `training/norm-inventar.md` | +13 / -0 — additiv |
| `wiki/QUESTIONS.md` | +48 / -6 — die 6 Löschungen sind exakt die 6 selbst ersetzten `[ ]`-Zeilen (per `git diff \| grep "^-"` einzeln gegen die eigene Editierliste geprüft) |
| `CHANGELOG.md` | +61 / -0 — additiv |

Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt; Commit läuft über den
15-Minuten-`nas-selfcommit`-Cron bzw. `scripts/nas-commit-now.sh`.

## Nächster Schritt (Empfehlung)

- **SIA 181/1:2026 Volltext beschaffen** (110 CHF) — echte, neue Bring-Schuld, sobald Raphael
  einen Kaufweg freigibt; danach DIN 18041 gegen SIA 181/1 abgleichen und die Vorrangfrage für
  JANS-Praxis klären.
- **Weitere Suva-Publikationsreihe destillieren:** 44078.d («Sicherheit bei Montage/Demontage»,
  Ergänzung zu 44077) ist der naheliegendste nächste Kandidat, ebenfalls kostenlos.
- **Vorlage 171a/2020 (Velo-Abstellpflicht ZH) gezielter verifizieren** — Kantonsratsprotokoll
  oder direkte Anfrage, ob und wann die PBG-Revision in Kraft getreten ist.
- Wie in Abarbeitung 20 empfohlen bleibt der Bestandsabgleich gegen REGISTER/INDEX die
  ergiebigste Methode bei dieser stark parallel bearbeiteten KB — für den nächsten Lauf eignen
  sich die verbleibenden P2/P3-Zeilen im Abschnitt „SIA-Sweep"-Nachträge.
