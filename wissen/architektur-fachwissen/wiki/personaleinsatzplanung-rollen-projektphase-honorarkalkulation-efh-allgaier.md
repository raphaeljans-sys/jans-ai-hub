---
title: "Personaleinsatzplanung nach Rollen und Projektphase mit Honorar-Faustformel — Vorlage EFH Allgaier"
status: speculative
last_updated: 2026-08-30
sources: ["/Volumes/daten/04_Buero/10_Referenzenbibliothek/18_Projektkostenplanung/03_Buero_Projektkostenplanung/Allgaier/XLS/Allgaier.xls (Sheet \"Terminplan Projektorganisation\", Büro Architektur Kerez, Projekt Neubau Zweifamilienhaus Allgaier, Stand 24.05.2005)", "raw/inventar/buero-referenzen__18_Projektkostenplanung.md Abschnitt 03_Buero_Projektkostenplanung"]
links: ["[[sia-102-2003-phasenanteile-zwei-rechenwerke]]"]
---

# Personaleinsatzplanung nach Rollen und Projektphase mit Honorar-Faustformel

## Kontext

Büro-interne Projektplanungsdatei zu einem Zweifamilienhaus-Neubau (Bauherrschaft Allgaier,
Architekturbüro Christian Kerez, Planungsstand 2004–2007). Die Datei kombiniert ein
Terminband (BKP-Positionen über die Jahre 2004–2007, als Gantt-Zeilen angelegt, aber im
vorliegenden Stand nur mit den zwei Fixpunkten Baubeginn und Schlüsselübergabe an die
Bauherrschaft tatsächlich befüllt — die BKP-Zeilen selbst tragen keine Balken) mit einer
zweiten, tatsächlich befüllten Tabelle: einer Personaleinsatz-Matrix nach Rolle und
Projektphase, verknüpft mit einer Honorarkalkulation. Destilliert wird ausschliesslich diese
zweite Tabelle; das leere Gantt-Gerüst ist keine Aussage über tatsächliche Bauzeiten.

## Methode: Rollen-Prozentsätze über die Projektphase, hochgerechnet auf Personenmonate

Für jede Rolle ist ein konstanter oder gestufter Prozentsatz des Arbeitspensums über die
gesamte Phasenfolge Vorprojekt/Bauprojekt/Planungsphase → Ausführungsphase eingetragen. Aus
der Summe der Prozentpunkte (Spalte «Mt») und einem zweiten, in der Datei nicht erläuterten
Korrekturfaktor (Spalte «x») ergibt sich eine Personenmonat-Zahl je Rolle:

| Rolle | Pensum-Profil | Mt (roh) | Faktor x | Personenmonate |
|---|---|---|---|---|
| Büroinhaber | konstant 10 % über die gesamte Phasenfolge | 2.1 | 1.4 | **2.94** |
| Projektleiter (1. Zeile) | 50 % Start, danach durchgehend 100 % | 15.5 | 1.0 | **15.5** |
| Projektleiter (2. Zeile, paralleler Block) | durchgehend 100 % über einen kürzeren Abschnitt | 5.0 | 0.9 | **4.5** |
| Praktikant | konstant 5 % über die gesamte Phasenfolge | 1.05 | 0.36 | **0.378** |
| Reserve | 0 % | 0.0 | 0.0 | **0.0** |
| **Total** | | | | **23.318** |

**Praxisregel:** Das Modell trennt bewusst den Büroinhaber (konstante Aufsichtspauschale
10 %) vom Projektleiter (variables Pensum, hier mit einem Anlauf bei 50 % und Vollpensum ab
Bauprojekt) und vom Praktikanten (konstante Unterstützungspauschale 5 %). Als Vorlage für
eine eigene Ressourcenplanung ist das Grundmuster — je Rolle ein Pensum-Profil über die
Phasenfolge, aufsummiert und auf Personenmonate hochgerechnet — unmittelbar übertragbar,
unabhängig vom Faktor «x», dessen Berechnungsgrundlage aus der Datei nicht hervorgeht (siehe
Offene Punkte).

## Honorarkalkulation: Lohnansatz-Unkostenfaktor-Methode

Parallel zur Personenmonat-Rechnung führt die Datei eine zweite, einfachere
Honorar-Faustformel, die sich von der Z1/Z2-Formel nach SIA 102:2003
(siehe [[sia-102-2003-phasenanteile-zwei-rechenwerke]]) unterscheidet:

**Total Fr./Monat = Lohnansatz/Monat (K1) × Unkostenfaktor**

Im vorliegenden Fall: CHF 5'000.– (K1, Lohnansatz pro Monat) × 2.0 (Unkostenfaktor) =
**CHF 10'000.– pro Personenmonat**. Der Leistungsanteil steht in der Datei separat mit 1.0
(voller Ansatz, kein Abschlag). Diese Faustformel — Lohnkosten mal Overhead-Multiplikator —
ist eine gängige Kurzmethode, um von einem Personalstand auf einen Stunden- oder
Monatsansatz zu kommen, ohne die volle SIA-102-Rechnung durchzuführen.

## Warnung: interne Zahlen der Datei widersprechen sich

Die Datei ist ein **Planungswerkzeug im unfertigen Zustand**, kein abgeschlossenes
Rechenwerk — vier in derselben Datei auftretende Zahlen lassen sich nicht widerspruchsfrei
verbinden:

1. Gesamthonorar (explizit ausgewiesen): **CHF 417'000.–**
2. Personenmonat-Hochrechnung × Fr./Monat-Ansatz: 23.318 × CHF 10'000.– ≈ **CHF 233'180.–**
3. «Aufwandziel» (separat ausgewiesen): **CHF 83'000.–**
4. Randnotiz in der Datei: «Gesamthonorar−20 % = Aufwandziel (119'191 − 23'838 = 95'353)» —
   passt weder zu CHF 417'000.– noch zu CHF 83'000.–, wirkt wie ein aus einer anderen
   Projektkalkulation stehengebliebener Rechenrest.

Ausserdem sind mehrere Zellen im Rechenteil als `#DIV/0!` befüllt (Soll-/Ist-Vergleich der
Aufwände je Phase, Spalten «Aufwand eff.» stehen durchgehend auf 0). **Die Datei ist damit als
Struktur-Vorbild zu verwenden, nicht als Quelle verlässlicher Kennwerte** — keine der vier
Zahlen darf unbesehen in eine eigene Offerte oder Nachkalkulation übernommen werden.

## Offene Punkte

- Die Bedeutung des Korrekturfaktors «x» je Rolle (1.4 / 1.0 / 0.9 / 0.36) ist aus der Datei
  nicht herleitbar — möglich sind Teilzeitgrad, Ferien-/Absenzabzug oder ein
  Erfahrungs-/Seniorität-Multiplikator. Vor Wiederverwendung des Modells am Original klären,
  falls weitere, besser dokumentierte Exemplare in der Sektion auftauchen.
- Warum «Projektleiter JK» zweimal mit unterschiedlichen Faktoren erscheint (parallele Rolle
  oder Phasenwechsel derselben Person), ist nicht dokumentiert.
- Preisstand 2004–2007 (Lohnansatz CHF 5'000.–/Monat, Gesamthonorar CHF 417'000.–) — nicht
  indexiert, nicht als heutiger Kennwert verwendbar.
