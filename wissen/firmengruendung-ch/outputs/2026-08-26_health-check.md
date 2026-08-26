# Wissens-Health-Check: firmengruendung-ch — 2026-08-26

## Methode dieses Laufs

Mac-Mini-Nachtschicht-Zyklus, Prioritaet 6 (kein pending Sync-/Remote-Task, Synobsis Stufe 2
vollstaendig 853/853 unveraendert, keine unbearbeitete Prioritaet 3/4/5 mit sauberem
Zusatznutzen gefunden). Letzter Check dieser KB war der Sammellauf vom 2026-08-03 — mit 23
Tagen der laengste Ruecklauf aller KBs mit vorhandenem Report. Phase 1 (Audit + Report,
unbeaufsichtigt); Phase 2 (Aktionen) bewusst NICHT ausgefuehrt, nur Empfehlungen unten.

Pruefumfang: alle 15 `wiki/`-Artikel (established), `INDEX.md`, `QUESTIONS.md`,
`raw/_INGESTED.md`, `CLAUDE.md`, `CHANGELOG.md` seit 2026-08-03. Zusaetzlich zum
Vorlauf-Report `bash wissen/tools/wiki-konsistenz.sh firmengruendung-ch` gefahren (Frontmatter,
INDEX-Registrierung, tote Backlinks) — Ergebnis: **keine Befunde**. Audit B wurde diesen Lauf
zusaetzlich manuell um eine echte Orphan-Pruefung erweitert (siehe unten), weil das Script
nur tote/aufloesbare Links, aber keine fehlenden Inbound-Links prueft.

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 1 |
| B Kaputte Backlinks/Orphans | 2 (Orphans; 0 tote Links) |
| C Unbelegte Claims | 0 |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel | 0 (3 Artikel naehern sich der 90-Tage-Schwelle) |
| F Schreibregel-Verstoesse | 0 |
| G Promotion-/Ruecklauf-Kandidaten | 1 |

## Top-3 (Raphaels Aufmerksamkeit)

1. **`wiki/QUESTIONS.md` fuehrt einen ueberholten Eintrag zum GmbH-Artikel als aktuell.** Der
   Archiv-Eintrag vom 21.07.2026 sagt, die OR-Artikelnummern in `gmbh-gruendungsablauf.md`
   seien unverifizierte Sekundaerquellen ("vor einem realen Gruendungsfall gegen den
   OR-Wortlaut nachzupruefen"). Tatsaechlich wurde der Artikel **noch am selben Tag**, in
   einem zweiten, spaeteren Lauf ("Dauerschicht-Zyklus 49"), am Fedlex-Volltext gegengelesen
   und die Kernartikel bestaetigt (siehe Verifikations-Vermerk im Artikel selbst,
   `gmbh-gruendungsablauf.md`, und `INDEX.md`, die beide den verifizierten Stand korrekt
   zeigen). Nur `QUESTIONS.md` wurde nach dieser zweiten Session nicht nachgefuehrt. Wirkung:
   eine spaetere Session, die nur `QUESTIONS.md` liest (nicht Artikel + INDEX), haelt den
   GmbH-Artikel faelschlich fuer unverifiziert.
2. **Zwei Artikel sind echte Orphans** (kein anderer Wiki-Artikel verlinkt auf sie; nur
   `INDEX.md`/`QUESTIONS.md` verweisen darauf): `verwaltungsrat` und `steuern-bei-gruendung`.
   Beide sind inhaltlich zentrale AG-Themen, die von den natuerlichen Vorgaenger-Artikeln
   nicht rueckverwiesen werden. Das automatisierte `wiki-konsistenz.sh` faengt das nicht ab,
   weil es nur tote/aufloesbare Links prueft, keine fehlenden Inbound-Links.
3. **Sonst weiterhin die sauberste KB des Wissens-Layers.** 15/15 Artikel `established`,
   vollstaendiges Frontmatter, RAW-Register konsistent (6/6 Quellen eingearbeitet), keine
   Umlaut-/Schreibregel-Verstoesse, keine unbelegten Kernaussagen in der Stichprobe.

## Details je Audit

### A. Widersprueche
- **1 Finding (dokumentarisch, keine inhaltliche Rechtsaussage betroffen):** siehe Top-1 oben.
  Kein Widerspruch zwischen zwei Rechtsaussagen, sondern zwischen einem veralteten
  QUESTIONS-Archiveintrag und dem tatsaechlichen (korrekten) Artikelstand. Empfehlung: in
  `QUESTIONS.md` beim 21.07.2026-Eintrag einen Nachtrag "→ noch am selben Tag verifiziert,
  siehe Verifikations-Vermerk im Artikel" ergaenzen (additiv, keine Loeschung des
  Archiv-Eintrags).
- Keine weiteren Spannungen zwischen Artikeln gefunden (Kapitalbetraege CHF 100'000/50'000/
  20 % stimmen konsistent zwischen `kapital-und-liberierung`, `statuten-ag`,
  `rechtsform-vergleich`, `kosten-und-zeit`; Handelsregistergebuehren CHF 420/160/80 konsistent
  seit der Korrektur vom 08.08.2026).
- In `QUESTIONS.md` registrierte Spannungen: weiterhin 0 ("Cross-Article-Spannungen: noch
  keine erfasst") — das oben genannte Finding gehoert dort nachgetragen.

### B. Kaputte Backlinks & Orphans
- **0 tote Links** (`wiki-konsistenz.sh`, KB-uebergreifendes Ziel-Universum: keine Befunde).
- **2 Orphans:**
  - `verwaltungsrat.md` — nur von `INDEX.md`/`QUESTIONS.md` erreichbar, kein Content-Artikel
    verlinkt zurueck. Empfehlung: Backlink aus `ag-gruendungsablauf.md` (Schritt Errichtungsakt/
    Organe) und/oder `errichtungsakt.md` (VR-Konstituierung ist Teil der Gruendungsurkunde).
  - `steuern-bei-gruendung.md` — ebenfalls nur ueber INDEX/QUESTIONS erreichbar. Naheliegender
    Rueckverweis waere `rechtsform-vergleich.md` oder `ag-gruendungsablauf.md` (Steuerfolgen der
    Gruendung gehoeren in den Ablauf) sowie eine Querverlinkung zu `steuern-ag-inhaber.md`
    (einmalige Gruendungssteuern vs. laufende Steuerhebel — beide Artikel behandeln
    verwandte, aber unterschiedliche Fragen und verlinken sich derzeit nicht gegenseitig).
- Keine weiteren Orphans; alle uebrigen 13 Artikel haben mindestens einen Content-Backlink.
- Frontmatter: alle 15 Artikel vollstaendig (`title`, `status`, `last_updated`, `sources`,
  `links`).

### C. Unbelegte Claims
- Stichprobe (Kapitalbetraege, Handelsregistergebuehren, Fristen AHV/BVG/UVG/MWST,
  Revisionsschwellen): alle mit `Art.`-Fundstelle oder benannter Quelle belegt.
- Keine volle Neuverifikation aller Claims gefahren (monatlich zu teuer, siehe
  Audit-Beschreibung) — die bereits als `needs-verification` gefuehrten Punkte
  (Beratungs-/Notarkosten, `[[nachgruendung-anmeldungen]]` einige WebSearch-Sekundaerquellen)
  bleiben unveraendert offen und sind bereits in `QUESTIONS.md` erfasst.

### D. RAW-Coverage
- 6/6 Dateien in `raw/_INGESTED.md` als "eingearbeitet" markiert und im Wiki tatsaechlich
  zitiert (Stichprobe: `belege-handelsregister`, `errichtungsakt`, `statuten-ag`,
  `rechtsform-vergleich`/`kosten-und-zeit`, `revision-und-opting-out`). Keine Luecke.
- Weiterhin bewusst nicht ingestiert: die realen 2022er-Dokumente der Raphael Jans AG und die
  grosse Gruendungsbroschuere im OneDrive-Archiv (dokumentiert, kein neuer Befund).

### E. Veraltete Artikel
- 0 Artikel ueber der 90-Tage-Schwelle mit gleichzeitig neuerer Evidenz.
- Naeher an der Schwelle: `ag-gruendungsablauf.md`, `belege-handelsregister.md`,
  `errichtungsakt.md` — alle `last_updated: 2026-06-02`, das sind 85 Tage. Kein aktueller
  Befund (keine bekannte neuere Rechtsaenderung zu Art. 629 ff. OR/HRegV seit Juni), aber der
  naechste Health-Check sollte pruefen, ob bis dahin eine neue Quelle vorliegt.

### F. Schreibregel-Verstoesse
- 0 Funde. Keine `ß`, echte Umlaute durchgaengig, keine dekorativen Symbole. Einzige
  ae/oe/ue-Treffer waren Fehlalarme des Suchmusters (korrekt geschriebenes Wort
  "Steuererleichterungen", kein Umlautfehler).
- Frontmatter vollstaendig (siehe Audit B).

### G. Promotion-Kandidaten
- **1 Finding:** der QUESTIONS.md-Nachtrag aus Audit A (GmbH-Verifikationsstand nachtragen).
- Sonst keine offenen `needs-verification`/`speculative`-Marker im Wiki (alle 15 Artikel
  `established`); die verbleibenden `needs-verification`-Punkte in `QUESTIONS.md`
  (Beratungs-/Notarkosten; einzelne Sekundaerquellen in `nachgruendung-anmeldungen`) sind
  weiterhin real offen, keine Promotion faellig.
- `QUESTIONS.md`-Coverage-Gap "1e-/Kaderplan" bleibt zu Recht offen (haengt am realen
  Handelsregister-Eintrag, siehe `logbuch/fristen.md`).

## Fazit

Weiterhin die sauberste oder zweitsauberste KB des Wissens-Layers; keine inhaltlichen
Rechtsfehler gefunden. Die zwei echten Befunde sind beide dokumentarischer/struktureller Natur
(ein nachzutragender QUESTIONS-Vermerk, zwei fehlende Rueckverlinkungen) und aendern keine
Sachaussage. Empfehlung fuer den naechsten interaktiven Lauf (Phase 2): die drei
Backlink-Ergaenzungen und den QUESTIONS-Nachtrag umsetzen — je unter 10 Zeilen, additiv, kein
Loeschrisiko.
