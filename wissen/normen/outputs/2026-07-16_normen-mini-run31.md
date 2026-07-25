---
titel: "Normen-Training Mini-Run 31 (Mac Mini) — Inventar-Check + 2 von 6 offenen Vertiefungs-Luecken geschlossen"
datum: 2026-07-16
station: "Mac Mini"
familien: "DIN, VSS, RAL (Stations-Split; SIA/VKF nicht angefasst)"
---

# Normen-Training Mini-Run 31 — Mac Mini (DIN/VSS/RAL)

## Auftrag

Ein Intensiv-Lauf gemaess `training/PROGRAMM.md`: NUR die Familien DIN, VSS und RAL
(Stations-Split — SIA und VKF gehoeren dem MacBook Pro, nicht angefasst). Verbindlich:
Verifikations-Stufe (adversarial, vor jeder `established`-Hebung), Token-Vollgas/
Workflow-Parallelisierung autorisiert, Arbeitsliste `training/norm-inventar.md`,
Quell-PDFs auf SharePoint `PL - 02_Recht_Norm/02_Normen`, DRM-PDFs manuell markieren,
Register/REGISTER.md/CHANGELOG nachfuehren, Report nach `outputs/`, git pull vor Commit.

## Inventar-Check (vor jeder Destillationsarbeit)

Vor Arbeitsbeginn wurde `training/norm-inventar.md` gegen die live gemountete
SharePoint-Ablage (`~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/
PL - 02_Recht_Norm/02_Normen/{DIN_Norm,VSS_Norm,RAL_Norm}`) abgeglichen, Datei fuer
Datei. Ergebnis: **0 offene `[ ]`-Positionen** in DIN (72 Dateien), VSS (17 Dateien)
und RAL (1 Datei) — identisch mit dem Stand aus Mini-Run 30 (260715). Keine neuen
Dateien seit dem letzten Scan gefunden. Grunddestillation (a), Retro-Verifikation (b),
Q&A-Selbstbefragung (c) und Querschnitts-Synthese (d) sind fuer alle 90 Dateien der
Familie bereits vollstaendig abgeschlossen.

**Konsequenz fuer diesen Lauf:** eine kuenstliche Batch-Zielzahl (15-25 bzw. 30-40
Positionen gemaess PROGRAMM.md-Eskalation) haette in dieser Situation zwangslaeufig
Erfindung/Wiederholung bedeutet — dem widerspricht die Leitplanke "nie Ziffern/
Kennwerte erfinden". Stattdessen wurden die **6 in Mini-Run 30 (`wiki/QUESTIONS.md`,
Abschnitt "Mini-Run 30") dokumentierten offenen Vertiefungs-Luecken** einzeln geprueft,
soweit sie im Stations-Scope (DIN/VSS/RAL, keine neue SIA/VKF-Destillation) liegen.

## Geschlossene Luecken (2 von 6)

### 1. SIA 331 ↔ DIN EN 12207 / DIN 1249-11 — Ziffer-fuer-Ziffer-Abgleich

Grundlage: die drei bereits `established`/`destilliert` vorliegenden Destillate
`destillate/sia-331-1988.md`, `destillate/din-en-12207-2000.md`,
`destillate/din-1249-11-1986.md` (keine neue Original-PDF-Lektuere noetig).

**Kernbefund:** SIA 331 und DIN EN 12207 verwenden beide die Buchstaben-Bezeichnung
"Beanspruchungsgruppe A/B/C" — es handelt sich aber um **zwei grundverschiedene
Klassifizierungssysteme**:
- SIA 331 (Ziff. 2 23 4, Tabelle 1) staffelt A/B/C nach **Gebaeudehoehe** (A: 0-8 m,
  B: >8-20 m, C: >20-100 m) und weist darauf aufbauend Fugendurchlaessigkeits-
  (Tabelle 2) und Schlagregendichtheits-Anforderungen (Tabelle 3) zu, nachgewiesen
  ueber die Pruefnormen **EN 42/EN 86** (nicht EN 12207).
- DIN EN 12207 (Nationaler Anhang, Tabelle NA.1) verwendet A/B/C ausschliesslich zur
  Umrechnung **alter DIN-18055-Messwerte** (Fugendurchlasskoeffizient bei 100 Pa
  Referenzdruck) auf die neuen EN-Klassen 1-4; die Tabelle dient laut Destillat
  "AUSSCHLIESSLICH zur Uebertragung von DIN 18055:1981-10 auf die neue Norm".

Ein direkter Buchstaben- oder Zahlen-Transfer zwischen den beiden Systemen waere
fachlich falsch — Fund fuer die Fach-Skills (`ausschreibung`, `energie-berater`):
EN-12207-Klassenangaben aus Produktdatenblaettern koennen als Zusatzinformation
dienen, ersetzen aber nie den SIA-331-Nachweis.

Zusaetzlich: SIA 331 kennt **keine eigene Glaskanten-Klassifizierung** (Kapitel 3/6
im Normenaufbau bewusst leer) — DIN 1249-11 (Kantenformen K/GK/FK/RK, Ausfuehrungs-
arten KG/KGS/KMG/KGN/KPO) fuellt damit eine echte Luecke statt einer Konkurrenznorm.
Statisch/sicherheitstechnisch bleibt in der Schweiz SIA 358 + produktspezifische
EN-Normen massgebend.

Nachgefuehrt: `wiki/synthese-din-vss-ral-fachskills.md` Abschnitt 10.3 (neuer
Ziffer-fuer-Ziffer-Absatz) + Abschnitt 14 (zwei neue Zeilen in der Uebertragbarkeits-
Tabelle).

**Verifikation:** 1 unabhaengiger Adversarial-Pruef-Agent hat alle sechs Kernaussagen
gegen die drei Original-Destillate wortnah gegengelesen. Verdikt: **BESTANDEN**, keine
erfundenen Zahlen/Daten. Eine kleine Praezisierung wurde umgesetzt: die Aussage, DIN
18055 sei "ausschliesslich ueber den gemessenen Fugendurchlasskoeffizienten ... definiert"
wurde zu "gemaess der Korrelationstabelle NA.1 charakterisiert" praezisiert, mit dem
expliziten Hinweis, dass DIN 18055:1981-10 selbst nicht im Bestand liegt und nicht
direkt gelesen wurde (nur ueber die EN-12207-Korrelationstabelle bekannt).

### 2. RAL-GZ 638 (Gitterroste) — BKP-Zuordnung

Gegen die verbindliche Referenz `references/bkp-2017/BKP-2017-Liste.md` (Rule
`bkp-2017-referenz`) geprueft: kein eigener "Gitterrost"-Code, massgebend ist die
Einbausituation:
- **BKP 221.9 Metallbaufertigteile** (Gruppe 22 Rohbau 2, aeussere Bauteile) fuer
  Aussenanwendungen — Lichtschacht-/Kellerabgangs-Abdeckungen, befahrbare Aussenroste
  bei Anlieferungszonen.
- **BKP 272.2 Allgemeine Metallbauarbeiten** (Gruppe 27 Ausbau 1) fuer innenliegende
  Bodenroste/Podeste.
- Bei Umbauten die Hauptcodes der Gruppe 3 (Betriebseinrichtungen) **BKP 321** bzw.
  **BKP 372** — fuer diese Gruppe listet `BKP-2017-Liste.md` **keine** .9/.2-
  Unterteilung, deshalb bewusst kein erfundener Subcode angesetzt (Verstoss gegen die
  Rule waere sonst unmittelbar).

Nachgefuehrt: `destillate/ral-gz638-2008.md` (neuer BKP-Absatz),
`wiki/synthese-din-vss-ral-fachskills.md` Abschnitt 11.4 + Abschnitt 14.

**Verifikation:** 1 unabhaengiger Adversarial-Pruef-Agent hat alle vier BKP-Codes
Zeile fuer Zeile gegen `BKP-2017-Liste.md` gegengeprueft und per Grep bestaetigt, dass
unter 321/372 tatsaechlich keine Dezimal-Subcodes existieren. Verdikt: **BESTANDEN**,
keine erfundenen Codes.

## Offen bleibende Luecken (4 von 6) — mit Begruendung

| Luecke | Warum in diesem Lauf nicht schliessbar |
|---|---|
| SIA 266/262/267-Detailbemessung ↔ DIN 1053/1045-2/1054 | benoetigt vertiefte SIA-Destillation (Ziff. 3.2-3.6, 6-7, 8.5-16) — Station MacBook Pro, Stations-Split |
| Keine SIA-Raumakustik-Norm in der KB | `destillate/INDEX.md`-Pruefung bestaetigt: kein Treffer; DIN/VSS/RAL-seitig nicht loesbar |
| Keine Suva-/EKAS-Richtlinie Fassadengeruest/Dachhaken | kein Fund in der SharePoint-Ablage (erneut geprueft); externe Beschaffung noetig, keine Destillationsaufgabe |
| VKF-BRL 15-15 noch nicht destilliert | VKF-Familie, Station MacBook Pro |
| «2026 verschaerfte kantonale Velo-Abstellpflicht» | Recherchefrage ausserhalb der bestehenden VSS/SN-Quellen (1983-2011); keine neue Datei in der Ablage gefunden |

## Nachgefuehrte Dateien

- `wiki/synthese-din-vss-ral-fachskills.md` (Abschnitt 10.3, 11.4, 2 Zeilen Abschnitt
  14, `last_updated: 2026-07-16`)
- `destillate/ral-gz638-2008.md` (BKP-Absatz, `last_updated: 2026-07-16`)
- `wiki/QUESTIONS.md` (neue Kopfnotiz "Mini-Run 31", 2 Eintraege im Mini-Run-30-Block
  auf `[x]` gesetzt)
- `training/norm-inventar.md` (Kopfzeile ergaenzt)
- `CHANGELOG.md` (dieser Eintrag)

## Naechster Lauf (Vorschlag)

Solange keine neuen DIN/VSS/RAL-Dateien in der SharePoint-Ablage erscheinen, bleibt
fuer diese Familie nur noch die Beschaffung EXTERNER Quellen offen (Suva-/EKAS-
Richtlinie, aktuelle Velo-Abstellpflicht-Recherche) — beides ausserhalb der reinen
Destillationsarbeit. Ein sinnvoller naechster Schritt waere entweder (a) eine gezielte
Beschaffung dieser zwei externen Quellen (falls Raphael eine Quelle nennen kann/eine
neue PDF in die SharePoint-Ablage legt), oder (b) ein Wechsel auf eine noch nicht
vollstaendig abgedeckte Vertiefung innerhalb DIN/VSS/RAL, falls eine neue gefunden
wird. Ohne neues Rohmaterial ist ein weiterer "15-25-Positionen"-Lauf fuer diese
Familie nicht sinnvoll ausfuellbar, ohne die Nicht-Erfinden-Leitplanke zu verletzen —
das sollte Raphael bei der Taktung des naechsten Laufs beruecksichtigen.
