# CHANGELOG — KB koordination (Wissens-Chef)

Jede Aktion der Koordinationsinstanz, datiert, neueste zuoberst.
Im Zweifel, was geaendert wurde: dieses CHANGELOG ist die Wahrheit.

## 2026-07-15 — SYN-02 Spec-Interview vorbereitet (Task `syn02-spec-anstoss`)
- Spec-Schritt 1 (Ziel aufdecken) fuer den typologischen KI-Entwurfsprozess vorbereitet:
  Interview-Entwurf mit 9 Schluesselfragen (E1–E9, je mit recherchierter Faktenlage +
  Default-Vorschlag) unter `wissen/spec/outputs/2026-07-15_syn-02-typologischer-
  entwurfsprozess-spec-interview/`.
- Zentraler Befund des Scans: `volumen_generator.py` liest die Parameter-Set-JSONs NICHT
  (nur CLI-Flags geschosse/hoehe/grenzabstand) und baut einen einfachen Quader — genau die
  SYN-02-Luecke; Spannung zu Rule 260627b (gegliederter, ausgerichteter Koerper). Schulbau
  hat die DNA-Prio, aber noch kein Parameter-Set (nur Healthcare/Wohnen v1.0).
- Kurze Info-Mail an rj@ gesendet (Start des Interviews auf Zuruf «Spec SYN-02 starten»).
  KEIN Interview gefuehrt, KEIN Bau begonnen — nur Vorbereitung.

## 2026-07-15 — Entscheide Raphael zu Lauf 01 umgesetzt (Klick-Freigaben)
- **S5 Wettbewerbs-Fabrik** + **S6 Energie-Vorabklaerung** in `services/KATALOG.md`
  aktiviert (SYN-03/SYN-07 → Status «umgesetzt»).
- **SYN-02** freigegeben: Spec-Start nach Limit-Reset; One-Time-Task `syn02-spec-anstoss`
  (20.07.2026 12:15) bereitet das Spec-Interview vor (nur Vorbereitung, Interview
  interaktiv). Pendenz im Fristen-Register vermerkt.
- Scheduled Task `synergie-lauf-monatlich` angelegt (1. des Monats 04:40, Nachtfenster,
  Erstlauf 01.08.2026 — nach dem Reset, drossel-konform).

## 2026-07-15 — Synergie-Orchestrator eingerichtet + Synergie-Lauf 01 (Auftrag Raphael)
- Neuer Skill `skills/synergie-orchestrator/SKILL.md` angelegt (Struktur-Aufsicht: prueft
  alle Harnesse gegenseitig auf Synergien, 6 Pruef-Fragen, Geschaeftsmodell-Ableitung);
  in CLAUDE.md registriert. Abgrenzung zu hub-chef/wissens-chef/harness-review im Contract.
- Neues Register `SYNERGIE-REGISTER.md` in dieser KB: 12 Erstbefunde SYN-01…SYN-12
  (u.a. Kennwerte-Doppelrechnung, Entwurfs-DNA→Volumen-Pipeline-Luecke, 4 Service-
  Kandidaten als Katalog-ENTWUERFE). Laufbericht `outputs/2026-07-15_synergie-lauf-01.md`.
- Geschaeftsmodell-Konzept GM1–GM6 erstellt:
  `docs/konzepte/260715-Geschaeftsmodell-KI-Architekturbuero/` (MD+DOCX+PDF, korrektur-geprueft).
- Gedrosselter Inline-Lauf (Rule 260714, kein Fan-out); KEIN neuer Scheduled Task angelegt.

## 2026-07-14 — Run 4 (3 Paare am neuen Run-48/69-Stoff; gedrosselter Lauf gemaess Rule 260714)
- Fan-out ueber 3 ueberschneidungsgefaehrdete Paare mit dem seit Run 3 neu gewachsenen Stoff
  (planungsgrundlagen Run 48 «Normkonzept BSV 2026»; energie Run 69 «SIA 2024 Gesundheitsbau /
  Fernwaerme / PV / Netto-Null»).
- **normen ↔ energie:** 2 Ausgaben-Divergenzen bestaetigt (SIA 2024: normen 2006 vs. energie 2021;
  SIA 382/1: normen 2014 vs. energie 2025) — energie ist aktuell, normen (fuehrend) ueberholt.
  WebSearch-verifiziert am SIA-Shop. → 2 Flags im normen-REGISTER + 3 Querbezug-Bloecke in energie.
  Offen: 2 Re-Destillate (Bring-Schuld normen).
- **normen ↔ planungsgrundlagen:** 0 Sachwiderspruch; §1a Normkonzept BSV 2026 fuehrt VKF-Primaerstoff
  in der falschen KB (normen fuehrend, aber ohne Destillat). → Fuehrungs-Pointer gesetzt. Offen (heikel):
  normen destilliert, dann §1a-Trim.
- **energie ↔ grobkosten/immo:** Metrik-Ebenen sauber getrennt, 0 Widerspruch. → bidirektionale
  «nicht additiv»-Querbezuege (Doppelzaehlungs-Guard) gesetzt. Bereinigt.
- Alle Editions-Befunde adversarial/extern verifiziert. **Offene Entscheide fuer Raphael: keine** —
  nur 3 Loop-Bring-Schulden (2 Re-Destillate normen + 1 §1a-Trim nach Destillat). Bericht:
  outputs/2026-07-14_wissens-chef-run4.md.

## 2026-07-12 — Run 2 (Nachverifikation W3 + Paar auflagebereinigung↔baurecht) + E1 entschieden
- E1 (m²↔m³-Faktor) entschieden: kontextabhaengig, Regelgeschoss 0.70 / Gesamtgebaeude 0.60-0.61 (kanonisch fuer die Kostenbruecke), in grobkosten + immobilienbewertung verankert.
- W3 (Baupreisindex-Stand) adversarial WIDERLEGT: grobkosten-Seed legitim; Teuerungs-Check-Verlinkung gesetzt.
- Neues Paar auflagebereinigung↔baurecht: konsistent, 1 Widerspruch (Baubeginn) WIDERLEGT/praezisiert, 4 Backlinks gesetzt.
- Keine offenen Entscheide mehr aus Run 1/2. Bericht: outputs/2026-07-12_wissens-chef-run2.md.

## 2026-07-12 — Run 1 (Erstlauf, Register angelegt)
- KB `koordination` angelegt (CLAUDE.md, QUERBEZUEGE.md, CHANGELOG.md, outputs/).
- Erster Workflow-Fan-out ueber die 5 ueberschneidungsgefaehrdeten KB-Paare
  (baurecht↔planungsgrundlagen, normen↔baurecht, energie↔planungsgrundlagen,
  grobkosten↔immobilienbewertung↔kostenschaetzung-Ref, rotierend twin↔spec).
- Befunde + Aktionen: siehe `outputs/2026-07-12_wissens-chef-run1.md`.
