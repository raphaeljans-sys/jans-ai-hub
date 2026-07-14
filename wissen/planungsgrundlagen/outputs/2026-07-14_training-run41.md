# Trainingslauf 41 — Recht/Norm (PL-02) + Brandschutz (PL-03), Token-Vollgas Fan-out

**Datum:** 2026-07-14 · **Station:** Mac Mini · **Methodik:** Ordner-Abgleich (Fan-out zwei
Agenten parallel, je Domaene), Rotation nach Run 40 (Kartenportale+Energie) turnusgemaess
weiter zu Recht/Norm + Brandschutz.

## Domaene 3 — Recht & Norm (PL-02)

Fortsetzung des in Run 39 begonnenen Backlogs `04_Merkblätter/Projektadmin AHB/` (Pflichtenheft
Amt fuer Hochbauten Stadt Zuerich fuer beauftragte Planer). Vier weitere Unterordner
ausgewertet, Artikel [[recht-norm-ahb-stadt-zuerich-projektstandards]] auf **established**
gehoben (§5-§8 neu):

**§5 Honorarwesen AHB.** Quelle `15-Honorar+Vertragswesen/` (15.1/15.2/15.5). AGB-Abweichungen
der Stadt Zuerich von den SIA-Ordnungen 102/103/105/108:2003, Z-Werte 2009, Zeittarif-
Kategorien A-G, Teilleistungs-/Reduktionstabellen, TGA-Reduktionstabelle, Schwellenwerte fuer
Nebenkosten/Projektraum/Garantieschein. Direkt nutzbar fuer den Skill `honorarberechnung-sia102`
bei Stadt-ZH-Mandaten.

**§6 Nachhaltiges Bauen (eco-bau/KBOB).** Quelle `18-Nachhaltiges Bauen/` (18.1/18.3/18.6,
Kerndokumente). KBOB/eco-bau/IPB-Vertragsbedingungen (Planungs- und Werkleistungen, Juli 2008)
sind bei Stadt-ZH-Mandaten vertraglich verbindlich, nicht optional; Zielvereinbarungs-Checkliste
SIA 112/1 «Nachhaltiges Bauen — Hochbau»; 7-Meilenschritte-Programm (Stadtratsbeschluss
Nr. 1094, 17.9.2008).

**§7 CAD-Richtlinie AHB.** Quelle `13-CAD+Archivierung/13.2-CAD-Richtlinie/` (Kurzfassung +
Formate-Matrix). Technische Eckwerte + Planarchiv-Formate-Matrix je Gewerk; 17-seitige
Vollversion als Backlog zurueckgestellt.

**§8 Submissions-/Zahlungswesen AHB.** Quelle `11-Submissions+Zahlungswesen/11.1-Wegleitung+
Anleitung/` (8 Dateien geprueft). SR Stadt Zuerich 720.110 («Bedingungen fuer Arbeiten und
Lieferungen zu Hoch- und Tiefbauten der Stadtverwaltung», Stadtratsbeschluss 29.3.1978) +
Wegleitung ueber das Submissions- und Zahlungswesen (September 2006, Zuschlagskriterien,
Sicherheitsleistungs-Staffel, Finanzrapport-Pflicht). Zwei Dateien als **Duplikate** der bereits
destillierten kantonalen SubV ZH identifiziert (kein neuer Inhalt, [[recht-norm-submissionsverordnung-zh]]).

**Rest-Backlog (§9 im Artikel):** `12-Bauwerkdokumentation/`, `16-Ingenieurwesen/`, die
26 Einzelchecklisten unter `18-Nachhaltiges Bauen/18.2/18.4/18.5` + 51-seitiges ECO-BKP-
Kompendium, `14-Energie-und Gebaeudetechnik` TGA-Rest (GT_RL1-9), sowie die niedrigprioren
Buero-CI-/Vorlagen-Ordner `09-Projektdokumentation`/`10-Projektablauf`/`04-Grafikvorlagen`.

## Domaene 4 — Brandschutz (PL-03)

**Korrektur einer Fehlidentifikation aus Run 39.** Die dort unter §5ac als «BSR 14-15» erfasste
Datei war tatsaechlich BSR 13-15 «Baustoffe und Bauteile» (bereits in §4 dokumentiert). Die
echte BSR 14-15 «Verwendung von Baustoffen» liegt unter dem kryptischen Dateinamen
`BSPUB-1394520214-77.pdf` im selben Ordner — jetzt vollstaendig gelesen (Ziff. 1-7, S. 4-14,
plus Anhang-Stichprobe S. 15-20) und als **§5ad** in [[brandschutz-pl03-wegweiser]] eingearbeitet
(Geltungsbereich, cr-Abdeckungsstaerken, Hochhaus-RF1-Pflicht, WDVS-Brandriegel Ziff. 3.2.2,
Tabelle 3.2.8). Zwei **Healthcare-Funde**: Fussnote [6] zu Ziff. 4.2 (RF1-Pflicht fuer
Innenwaende/Decken/Stuetzen in Beherbergungsbetrieben [a], ohne die sonst moegliche RF2/RF3-
Erleichterung) und die Patientenzimmer-Ausnahme (Ziff. 4.1 Abs. 4).

**Doppel-Verifikation:** BSR 14-15 war zum Lesezeitpunkt bereits unabhaengig in der Normen-KB
destilliert (`wissen/normen/destillate/vkf-brl-verwendung-baustoffe.md`, seit 2026-07-12,
Status established). Der eigenstaendige Volltext-Read bestaetigt die dortige Destillation als
konsistent (keine Abweichung) — Status in `planungsgrundlagen` daher direkt auf **established**
gesetzt. Datenstand-Delta geflaggt statt selbst korrigiert: PL-03-Exemplar traegt Stempel
«01.01.2017/14-15de» (IOTH-Beschluss 22.09.2016), Normen-KB-Frontmatter fuehrt «01.01.2015» —
inhaltlich bleiben die Kernziffern laut Aenderungsliste (S. 2) gueltig, nur redaktionelle
Aenderungen.

**Restliche unkatalogisierte Titel im Ordner** (`Brandschutz-Praevention.pdf`,
`Merkblatt_012_d.pdf`, `gege-panikprogramm-1.pdf`, `Anerkennungsverfahren.pdf`) bereits in §1
als «niedrige Prioritaet/kein Handlungsbedarf» begruendet dokumentiert — kein weiterer Fund
noetig, Ordner `02 Brandschutzrichtlinien 2015-17-22/` damit vollstaendig abgearbeitet.

## Verifikations-Stufe

Beide Status-Hebungen auf `established` folgen der Verifikations-Pflicht (Rule
`auto-verbesserungen` 260712): Recht/Norm-Funde sind woertliche AHB-Originaldokumente ohne
konkurrierende Zweitquelle (established aufgrund direkter Primaerquelle); Brandschutz-Fund ist
gegen ein unabhaengig erstelltes Zweit-Destillat (Normen-KB) gegengeprueft — deckungsgleich,
keine Beanstandung.

## Naechste Schritte

- Recht/Norm: `12-Bauwerkdokumentation`, `16-Ingenieurwesen` als naechste AHB-Unterordner
  (Rotation Lauf 43 oder spaeter, je nach Prioritaet).
- Brandschutz: Ordner `02 Brandschutzrichtlinien 2015-17-22/` gilt als vollstaendig
  ausgewertet — naechster Schwerpunkt waere ein anderer PL-03-Unterordner (z.B. Arbeitshilfen/
  Erlaeuterungen ausserhalb der Richtlinien-Serie) oder das Datenstand-Delta BSR 14-15 als
  QUESTIONS-Eintrag an `wissen/normen` weiterreichen.
- Kartenportale/Energie: naechste Rotation gemaess Prioritaet in Run 42.
