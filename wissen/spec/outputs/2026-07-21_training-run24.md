# Trainingslauf 24 — Spec-Methode (21.07.2026)

**Typ: Auswertungslauf.** Neue reale Spec seit Lauf 23: **SYN-02** (typologischer
KI-Entwurfsprozess, bestaetigt 20.07.2026) — die **achte** belegte Spec-Anwendung. Sie ist
der erste Fall, in dem eine **Interview-Vorbereitung** (Deliverable-Typ aus Lauf 20, hier vom
15.07.) tatsaechlich zu einem gefuehrten Interview reifte — damit wird die Kernthese von F2
(«die Vorbereitung zieht die teure Recherche vor das Interview») erstmals **messbar**.

## 1. Stand

- Letzter Auswertungslauf: 20 (15.07., SYN-02-Interview-Vorbereitung). Laeufe 21–23
  Verifikationslaeufe.
- Quellen-Schuld: F4 (Karpathy + Cherny) und F5 (Anthropic Plan-Mode) sind **beide
  vollstaendig eingeloest** — keine offene Primaerquelle mehr einzuholen.
- SYN-02-Spec am 20.07. in der Live-Session erstellt (nicht in einem Trainingslauf); dieser
  Lauf wertet sie als reale Anwendung aus.

## 2. Auswertung SYN-02 — gemessenes Vorbereitung→Interview-Delta

Vergleich der neun Default-Vorschlaege der Vorbereitung (15.07.) gegen die bestaetigten
Entscheide (Interview 20.07.):

| Entscheid | Default-Vorschlag (15.07.) | Bestaetigt (20.07.) | Ergebnis |
|---|---|---|---|
| E1 Typologie | Healthcare/Wohnen, Schulbau parallel | Wohnen-MFH, Schulbau B5 parallel | **hielt** |
| E2 Absatzkanal | Variantenstudie **GM2** zuerst | Wettbewerbs-Fabrik **GM3** zuerst | **ueberstimmt** |
| E3 Human-Gates | drei Gates a/b/c | **nur Gate c** (Parti), autonome Pipeline | **ueberstimmt** |
| E4 MVP-Tiefe | Adapter + Minimal-Gliederung | dito | **hielt** |
| E5 Verifier | Flaechen + Baurecht (programm-pruefer offen) | + **voller programm-pruefer** im MVP | **verschaerft (Kaskade E2)** |
| E6 Studio | Variantenkatalog | dito | **hielt** |
| E7 Ablage | `typologie_zu_variante.py` in volumenstudie/tools | dito | **hielt** |
| E8 Kennwerte | liest `wissen/grobkosten` | dito | **hielt** |
| E9 MVP-Grenze | 1 Typologie, 1 Parzelle, 2–3 Varianten | dito | **hielt** |

**Trefferquote 7/9.** Die zwei Overrides trafen **genau die strategischen Geschaeftsmodell-
Entscheide** (E2 Kanal-Prioritaet, E3 Automatisierungsgrad) — nicht einen einzigen technischen
Folgeentscheid. Der E2-Override **kaskadierte** sauber auf E5 (voller `programm-pruefer` schon
im MVP), was die Vorbereitung korrekt vorhergesehen hatte (E5 war ausdruecklich als an E2
gekoppelt notiert: «reicht das, oder willst Du den vollen programm-pruefer?»).

**Lehre (F2, gemessen):** das Live-Interview schrumpfte auf **2 echte Entscheidungen + 7
Bestaetigungen** — erster gemessener Beleg fuer die F2-Hypothese, dass die Interview-
Vorbereitung die teure Faktenrecherche vor das Gespraech zieht und das Gespraech auf reine
Richtungsentscheide reduziert. Praezisere Vorbereitungs-Regel: **technische Folgefragen ruhig
mit festem Default** (sie halten), **strategische Richtungsentscheide bewusst offen** (dort
entscheidet der Mensch), und **Kopplungen zwischen Entscheiden mitflaggen** (ein strategischer
Override kaskadiert oft auf spaetere Verifier-/Scope-Entscheide).

## 3. Reue-Pruefung — Lauf-23-P1 nicht gelandet

Lauf 23 hatte als P1 an Raphael eskaliert: Schritt 1 des `ag-gruendung-monitor` auf Apple Mail
als Primaerkanal fuer mail@ umstellen (sonst bleibt die UBS-Ueberwachung blind), «vor Mo 07:46».

Gegenpruefung am Artefakt (nicht am Meldetext):

| Pruefung | Ergebnis |
|---|---|
| mtime `ag-gruendung-monitor/SKILL.md` | **21.06.2026 14:49** — seit Erstellung unveraendert |
| Wortlaut Schritt 1 | unveraendert «mail@ via M365/Outlook-Suche; falls verfuegbar zusaetzlich Apple Mail» |

Der Fix ist **nicht gelandet**; die mail@-Blindstelle besteht zwei Tage nach der Eskalation
fort. Das ist die Lauf-12-Lehre («ein Flag ist keine Reparatur») **auf die Eskalation selbst
angewandt**: auch eine an einen Menschen gerichtete P1-Notiz remediert nichts, solange der
Adressat sie nicht konsumiert. Wert der Reue-Pruefungs-Disziplin hier konkret: die Abnahme am
Artefakt (mtime) statt am «eskaliert»-Vermerk hat verhindert, dass dieser Lauf den Faden
faelschlich als «erledigt, weil geflaggt» abhakt.

## 4. Environment/Gate

- `rules/spec-methode.md` unveraendert (mtime 21.06.) — kein Drift, **kein** Ueberdehnungs-Beleg
  (weiterhin kein genervter Mittelfall in `outputs/`) → **keine Gate-Aenderung**.
- Kein voller Environment-Sweep (letzter Lauf 13, 13.07.; keine belegte Luecke, die einen
  erzwaenge). Gezielte Checks (zwei Artefakt-mtimes) genuegten fuer diesen Lauf.

## 5. Umgesetzt

- `wiki/anwendung-jans.md` Schritt 1: gemessene Default-Trefferquote (7/9) + Vorbereitungs-Regel
  (technische Defaults fest, strategische offen, Kopplungen flaggen); `last_updated` → 07-21.
- `wiki/QUESTIONS.md` F2: SYN-02-Delta-Datenpunkt + Lauf-23-P1-Reue-Check.
- `wiki/verifier.md`: Reue-Bestaetigung an der Lauf-23-Sektion (Flag selbst nicht konsumiert);
  `last_updated` → 07-21.

## 6. Bewusst nicht getan

- Task-Definition `ag-gruendung-monitor` **nicht** selbst geaendert (Verhaltensaenderung an
  laufendem Scheduled Task, `logbuch`-Betrieb ausserhalb `wissen/spec`-Mandat) — erneut an
  Raphael geflaggt.
- Keine erfundene F3-Zeile, keine Gate-/Rule-Aenderung ohne Beleg, kein Mailversand.
- Verifier-Tabelle nicht angefasst — die «Entwurfsprozess»-Zeile wurde bereits am 20.07.
  promoviert (SYN-02-Session), dieser Lauf bestaetigt sie nur, ohne sie zu doppeln.

## 7. Offen / naechstes

- **P1 fuer Raphael (weiter offen, jetzt 2 Tage alt):** Schritt 1 des `ag-gruendung-monitor` auf
  Apple Mail als Primaerkanal fuer mail@ umstellen — sonst bleibt die UBS-Ueberwachung blind.
- **SYN-02-MVP-Bau:** Block 1 (Adapter `typologie_zu_variante.py`) startet «auf Freigabe» —
  naechster Auswertungspunkt ist, ob die Spec beim Bau als lebendes Dokument haelt (kippen
  E1/Parzellenwahl noch in Block 1?).
- F1-Ueberdehnungs-Gegentest (mittelgrosser, genervter Mittelfall) weiterhin **unbelegt**.
- F3: **Marketing/Text** bleibt die letzte offene Domaenen-Zeile.
- Sweep-Kandidat aus Lauf 23 offen: wie viele andere Hub-Monitore melden Erledigt-Zustaende, die
  nie an einem Artefakt verifiziert wurden («behoben, aber nicht behoben»)?
