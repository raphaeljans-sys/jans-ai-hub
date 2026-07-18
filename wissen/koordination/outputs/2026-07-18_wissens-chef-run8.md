---
title: Wissens-Chef Run 8 — Cross-KB-Koordinationslauf
datum: 2026-07-18
lauf: 8
modus: gedrosselt (Rule 260714) — 3 Lese-Agenten + 2 adversariale Verifier, kein grosser Workflow
geprueft: normen ↔ planungsgrundlagen (Brandschutz) · energie ↔ normen (Ψ/MuKEn) · planungsgrundlagen ↔ baurecht (OEREB/WWG)
status: abgeschlossen
---

# Wissens-Chef Run 8 — 18.07.2026

Geprueft wurde der seit Run 7 (gestern) neu gewachsene Stoff: `planungsgrundlagen` Run 51/52
(Kartenportale + Brandschutz), `energie` Run 78/79 (MuKEn Modul 7, Ψ-Wert/E93), sowie der
Nachlauf der WWG/HWSchV-Aufhebung aus `baurecht` Buch-Run 47/48.

## Bilanz in einem Satz

**Fuenf Befunde gemeldet, drei CONFIRMED, zwei REFUTED** — darunter ein seit fuenf Jahren
ueberholter, als `established` gefuehrter Brandschutz-Kennwert in der fuehrenden KB, der ueber
die Fach-Skills direkt in Fluchtwegbemessungen eingegangen waere.

## Befunde

### 1. CONFIRMED · schwer · VKF-BRL 16-15: Personenbelegung Verkauf seit 2021 ueberholt

`normen/destillate/vkf-brl-16-15-flucht-rettungswege.md` und `normen/wiki/synthese-sia-vkf-fachskills.md`
fuehrten die Personenbelegung Verkauf als **0.5 / 0.35 / 0.25 P./m2** (ebenerdig / 1. UG-1. OG /
tiefer-hoeher), Status `established`, ohne Aktualitaets-Vorbehalt.

Mit **Beschluss TKB vom 09.06.2021** wurde diese Zeile im Anhang zu Ziff. 3.5.2 (S. 24)
**ersatzlos gestrichen** und durch eine Matrix nach Betriebstyp ersetzt:

| Betriebstyp | ebenerdig | ueber Treppen (UG/OG) |
|---|---|---|
| Fachmaerkte, Kaufhaeuser, Einkaufszentren | 0.10 | 0.10 |
| Supermaerkte | 0.38 | 0.15 |
| Hochfrequentierte Supermaerkte | 0.45 | 0.21 |

**Verifikation am Original (Refuter, CONFIRMED):** beide PDFs im Volltext gelesen und
gegeneinander gediffed — Fassung 01.01.2017 (`PL - 02_Recht_Norm/.../16-15_rev2016_flucht_und_rettungswege.pdf`)
gegen Fassung Stand 01.12.2022 (`PL - 03 Brandschutz/.../BSPUB-1394520214-85.pdf`). Identische
Anhang-Ueberschrift, identischer Spaltenkopf, identische Fussnote — dieselbe Groesse, kein
Kategorienwechsel. Die generische Zeile «Verkaufsgeschaefte» existiert 2022 nicht mehr; ein
Volltext-Grep bestaetigt, dass sie an keiner anderen Stelle als Auffangregel ueberlebt. Der
TKB-Beschluss steht woertlich im Aenderungsvorspann.

**Tragweite:** der Wert geht in Fluchtwegbreiten ein. Bei Fachmaerkten war er um Faktor 5 zu hoch,
bei hochfrequentierten Supermaerkten zu tief. Laut Rule `normen-referenz` ist `normen` die fuehrende
Quelle — ein Fach-Skill (`brandschutz`, `wettbewerb`, `ausschreibung`) haette den ueberholten Wert
als zitierfaehig behandelt.

**Nebenbefund am Original:** die pg-Passage schreibt «IOTH-Beschluss 22.03.2017» — im Original steht
**«Beschluss ABSV vom 22. Maerz 2017»**. Korrigiert.

### 2. CONFIRMED · operativ heikel · Aufgehobenes Recht im OEREB-Themenkatalog

`planungsgrundlagen/wiki/kartenportale-oereb-kataster-system-zh.md` Z. 39 fuehrte fuer **OEREB-Thema 190
Gewaesserraum** die Rechtsgrundlage `LS 724.112 § 15` — die **HWSchV**, per 01.06.2026 aufgehoben
(OS 81, 144). Der Refuter hat alle vier Entlastungshypothesen geprueft: LS 724.112 ist die HWSchV
(belegt), die Nachfolge **§ 19 WsG / § 11 WsV** steht woertlich in der amtlichen Konkordanztabelle,
ein grep ueber alle 279 Zeilen des Artikels findet **keine** deckende Aufhebungs-Notiz, und die
raw-Quelle ist amtlich (ZHLex/notes.zh.ch, abgerufen 17.07.2026).

Die einzige Entlastung — der Artikel gibt die amtliche Weisung V3 vom 01.12.2022 treu wieder —
entkraeftet nichts, weil er nicht als historisch markiert ist. Dazu trug der **INDEX** die
Repeal-Flags zweier Artikel nicht nach: wer nur die Einstiegsebene liest, bekam aufgehobenes Recht
als aktuell.

### 3. CONFIRMED · stale · Themenartikel Innendaemmung nicht mitgezogen

`energie/wiki/innendaemmung.md` behauptete weiterhin «Schweizer Ψ-Zahl fuer die einbindende
Massivdecke: **Negativbefund**» und fuehrte den Punkt unter «Offene Punkte» — obwohl **E93** am
selben Tag (Run 79) geschlossen wurde. Das Destillat wurde aktualisiert, der Themenartikel nicht.
Wer ueber das Wiki einsteigt (der vorgesehene Weg), bekam den ueberholten Negativbefund statt der
belegten Zahlen (BFE-Katalog 2002, Gruppe 2.1 Wandtyp I: 2.1-I1 «durchbetoniert» Ψ 0,63–0,89,
2.1-I2 «Stahlkorb» Ψ 0,07–0,15).

### 4. REFUTED · LS-724.11-«Kollision» ist eine belegte Nummern-Wiederverwendung

Gemeldet als moeglicher Fehler: LS 724.11 wird sowohl dem WWG als auch der WsV zugewiesen. Der
Refuter hat beide Zuweisungen einzeln amtlich belegt — WWG = LS 724.11 (BZO-Langnau-Abkuerzungs-
verzeichnis), WsV = LS 724.11 (Erlass vom 2. Juli 2025, `raw/260717_amtlich_zh_hwschv.md` Z. 166).
Nach Aufhebung des WWG ist die Nummer neu vergeben; beide KB-Aussagen beschreiben denselben Slot
zu verschiedenen Zeitpunkten. **Kein Fehler** — nur ein klarstellender Vermerk gesetzt.

### 5. REFUTED · Ψ ≤ 0,20 «(SIA 380/1)» ist sachlich gedeckt

Gemeldet als Fundstellen-Behauptung ohne Beleg. Widerlegt: EnFK EN-102 Tab. 3 fuehrt fuer Typ 2
genau Ψ 0,20, und die Fusszeile jeder Seite der Vollzugshilfe bestaetigt «Basis: Norm SIA 380/1,
Ausgabe 2016» (am Original per curl+pdftotext gegengeprueft). Die normen-Sperre in QUESTIONS
betrifft ihrem Wortlaut nach **nur** Q_H-Grenz-/Zielwerte, U-Wert-Grenzwerte und Gebaeudekategorien —
Waermebruecken-Ψ ist nicht genannt. Der Befund dehnte den Sperrumfang aus. Keine Aenderung.

## Ausgefuehrte Aktionen (autonom, active-with-flagging)

**normen** — Warnkasten mit der 2022er-Matrix ins Destillat (alte Werte als «gestrichen» markiert,
nicht geloescht); Synthese-Zeile auf die geltenden Werte umgestellt; Frontmatter `datenstand` +
`status: established-mit-vorbehalt`; REGISTER-Zeile um die drei Aenderungsstufen ergaenzt; drei
QUESTIONS-Eintraege; SIA-2048-Uebergabe aus `energie` aufgenommen.

**planungsgrundlagen** — OEREB-Zeile 190 korrigiert + Warnkasten; INDEX-Repeal-Flags nachgezogen;
`querbezug_kb_normen`-Block im Brandschutz-Wegweiser (bisher **kein einziger** Link in die KB
`normen`, obwohl der Artikel an 16 Stellen auf normen-Destillate verweist); Gremiums-Korrektur ABSV.

**energie** — Themenartikel `innendaemmung` nachgezogen (Ψ-Werte, Bauherren-Konsequenz,
Normgenerations-Vorbehalt 2001 vs. 2016), offener Punkt geschlossen, Backlink + Grenzwert-Herkunft;
Flag **SIA 180-C2:2020**; Flag **Ausgaben-Diskrepanz SIA 2024:2019 vs. 2021+C1:2024**.

**baurecht** — Rueckverweis-Block in `abstaende-und-hoehen` (die Verlinkung war einseitig);
Nummern-Wiederverwendungs-Hinweis in `baureife-und-erschliessung`.

Alles in den CHANGELOGs der vier KBs und in `koordination/CHANGELOG.md` protokolliert.

## Zwei Struktur-Muster (fuer den Synergie-Orchestrator)

**A — «Uebergabe verpufft im abgebenden KB».** Zwei Fundorte in einem Lauf: der Fassungs-Flag zur
VKF-BRL 16-15 stand seit Run 52 nur in `planungsgrundlagen`; die SIA-2048-Uebergabe stand nur in
`energie` (grep «2048» in `normen`: 0 Treffer). Beide Male hatte die abgebende KB **richtig erkannt**,
dass die andere nachziehen muss — und den Flag bei sich abgelegt, wo ihn niemand sieht.
**Regel daraus: Uebergaben gehoeren in die `wiki/QUESTIONS.md` der EMPFAENGER-KB.**

**B — «Fassungspflege ist der blinde Fleck der Destillate».** Die Refuter-Notiz im 16-15-Destillat
(«keine Abweichung gefunden», 17.07.) prueft gegen **dieselbe Datei**, aus der destilliert wurde —
sie kann eine juengere Fassung im Bestand strukturell nicht finden. Einen Tag spaeter stand dort ein
seit 2021 ueberholter `established`-Kennwert. **Regel daraus: erst den Bestand nach juengeren
Fassungen derselben Norm durchsuchen (Dateiname/Stempel), dann Werte gegenlesen.**

Dazu die dritte Fuehrungs-Umkehr in drei Laeufen (nach GreenPV/Run 6 und SIA 380/1/Run 7): die
laut Matrix fuehrende KB hatte den schlechteren Stand, die zuliefernde den besseren.

## Offene Entscheide fuer Raphael

Zwei neue, beide destruktiv/umstrukturierend und deshalb nicht autonom:

1. **VKF-16-15-Matrix nach `normen` uebernehmen und pg §5am auf einen Fundstellen-Verweis kuerzen.**
   Sauberer Zielzustand nach Fuehrungs-Matrix, aber eine Umstrukturierung ueber KB-Grenzen. Aktuell
   steht der richtige Wert in beiden KBs — funktional in Ordnung, strukturell doppelt gefuehrt.
2. **Volltext-Destillation der 16-15-Fassung Stand 01.12.2022.** Nur die Personenbelegung ist
   nachgefuehrt; die Deltas **ABSV 22.03.2017** (Ziff. 2.4.3/2.4.4) und **Fehlerkorrektur 01.12.2022**
   (Ziff. 3.7) sind ungeprueft. Bei Ziff. 3.7 gibt es zudem eine offene Ungereimtheit: pg beschreibt
   die Korrektur als «Geschossflaeche → Brandabschnittsflaeche», unser 2017er-Destillat schreibt
   aber bereits «Brandabschnittsflaeche». Als P1 in `normen/wiki/QUESTIONS.md` hinterlegt.

**Weiter offen aus frueheren Laeufen** (unveraendert): Dublette in `normen`
(`vkf-merkblatt-2001-15-solaranlagen` / `vkf-brm-2001-15-solaranlagen`, dieselbe PDF — Merge braucht
Freigabe, seit Run 6); **GSchV-Doppelspur** Art. 41a/41b in baurecht + planungsgrundlagen (seit Run 7);
Bring-Schulden WsG-§ fuer § 22 WWG, SIA-380/1-Volltext + C1:2019, Inhalt SIA 180-C2:2020.

**Fachliche Kleinigkeit ohne Entscheidbedarf:** die pg-Passage nennt «Apotheke, Kiosk, Quartierladen»
als Anwendungsfall der neuen Matrix. Seit dem Wegfall der Auffangzeile deckt die Tabelle diese
Kleinverkaufsflaechen nicht sauber ab — im Einzelfall mit der Brandschutzbehoerde zu klaeren. Im
Destillat entsprechend vermerkt.
