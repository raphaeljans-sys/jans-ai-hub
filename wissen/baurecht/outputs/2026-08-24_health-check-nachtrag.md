---
titel: Wissens-Health-Check baurecht — Nachtrag (Phase 1+2 interaktiv)
datum: 2026-08-24
---

# Wissens-Health-Check: baurecht — Nachtrag 2026-08-24

## Ausgangslage

Die Reglemente-Queue 2414 Thalwil (`training/KORPUS-QUEUE-thalwil-reglemente.md`, T1-T9) ist
seit Buch-Run 87 vollständig abgearbeitet; die Läufe bis Run 129 haben Nachträge, Re-
Verifikationen und Registerpflege erledigt. Der bestehende `outputs/2026-08-24_health-check.md`
deckte nur den Stand vor den Buch-Runs 105-129 ab (Basis Run 104, `raw/`-Zähler 100 statt
aktuell 118). Beim Start dieser Session lief parallel ein weiterer automatischer Lauf
(`mschub714`, Prozess-Name aus `ps aux`) mit demselben Auftrag aktiv an derselben KB. Um keine
Kollision auf denselben Wiki-Artikeln zu riskieren, wurde der reguläre `wissenscheck`-Turnus
gewählt — eine von Buch-Run 128/129 selbst genannte, gleichwertige Alternative zur
wahrscheinlichen Modell-D-Stichprobe von `mschub714`.

## Methode

Ein Subagent hat die sieben Audits (nur lesend, keine Schreibvorgänge) gegen den aktuellen Stand
wiederholt. Die Befunde wurden vor der Umsetzung eigenständig am Original gegengeprüft (Rule
`auto-verbesserungen` 260729b — Agenten-Befunde nie ungeprüft übernehmen).

## Zusammenfassung

| Audit | Findings (frisch geprüft) |
|---|---|
| A Widersprüche | 0 |
| B Kaputte Backlinks/Orphans | 0 (verifiziert per `wiki-konsistenz.sh baurecht`) |
| C Unbelegte Claims | 0 |
| D RAW-Coverage-Lücken | 2 echte Lücken, geschlossen |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstösse | 0 |
| G Promotion-Kandidaten | 0 echte Kandidaten, aber 2 INDEX-Status-Drifts gefunden und korrigiert |

## Umgesetzte Korrekturen

1. **`wiki/INDEX.md`** — zwei Status-Tags korrigiert: [[geschosse-und-kniestock]] und
   [[umgebungsgestaltung-und-einfriedungen]] standen als *emerging* geführt, obwohl beide
   Frontmatter-Felder seit Buch-Run 33 bzw. Buch-Run 111 `established` sind. Gleiche Fehlerfamilie
   wie der bereits am 17.08.2026 behobene Fall `gebaeudearten-und-abstandssystem` — INDEX-Status
   und Frontmatter-Status driften auseinander, wenn ein Re-Verifikationslauf nur den Artikel
   selbst, nicht die INDEX-Zeile nachzieht.
2. **`wiki/baulinien-und-abstandslinien.md`** — neuer Abschnitt 1b «Festsetzungsgrundsätze bei
   Verkehrsbaulinien an Staatsstrassen (RRB 39/2010)». Der Inhalt war seit Buch-Run 116
   (24.08.2026) amtlich beschafft (`raw/260824_amtlich_zh_rrb-39-2010-baulinienrevision.md`) und
   in `wiki/QUESTIONS.md`/im Buch-Destillat verarbeitet, aber nie in diesen Wiki-Artikel
   übernommen worden — eine echte RAW-Coverage-Lücke, kein neuer Fachbefund.
3. **`wiki/baureife-und-erschliessung.md`** — neue Sektion «Nebenleitungen (Kanalisations-
   Hausanschlüsse), Kostentragung und Eigentumsübergang». Der von Recherche-Agent + Buch-Run 82
   (23.08.2026) korrigierte Befund (§ 15 Abs. 3 EG GSchG enthält keine Meterangabe; Nachfolge
   § 53 Abs. 3/§ 56 WsG) stand bislang nur im Buch-Destillat und in `wiki/QUESTIONS.md`. Frage B
   derselben Klärung (§ 36 Abs. 2 EG GSchG, Grundwasserschutz-Grundbuchanmerkung) bleibt bewusst
   als offen markiert — kein Ersatzbeleg erfunden.
4. **`raw/_INGESTED.md`** — 16 seit dem 23./24.08.2026 entstandene `raw/`-Dateien nachregistriert.
   15 davon waren bereits korrekt in einen Wiki-Artikel eingearbeitet (reiner
   Registrierungs-Rückstand); die zwei oben genannten echten Lücken sind jetzt ebenfalls als
   `eingearbeitet` geführt.

## Kontrolle

`git diff --numstat` nach jedem Schreibvorgang geprüft — durchgehend additiv bzw. erwartete
Zeilenersetzung, keine unerwartete Löschung:

- `wiki/INDEX.md`: +2/-2
- `wiki/baulinien-und-abstandslinien.md`: +36/-2
- `wiki/baureife-und-erschliessung.md`: +18/-2
- `raw/_INGESTED.md`: +16/-0
- `CHANGELOG.md`: +49/-0

`wiki-konsistenz.sh baurecht` nach Abschluss erneut `keine Befunde`.

## Nächster Schritt

Kein Fachpunkt mehr offen aus der Reglemente-Queue, ihren Nachtragsketten oder diesem
Health-Check. Verbleibende bekannte offene Punkte (unverändert, kein neuer Befund): drei aus
Datenbank-Gründen nicht verifizierbare Alt-Fallzitate (VB 94/0016, VB.2003.00051, RB 1992 Nr. 77),
die registrierte PBG-Teilrevision «Baulinien» als Fassungsstand-Wachposten, sowie Frage B zu
§ 36 Abs. 2 EG GSchG. Kandidaten für einen künftigen Lauf: Modell-D-Stichprobe an
[[ausnuetzungsuebertragung]]/[[nutzungsziffern]] (zuletzt 2026-07-25/Run 55 — falls nicht bereits
durch den parallelen Lauf `mschub714` erledigt), oder eine weitere reguläre `wissenscheck`-Runde
in einigen Wochen.
