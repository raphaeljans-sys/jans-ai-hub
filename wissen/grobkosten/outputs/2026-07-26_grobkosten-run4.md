# Lauf-Report: grobkosten Run 4 (26.07.2026)

Station: MacBook Pro (headless, VOLLGAS-Endlos-Runner). Kollisionscheck via `ps` durchgeführt —
keine zweite Instanz des Loops auf diesem Host aktiv.

## Ausgangslage

Run 3 (25.07.2026) hatte beide bekannten SharePoint-Quellen (`AR - 01 Projekte`,
`AR - 07 Archiv`) vollständig durchgeprüft, aber zwei Kandidaten mit GV+BKP-Material
(2202 Ackersteinstrasse 67, 2304 Reckholdern 20) als "nicht verwertbar" eingestuft, weil beide
Quelldokumente intern widersprüchliche Kostenstände enthielten. `wiki/QUESTIONS.md` schlug für
Run 4 vor, gezielt nach zusätzlichen Dokumenten (Schlussabrechnung, weitere Rechnungen) in
genau diesen beiden Projektordnern zu suchen, statt neue Projektordner zu erschliessen.

## Vorgehen

Direkt in der Hauptsession (nicht über Background-Subagenten) auf den lokal gemounteten
SharePoint-Bibliotheken recherchiert — Background-Subagenten stallen bei OneDrive-Pfaden
(bekannte Einschränkung dieser Station).

1. **2202 Ackersteinstrasse 67:** alle Rechnungen im Projektordner gesichtet
   (`04_KTV/08_Rechnungen/`, `10_Dokumente/04_Rechnungen/`). Zwei PDFs inhaltlich gelesen:
   `230517_Schlussrechnung_BEAS67_re30.pdf` (CHF 500.–, Abschluss einer früheren
   Honorarofferte vom 24.03.2022) und `re-00042.pdf` (07.09.2023, CHF 3'240.–,
   "Plangrundlagen für Abänderungseingabe"). Keine spätere Rechnung, keine
   Bauleitungs-/Baubuchhaltungsposition gefunden.
2. **2304 Reckholdern 20:** Ordnerstruktur nach Baubuchhaltung/TUV-Auszug durchsucht (leer),
   Zahlungskontrolle des SIA-Architekturvertrags gelesen (bestätigt laufendes Honorar bis
   Phase 32 Ende Dezember 2023, keine Kostenaussage), und das bisher nicht gelesene Dokument
   `09_Dokumente/Marktwertschaetzung/2304RE20_Marktwertanalyse_RJ.pdf` (20 Seiten, JANS-eigenes
   Arbeitspapier Stand 31.12.2023) vollständig gelesen.

## Befunde

**2304 Reckholdern 20 — erster verwertbarer Kennwert dieser KB.** Die Marktwertanalyse (Abschnitt
3, Seite 8) weist für das Bauprojekt explizit GF 541 m², HNF 300 m², **GV 1'986 m³** aus sowie
einen klassischen BKP-0–6-Kostenvoranschlag "Aktuelle Pläne" mit **Total CHF 3'446'500.– inkl.
MWSt** (BKP 0 und 6 beide null, also faktisch BKP 1–5). Dieser Betrag deckt sich exakt mit dem
in Run 3 unabhängig gefundenen KV Siworks. Das Dokument selbst rechnet drei Kennzahlen vor
(P/GF, P/HNF, P/GV) — alle drei wurden gegengeprüft und stimmen exakt (3'446'500 / 1'986 =
1'735.7 ≈ CHF 1'735.–/m³ GV, wie im Dokument angegeben). Damit ist der Run-3-Widerspruch
(älterer eBKP-H-Stand mit zwei sich widersprechenden Summen) als überholter Zwischenstand
eingeordnet. Neuer Kennwert-Einzelfall: **1'735 CHF/m³ GV, EFH Ersatzneubau, Standard
gehoben/Luxus (Pool/Erker/Dachreiter, Hanglage — laut Quelle selbst "Startbereich
Luxussegment"), Preisstand Dezember 2023, Kanton Schwyz.** Bleibt Kostenvoranschlag, keine
Ist-Kosten (Baubuchhaltungs-/TUV-Auszugsordner im Projekt sind leere Struktur-Schablonen).

**2202 Ackersteinstrasse 67 — Ursache geklärt, Fall geschlossen.** Die Rechnungshistorie zeigt,
dass das Mandat mit einer kleinen, objektbezogenen Einzelrechnung für
Abänderungseingabe-Plangrundlagen am 07.09.2023 endete — kein SIA-102-Phasenzahlungsplan wie bei
Reckholdern, keine Bauleitung, kein Unternehmerzuschlag danach. Das Projekt erreichte nie die
Ausführung. Das erklärt die vier widersprüchlichen GKS-Stände aus Run 3: es waren
Zwischenstände eines nie abgeschlossenen Entwurfsprozesses, kein Fehler in der Ablage. Eine
Bauabrechnung wird für dieses Projekt mit an Sicherheit grenzender Wahrscheinlichkeit nie
existieren.

## Register-Updates

- `raw/2304-reckholdern.md`, `raw/2202-ackersteinstrasse.md`: je ein "Run 4"-Abschnitt ergänzt.
- `wiki/kennwerte.md`: neuer Run-4-Abschnitt mit dem verwertbaren Einzelfall, Frontmatter
  (`last_updated`) und Provenienz-Abschnitt aktualisiert.
- `wiki/QUESTIONS.md`: Run-3-Fragen als beantwortet dokumentiert; eine neue, unkritische Frage
  aufgenommen (eigene Standardstufe "gehoben/Luxus" bei künftigem n=2 erwägen).
- `wiki/INDEX.md`, `training/quellen-inventar.md`: Stand nachgeführt.
- `CHANGELOG.md`: Run-4-Eintrag oben angefügt.

## Empfehlung für Run 5

Beide bekannten SharePoint-Quellen (`AR - 01 Projekte`, `AR - 07 Archiv`) sind jetzt nicht nur
vollständig, sondern auch vertieft geprüft — kein offener Klärungsbedarf zu bestehenden
Kandidaten mehr. Ein Run 5 sollte entweder eine neue Quelle identifizieren (z.B. weitere
SharePoint-Bibliotheken, falls vorhanden) oder auf einen Ereignis-Trigger warten (neuer
Kostenstand aus laufenden Mandaten via Skill `kostenkontrolle`), statt dieselben Projektordner
erneut zu durchsuchen.
