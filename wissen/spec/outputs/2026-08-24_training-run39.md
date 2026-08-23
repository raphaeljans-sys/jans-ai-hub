---
title: Trainingslauf 39 — Verifikationslauf (F-ENV1 geloest)
status: established
last_updated: 2026-08-24
sources: [wissen/spec/wiki/QUESTIONS.md, wissen/spec/wiki/environment-jans-hub.md, wissen/koordination/SYNERGIE-REGISTER.md, CLAUDE.md, Dateisystem-Zaehlung 24.08.2026]
links: [[environment-jans-hub]], [[anwendung-jans]], [[verifier]]
---

# Trainingslauf 39 — Verifikationslauf

Datum: 2026-08-24 (Datum gemessen via `date`, Rule 260730b).
Lauf-Typ: **Verifikationslauf** — keine neue reale Spec seit Lauf 38 (30.07.2026, Korpus-Spec
`bauprodukte`). Geprueft ueber `find . -iname "*_spec.md"` im ganzen Hub: juengstes Datum
unveraendert 28.07. Legitimer Beitrag ist damit keine neue Methodik-Aussage, sondern eine
**Reue-Pruefung** der drei offenen Faeden plus die Aufloesung einer laengst faelligen
Bring-Schuld.

## 1. F-ENV1 geloest — exemplarisch am eigenen Artikel

F-ENV1 (seit Wissens-Chef Run 20, 29.07.2026 offen: «die Zaehlstaende in
[[environment-jans-hub]] haben kein Nachfuehrungs-Verfahren») war die aelteste unerledigte
Bring-Schuld dieser KB. Sie wurde diesen Lauf nicht nur diskutiert, sondern am Artefakt geloest.

**Nachgemessen (reproduzierbarer Befehl je Kennzahl, kein Schaetzwert):**

| Kennzahl | Befehl | Stand 24.08.2026 | Stand 29.07.2026 |
|---|---|---|---|
| Skills | `find skills -maxdepth 1 -type d \| tail -n +2 \| wc -l` | 51 | 50 |
| KBs (`wissen/`) | `find wissen -maxdepth 1 -type d \| tail -n +2 \| wc -l` | 20 | 18 |
| Rule-Dateien | `find rules -maxdepth 1 -name "*.md" \| wc -l` | 29 | 24 |
| davon @-importiert | `grep -c "^@/Volumes/daten/jans-ai-hub/rules/" CLAUDE.md` | 24 | 20 |
| `CLAUDE.md` | `wc -c CLAUDE.md` | 19'014 B | 17'899 B |

Alle fuenf Werte sind in 26 Tagen gewachsen — der staerkste bisherige Beweis der eigenen
F-ENV1-These, weil er nicht an einem fremden Artikel (die urspruengliche `claude-code`-Gegenprobe
aus Run 20), sondern am **eigenen** Text der KB `spec` gemessen wurde.

**Fix:** [[environment-jans-hub]] traegt jetzt einen eigenen Abschnitt «Nachmessung 2026-08-24»
mit dem Befehl je Kennzahl statt nur einer Zahl. Die aelteren Zaehlstand-Absaetze (13.07./23.07./
29.07.) bleiben unveraendert stehen — sie sind selbst zu einer kleinen Wachstumskurve geworden
und damit lehrreicher als eine geloeschte Historie. Byte-/Token-Budget des Grundkontexts bleibt
Sache von [[kontext-architektur]] (KB `claude-code`), das war bereits seit Run 20 so entschieden
und wird hier nicht verdoppelt.

Damit ist F-ENV1 **fuer diesen Artikel** geschlossen. Die verallgemeinerte Lehre (fuenfter
Alterungsmodus, [[anwendung-jans]] Schritt 2 — Zaehlstaende gehoeren nie in den bindenden Teil
eines Dokuments) bleibt unveraendert in Kraft; sie betrifft weiterhin auch kuenftige
Spec-Dokumente, nicht nur diesen Wiki-Artikel.

## 2. Reue-Checks ohne neuen Fund

- **F1 (Gate-Ueberdehnung):** weiterhin kein mittelgrosser, genervter Fall in `outputs/`.
  Schwelle unveraendert, keine Rule-Aenderung.
- **F3 (Verifier-Zuordnung je Domaene):** letzte offene Zeile bleibt Marketing/Text. Gezielt
  gesucht (`grep`/`find` ueber `skills/marketing/`, `skills/linkedin-*`, `wissen/koordination/`,
  alle `*_spec.md` im Hub) — kein belegter Fall. Nichts erfunden.
- **SYN-02 (Faktenbasis-/Freigabe-Wartestand):** gegen `wissen/koordination/SYNERGIE-REGISTER.md`
  geprueft (dortiger Stand 13.08.2026, Lauf 04 des Registers): `volumen_generator.py` liest
  weiterhin kein Parameter-Set, MVP-Bau unveraendert offen. Kein neuer Fund fuer `wissen/spec` —
  das Mandat liegt beim Synergie-Orchestrator, hier nur gegengeprueft, nicht neu bewertet.

## 3. Geaendert in diesem Lauf

- `wiki/environment-jans-hub.md` — Nachmessungs-Abschnitt 24.08.2026, `last_updated` aktualisiert.
- `wiki/QUESTIONS.md` — F-ENV1 auf geloest gesetzt; F1 + F3 Reue-Check-Staende ergaenzt.
- `CHANGELOG.md`, dieser Bericht.

## 4. Naechstes

- Kein Environment-Sweep noetig, bis eine der fuenf Kennzahlen wieder gebraucht wird — dann die
  Befehle aus Abschnitt 1 ausfuehren, nicht die hier notierten Zahlen kopieren.
- F1-Ueberdehnungs-Gegentest und F3 (Marketing/Text) bleiben die beiden aeltesten offenen
  Methodik-Fragen; sie brauchen einen realen Anwendungsfall, keinen weiteren Verifikationslauf.
- Kein Commit/Push aus dieser Session (Auftrag: nur pruefen, git diff --numstat kontrolliert).
