# Training Run 20 — KB Planungsgrundlagen · 2026-07-13

**Schwerpunkt-Domaenen (Token-Vollgas, 2 Domaenen):** Kartenportale (PL-01) + Energie (PL-04).
Rotation/Prioritaet gemaess Run-19-Empfehlung: Kartenportale (Prioritaet, konkrete Restpunkte aus
Run 19) plus Energie (naechste laut Rotation Kartenportale → Energie → Recht/Norm → Brandschutz).
**Connector-Schritt: ja** (beide Connectoren geaendert und live getestet — kein Mock).

## Ausgangslage / erkannte Luecken

- **Kartenportale:** Run 19 hinterliess drei kleine Restpunkte: (1) der CLI-Log zeigt bei
  laufenden Baulinien-Revisionen nur die Trefferzahl, nicht den Abstand; (2) K9/GWR hatte die
  Wohnungs-/EWID-Ebene offen gelassen («liefert der Connector noch nicht»); (3) K6/A5
  ObjektwesenZH stand seit 2026-06-24 auf einer moeglicherweise zu strengen Annahme
  (Interessennachweis Art. 970 ZGB).
- **Energie:** D6 (EVEN-Bedienung) fehlte weiterhin der reale JANS-Praxisfall; D5 (PV-System-
  CHF/kWp) und D1/D8 (MuKEn-2025-ZH-Ueberfuehrung) sind wiederkehrende Beobachtungspunkte ohne
  neuen Stand seit 04.07.2026.

## Bearbeitete Fragen (Run 20)

**Kartenportale:**
1. Liefert der identify-Call fuer ein Gebaeude bereits Wohnungs-/EWID-Daten mit, oder braucht es
   einen separaten Endpunkt? → **Ja, bereits enthalten** — live am Layer
   `ch.bfs.gebaeude_wohnungs_register` verifiziert: die Attribute `ewid/warea/wazim/wbauj/wkche/
   wmehrg/wstat/wstwk/wbez/whgnr/weinr` kommen als parallele Arrays im selben Treffer. Getestet an
   KISPI (0 Wohnungen), Giebelweg 12 (1 Wohnung, Maisonette), Albertstrasse 7 Zuerich EGID 150071
   (26 Wohnungen, Array-Laenge exakt konsistent mit `ganzwhg`).
2. Wie sind WSTAT (Wohnungsstatus) und WSTWK (Stockwerk) codiert? → Aus dem offiziellen
   Merkmalskatalog GWR v4.2 (housing-stat.ch, S. 91-94) belegt: WSTAT 3001-3008 (projektiert …
   nicht realisiert), WSTWK 3100 Parterre / 3101-3199 = 1.-99. Stock / 3401-3419 = 1.-19. UG.
3. Zeigt der Connector bei einer laufenden Baulinien-Revision (proj-Layer) auch den Abstand zur
   Parzelle, oder nur die Trefferzahl? → **Nur Trefferzahl** (Luecke aus Run 19 bestaetigt) — jetzt
   behoben, live an Kloten (Hardackerstrasse 2) regressionsgetestet: `⚠ LAUFENDE REVISION … 4
   baulinie (naechste 0 m)`.
4. Ist die ObjektwesenZH-Eigentumsabfrage wirklich an einen Interessennachweis (Art. 970 ZGB)
   gebunden, wie am 2026-06-24 dokumentiert? → **Nein, Korrektur noetig** — die elektronische
   Eigentumsabfrage ueber maps.zh.ch («Eigentumsauskunft») ist login-frei mit SMS-Code-
   Verifikation, explizit OHNE Interessennachweis, 5 Abfragen/Tag/Mobilnummer (Quellen:
   notariate-zh.ch, tagesanzeiger.ch 29.08.2023).

**Energie:**
5. Was zeigt der reale KISPI-EVEN-Fall, das die generische EnDK-Schulung nicht abdeckt? →
   Verwechslungsgefahr Nachweisverfassung (Fachplaner fuellt aus) vs. Private Kontrolle
   (unabhaengige Bestaetigung durch **Kl-befugte** Person); das beauftragte HLK-Buero (Gruner AG)
   hatte in der offiziellen ZH-Befugnisliste nur Wä+Lä, keine Kl-Befugnis — Fall haengt seit
   19.06.2026, Stand 13.07.2026 weiterhin nicht abgeschlossen.
6. Hat sich der MuKEn-2025-ZH-Ueberfuehrungsstand seit dem letzten Check (04.07.2026) geaendert?
   → Nein, Web-Refresh (energiehub-gebaeude.ch, hev-zh.ch, energie-zentralschweiz.ch) bestaetigt
   unveraendert: Umsetzungshorizont bis 2030, ZH-Fassung weiterhin nicht publiziert.
7. Gibt es im JANS-Projektarchiv inzwischen eine abgerechnete PV-Anlage fuer den D5-Rest
   (installierter System-CHF/kWp)? → Archivsuche (AR - 02/03, PL - 04 Energie) ergab **keine**
   Schlussabrechnung — nur Referenz-/Planungsunterlagen (Workshop-PDFs, Kennwerttools). D5-Rest
   bleibt offen, nicht mit unbelegten Zahlen gefuellt.

## Was geaendert wurde

- **`gwr-bund.mjs`:** `CODES.wstat` + `decStockwerk()` (WSTWK-Decoder) neu; Funktion `wohnungen(at)`
  baut aus den parallelen Roh-Arrays ein `wohnungen[]`-Array je Wohnung (EWID, Nummern, Stockwerk,
  Lage, Status, Flaeche, Zimmer, Baujahr, Kocheinrichtung, Maisonette-Flag); in `shape()` und im
  `steckbrief()`-Text (neuer Abschnitt «Wohnungen») verdrahtet. Getestet: KISPI (leer, korrekt),
  Giebelweg 12 (1 Eintrag), Albertstrasse 7 (26 Eintraege, alle Felder plausibel).
- **`geo-zh.mjs`:** CLI-Log bei `⚠ LAUFENDE REVISION` zeigt neu je proj-Kategorie den naechsten
  `dist_m` (vorher nur die Anzahl). Live-Regression: Kloten (neuer Wert korrekt), Langnau/Seuzach
  (unveraendert gruen, keine Revision — kein Regress).
- **[[kartenportale-gwr-bund]]:** NEU §6 «Wohnungs-/EWID-Ebene» (Feldtabelle, drei Benchmarks,
  Praxisnutzen); §7 umnummeriert; Offene-Punkte-Eintrag geschlossen; Frontmatter/Quellen erweitert.
- **[[kartenportale-geoportale-uebersicht]]:** A5-Eintrag korrigiert (SMS-Code statt
  Interessennachweis, mit Quellenbeleg), Portal-Tabellenzeile praezisiert, Frontmatter aktualisiert.
- **[[kartenportale-baulinien-abstandslinien-zh]]:** kein Artikel-Edit noetig (Connector-Fix
  betrifft nur die CLI-Ausgabe, nicht die dokumentierte Feld-Semantik — `dist_m` je proj-Treffer
  war bereits im JSON vorhanden, siehe Run 19).
- **[[energie-even-plattform-bedienung]]:** NEU §9 «Realer Fall 2619-KISPI» (drei konkrete
  Lehrsaetze: Rollen-Verwechslung, Befugnis-vor-Buero-Pruefpflicht, Einladungsmechanik); Datenstand-
  Sektion + Frontmatter/Quellen aktualisiert.
- **[[energie-energienachweis-zh-formulare]]:** MuKEn-2025-Refresh-Vermerk (unveraendert) +
  D5-Rest-Vermerk (Archivsuche ohne Treffer) ergaenzt; Frontmatter/Quellen aktualisiert.
- **Register:** curriculum (K9/K6 [x] mit Refresh-Vermerken, E10/E5 Refresh-Vermerke), QUESTIONS
  (A-Sektion K9/A5 aktualisiert, D-Sektion D6/D5 Refresh-Vermerke), INDEX (zwei Artikel-Zeilen
  praezisiert), raw/_INGESTED (6 neue Zeilen), CHANGELOG.

## Verifikation

- **GWR-Wohnungsdaten:** Live gegen den echten Geodienst getestet (kein Mock), drei Benchmarks mit
  unterschiedlicher Kardinalitaet (0/1/26 Wohnungen); WSTAT/WSTWK-Codes direkt aus dem
  offiziellen Merkmalskatalog-PDF (housing-stat.ch) per `pdftotext` extrahiert und zitiert, nicht
  aus Sekundaerquellen.
- **proj-dist_m-Fix:** Live-Regression an drei Bestands-Benchmarks (Kloten neu, Langnau + Seuzach
  unveraendert) — kein Regress.
- **ObjektwesenZH-Korrektur:** zwei unabhaengige Quellen (Berufsverband notariate-zh.ch +
  Tagesanzeiger-Artikel), beide decken sich in SMS-Verfahren/5-Abfragen-Limit/kein
  Interessennachweis — Korrektur wird als `established` eingestuft (Automatisierbarkeit bleibt
  `speculative`, da keine API).
- **KISPI-EVEN-Praxisfall:** direkt aus Buero-eigener Projektablage + Memory entnommen (kein
  Fremdmaterial, keine Annahme); Status ehrlich als «nicht abgeschlossen» ausgewiesen, nicht
  schoengefaerbt.
- **MuKEn-2025-Refresh + D5-Archivsuche:** beide als Negativ-Befund dokumentiert (kein neuer
  Stand / keine Schlussabrechnung gefunden) statt stillschweigend uebersprungen.

## Naechster Lauf (Run 21)

Rotation → **Recht/Norm** (naechste laut Rotation) oder **Kartenportale** (Prioritaet bleibt hoch,
aber die drei dokumentierten Restpunkte sind jetzt geloest — naechste Kartenportale-Runde braucht
neue Kandidaten, z. B. `COUNT=10`-Kappung bei linienreichen Parzellen aus K5, oder GKLAS/GSTAT-
Katalog-v5.0-Abgleich sobald ein textbasierter Zugang zu gwr.admin.ch/catalog gefunden ist).
Energie-Kandidaten: D5 bleibt offen bis ein reales PV-Projekt abgerechnet ist (kein Zwang, mit
naechster Gelegenheit pruefen); KISPI-EVEN-Fall bei naechstem Statuswechsel nachziehen (§9
Freigabe-/Abschluss-Screenshot). Recht/Norm-Kandidaten: RPG-2-ZH-Umsetzung (B2) bei Publikation
nachziehen, SZ-Wald-Ausnahme-Minima (sz.ch-Richtlinie) noch offen. Brandschutz-Rest (C6/B5 BSV
2026) bleibt blockiert bis 08/2026 — nicht vor Ablauf erneut pruefen.
