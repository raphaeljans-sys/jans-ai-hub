# QUESTIONS-Abarbeitung, sechster Lauf (Fortsetzung des Hauptprozesses)

**Auftrag Raphael:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je
Aussage (Norm, Ausgabe, Ziffer), Verifikationsstatus des Destillats vor Zitat lesen. Vorlauf
gelesen: `CHANGELOG.md` (Kopf: siebter QUESTIONS-Lauf, neunte SIA-Sweep-Fortsetzung) und
`outputs/2026-08-23_sia500-korrigenda-c3-c4-vollstaendig.md`. Ein parallel laufender
`claude`-Prozess (PID 86402, gleicher Auftragstext) ist dieser eigene Lauf selbst — kein
Konkurrent, per `ps aux` bestätigt.

## 1. N-R40-8 geschlossen: Suva 67012.d «Checkliste Böden» — im Haus liegende Fassung war veraltet

**Frage (seit 31.07.2026 offen, P3):** Fassungsstand der Checkliste 67012.d nicht im Fliesstext
auffindbar, PDF-Metadaten der Bestandsdatei nur ein Indiz (CreationDate 23.01.2006, ModDate
08.08.2007). Nur über `suva.ch/waswo` klärbar.

**Vorgehen:** `www.suva.ch/waswo/67012.D` und `www.suva.ch/de-ch/download/checklisten/boeden/
boeden--67012.D` per WebFetch abgerufen (deutschsprachige Seite, damit das Datumsformat
eindeutig TT.MM.JJJJ ist — die englische Sitecore-Variante hatte «10/01/2025» geliefert, was
ohne Ortssprache mehrdeutig gewesen wäre). Aktuelle Ausgabe direkt von der Suva-Domain
heruntergeladen (`curl -L`, 1'064'778 Bytes, Adobe InDesign 17.4, CreationDate 02.02.2024 /
ModDate 22.09.2025) und vollständig per `pdftotext -layout` gelesen (4 Seiten).

**Befund: die im Haus liegende Datei war nicht nur undatiert, sondern tatsächlich veraltet.**
Die Fussleiste S. 4 der aktuellen Ausgabe nennt wörtlich «Ausgabe: Oktober 2025»,
«Publikationsnummer: 67012.d». Wortweiser Vergleich mit der bisherigen `established`-Fassung
(Run 40, 31.07.2026, 30 Einzelaussagen, VERDIKT BESTANDEN):

- **Sicherheitsrelevante Zahlenwerte unverändert:** Stolperschwelle 4 mm (Frage 8), max.
  Ablaufrinnentiefe 2 cm (Frage 10) — beide identisch in beiden Fassungen. Die
  JANS-Praxis-Transfer-Kriterien für `unternehmerkontrolle`/`ausschreibung` bleiben also gültig.
- **Neu: eigene Rubrik «Rechtliche Grundlagen»** (ArGV 3 Art. 14 «Böden», VUV Art. 14
  «Fussböden») — fehlte in der Alt-Fassung vollständig, ist jetzt eine zitierfähige gesetzliche
  Fundstelle.
- **Frage 1 inhaltlich umgestellt:** von einem technischen Beispielkatalog («raue Oberfläche,
  Platten mit Nocken … Keramische und Steinböden können durch Fachfirmen auch nachträglich
  rutschfest gemacht werden») auf den direkten Gesetzesbezug.
- **Frage 5 verschärft:** verlangt neu zusätzlich, dass beschädigte Stellen «signalisiert»
  werden, nicht nur instand gesetzt.
- **Frage 16 konkretisiert:** «Mittel zum Signalisieren» → konkret «Warnaufsteller».
- **Nummerierung verschoben:** die Schuh-Frage (rutschfeste Sohlen) ist von Position 17 auf
  Position 20 gewandert; wer die Alt-Fassung mit «Frage 17» zitiert hat, meinte diesen Inhalt.
- **«Weitere Informationen» von vier auf sieben Verweise erweitert** (neu: 67178.d, 67179.d,
  67185.d, www.suva.ch/stolpern).

Das Destillat `destillate/suva-67012-checkliste-boeden.md` ist vollständig auf die Ausgabe
Oktober 2025 umgestellt (neue Frontmatter mit primärquellenfester Web-Quelle, alle 20 Fragen
neu mit Änderungsvermerken, neuer Abschnitt «Historische Fassung» dokumentiert die Alt-Fassung
inkl. aller Wortlaut-Unterschiede, damit nichts verloren geht). `destillate/INDEX.md`
nachgeführt.

## 2. Stale-Item bereinigt: VKF BRL 16-15 «Ausgabe klären» (Run 14) war bereits durch Run 22 erledigt

Der Eintrag aus Run 14 (15.07.2026) verlangte, das Ausgabejahr der BRL 16-15 im REGISTER
nachzutragen. `wiki/REGISTER.md` Zeile ~676 führt seit Run 22 (25.07.2026) bereits die
präzise Fassung «Ausgabe 2015, Fassung 01.01.2017 mit Zusatzvermerk «Stand 01.12.2022»» samt
Änderungsstufen (ABSV 22.03.2017, TKB 09.06.2021, Fehlerkorrektur 01.12.2022) — die
ursprünglich befürchtete Ambiguität 2015/2016/2017 war längst aufgelöst, der Run-14-Eintrag
selbst aber nie als erledigt markiert. Als `[x]` nachgetragen mit Verweis auf die Register-Zeile.

## Verifikationsstand

Suva-PDF primärquellenfest (offizielle suva.ch-Domain, deutschsprachige Seite gegen
englischsprachige Sitecore-Variante gegengeprüft, Ausgabe-Vermerk direkt im Dokument selbst
gelesen, nicht nur aus Websuche übernommen). Nach jedem Schreiben `git diff --numstat` geprüft:
`destillate/suva-67012-checkliste-boeden.md` 139/87 (vollständige Neufassung derselben Datei,
kein Informationsverlust — Alt-Fassung im neuen Abschnitt „Historische Fassung" archiviert),
`destillate/INDEX.md` 1/1, `wiki/QUESTIONS.md` 22/2 (beide Entfernungen sind die selbst
editierten Checkbox-Zeilen, durch erweiterte `[x]`-Fassung ersetzt). Kein `git` über SMB
ausgeführt.

## Bewusst nicht weiterverfolgt

- **N-R40-7 (P3, Grauton Lignatec Tabelle 2):** rein visuelle Interpretationsfrage an einem
  Farbwert ohne Legenden-Fundstelle; keine neue Methode seit dem letzten Versuch verfügbar,
  nicht erneut angegangen.
- **VKF BRL 16-15, verbliebene Teilfrage ABSV 22.03.2017 Ziff. 2.4.3/2.4.4 (S. 15/16):**
  Register dokumentiert bereits die Bildlegenden-Umbenennung auf S. 16; ob der Ziffertext selbst
  vollständig gegengelesen ist, bliebe für einen eigenen, tieferen Lauf zu klären — nicht in
  diesem kurzen Zwischenlauf begonnen, um keinen halb geprüften Befund zu hinterlassen.
- **260731 NIN-Frage (Geschirrspüler-Stromkreis):** bereits zweifach erschöpfend recherchiert,
  echte Sackgasse (kostenpflichtiger NIN-Online-Zugang nötig), nicht erneut versucht.
- Lignatec-Ninte-Runde, N60-1 (AFC-Synopse-Duplikat), N60-2 (Methodik-Pflicht-Vorschlag): laut
  Vorlauf entweder Freigabe-/Entscheidpflichtig bei Raphael oder als grössere Methodenrunde
  vorzulegen, nicht selbständig zu entscheiden.
