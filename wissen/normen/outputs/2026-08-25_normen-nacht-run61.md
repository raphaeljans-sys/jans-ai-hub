# Normen-Nacht Run 61 — 25.08.2026, 01:28–02:0x CEST (MacBook Pro)

**Auftrag:** Scheduled Task `normen-training-nacht`, Stations-Split SIA + VKF.
**Run-Nummer** nach Sicht der juengsten `outputs/`-Datei vergeben: Run 60 war der Nacht-Lauf vom
23.08.2026; der 24.08. brachte keine nummerierten Nacht-Laeufe (nur SIA-Sweeps und
QUESTIONS-Abarbeitungen). Dieser Lauf ist **61**.

## 1. Voraussetzungen (alle gemessen, nicht angenommen)

| Pruefung | Ergebnis |
|---|---|
| `scripts/lauf-gate.sh normen-training-nacht` | Exit 0 — Lauf freigegeben |
| NAS-Mount `/Volumes/daten/jans-ai-hub` | vorhanden |
| Kollisionsschutz `ps aux` | kein zweiter `normen-training`-Prozess |
| Zugriffs-Check OneDrive PL-02 | **intakt** — PDF-Header dreier Test-PDF gelesen, 636 PDF sichtbar |
| Bestandsfrische PL-02 | juengste Aenderung **2026-08-07**, kein neues Rohmaterial (18 Tage) |
| Inventar `norm-inventar.md` | 0 destillierbare Positionen; 6 offene Zeilen = ausnahmslos Kauf-/Beschaffungs-Bring-Schulden |

**Der entscheidende Unterschied zu den Laeufen vom 24.08.2026:** dort war der Primaerquellenzugriff
nicht verfuegbar, weshalb 14 QUESTIONS-Laeufe und 19 SIA-Sweeps auf reine Dokumentpflege beschraenkt
blieben. Der vierzehnte Lauf hat das ausdruecklich als fehlende Voraussetzung benannt. Diese
Voraussetzung lag heute vor und wurde genutzt.

Kein Grunddestillat faellig (kein Rohmaterial, kein Kaufentscheid) → Arbeit auf den
Vertiefungsstufen (b) Retro-Verifikation und QUESTIONS-Abarbeitung, gemaess PROGRAMM Ziff. 6.

## 2. Methode

Alle **28** offenen `[ ]`-Checkboxen der `wiki/QUESTIONS.md` wurden in vier parallelen Buendeln
durch je einen Pruefagenten (Sonnet, Modell-Politik: mechanische Stufe delegiert) geprueft — und
zwar **gegen den echten KB-Stand** (CHANGELOG, Destillat-Inhalte, REGISTER, Inventar, INDEX,
Bestand), nicht wie zuletzt nur gegen die QUESTIONS-Datei selbst. Verdikt je Zeile:
ERLEDIGT / OFFEN / TEILWEISE, jeweils mit Pflicht-Fundstelle. Jeder ERLEDIGT-Befund wurde
anschliessend **vom Hauptprozess selbst am Original nachgeprueft** (Methodik-Pflicht 5).

## 3. Verifikations-Verdikte

### 3.1 Der wichtigste Befund ist ein abgefangener Fehlbefund

**Alle vier Agenten meldeten uebereinstimmend drei Zeilen als «Buchhaltungsschuld, auf `[x]`
setzen»:** N-R40-7 (Z. ~2889), Q&A-Selbstbefragung (Z. ~4080), Z1/Z2 SIA 103 (Z. ~5049).

Die Gegenpruefung des Hauptprozesses ergab: **alle drei tragen unmittelbar darueber den
`[x]`-Schliessungsvermerk** und sind bewusst stehen gelassene Ursprungswortlaute — die
dokumentierte KB-Konvention («Ursprungswortlaut zur Nachvollziehbarkeit:»). Waeren die drei
Zeilen geschlossen worden, waere die Nachvollziehbarkeit von drei Eintraegen zerstoert worden.

Ein einstimmiges Agenten-Votum war also falsch, und nur die Gegenpruefungspflicht hat es
aufgehalten. Das ist der vierte Beleg fuer Methodik-Pflicht 5 in dieser KB.

### 3.2 Daraus der Methodenbefund N61-2

**Die Kennzahl «offene Checkboxen» misst Rueckstand PLUS Archiv.** `grep -c '\[ \]'` kann die
beiden nicht trennen. Das erklaert, warum dieselbe Liste seit dem 23.08. immer wieder durchgezaehlt
wurde (43 → 30 → 28) und jeder Lauf ein bis zwei vermeintliche Schulden fand.
**Vorschlag:** eigener Marker `[a]` fuer archivierte Ursprungswortlaute — reine Markeraenderung,
volle Nachvollziehbarkeit, aber betrifft die ganze Datei → **FREIGABE RAPHAEL, nicht selbstaendig
umgesetzt.** Gleiche Wurzel wie der seit Run 52 offene Vokabular-Entscheid (25 abweichende
Statuswerte, u.a. 16x `destilliert`): ein nie normiertes Vokabular wird von jedem Lauf neu ausgelegt.

### 3.3 Neuer Sachbefund N61-1 — drei unentdeckte Destillat-Duplikate

Praefix-Paarabgleich ueber alle **461** Destillate (Methode erstmals gefahren) fand drei Paare mit
identischem Quellpfad, die der Reconcile von Run 5/12 uebersah, weil er nur die VKF-Kohorte absuchte:

| Paar | praefixlos | `de-`-Variante |
|---|---|---|
| BauNVO 1990 | 8129 B / 119 Z, `established` (verifiziert 260714) | 6072 B / 81 Z, `destilliert` |
| ArbStaettV 2004 | 9539 B / 136 Z, `established` (verifiziert 260714) | 6911 B / 94 Z, `destilliert` |
| VStaettVO Niedersachsen 2004 | 16327 B / 200 Z, `established` (S. 1-31/31) | 6978 B / 96 Z, `destilliert` |

`INDEX.md` fuehrt **beide** Varianten nebeneinander (Z. 85/86/89 gegen Z. 346/347/348) — ein
Abnehmer kann auf die unverifizierte Kurzfassung geraten. Loeschen ist destruktiv → zur Freigabe
vorgelegt, gebuendelt mit den fuenf bekannten VKF-Paaren.

### 3.4 Negativbefund N61-3

Die Hypothese zu N60-1, die Doppel-Destillation komme von doppelter Ablage, ist **widerlegt**:
`Aenderungen_Brandschutzrichtlinien_VKF-2017.pdf` liegt byte-identisch doppelt (VKF_Norm und
VSS_Norm, je 3'882'552 B), aber beide Destillate zitieren denselben VKF-Pfad. Kein
Fundstellenfehler; die Fehlablage im VSS-Ordner ist Mac-Mini-Scope und wurde nicht angefasst.

### 3.5 Vier Marker korrigiert (belegt)

| Zeile | von → nach | Beleg |
|---|---|---|
| ~4012 Doppelte Run-Nummer 21 | `[ ]` → `[x]` | geforderte Lehre steht woertlich in `training/PROGRAMM.md:89`; **einzige der vier ohne Schliessungsvermerk darueber** |
| ~5071 VKF-Normkonzept BSV 2026 | `[ ]` → `[~]` | Inventaraufnahme belegt (`norm-inventar.md:1128`, INDEX 345, REGISTER 1141); offen bleibt nur der stehende Warnhinweis |
| ~5010 Nachfolgewerke SIA 410 | `[ ]` → `[~]` | Eintrag benennt seine Teilerledigung im Schlusssatz selbst |
| ~5065 SIA 118:2013 | bleibt `[ ]`, praezisiert | rekursiver `find`: 1991, C1:2026, Teilnormen 118/2xx — **keine 2013er**. Randbefund: «1977» im Ursprungswortlaut ist falsch (der Treffer ist SIA 150:1977) |

### 3.6 Uebrige 24 Checkboxen

Keine weitere Buchhaltungsschuld. Kategorisierung haelt: Kauf-Bring-Schulden (SIA 380/1:2016,
385/1:2011, 266/1:2015, 118:2013, 491, SN EN 12193, DIN EN 1627, SN 641 400), destruktive
Merge-/Rename-Entscheide bei Raphael, stehende Methodennotizen (Fassungspflege, DIN-Sonstiges,
Workflow-Tool) und zwei Strukturentscheide (Z. ~5469) ohne Antwort.

## 4. Was NICHT geprueft wurde (Methoden-Lehre, Pflichtausweis)

- **Inhaltliche** Richtigkeit der drei DE-Duplikat-Paare — gemessen wurden nur Umfang, Status und
  Quellpfad; der Paarvergleich Zelle fuer Zelle gehoert in den Freigabelauf.
- Die **49 `speculative`-Destillate** — in diesem Lauf keine Verifikationsrunde gefahren.
- Der **Fliesstext der Kapitel 1-4 von `lignum-4-1`** (S. 3, 6-7, 10-11, 14), den Run 40 als naechste
  ungepruefte Methode benannt hat — nicht angefasst, bleibt die naechste faellige Vertiefung.

## 5. Eskalation an Raphael (unveraendert plus zwei neue Punkte)

1. **NEU — Freigabe fuer die drei DE-Duplikat-Merges** (N61-1), gebuendelt mit den fuenf bekannten
   VKF-Paaren. Loeschen ist destruktiv, Claude fuehrt es nicht selbst aus.
2. **NEU — Entscheid zum Marker `[a]`** fuer archivierte Ursprungswortlaute (N61-2). Ohne ihn
   zaehlt jeder kuenftige Lauf dieselbe Liste erneut durch.
3. Unveraendert: SIA-Shop-Kaeufe (380/1:2016, 385/1:2011, 266/1:2015, 181:2020, 491, 118:2013),
   VSS-Kundendienst `info@vss.ch` / +41 44 269 40 20 (SN 641 400, SN 640 052, SN 640 273a),
   SNV `connect.snv.ch` (SN EN 12193:2019, CHF 134.00 PDF-Variante).

## 6. Diff-Gegenprobe

`git diff --numstat` nativ per ssh auf der Synology (nie git ueber SMB, Rule 260726):
`wiki/QUESTIONS.md` 40 hinzugefuegt / 3 entfernt nach den Markerkorrekturen — die 3 entfernten sind
exakt die drei geaenderten Markerzeilen, keine sonstige Loeschung. Anschliessend die drei neuen
Abschnitte N61-1 bis N61-3 rein additiv angehaengt.
