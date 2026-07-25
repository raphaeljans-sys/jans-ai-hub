# Wissens-Health-Check: energie — 2026-07-21

Phase-1-Audit (unbeaufsichtigt, Mac-Mini-Nachtschicht, Skill `wissenscheck`). Nur Befund +
Ablage, keine Fixes. Umfang: 24 Wiki-Dateien (21 Themenartikel + BAUHERREN-FAQ mit 101
Kernfragen F1–F101 + INDEX + QUESTIONS), 133 Destillate, `raw/_INGESTED.md`, CHANGELOG (60
neue Runs seit dem letzten Check am 2026-07-01, Run 24–82). Vergleichsbasis: Health-Check
`outputs/2026-07-01_health-check.md`.

## Zusammenfassung

| Audit | Thema | Findings | Ampel |
|---|---|---|---|
| A | Widersprueche zwischen Artikeln | 0 (KB korrigiert sich selbst gut) | gruen |
| B | Kaputte Backlinks / Orphans / Register-Integritaet | 4 (0 tote `[[Links]]`, aber 4 strukturelle Register-Befunde) | rot |
| C | Unbelegte Claims | 0 | gruen |
| D | RAW-Coverage | 0 (Deckung vollstaendig; Detail siehe B) | gruen |
| E | Veraltete Artikel (neuere Quelle nicht nachgefuehrt) | 2 | gelb |
| F | Schreibregel-Verstoesse | 4 (davon 1 schwerwiegend, KB-weit) | rot |
| G | Promotion-Kandidaten | 3 (2 davon seit dem letzten Check unveraendert offen) | gelb |

**Gesamtbild:** Die KB ist inhaltlich weiterhin sehr stark (0 kaputte Links unter 154 geprueften
Zielen, 0 unbelegte Zahlen in der Stichprobe, aktive Selbstkorrektur-Kultur mit mehreren
dokumentierten «adversarial korrigiert»-Faellen). Das schnelle Wachstum (23 → 82 Runs, 50 → 133
Destillate) hat aber genau dort Spuren hinterlassen, wo der Check vom 01.07. bereits erste,
kleine Symptome sah: die **Bibliothekar-Verwaltungsschicht** (INDEX-Register, Frontmatter-
Formate, Umlaut-Konvention) waechst schneller, als sie gepflegt wird. Die beiden am 01.07.
empfohlenen Kleinaktionen (Promotion zweier Artikel) sind in 20 Tagen und 59 weiteren Runs
**nicht** umgesetzt worden — ein Hinweis, dass Phase-2-Empfehlungen aus Health-Checks aktuell
nirgends nachverfolgt werden.

## Top-3 (Raphaels Aufmerksamkeit)

1. **Umlaut-Konvention KB-weit verletzt — auch im Kernprodukt BAUHERREN-FAQ.** Acht Wiki-Artikel
   (u.a. `u-werte-grenzwerte-ch`, `foerderung-energie-zh`, `graue-energie`,
   `heizleistung-und-waermeerzeuger`, `minergie-standards`, `pv-eigenverbrauch-zev`,
   `sommerlicher-waermeschutz`, `regenwasserbewirtschaftung-versickerung-zh`) sind **zu 100 %**
   in ae/oe/ue statt ä/ö/ü geschrieben (0 echte Umlaute bei 41–135 Ersatzschreibungen je Datei).
   Die BAUHERREN-FAQ selbst (**established**, das erklaerte Kernprodukt der KB) ist im
   Fliesstext zu rund 40 % in ae/oe/ue geschrieben (1'698 Ersatzschreibungen vs. 2'526 echte
   Umlaute). Das verstoesst gegen `rules/umlaute-konvention.md`, die **ausdruecklich Vorrang**
   vor jeder anderslautenden Konvention hat. Der Check vom 01.07. hatte hier nur die Artikel-
   **Titel** stichprobenartig geprueft («Daempfstoffe», «Foerderung», «Zuerich» — dort korrekt)
   und den systematischen Fliesstext-Befund verpasst.
2. **Register-Integritaet degradiert sichtbar mit dem Wachstum.** `destillate/INDEX.md` fuehrt
   **166 Tabellenzeilen fuer nur 131 verschiedene Destillate** — 35 Dubletten-Zeilen (der
   01.07.-Check fand genau **eine** solche Dublette; sie ist inzwischen bereinigt, aber 19 neue
   sind seither entstanden, in einem Fall 7 Zeilen fuer dasselbe Destillat
   `muken-2025-verabschiedet`). Zusaetzlich fehlen 2 existierende Destillate komplett im
   Register. Parallel dazu listet `wiki/INDEX.md` unter «Themen-Artikel» **46 Eintraege fuer nur
   21 echte Wiki-Dateien** — 25 Eintraege zeigen auf reine Destillat-Inhalte, die nie zu einem
   eigenen Wiki-Artikel wurden. Die INDEX-Beschreibung der BAUHERREN-FAQ ist zudem zu einem
   einzigen, mehrere tausend Woerter langen Fliesstext-Absatz angewachsen (jeder Run haengt an,
   nichts wird verdichtet) — das INDEX erfuellt seine Funktion als schnelles Inhaltsverzeichnis
   nicht mehr.
3. **Die beiden Promotion-Empfehlungen vom 01.07. wurden nie umgesetzt.**
   `regenwasserbewirtschaftung-versickerung-zh` und `sommerlicher-waermeschutz` stehen unveraendert
   seit dem letzten Check auf `emerging`, obwohl der damalige Report die Promotion zu
   `established` empfahl und seither noch mehr Belege dazugekommen sind (bei
   `sommerlicher-waermeschutz` zwei weitere Destillate). Phase-2-Empfehlungen aus Health-Checks
   scheinen aktuell folgenlos zu bleiben, wenn niemand sie aktiv abarbeitet.

## Details je Audit

### A — Widersprueche zwischen Artikeln

Keine offenen Widersprueche gefunden. Die KB zeigt eine reife Selbstkorrektur-Kultur: mehrere
dokumentierte Faelle, in denen ein spaeterer Run eine fruehere Aussage «adversarial korrigiert»
hat (z.B. F101 «Meldeverfahren nur fuer WP mit Kuehlmoeglichkeit» als unbelegte
Sekundaerquellen-Uebernahme widerlegt und in `[[bvv-zh-meldeverfahren-klimaanlagen-waermepumpen]]`
richtiggestellt; F47 MuKEn-2025-Unzumutbarkeitsschwelle und PV-Pflicht-Kappung korrigiert).

Eine Randbeobachtung ohne akuten Widerspruch: `foerderung-energie-zh.md` (Stand 28.06.) sagt
pauschal «befristet bis Ende 2026», waehrend `destillate/INDEX.md` (Run 82, 20.07.) bereits einen
konkreteren Stand kennt (KRNr 6064, Rahmenkredit 2026–2029, Schlussabstimmung Plenum offen) — kein
Widerspruch, aber ein Aktualitaets-Gap, siehe Audit E.

### B — Kaputte Backlinks, Orphans, Register-Integritaet

- **`[[Backlinks]]`:** 154 eindeutige Linkziele extrahiert (vs. 61 am 01.07.) — **alle**
  aufloesbar gegen einen Wiki- oder Destillat-Dateinamen. **0 kaputte Links.** Alle 21
  Themenartikel sind im INDEX gelistet. Kein Wiki-Artikel ist ein Orphan (jeder wird von
  mindestens 2, meist 4–11 anderen Artikeln verlinkt).
- **Finding B1 — `destillate/INDEX.md`-Dubletten (schwer, gewachsen):** 166 Tabellenzeilen fuer
  131 Destillate. 19 Destillate haben je 2–7 Zeilen (Extremfall `muken-2025-verabschiedet` 7×,
  `e-mobilitaet-ladeinfrastruktur-gebaeude-ch` / `fernwaerme-anschlusskosten-zh` /
  `grundwasserwaermenutzung-bewilligung-zh-sz` je 4×). Ursache: der Loop haengt bei jedem Update
  eines Destillats eine neue Zeile an, statt die bestehende Zeile zu ergaenzen — genau das Muster,
  das der 01.07.-Check bereits bei einem Einzelfall (`pv-einmalverguetung-bund-bfe`, inzwischen
  bereinigt) beschrieben hatte. → **Vorschlag (Phase 2):** je Destillat auf eine Zeile
  konsolidieren (neueste Erkenntnis in die bestehende Zeile einarbeiten statt neue Zeile), danach
  Zeilenzahl in CHANGELOG/Registern auf 131 korrigieren.
- **Finding B2 — 2 Destillate fehlen komplett im Register:**
  `bfe-waermebrueckenkatalog-innendaemmsysteme-bfh-2013` (wird in `wiki/innendaemmung.md` als
  Quelle zitiert, existiert und ist inhaltlich verwendet) und
  `sia-2024-nutzungsrandbedingungen-gesundheitsbau` (Frontmatter-Grund siehe F4) sind nirgends in
  `destillate/INDEX.md` gelistet. → **Vorschlag:** beide Zeilen nachtragen.
- **Finding B3 — `wiki/INDEX.md` «Themen-Artikel»-Abschnitt vermischt zwei Ebenen:** 46 Bullet-
  Eintraege, aber nur 21 echte `wiki/*.md`-Dateien. 25 Eintraege (z.B.
  `sia-2024-nutzungsdaten-gesundheitsbau`, `netzanschluss-netzverstaerkung-pv-emobilitaet-ch`,
  `fernwaerme-anschlusskosten-zh`, `vhka-verbrauchsabhaengige-heizkostenabrechnung-zh-sz`,
  `netto-null-klimaziele-zh-sz`) sind reine Destillat-Zusammenfassungen, die nie zu einem eigenen
  Wiki-Artikel kompiliert wurden, aber wie Themenartikel im INDEX auftauchen. Das verwischt die
  im Meta-Schema (`wissen/WISSEN-CLAUDE.md`) verbindliche Trennung `destillate/` ↔ `wiki/` und
  macht das INDEX als «Inhaltsverzeichnis der Wiki-Artikel» irrefuehrend. → **Vorschlag:** diese
  25 Eintraege in einen eigenen INDEX-Abschnitt «Destillat-Vertiefungen ohne eigenen Wiki-Artikel»
  verschieben, oder bei ausreichender Substanz zu echten Themenartikeln kompilieren.
- **Finding B4 — INDEX-Eintrag der BAUHERREN-FAQ ist zu einem einzigen Mega-Absatz angewachsen:**
  Der INDEX-Beschreibungstext der FAQ (Zeile 6 in `wiki/INDEX.md`) reiht seit Run 24 jeden neuen
  Stand additiv aneinander und ist inzwischen mehrere tausend Woerter lang, ohne dass Alt-
  Material verdichtet oder entfernt wird — das Gegenteil eines schnellen Inhaltsverzeichnisses.
  → **Vorschlag:** auf den aktuellen Stand (Frage-Anzahl + letzte 2–3 substanzielle Aenderungen)
  kuerzen, den Rest bleibt ohnehin im CHANGELOG erhalten.

### C — Unbelegte Claims

Stichprobe von zentralen Zahlen in mehreren Artikeln, keine unbelegte gefunden:

- U-Wert-Grenzwerte (Neubau 0,17 / Umbau 0,25 / Fenster 1,0) → EN-102 Tab. 2/4, mit Norm-Versions-
  Klarstellung via Querbezug zur KB `normen` (`u-werte-grenzwerte-ch.md`, Zeilen 14–17).
- ZH-Foerdersaetze (L/W-WP 2'900, Erdsonde 6'800, Daemmung 40/+60/+20, Minergie-ECO 110/70/50) →
  Foerder-PDF S. 1–37 vollstaendig gelesen, mit explizitem Datenstand-Warnhinweis (`foerderung-
  energie-zh.md`).
- FAQ-Zahlenbeispiele (F1–F101, Stichprobe F1–F4): jede Antwort traegt einen `Quelle:`-Absatz mit
  Dokument + Kapitel/Tabelle + Backlink.

Kein `status: speculative` mehr unter `wiki/`; im Destillate-Layer bleibt genau ein Fall
(`uf-werte-rahmenmaterial-grobuebersicht`) korrekt als `speculative` gefuehrt (DE-Sekundaerquellen,
keine CH-amtliche Tabelle) — vorbildliches Verhalten, kein Finding.

### D — RAW-Coverage

Vollabdeckung. Der PL-04-PDF-Bestand gilt laut `_INGESTED.md` weiterhin als «erschoepft», der
Loop arbeitet seit Ende Juni primaer web-basiert weiter. Kein `_INGESTED`-Eintrag ohne
Destillat/Wiki-Verwendung gefunden. Die zwei nicht-registrierten Destillate aus Finding B2 sind
**kein** Coverage-Problem (sie werden aktiv zitiert) — nur ein Register-Problem, siehe B.

### E — Veraltete Artikel

Kein Artikel ueberschreitet die 90-Tage-Schwelle (aeltester `last_updated` ist
`daemmstoffe-lambda.md` vom 09.06., 42 Tage). Zwei Artikel haben aber eine neuere, bereits
destillierte Quelle, die inhaltlich nicht nachgezogen wurde:

- **`foerderung-energie-zh.md`** (last_updated 28.06.): sagt pauschal «befristet bis Ende 2026
  bzw. bis Budget erschoepft». `destillate/INDEX.md` (Run 82, 20.07.) hat seither den konkreten
  Kantonsratsstand gefunden (KRNr 6064 «Rahmenkredit 2026–2029», Kommission KEVU hat am 07.05.
  einstimmig Bewilligung beantragt, Schlussabstimmung im Plenum am 17.08. noch offen) — deutlich
  praeziser als die pauschale «Ende 2026»-Aussage im Wiki-Artikel. → **Vorschlag:** Absatz
  «Woher das Geld kommt» um den KRNr-6064-Stand ergaenzen.
- **`graue-energie.md`** (last_updated 12.07.): der MuKEn-2025-Abschnitt (Zeilen 66–70) bleibt bei
  «Ausblick … noch nicht in Kraft», ohne die konkreten Zahlenwerte, die bereits einen Tag spaeter
  in Run 51 (13.07.) etabliert und am 20.07. (Run 82) provenienzgeprueft wurden: **12,4–19,9 kg
  CO₂-eq/m²EBF·a** je Kategorie (`[[muken-2025-modul-g-co2-grenzwerte]]`, **established**). Das
  Destillat steht nicht einmal in der `sources:`-Liste von `graue-energie.md`. → **Vorschlag:**
  Zahlenwerte + Destillat-Verweis ergaenzen, Status des MuKEn-Ausblicks von «freiwilliges Label-
  Extra wird gesetzliche Auflage» auf die jetzt bekannten Grenzwerte praezisieren.

### F — Schreibregel-Verstoesse

- **Finding F1 (schwer, KB-weit) — Umlaut-Konvention verletzt:** siehe Top-3 Punkt 1. Acht
  Wiki-Artikel zu 100 % ae/oe/ue statt ä/ö/ü (`daemmstoffe-lambda.md`, `energienachweis-zh.md`,
  `holzbau-bauphysik-clt.md`, `pv-solar-technologien.md` sind zusaetzlich stark gemischt).
  BAUHERREN-FAQ als established-Kernprodukt zu ~40 % betroffen. Verstoesst gegen
  `rules/umlaute-konvention.md` (Vorrang-Regel). Betrifft nicht Datei-/Ordnernamen oder Code
  (dort korrekt ASCII gemaess Ausnahmeregel) — ausschliesslich Fliesstext.
- **Finding F2 (gewachsen seit 01.07.) — `links:`-Trennzeichen uneinheitlich:** am 01.07. waren 3
  Artikel mit Leerzeichen statt Komma betroffen (`daemmstoffe-lambda`, `pv-solar-technologien`,
  `foerderung-energie-sz`), inzwischen sind es 9 von 24 Wiki-Dateien (zusaetzlich
  `energienachweis-zh`, `fenster-verglasung`, `innendaemmung`, `komfortlueftung`,
  `naturdaemmstoffe`, `pv-eigenverbrauch-zev`) — die Inkonsistenz haelt sich also nicht nur, sie
  wird bei jedem neuen Artikel neu eingefuehrt. → **Vorschlag:** alle `links:`-Zeilen auf
  Komma-Trennung vereinheitlichen (Meta-Schema-Konvention).
- **Finding F3 — `solarwaerme-warmwasser.md` `sources:`-Format abweichend:** einziger Artikel, der
  in `sources:` blosse Destillat-Namen ohne `destillate/`-Pfad und ohne `.md`-Endung listet
  (`sources: [solarthermie-vs-pv-warmwasser-ch, wp-pv-eigenverbrauch-lastmanagement, …]`) statt
  des sonst durchgaengigen Formats `destillate/<name>.md`. → **Vorschlag:** Pfade ergaenzen.
- **Finding F4 — `destillate/sia-2024-nutzungsrandbedingungen-gesundheitsbau.md` folgt nicht dem
  Meta-Schema-Frontmatter:** statt `title/status/last_updated/sources/links` verwendet die Datei
  ein eigenes Schema (`quelle/herausgeber/ausgabe/gelesen/datenstand`, kein `title`, kein
  `status`). Das ist vermutlich der Grund, weshalb das Register-Skript sie nicht in
  `destillate/INDEX.md` findet (Finding B2). → **Vorschlag:** Frontmatter auf das Meta-Schema
  umstellen (Titel/Status ergaenzen), danach in Registern nachtragen.
- **Sonst konform:** kein `ß` in der gesamten `wiki/`-Ebene (0 Treffer), keine dekorativen
  Emojis (nur ⚠ als Warnmarker), FAQ-Nummerierung F1–F101 lueckenlos und ohne Dubletten geprueft.

### G — Promotion-Kandidaten

- **`regenwasserbewirtschaftung-versickerung-zh` (emerging):** unveraendert seit dem 01.07.-Check,
  der die Promotion zu `established` bereits empfahl (vollstaendig belegt, AWEL-Formular + 3
  Normen, beantwortet F24 abschliessend). **Empfehlung wiederholt.**
- **`sommerlicher-waermeschutz` (emerging):** ebenfalls seit dem 01.07.-Check unveraendert auf
  `emerging`, obwohl seither zwei weitere Destillate dazugekommen sind
  (`fassadenbegruenung-hitzeschutz-pv-zielkonflikt`,
  `sommerlicher-waermeschutz-sia180-nachweisverfahren`, laut `sources:`-Liste). Die Belegdichte
  ist inzwischen hoeher als bei manchem bereits `established` gefuehrten Artikel. **Empfehlung
  verstaerkt wiederholt.**
- **`solarpflicht-schweiz-kantone` (emerging):** laut INDEX-Vermerk «alle 26 Kantone erstmals
  recherchiert» (Run 60), seither in mehreren Runs vertieft (Web-Quellen, teils adversarial
  gegengeprueft). Kandidat fuer `established`, sofern die verbleibenden unklaren Einzelkantone
  (laut QUESTIONS-Backlog) als bewusste Restluecke markiert bleiben statt die Promotion zu
  blockieren.
- `innendaemmung.md` (emerging, juengster Artikel vom 20.07.) ist korrekt als `emerging`
  eingestuft — kein Kandidat, die Belegbasis waechst noch (BFH-Waermebrueckenkatalog nur ein
  Analogiewert, kein direkter Beleg).

---

**Fazit:** Inhaltlich weiterhin eine sehr belastbare KB (0 kaputte Links, 0 unbelegte Claims,
gute Selbstkorrektur). Das schnelle Wachstum seit dem letzten Check (23 → 82 Runs) zeigt sich
aber deutlich in der **Verwaltungsschicht**: die Umlaut-Konvention wird in grossen Teilen der KB
nicht eingehalten (schwerster Einzelbefund), und die INDEX-/Register-Dateien wachsen additiv statt
kuratiert, was zu Dubletten und einer verwischten Layer-Trennung fuehrt. Keiner der Befunde
gefaehrdet eine konkrete Bauherren-Antwort inhaltlich falsch zu machen — es sind ausschliesslich
Form-/Pflege-Schulden. Empfohlene Phase-2-Prioritaeten: (1) Umlaute in den 8 betroffenen Artikeln
+ der BAUHERREN-FAQ korrigieren (grosster Hebel, ggf. Batch-Skript), (2) `destillate/INDEX.md`
und `wiki/INDEX.md` entduplizieren/entwirren, (3) die zwei liegen gebliebenen Promotionen aus dem
01.07.-Check nachholen, (4) `links:`-Trennzeichen + die zwei Frontmatter-Abweichungen (F3/F4)
vereinheitlichen, (5) `foerderung-energie-zh` + `graue-energie` mit den zwei identifizierten
neueren Fakten nachziehen.
