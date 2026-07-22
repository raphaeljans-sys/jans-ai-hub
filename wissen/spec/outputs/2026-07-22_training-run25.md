# Trainingslauf 25 — Spec-Methode (22.07.2026)

**Typ: Verifikationslauf.** Keine neue reale Spec seit Lauf 24 (achte Anwendung SYN-02, ausgewertet
21.07.). Der legitime Beitrag ist damit **kein** neuer Wiki-Feinschliff, sondern eine Reue-Pruefung —
und die hat diesmal etwas Substanzielles gefunden: der ueber vier Laeufe verfolgte P1 ist gelandet.

## 1. Stand

- Letzter Auswertungslauf: 24 (21.07., SYN-02 Vorbereitung→Interview-Delta 7/9).
- Quellen-Schuld F4 (Karpathy + Cherny) und F5 (Anthropic Plan-Mode) bleiben **vollstaendig
  eingeloest** — keine offene Primaerquelle mehr einzuholen.
- Keine neue Spec in `outputs/` und im uebrigen Hub (`find -name "*_spec.md" -newermt 2026-07-20`
  liefert nur die beiden bekannten) → Verifikationslauf.

## 2. Reue-Pruefung P1 (mail@-Blindstelle) — **gelandet, am Artefakt verifiziert**

Der ueber die Laeufe 22–24 verfolgte Fix (Schritt 1 des `ag-gruendung-monitor` auf Apple Mail als
Primaerkanal fuer mail@ umstellen, sonst bleibt der UBS-Strang blind) ist eingetreten.

| Pruefung | Lauf 24 (21.07. ~04:21) | Lauf 25 (22.07.) |
|---|---|---|
| mtime `ag-gruendung-monitor/SKILL.md` | 21.06.2026 14:49 (unveraendert) | **21.07.2026 07:49** |
| Schritt-1-Wortlaut mail@ | «via M365/Outlook-Suche; falls verfuegbar zusaetzlich Apple Mail» | «**IMMER via Apple Mail … PRIMAERKANAL**; niemals allein M365 fuer mail@ vertrauen» |
| Begruendung im Artefakt | — | «Blind-Fleck, bestaetigt 19.07.2026» explizit dokumentiert |

M365 ist fuer mail@ vom Primaer- zum ausgeschlossenen Kanal geworden. Der blinde Fleck, der 15./16.07.
still «kein UBS-Absender» schloss, ist geschlossen.

**Damit ist die Falsch-Signal-Familie an ihrem Ende positiv aufgeloest:** die «behoben»-Meldung
(Lauf 22) war zunaechst falsch (Laeufe 23/24: nicht gelandet), ist nun aber real eingetreten — und
**jede** dieser Diagnosen war zu ihrem Pruefzeitpunkt korrekt, weil die Abnahme immer am mtime/Wortlaut
erfolgte, nie am Meldetext.

### Zwei Praezisierungen
- **Timing (Lauf-14-Lehre in Gegenrichtung):** Lauf 24 lief ~04:21 und meldete korrekt «nicht
  gelandet»; der Fix kam **~3.5 h spaeter am selben Tag** (07:49). Ein «nicht gelandet» hat wie eine
  «haelt-an»-Diagnose ein Ablaufdatum — beide gelten nur fuer den Pruefzeitpunkt. Ein «nicht gelandet»
  ist kein «wird nie landen».
- **Kausalitaet bewusst offen (Disziplin Lauf 10/12/21):** dass das Flag **nach** der Eskalation
  konsumiert wurde, belegt **nicht**, dass die spec-KB-Eskalation es ausloeste. Die neue SKILL.md
  zitiert die 19.07.-Diagnose, die zugleich in `logbuch`/`fristen.md` und hier stand; wer den Fix
  tatsaechlich anstiess, steht in keinem Artefakt. Registriert wird die **Landung als Faktum**, keine
  Wirkungskette.

## 3. Gate / Environment

- `rules/spec-methode.md` unveraendert (mtime 21.06.) — kein Drift, weiterhin kein genervter Mittelfall
  in `outputs/` → **keine Gate-Aenderung** (F1-Ueberdehnungs-Gegentest bleibt unbelegt).
- Kein voller Environment-Sweep (letzter Lauf 13, 13.07.); gezielte Artefakt-Checks (Monitor-SKILL.md
  mtime + Wortlaut, Existenz `typologie_zu_variante.py`, neue Spec-Outputs hubweit) genuegten.

## 4. Umgesetzt

- `wiki/verifier.md`: Aufloesungs-Absatz an der Lauf-23-Sektion (P1 gelandet, am Artefakt verifiziert;
  Timing- + Kausalitaets-Praezisierung); `last_updated` → 07-22.
- `wiki/QUESTIONS.md` F2: Aufloesungs-Datenpunkt 22.07. (Landung + zwei Nebenbefunde).

## 5. Bewusst nicht getan

- Keine erfundene Rule-/Gate-Aenderung ohne Beleg; ein Verifikationslauf, der ohne neuen Beleg ein
  Refinement erfindet, waere selbst eine Gate-Ueberdehnung nach innen.
- Keine Kausal-Behauptung «KB-Eskalation → Fix»; nur die Landung registriert.
- Task-Definition nicht selbst angefasst (war `logbuch`-Betrieb; ist jetzt ohnehin erledigt).
- Kein Mailversand.

## 6. Offen / naechstes

- **SYN-02-MVP-Bau:** Block 1 (Adapter `typologie_zu_variante.py`) noch nicht gebaut (Datei existiert
  nicht in `skills/volumenstudie/tools`) — startet «auf Freigabe». Naechster Auswertungspunkt bleibt,
  ob die Spec beim Bau als lebendes Dokument haelt (kippen E1/Parzellenwahl noch in Block 1?).
- **F1-Ueberdehnungs-Gegentest** (mittelgrosser, genervter Mittelfall) weiterhin unbelegt.
- **F3: Marketing/Text** bleibt die letzte offene Domaenen-Zeile der Verifier-Zuordnung.
- **Sweep-Kandidat (aus Lauf 23/24, jetzt spruchreif):** Der P1-Zyklus zeigt, wie lange ein
  «behoben, aber nicht behoben»-Zustand unentdeckt laufen kann. Offene Frage bleibt, wie viele **andere**
  Hub-Monitore Erledigt-Zustaende melden, die nie an einem Artefakt verifiziert wurden. Kandidat fuer
  einen gezielten Monitor-Abnahme-Sweep (Skill `logbuch`/`heartbeat`, ausserhalb `wissen/spec`-Mandat).
