# Wissens-Health-Check: kunde-bopp — 2026-07-25

Dritter Lauf (Mac Mini Nachtschicht, ~04:00, Phase 1 unbeaufsichtigt). Re-Audit nach
`2026-07-21_health-check-2.md`. Anlass: seit dem letzten Check ist ein neuer Wiki-Artikel
dazugekommen (`projekt-giebelweg12.md`, 24.07.2026, aus der offenen QUESTIONS-Frage
recherchiert). Scope weiterhin klein (2 Wiki-Artikel, `raw/` leer per Design), Vollpruefung
war moeglich.

## Zusammenfassung

| Audit | Findings | Ampel | Delta zu 21.07. |
|---|---|---|---|
| A Widersprueche | 0 | gruen | unveraendert |
| B Kaputte Backlinks/Orphans | 2 | gelb | unveraendert (dieselben 2, `projekt-giebelweg12.md` bringt keinen neuen toten Link) |
| C Unbelegte Claims | 0 | gruen | unveraendert (neuer Artikel sauber belegt) |
| D RAW-Coverage-Luecken | 0 | gruen* | unveraendert (bewusst leer, Mail-Archiv-Seed) |
| E Veraltete Artikel | 1 | gelb | **neu**: Abschnitt in `profil-christoph-bopp.md` durch neuen Artikel ueberholt |
| F Schreibregel-Verstoesse | 0 | gruen | unveraendert (auch der neue Artikel sauber: Frontmatter vollstaendig, echte Umlaute, kein ß) |
| G Promotion-Kandidaten | 3 | gelb | unveraendert (dieselben 3, `projekt-giebelweg12` selbst noch zu jung fuer eine Promotion-Empfehlung) |

\* D: `raw/` enthaelt nur `_INGESTED.md` als Register, keine Datei — dokumentierter
Sonderfall (Seed aus Apple-Mail-Archiv/Projektarchiv statt raw/-Datei), kein echtes
Deckungsproblem.

## Top-3 (Raphaels Aufmerksamkeit)

1. **Neu: `profil-christoph-bopp.md` Abschnitt «Aktuell offen (Stand 2026-06-03)» ist von
   `projekt-giebelweg12.md` (24.07.) ueberholt.** Der Profil-Artikel beschreibt Giebelweg 12
   weiterhin auf dem Stand «Auftrag erteilt, Besichtigung gewuenscht» (03.06.2026), waehrend
   der neue Detailartikel den viel aktuelleren Stand traegt (Machbarkeitsstudie abgeschlossen,
   Baulinien-Einwendung am 30.06. eingereicht, Antwort Gemeinde per 24.07. ausstehend). Kein
   Widerspruch (keine gegensaetzliche Aussage), aber Redundanz mit Verfallsdatum — der
   Profil-Artikel sollte diesen Abschnitt durch einen kurzen Verweis auf
   `[[projekt-giebelweg12]]` ersetzen, statt den alten Stand stehen zu lassen. Kleine
   Phase-2-Aktion.
2. **Unveraendert seit 01.07.: 2 kaputte Backlinks** `[[auftrags-muster-bopp]]` und
   `[[zusammenarbeit-lessons-bopp]]` in `profil-christoph-bopp.md` (Frontmatter + Fliesstext) —
   zeigen auf noch nicht angelegte, aber in `INDEX.md` als *(geplant)* gefuehrte Artikel. Inhalt
   liegt grossteils schon in den Abschnitten «Arbeitsweise & Praeferenzen» und «Typische
   Auftragsarten» vor — reine Auslagerungs-Aktion, dritter Check in Folge ohne Fortschritt.
3. **Unveraendert seit 21.07.: `profil-christoph-bopp` reif fuer `emerging` → `established`.**
   Alle Kernaussagen tragen Primaer- oder Registerquellen, kein unbelegter Claim mehr offen.
   Status-Hebung bleibt eine Phase-2-Entscheidung.

## Details je Audit

### A. Widersprueche
Keine direkten Widersprueche zwischen `profil-christoph-bopp.md` und `projekt-giebelweg12.md`
— beide beschreiben dasselbe Projekt aus unterschiedlichen Detailtiefen, keine gegensaetzlichen
Aussagen. Die Ueberholung ist ein Aktualitaets- statt ein Widerspruchsproblem, siehe E.

### B. Kaputte Backlinks & Orphans
- `profil-christoph-bopp.md` Frontmatter `links:` + Abschnitt «Typische Auftragsarten» →
  `[[auftrags-muster-bopp]]` — Datei existiert nicht (nur *(geplant)* in `INDEX.md`).
- Dieselbe Datei → `[[zusammenarbeit-lessons-bopp]]` — Datei existiert ebenfalls nicht
  (*(geplant)*).
- `projekt-giebelweg12.md` verlinkt nur `[[profil-christoph-bopp]]` — existiert, aufloesbar.
  Keine neuen toten Links durch den neuen Artikel.
- Keine Orphans: beide realen Artikel stehen im `INDEX.md`.

### C. Unbelegte Claims
Geprueft an `projekt-giebelweg12.md` (neu seit letztem Check): Kat.-Nr. 3338, 768 m², Zone W2,
EGRID CH879777718909, Bestandsvolumen 904 m³, Referenzvariante 176 m³ ueber Budget,
massgebendes Terrain 549.27 m ü.M., Attika 130.25 m², 1'259/1'267 m³, Vollmacht 22.06.2026,
<!-- Korrekturnotiz 30.07.2026 (Wissens-Chef Run 21, Cross-KB): Die drei hier als gedeckt
geprüften Werte «MT 549.27 m ü.M. / Attika 130.25 m² / 1'259 von 1'267 m³» waren schon am
25.07.2026 überholt. Sie stammen aus dem Zwischenstand vom 12.06.2026 (Ausmittelung des MT,
kein zulässiger Rechenweg). Massgeblich ist der Endstand vom 13.06.2026, Nachweis Version 3:
Abtreppung in drei Stufen, Attika regelkonform 128.9 m², 1'162 m³ anrechenbar, Reserve 105 m³
(belegt in PROJEKT-STAND.md und im Deliverable). Der Prüfbefund oben bleibt als historischer
Wortlaut stehen; der Artikel projekt-giebelweg12.md ist nachgeführt. -->

Einwendung 30.06.2026 an `bauamt@langnau.ch` — alle ueber die drei im Frontmatter genannten
Quellen (PROJEKT-STAND.md, Korrespondenzordner, eigener Output vom 24.07.) gedeckt. Kein
unbelegter Claim. `profil-christoph-bopp.md` unveraendert seit 21.07. (dort bereits sauber).

### D. RAW-Coverage
`raw/_INGESTED.md` weiterhin nur der dokumentierte Sonderfall-Hinweis. Kein neues Rohmaterial
seit 21.07. unverarbeitet liegen geblieben.

### E. Veraltete Artikel
- **Neu:** `profil-christoph-bopp.md` Abschnitt «Aktuell offen (Stand 2026-06-03)» (Zeile
  73–78) ist durch die 24.07.-Recherche in `projekt-giebelweg12.md` inhaltlich ueberholt,
  wurde aber nicht nachgezogen — der Artikel traegt zwar `last_updated: 2026-07-21`
  (also nach dem eigentlichen Update-Anlass), doch dieser spezifische Abschnitt selbst ist
  nicht aktualisiert worden. Vorschlag: Abschnitt kuerzen auf einen Verweis
  «→ Details siehe `[[projekt-giebelweg12]]`».
- `projekt-giebelweg12.md` selbst ist taggenau aktuell (`last_updated: 2026-07-24`,
  entspricht dem Recherche-Datum).

### F. Schreibregel-Verstoesse
Volltext-Scan beider Wiki-Artikel auf ae/oe/ue-Digraphen (Regex, Namen/ASCII-Skill-Agent-
Verweise wie `ankaufspruefung`/`dienstbarkeiten-pruefer` als korrekte Code-Identifikatoren
ausgeschlossen): keine echten Verstoesse. Kein `ß`. Frontmatter in beiden Artikeln vollstaendig
(`title`/`status`/`last_updated`/`sources`/`links`).

### G. Promotion-Kandidaten
1. **`profil-christoph-bopp`: `emerging` → `established`** — unveraendert seit 21.07., alle
   Kernaussagen primaer- oder registerbelegt.
2. **Cluster-Artikel `auftrags-muster-bopp`** — Inhalt liegt im Hauptartikel bereits vor,
   Auslagerung wuerde die 2 toten Backlinks (B) schliessen. Unveraendert seit 01.07.
3. **Cluster-Artikel `zusammenarbeit-lessons-bopp`** — Inhalt liegt im Hauptartikel bereits
   vor. Unveraendert seit 01.07.

`projekt-giebelweg12` bleibt zu Recht `emerging` (aktives, noch offenes Verfahren bei der
Gemeinde) — kein Promotion-Kandidat.

Die drei uebrigen QUESTIONS-Backlog-Punkte (Ebmatingen, Romanshorn, Baar Zugerstrasse 49)
sind weiterhin offen; Baar ist zusaetzlich am 24.07. an einem OneDrive-`EDEADLK`-Blocker
gescheitert (siehe `QUESTIONS.md`) — kein Nachtschicht-Fall ohne neuen Loesungsweg.

## Fazit

KB bleibt inhaltlich sauber (0 Widersprueche, 0 unbelegte Claims, 0 Schreibregel-Verstoesse) —
der neue Artikel `projekt-giebelweg12.md` haelt den hohen Beleg-Standard des KB. Einzige
strukturelle Neuigkeit ist die Ueberholung eines Profil-Abschnitts durch den neuen
Detailartikel (E, klein, Phase-2-tauglich). Die drei bereits laenger bekannten
Backlog-Punkte (2 tote Backlinks/geplante Cluster-Artikel, 1 Status-Promotion) bleiben
unveraendert offen — weiterhin keine davon dringend, alle Kandidaten fuer eine kurze
interaktive Phase-2-Session.
