# Wissens-Health-Check: normen — 2026-07-24

Zweites Audit dieser KB (erstes: 20.07.2026). Nachtschicht-Zyklus Mac Mini, Budget-bewusst
durchgefuehrt (deterministische grep-Pruefungen statt vollstaendiger Einzel-Lektuere aller
271 Destillate). Sonderauftrag: Cross-Check des Wissens-Chef-Hinweises aus dem
`koordination`-Audit von heute 05:30 — widerspricht der Run-19-Meilenstein «SIA/VKF komplett»
dem offenen SIA-181:2020-Posten?

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 1 (Klarstellung, kein echter Widerspruch) |
| B Kaputte Backlinks/Orphans | 17 tote `[[links]]` |
| C Unbelegte Claims | 0 (Stichprobe 5 Destillate, alle belegt) |
| D RAW-Coverage-Luecken | 0 (nicht anwendbar — raw/ bewusst leer, Schema-konform) |
| E Veraltete Artikel | 0 neu (2 bekannte Faelle bereits in QUESTIONS.md) |
| F Schreibregel-Verstoesse | 65/271 Destillate mit ASCII ae/oe/ue (bekannter Bug, Baseline-Zahl) |
| G Promotion-Kandidaten | 0 spruchreif (8 Teil-Destillate, alle Bring-Schuld-/Lueckenabhaengig) |

## Top-3 (Raphaels Aufmerksamkeit)

1. **Scope-Klarstellung «SIA/VKF komplett» (Sonderauftrag geklaert, kein Widerspruch).** Der
   Run-19-Meilenstein bezieht sich auf die **Inventar-Abdeckung** aller in `training/norm-
   inventar.md` erfassten SharePoint-Dateien (alle Vertiefungsstufen a-d fuer die vorhandenen
   PDFs abgeschlossen). Der offene Punkt «SIA 181:2020 re-destillieren» ist davon unabhaengig:
   die 2020er-Ausgabe liegt **nicht** auf SharePoint (nur `181_2006_d.pdf` im Bestand,
   Neuausgabe kostenpflichtig im SIA-Shop — Bring-Schuld Raphael, Claude taetigt keine Kaeufe).
   `wiki/REGISTER.md` Zeile 109 fuehrt das Warnsymbol bereits korrekt («⚠ neuere Ausgabe SIA
   181:2020 … Re-Destillat ausstehend»), `wiki/QUESTIONS.md` Zeile 74-77 ebenso ungehakt.
   **Kein Datenfehler**, aber ein **Formulierungsrisiko**: «SIA/VKF komplett» kann bei
   Cross-KB-Lektuere (wie im koordination-Fall geschehen) als «vollstaendig aktuell» statt
   «Bestand vollstaendig abgearbeitet» missverstanden werden. Empfehlung: kuenftige
   Meilenstein-Eintraege praeziser als «SIA/VKF-**Bestand** komplett» formulieren.
2. **17 tote `[[links]]` in Destillat-Frontmatter**, vier davon leicht behebbare Namensfehler
   (Ziel existiert unter anderem Dateinamen): `[[sia-2024]]` → Datei heisst `sia-mb-2024-2006.md`
   (Merkblatt-Praefix fehlt im Link); `[[sia-180]]` → vermutlich `[[sia-180-2014]]` gemeint;
   `[[sia-102-2003]]` → keine 2003er-Datei im Bestand, nur `sia-102-2014.md`/`sia-102-2020.md`;
   `[[din-1961-2012]]` → Datei heisst `din-1961-2010.md` (Ausgabejahr im Link vs. Datei
   unstimmig, pruefen ob 2010 oder 2012 die korrekte Ausgabe ist). Die uebrigen 13 sind
   dokumentierte Luecken, kein Korrekturbedarf: `sia-160`/`sia-162` (aufgegangen in SIA 260ff
   bzw. nur Teile 051/152 destilliert, kein Hauptdestillat), `sia-190`/`sia-215` (nur
   franzoesische Sprachvarianten im Bestand, keine DE-Destillate), `sia-2028`/`2032`/`2039`/
   `2047`/`380-4`/`382-2` (nicht im SharePoint-Scan auffindbar), `bkp-2017` (Cross-KB-Verweis
   auf `references/bkp-2017/`, kein KB-interner Artikel — Formatfrage, kein echter Fehler).
3. **Umlaut-Baseline: 65 von 271 Destillaten (~24 %) noch mit ASCII ae/oe/ue.** Bereits als
   Config-Bug bekannt (koordination-Audit 20.07./24.07.), hier nur als Fortschritts-Referenzwert
   fuer kuenftige Audits festgehalten — keine Doppelmeldung als neuer Fund.

## Details je Audit

### A. Widersprueche
- Siehe Top-3 Punkt 1. Sonst keine neuen Artikel-Widersprueche gefunden (kein Vollabgleich
  aller 271 Destillate durchgefuehrt — Budget-Grenze; Stichprobe der zuletzt geaenderten
  Dateien seit 20.07. ohne Befund).

### B. Kaputte Backlinks & Orphans
- Tote Links (Ziel-Datei existiert nicht unter diesem Namen in `wiki/` oder `destillate/`):
  `bkp-2017`, `din-1961-2012`, `sia-102-2003`, `sia-160`, `sia-160-einwirkungen`, `sia-162`,
  `sia-162-betonbauten`, `sia-180`, `sia-190-kanalisationen`, `sia-2024`, `sia-2028`, `sia-2032`,
  `sia-2039`, `sia-2047`, `sia-215`, `sia-380-4`, `sia-382-2`.
- Fundorte (Frontmatter `links:`): `destillate/sia-450-1993.md` (bkp-2017), `destillate/
  sia-203-1997.md` (sia-160, sia-162, sia-215), `destillate/sia-382-1-2014.md` (sia-180,
  sia-2024, sia-2028, sia-380-4, sia-382-2), `destillate/sia-384-201-2017.md` (sia-2024),
  `destillate/din-1960-2010.md` (din-1961-2012). Einordnung siehe Top-3 Punkt 2.
- Orphans (keine Prüfung durchgefuehrt — bei 271 Destillaten mit eigenem INDEX.md-Katalog
  ist "orphan" als Konzept hier wenig aussagekraeftig; Abdeckung stattdessen ueber `training/
  norm-inventar.md` gesteuert, das nicht auf Wiki-Backlinks basiert).
- `wiki/INDEX.md` fuehrt nur 4 Wiki-Artikel + REGISTER; alle vier existieren, INDEX ist aktuell.

### C. Unbelegte Claims
- Stichprobe: `sia-102-2020.md`, `sia-181-2006.md`, `vkf-brl-19-15-sprinkleranlagen.md`,
  `din-18040-1-2010.md`, `sia-2014-2017.md`. Alle mit vollstaendigem Frontmatter (quelle,
  herausgeber, ausgabe, gelesen, datenstand, status mit Verifikationsvermerk, last_updated).
  Keine Beanstandung.

### D. RAW-Coverage
- Nicht anwendbar. `raw/_INGESTED.md` ist laut `wissen/normen/CLAUDE.md` bewusst leer — die
  KB zitiert die SharePoint-Originale direkt ueber das `quelle:`-Feld je Destillat, kopiert sie
  nie nach `raw/`. Schema-konform, kein Finding.

### E. Veraltete Artikel
- Keine neuen Faelle. Zwei bereits in `wiki/QUESTIONS.md` gefuehrte, aelter als 90 Tage
  ungeloeste Posten (SIA 181:2020 Re-Destillat, VKF-Merkblatt 2001-15 Solaranlagen Rev. 2022)
  sind beide **Bring-Schuld Raphael** (kostenpflichtiger Norm-Kauf) — nicht durch Claude
  schliessbar, korrekt als offen gefuehrt.

### F. Schreibregel-Verstoesse
- 65/271 Destillate (`grep -l "ae\b\|oe\b\|ue\b"` auf Dateien mit `status:`-Feld) verwenden
  noch ASCII-Umlaut-Ersatz statt ä/ö/ü. Bekannter Bug (Rule `umlaute-konvention.md` verletzt),
  bereits vom Wissens-Chef gemeldet — hier nur als Baseline-Zahl fuer Fortschrittsmessung
  dokumentiert, kein neuer Fund.
- Frontmatter-Stichprobe (siehe Audit C): vollstaendig, keine Formatfehler.

### G. Promotion-Kandidaten
- 8 Teil-Destillate (`training/norm-inventar.md`, Suchbegriff "Teil-Destillat"): SIA 121
  (Formularblaetter S.18-22 fehlen), SIA 180 (zwei Eintraege, Anhaenge A-H offen), SIA 181
  (Anhang-Teile offen, zusaetzlich 2020-Upgrade offen), SIA D 0165 (nur 5-S.-Fragment, Voll-
  version 73 S. in `xalt`), DIN EN 1627 (nur 4/44 S. im Bestand), DIN 5034-1/-4 (Teil-Scans).
  Keiner davon ist ohne weitere Quellenbeschaffung (Norm-Kauf oder Vollversion-Zugriff)
  promotionsreif — alle bereits in `wiki/QUESTIONS.md` bzw. `training/norm-inventar.md`
  korrekt als offen/Teil gefuehrt.

## Methodischer Hinweis

Aufgrund der KB-Groesse (271 Destillate) wurde dieses Audit **nicht** als Volltext-Lektuere
jeder Datei durchgefuehrt, sondern ueberwiegend deterministisch (grep auf Frontmatter, Links,
Statusfelder) plus gezielter Stichprobe — passend zum Nachtschicht-Budget (~2,4 von 5 USD
fuer dieses Audit). Ein vollstaendiger Claim-Abgleich (Audit C) aller 271 Destillate gegen die
Originale wuerde einen dedizierten, groesseren Lauf brauchen.
