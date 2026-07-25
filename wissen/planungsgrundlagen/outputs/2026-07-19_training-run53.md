# Training Run 53 — Planungsgrundlagen (2026-07-19)

**Vorgabe:** Intensiv-Lauf gemaess `training/PROGRAMM.md` (Verifikations-Stufe + Intensivphase +
Token-Vollgas: 2 Domaenen, 10-16 Fragen). Gewaehlte Domaenen: **Recht & Norm (PL-02)** (Schwerpunkt)
und **Energie (PL-04)** (Refresh/Verifikation).

## Blocker zuerst: systemischer OneDrive-Mount-Ausfall

Der Lauf begann planmaessig mit einem Ordner-Delta-Scan in `PL - 03 Brandschutz` (Retry der seit
Run 52 offenen Kandidaten C36/B42/B43 — `Stoerfall ABC-Objekt/` + `z_Administration/`) und in
`PL - 04 Energie` (zwei bisher nie erschlossene `.docx`, `https.docx` + `Auf dem.docx` +
`Bauvorschriften Versickerung.docx`). Alle Leseversuche scheiterten mit `EDEADLK: Resource
deadlock avoided` — auch ueber `cat`, `textutil` und Python. Zur Diagnose wurde testweise eine
**bereits mehrfach erfolgreich gelesene** Referenzdatei erneut geoeffnet (`EN-ZH.pdf`,
`IVHB_Leitfaden_01.03.2017.pdf`) — **gleicher Fehler**. Das bedeutet: der OneDrive-Mount war fuer
diesen Lauf **systemisch** gesperrt (nicht dateispezifisch wie in fruheren Faellen K41-K44/Lignum,
wo einzelne Cloud-Platzhalter noch nicht heruntergeladen waren). Ein dateispezifisches Sync-Problem
loest sich laut Praezedenzfaellen von selbst innert Tagen — ein Mount-weiter Ausfall liegt
vermutlich an der Ausfuehrungsumgebung dieses Laufs selbst. **Empfehlung fuer den naechsten Lauf:**
zuerst kurz pruefen, ob `PL - 01`...`PL - 04` wieder normal lesbar sind, bevor erneut Web-Ausweich-
Arbeit eingeplant wird.

**Reaktion:** PROGRAMM.md Schritt 3a erlaubt Web-Recherche explizit fuer Aktualisierungen. Der Lauf
wurde deshalb auf **WebSearch/WebFetch-gestuetzte Refresh- und Verifikations-Arbeit** umgestellt,
ergaenzt um einen Cross-Read der bereits lokal vorliegenden Kopie `wissen/baurecht/raw/`
(kein OneDrive-Zugriff noetig). Alle neuen Fakten sind primaerquellen-belegt (amtliche RRB-/
Medienmitteilungs-/Verordnungs-Dokumente, keine reinen KI-Zusammenfassungen ohne Gegenpruefung).

## Domaene Recht & Norm (PL-02) — 5 Fragen

1. **NEU: PBG-Revision "Erleichtertes Bauen im Bestand" (§ 220a E-PBG).** Bisher nicht erfasster
   Rechtsetzungsstrang, gefunden als Nebentreffer bei der RPG-2-Refresh-Suche. Primaerquelle
   (Vorentwurf + erlaeuternder Bericht, RRB 827/2025 vom 20.08.2025, Referenz BDARE-2025-0158)
   vollstaendig via WebFetch heruntergeladen und mit dem PDF-Reader Seite fuer Seite gelesen
   (S. 1-16 von >16). Neue Bestimmung gibt Grundeigentuemerschaften einen **Anspruch** (nicht
   Ermessens-Ausnahmebewilligung) auf Abweichung von Grenzabstand/Fassadenhoehe/-laenge/
   Vollgeschosszahl **innerhalb der bestehenden Ausnuetzung**, wenn dadurch neue Wohneinheiten
   entstehen; Ergaenzung § 357 E-PBG fuer bereits baurechtswidrige Bestandesbauten; Streichung des
   Mehrlaengenzuschlags (ABV §§ 21 Abs. 2/23/24). Vernehmlassung 26.09.2025-16.01.2026
   abgeschlossen, weiterer Verfahrensschritt noch nicht auffindbar. → NEU
   [[recht-norm-pbg-revision-bauen-im-bestand]] (eigener Artikel, `status: emerging`).
2. **LSV-Novelle 01.04.2026 — Inhalt geschlossen.** Seit Run 23 als "Details noch offen" gefuehrt.
   WebSearch (admin.ch, bauimmorecht.ch) liefert: Art. 22 USG + Art. 31 LSV angepasst,
   kontrollierte Wohnraumlueftung (KWL) neu als zulaessige Schallschutzmassnahme, keine
   Uebergangsfrist. → [[recht-norm-quellenlandkarte]].
3. **Denkmalschutz-PBG-Revision — Refresh.** RRB-Nr. 678/2026 ergaenzt, Motion KR-Nr. 153/2020 +
   Postulat KR-Nr. 29/2022 als Ausloeser dokumentiert. Verfahrensstand selbst unveraendert seit
   02.07.2026 (keine Kantonsratsvorlage auffindbar). → [[recht-norm-quellenlandkarte]].
4. **§ 49b PBG — vollstaendig ausgewertet, seit Run 47/48 offener Punkt geschlossen (M3).**
   WebFetch stadt-zuerich.ch/49b.html: Stadt Zuerich verlangt bei Aufzonungen 75 % der zusaetzlichen
   Ausnuetzung als preisguenstigen Wohnraum (Bagatellgrenze 650 m² aGF), bei Arealueberbauungs-Bonus
   100 %. UmV-Gemeinderatsbeschluss 17.09.2025 (Wohnsitzpflicht/Mindestbelegung/Einkommenslimite).
   Referendum 21.11.2025 zustande gekommen (2'600/2'063 Unterschriften), **Volksabstimmung
   14.06.2026 mit 57.14 % Ja angenommen — UmV in Kraft.** Dabei eine **Fehl-Cross-Referenz**
   korrigiert: der Nebenfund war ursprünglich (Run 47) mit "Parkplatzvorschriften" verknuepft
   (bereits in Run 48 als Fehlschluss erkannt, aber die Korrektur hatte den betroffenen Wiki-Artikel
   [[energie-energienachweis-zh-formulare]] nie erreicht — dort stand die falsche Verknuepfung bis
   heute unveraendert). Jetzt konsistent in beiden Artikeln.
5. **Verifikations-Stichprobe (kein Delta):** RPG-2-ZH-Umsetzung erneut per WebSearch geprueft —
   weiterhin "in Erarbeitung", kein neuer Termin.

## Domaene Energie (PL-04) — 3 Refresh-/Verifikationsfragen

6. **Solarpflicht ZH — Norm-Stelle verifiziert.** Ein WebSearch-Treffer bezeichnete die
   Eigenstrompflicht als "§ 10b EnerG". Gegen den amtlichen Volltext (bereits lokal vorhanden in
   `wissen/baurecht/raw/260712_amtlich_zh_energ.md`, kein OneDrive-Zugriff noetig) geprueft: korrekt
   ist **§ 10c EnerG** ("Eigenstromerzeugung"); § 10b regelt ortsfeste elektrische
   Widerstandsheizungen. Die bereits in [[energie-energienachweis-zh-formulare]] dokumentierten
   Kennwerte (10 W/m² EBF, EN-104) waren durchgehend korrekt — reine Bestaetigung, kein Fehler in
   dieser KB gefunden.
7. **Pronovo-Foerderstruktur — Refresh, ein Fund verworfen.** WebFetch der Primaerquelle bestaetigt:
   Struktur unveraendert seit 01.04.2025. Ein WebSearch-Snippet behauptete zusaetzlich einen
   "Winterstrombonus ab 01.01.2026 fuer Anlagen ≥100 kW" — dieser liess sich auf der Pronovo-
   Primaerseite **nicht bestaetigen** und wurde bewusst **nicht** in die KB uebernommen (Leitplanke
   "nie erfinden" greift auch bei WebSearch-Snippets ohne Primaerquellen-Deckung).
8. **MuKEn-2025-ZH-Ueberfuehrung — Refresh.** Erneut unveraendert: kein ZH-spezifischer Termin
   auffindbar (mehrfacher Refresh seit Run 20, zuletzt Run 47).

## Verifikations-Stufe (Rule 260712, Pflicht)

Alle neuen Aussagen stammen aus **amtlichen Primaerquellen** (RRB-Auszug, Vorentwurf mit
erlaeuterndem Bericht, Gemeinderatsbeschluss-Referenz, Bundesratsbeschluss-Datum) oder aus dem
bereits primaerquellen-verifizierten `wissen/baurecht`-Bestand — keine Statushebung auf
`established` ohne Beleg. Der neue Artikel [[recht-norm-pbg-revision-bauen-im-bestand]] bleibt
bewusst auf `status: emerging`, da es sich um einen Vorentwurf (noch nicht geltendes Recht) handelt.
Ein WebSearch-Nebenfund (Winterstrombonus) wurde durch Gegenpruefung an der Primaerquelle
**verworfen statt uebernommen** — genau die vom Verifier-Prinzip geforderte Widerlegungspruefung.

## Register nachgefuehrt
- `training/curriculum.md`: R54-R57 (Domaene 3) + E40 (Domaene 2) ergaenzt.
- `wiki/QUESTIONS.md`: R52-R56-Sammeleintrag (Domaene B) + D11 (Domaene D) neu; M3 (§ 49b) von
  `[~]` auf `[x]` geschlossen.
- `wiki/INDEX.md`: neuer Eintrag [[recht-norm-pbg-revision-bauen-im-bestand]]; Eintrag
  [[recht-norm-quellenlandkarte]] um § 49b/LSV-Novelle/Denkmalschutz-RRB-Nr. ergaenzt, veraltete
  SZ-GFZ/BMZ-Kurzformel korrigiert (war seit laengerem inkonsistent zum Artikelinhalt — Wissens-
  Chef-Klasse-Befund, im Vorbeigehen mitkorrigiert).
- `raw/_INGESTED.md`: 8 neue Zeilen (3 blockierte PL-04-Dateien + 5 Web-Quellen).
- `CHANGELOG.md`: Eintrag ergaenzt.

## Naechster Lauf
- OneDrive-Mount-Status zuerst pruefen (siehe Blocker-Abschnitt) — bei Normalisierung: Brandschutz-
  Kandidaten C36/B42/B43 (seit Run 52 offen) + die drei PL-04-`.docx` aus diesem Lauf erneut
  versuchen.
- [[recht-norm-pbg-revision-bauen-im-bestand]]: Rest der synoptischen Darstellung (>S. 16, der
  vollstaendige § 220a-Wortlaut + alle neun aufgehobenen PBG-Paragraphen einzeln) noch nicht
  gelesen; parallele Vorlage "Stoerfallvorsorge" (gleicher Vernehmlassungsbrief) noch nicht
  ausgewertet.
- § 49b PBG: Primaertext der UmV (genaue Einkommenslimite/Belegungszahlen) bei realem
  Verdichtungsprojekt nachziehen.
- Kantonsratsbeschluss Denkmalschutz-PBG-Revision weiterhin verfolgen.
