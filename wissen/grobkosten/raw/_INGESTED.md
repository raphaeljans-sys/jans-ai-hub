# RAW — Quellen-Register (was liegt vor, wie weit eingearbeitet?)

Legende Status: `offen` (noch nicht gelesen) · `teilweise` (angelesen/quergelesen) ·
`eingearbeitet` (in Wiki-Artikel verdichtet).

**Stand 2026-07-25 (Run 2):** Erster realer Ingest aus SharePoint `AR - 01 Projekte`. Alle drei
Fälle sind als "Einzelfall n=1" bzw. "nicht verwertbar" eingearbeitet — keine Promotion auf
"belegt (n=…)" ausgelöst, da Provenienzkette (SIA-416-GV, BKP-Gliederung, Nutzung) in jedem
Fall lückenhaft ist. Die Seed-Werte in `wiki/kennwerte.md` bleiben Status "Seed, Wüest-
kalibriert".

| Datei | Status | Bemerkung |
|---|---|---|
| README.md | eingearbeitet | Scope-/Nutzungshinweis für `raw/`, kein Kennwert-Rohmaterial |
| 2414-thalwil.md | eingearbeitet | Volles BKP-1-6-Bild (526'300 CHF, kein GV) + 2 Teilvolumen-Kennwerte als Einzelfall n=1 in `kennwerte.md` |
| 2515-wartstrasse.md | eingearbeitet | Kein GV, nicht verwertbar für CHF/m³-Kennwerte; in `kennwerte.md` als geprüft/verworfen vermerkt |
| 2518-grubenackerstrasse.md | eingearbeitet | 950-1'050 CHF/m³ auf unverifiziertem Volumen, Einzelfall n=1 unverifiziert in `kennwerte.md` |
| 2202-ackersteinstrasse.md | eingearbeitet | Run 3: vier widersprüchliche Kostenstände (613-850 m³, CHF 480k-1.22 Mio), nicht mal als Einzelfall in `kennwerte.md` geführt. Run 4: Ursache geklärt (Mandat endete vor Ausführung, letzte Rechnung 09/2023) — Fall geschlossen, weiterhin nicht verwertbar |
| 2304-reckholdern.md | eingearbeitet | Run 3: GV 1'715 m³ + BKP-Gliederung vorhanden, aber Dokument intern widersprüchlich (CHF 2.96 Mio vs. 1.8 Mio im selben Dokument), nicht in `kennwerte.md` geführt. Run 4: späteres Dokument (Marktwertanalyse 31.12.2023) löst Widerspruch auf — GV 1'986 m³ + BKP 1-5 CHF 3'446'500 = 1'735 CHF/m³, erster verwertbarer Einzelfall n=1 in `kennwerte.md` |
| kennwerte-jans-referenzdokument.md | eingearbeitet | Run 5: neue Quelle SharePoint `IMMO - 06 Kennwerte` (JANS-eigenes Referenzblatt, nicht projektgebunden). Liefert m²-GF-Benchmark (4'485 CHF/m² GF BKP1-5, Wohnen Individuell EFH/ZFH) — als eigenständige Parallel-Sektion in `kennwerte.md` geführt, nicht in m³-GV-Tabelle konvertiert |
| 8155-niederhasli-seestrasse64.md | eingearbeitet | Run 6: explizite BKP-1-5-Einzelgliederung + explizites SIA-416-GV im selben Dokument (stärkster bisheriger Beleg). 1'032 CHF/m³ GV, MFH Eigentum, Einzelfall n=1 in `kennwerte.md` |
| 2001-haus-deuber-thalwil.md | eingearbeitet | Run 6: eBKP-H-Grobkostenberechnung, GV 2'725 m³, Anlagekosten B-Z 1'086 CHF/m³ (näherungsweise BKP-1-5-äquivalent), Einzelfall n=1 in `kennwerte.md`; enthält auch ein fremdes Referenzobjekt (Triplexhaus, nicht JANS, nicht gezählt) |
| 2411-wald-haselstudstrasse.md | eingearbeitet | Run 6: GV 5'921 m³ explizit, zwei Nutzungsvarianten, aber Kostentotal uneinheitlich als "BKP 1-9" bezeichnet (Vorbehalt zu BKP9-Anteil) — dokumentiert, bewusst NICHT in `kennwerte.md` promoviert |
| 2412-ebmatingen-grossacher.md | eingearbeitet | Run 6 (Addendum): zweites Dokument (Residualwert-Tool) zum selben Projekt geprüft, aber GV auch hier nicht explizit ausgewiesen — weiterhin kein CHF/m³-Kennwert für dieses Projekt |
| 2305-waedenswil-precheck.md | eingearbeitet | Run 7: Pre-Check-Tool GV oi 11'724.48 m³, Baukosten-Feld intern widersprüchlich beschriftet («BKP 2→BKP1-5»-Faktor vs. «Total BKP 1-9»-Output) — vertieft QUESTIONS-Frage 1, bewusst NICHT in `kennwerte.md` promoviert |
| 2620-albertstrasse.md | eingearbeitet | Run 4 extrahiert, aber nie registriert (Lücke). Run 8 nachgetragen: Dachausbau-Variante 350 m³/2'500 CHF/m³ als erster realer Umbau-Einzelfall in `kennwerte.md` (Abschnitt "Umbau/Sanierung"); KV Direktvermietung light (CHF 386'021) ohne Bezugsgrösse, nicht in Tabelle übernommen |
| zuercher-index-wohnbaukosten-1939-2025.md | eingearbeitet | Run 8: kein Projekt-Einzelfall, sondern verketteter Baupreisindex (HEV Kt. Schwyz, Fortführung des in `IMMO - 03 KNOW-HOW` bei 2004 abbrechenden Zürcher Index der Wohnbaukosten bis 01.04.2025). Löst die Stufe-4-Frage aus Run 6 — fertige Umrechnungsfaktoren in `kennwerte.md` (Abschnitt "Baupreisindex ZH") |
| 2105-steinkogler-davos.md | eingearbeitet | Run 10: Haus «Le Mélèze» Davos, in sich konsistente Grobkostenschätzung, aber Eingriffstiefen-Bandbreiten (S/M/L/XL) statt GV x Kennwert — kein m³/GV-Bezug im Dokument, nicht in `kennwerte.md` promoviert. Nebenbefund: dritte Bestätigung des Musters "Fliesstext-Vergleichswert weicht vom tatsächlich gerechneten Wert ab" (2'000.- vs. 2'600.- CHF/m² GF) |
