# Wissens-Health-Check: kunde-bopp — 2026-07-21 (zweiter Lauf, Mac Mini Nachtschicht ~23:35)

Re-Audit nach dem Health-Check vom 01.07.2026 (`2026-07-01_health-check.md`). Anlass: KB
war mit 01.07. seit 20 Tagen unauditiert, aber real gewachsen — zwei inhaltliche
Aktualisierungen der Mac-Mini-Nachtschicht selbst (20.07. Firmenrollen-Verifikation via
Handelsregister/Zefix, 21.07. viertes Mandat Feag Facility Engineering AG). Scope
weiterhin klein (1 Wiki-Artikel, `raw/` leer per Design), Vollpruefung war moeglich.

## Zusammenfassung

| Audit | Findings | Ampel | Delta zu 01.07. |
|---|---|---|---|
| A Widersprueche | 0 | gruen | unveraendert |
| B Kaputte Backlinks/Orphans | 2 | gelb | unveraendert (dieselben 2) |
| C Unbelegte Claims | 0 | gruen | **verbessert** (war gelb: Firmenrollen jetzt registerverifiziert) |
| D RAW-Coverage-Luecken | 0 | gruen* | unveraendert (bewusst leer, Mail-Archiv-Seed) |
| E Veraltete Artikel | 0 | gruen | unveraendert |
| F Schreibregel-Verstoesse | 0 | gruen | **behoben** (war rot: ae/oe/ue-Digraphen — am 20.07. korrigiert, jetzt verifiziert sauber) |
| G Promotion-Kandidaten | 3 | gelb | **neu 1** (Status-Promotion-Kandidat), 2 unveraendert (Cluster-Artikel) |

\* D: `raw/` enthaelt nur `_INGESTED.md` als Register, keine Datei — dokumentierter
Sonderfall (Seed aus Apple-Mail-Archiv statt raw/-Datei), kein echtes Deckungsproblem.

## Top-3 (Raphaels Aufmerksamkeit)

1. **`profil-christoph-bopp` ist reif fuer `emerging` → `established`:** Alle
   Kernaussagen tragen jetzt Primaer- oder Registerquellen (Zefix/Handelsregister fuer
   beide Firmenrollen, northdata/moneyhouse fuer das vierte Mandat, 25 Mails fuer
   Tonfall/Praeferenzen/Honorar-Muster). Kein unbelegter Claim mehr offen. Status-Hebung
   ist eine Phase-2-Entscheidung, hier nur als Kandidat geflaggt.
2. **2 kaputte Backlinks unveraendert seit 01.07.:** `[[auftrags-muster-bopp]]` und
   `[[zusammenarbeit-lessons-bopp]]` (in `profil-christoph-bopp.md` Zeile 6 und im
   Fliesstext) zeigen auf noch nicht angelegte Artikel. Der Inhalt fuer beide liegt
   grossteils schon vor (Abschnitte «Arbeitsweise & Präferenzen» und «Typische
   Auftragsarten» im bestehenden Artikel) — Kandidat fuer eine kleine
   Auslagerungs-/Neuanlage-Aktion in Phase 2.
3. **`wiki/INDEX.md`-Statistik ist einen Tag veraltet:** Kopfzeile «Stand 2026-07-20»
   und «Outputs: 2» spiegeln den 21.07.-Output (`2026-07-21_drittes-kmu-mandat.md`,
   drittes Output) nicht. Rein redaktionell, kein inhaltlicher Fehler.

## Details je Audit

### A. Widersprueche
Keine. QUESTIONS.md-Archiv («viertes KMU-Vehikel», «exakte Firmenrollen») deckt sich
wortgleich mit den entsprechenden Passagen in `profil-christoph-bopp.md`. Nur ein
Wiki-Artikel im Bestand, daher keine Artikelpaar-Pruefung noetig.

### B. Kaputte Backlinks & Orphans
- `profil-christoph-bopp.md` Frontmatter `links:` und Abschnitt «Typische
  Auftragsarten» verlinken auf `[[auftrags-muster-bopp]]` — Datei existiert nicht
  (nur als *(geplant)* in `INDEX.md` gefuehrt).
- Dieselbe Datei verlinkt auf `[[zusammenarbeit-lessons-bopp]]` — Datei existiert
  ebenfalls nicht (*(geplant)*).
- Keine Orphans (einziger realer Artikel steht im INDEX).
- Unveraendert zum 01.07.-Befund — die Luecke ist bekannt und bewusst als Backlog
  gefuehrt, nicht ein neuer Fehler.

### C. Unbelegte Claims
Geprueft: (1) Firmenrollen WOMA/Nova — jetzt mit Zefix/Handelsregister-UID belegt
(war am 01.07. der Hauptkritikpunkt, seit 20.07. geschlossen). (2) Viertes Mandat
Feag — mit northdata/moneyhouse belegt, Frontmatter-Quelle vollstaendig. (3)
Verhaltens-/Praeferenz-Aussagen (Randzeiten, Pauschal-Honorar, Tonfall) — generisch
auf das 25-Mail-Archiv gestuetzt, KB-Regel erlaubt das explizit (Quellen-Hierarchie
Stufe 1). Keine unbelegten Claims mehr offen.

### D. RAW-Coverage
`raw/_INGESTED.md` enthaelt weiterhin nur den dokumentierten Sonderfall-Hinweis (Seed
aus Mail-Archiv, keine Datei in `raw/`). Kein neues Rohmaterial seit 01.07. eingekippt
und unverarbeitet liegen geblieben — kein Coverage-Problem.

### E. Veraltete Artikel
`profil-christoph-bopp.md` `last_updated: 2026-07-21` — taggenau aktuell, keine neuere
unverarbeitete Quelle bekannt.

### F. Schreibregel-Verstoesse
Volltext-Scan auf ae/oe/ue-Digraphen (Regex, false positives fuer Namen/ASCII-Skill-
Verweise manuell ausgeschlossen): **keine echten Verstoesse mehr**. Die am 01.07. rot
geflaggte systematische Digraphen-Schreibung wurde laut CHANGELOG-Eintrag 20.07. bereits
korrigiert — hiermit unabhaengig verifiziert. Kein `ß`. Frontmatter vollstaendig
(`title`/`status`/`last_updated`/`sources`/`links`).

### G. Promotion-Kandidaten
1. **`profil-christoph-bopp`: `emerging` → `established`** — alle Kernaussagen jetzt
   primaer- oder registerbelegt (siehe C). Empfehlung: bei naechster inhaltlicher
   Beruehrung des Artikels (oder in einer interaktiven Phase-2-Session) den Status
   heben.
2. **Cluster-Artikel `auftrags-muster-bopp`** — Inhalt liegt im Abschnitt «Typische
   Auftragsarten → JANS-Skill» des Hauptartikels bereits vor (3 Cluster, klar
   strukturiert); Auslagerung wuerde nur den toten Backlink schliessen und den
   Hauptartikel entlasten. Unveraendert seit 01.07.
3. **Cluster-Artikel `zusammenarbeit-lessons-bopp`** — Inhalt liegt im Abschnitt
   «Arbeitsweise & Präferenzen» bereits vor. Unveraendert seit 01.07.

Kein Projekt-Detailartikel (Ebmatingen/Romanshorn/Baar/Giebelweg) neu reif — die vier
QUESTIONS-Backlog-Punkte dazu sind weiterhin offen, unveraendert seit 01.07.; keiner
davon ist eine Nachtschicht-taugliche Recherche (brauchen reale Projektdokumente/
Mail-Nachfassen, kein Register-Abgleich).

## Fazit

KB hat sich seit dem 01.07.-Check in die richtige Richtung entwickelt: der rote
Schreibregel-Befund und die gelbe Unbelegt-Ampel (C) sind beide sauber geschlossen,
ohne dass diese Nachtschicht selbst etwas fixen musste — die vorangegangenen
Nachtschicht-Zyklen (20./21.07.) haben es bereits erledigt. Offen bleiben zwei kleine,
strukturelle Backlog-Punkte (2 tote Backlinks / 2 geplante Cluster-Artikel) und eine
Status-Promotion — beides Kandidaten fuer eine kurze interaktive Phase-2-Session, keine
davon dringend.
