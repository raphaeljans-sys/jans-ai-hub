# Ausschreibungs-Workflow (11 Phasen je Gewerk)

Die erprobte JANS-Pipeline, abgeleitet aus der Ordnerstruktur
`0000_Bauleitungsordner`. Jeder Schritt ist ein Pipeline-Stadium; mehrere
Gewerke laufen parallel (Fan-out ueber die Gewerksliste).

| # | Phase | Inhalt | Output |
|---|---|---|---|
| 01 | **Grundlagen** | Pläne, Baubeschrieb, Bestand, Devitext sammeln | Grundlagen-Ordner |
| 02 | **Richtofferten** | Marktpreis/Richtofferte zur Plausibilisierung einholen | Richtpreis-Basis |
| 03 | **AS Versand** | LV + Anschreiben + Antwortformular an Anbieter; Abgebot-Versand | Versand-Dossier |
| 04 | **Offerte UN** | Eingehende Offerten je Anbieter (UN xy) ablegen | Offerten je UN |
| 05 | **Vergabe** | Offertvergleich, Unternehmergespräch (`UNGespr.docx`), Vergabeantrag | Vergabeempfehlung |
| 06 | **Werkvertrag** | WV erstellen inkl. Beilagen | Werkvertrag |
| 08 | **Korrespondenz** | Laufender Schriftverkehr (Aus/Ein), Lieferscheine | Korrespondenz-Archiv |
| 10 | **Rechnungen, NT, Regie** | Akontorechnungen, Nachträge, Regiearbeiten prüfen | geprüfte Rechnungen |
| 11 | **Schlussrechnung** | SR-Prüfung, Abnahmeprotokoll, Garantieschein | Abschluss-Dossier |

## Mapping auf Skills

- **01–05** → Skill `ausschreibung` (dieser Skill), mit `offertenpruefung` für die Auswertung in Phase 05
- **06** → Werkvertrag (neu)
- **08** → Agent `email` (JANS-Stil)
- **10–11** → Skill `unternehmerkontrolle` (neu): Ausmass, Nachtrag, Regie, SR, Abnahme, Garantie

## Versand-Checkliste (aus `142_Wittikon/Vertragsversand-Arbeitsanweisung`)

Verbindliche Reihenfolge beim physischen/digitalen Versand eines Devis:

1. **Kein Fremdblatt** — nur projekteigene Unterlagen, keine fremden Beilagen
2. **Reihenfolge richtig** — Begleitbrief → Titelblatt → Bedingungen → LV → Pläne
3. **Zeitplan am Schluss** — Terminplan als letzte Beilage
4. **Begleitschreiben** — Anschreiben mit Eingabefrist und «Gleichwertig»-Klausel
5. **Deckblatt Lieferschein** — Lieferschein/Übermittlung als Deckblatt
6. **Terminsendung** — fristgerecht, Eingabedatum eindeutig
7. **Gewicht/Frankierung** — bei Postversand Gewicht und Porto prüfen

## Grundregeln (aus JANS-Praxis)

- Alle Anbieter erhalten **exakt dieselben** Unterlagen, Frist und Antwortvorgaben.
- **3–6 Anbieter** pro Submission.
- Eingabefrist: 2 Wochen sportlich · 3 Wochen marktüblich · 4 Wochen grosszügig.
- «Gleichwertige Produkte zugelassen, sofern technische Spezifikationen vollumfänglich erfüllt» — bei öffentlichen Bauherren juristisch wichtig (IVöB/BöB).
- Bauseitige Leistungen (Sanitär, Elektro, HLK, Baumeister) klar im Anschreiben ausweisen.
