---
title: Trainingslauf 39 — Verifikationslauf (F-ENV1 gelöst)
status: established
last_updated: 2026-08-24
sources: [wissen/spec/wiki/QUESTIONS.md, wissen/spec/wiki/environment-jans-hub.md, wissen/koordination/SYNERGIE-REGISTER.md, CLAUDE.md, Dateisystem-Zählung 24.08.2026]
links: [[environment-jans-hub]], [[anwendung-jans]], [[verifier]]
---

# Trainingslauf 39 — Verifikationslauf

Datum: 2026-08-24 (Datum gemessen via `date`, Rule 260730b).
Lauf-Typ: **Verifikationslauf** — keine neue reale Spec seit Lauf 38 (30.07.2026, Korpus-Spec
`bauprodukte`). Geprüft über `find . -iname "*_spec.md"` im ganzen Hub: jüngstes Datum
unverändert 28.07. Legitimer Beitrag ist damit keine neue Methodik-Aussage, sondern eine
**Reue-Prüfung** der drei offenen Fäden plus die Auflösung einer längst fälligen Bring-Schuld.

## 1. F-ENV1 gelöst — exemplarisch am eigenen Artikel

F-ENV1 (seit Wissens-Chef Run 20, 29.07.2026 offen: «die Zählstände in
[[environment-jans-hub]] haben kein Nachführungs-Verfahren») war die älteste unerledigte
Bring-Schuld dieser KB. Sie wurde diesen Lauf nicht nur diskutiert, sondern am Artefakt gelöst.

**Nachgemessen (reproduzierbarer Befehl je Kennzahl, kein Schätzwert):**

| Kennzahl | Befehl | Stand 24.08.2026 | Stand 29.07.2026 |
|---|---|---|---|
| Skills | `find skills -maxdepth 1 -type d \| tail -n +2 \| wc -l` | 51 | 50 |
| KBs (`wissen/`) | `find wissen -maxdepth 1 -type d \| tail -n +2 \| wc -l` | 20 | 18 |
| Rule-Dateien | `find rules -maxdepth 1 -name "*.md" \| wc -l` | 29 | 24 |
| davon @-importiert | `grep -c "^@/Volumes/daten/jans-ai-hub/rules/" CLAUDE.md` | 24 | 20 |
| `CLAUDE.md` | `wc -c CLAUDE.md` | 19'014 B | 17'899 B |

Alle fünf Werte sind in 26 Tagen gewachsen — der stärkste bisherige Beweis der eigenen
F-ENV1-These, weil er nicht an einem fremden Artikel (die ursprüngliche `claude-code`-Gegenprobe
aus Run 20), sondern am **eigenen** Text der KB `spec` gemessen wurde.

**Fix:** [[environment-jans-hub]] trägt jetzt einen eigenen Abschnitt «Nachmessung 2026-08-24»
mit dem Befehl je Kennzahl statt nur einer Zahl. Die älteren Zählstand-Absätze (13.07./23.07./
29.07.) bleiben unverändert stehen — sie sind selbst zu einer kleinen Wachstumskurve geworden
und damit lehrreicher als eine gelöschte Historie. Byte-/Token-Budget des Grundkontexts bleibt
Sache von [[kontext-architektur]] (KB `claude-code`), das war bereits seit Run 20 so entschieden
und wird hier nicht verdoppelt.

Damit ist F-ENV1 **für diesen Artikel** geschlossen. Die verallgemeinerte Lehre (fünfter
Alterungsmodus, [[anwendung-jans]] Schritt 2 — Zählstände gehören nie in den bindenden Teil
eines Dokuments) bleibt unverändert in Kraft; sie betrifft weiterhin auch künftige
Spec-Dokumente, nicht nur diesen Wiki-Artikel.

## 2. Reue-Checks ohne neuen Fund

- **F1 (Gate-Überdehnung):** weiterhin kein mittelgrosser, genervter Fall in `outputs/`.
  Schwelle unverändert, keine Rule-Änderung.
- **F3 (Verifier-Zuordnung je Domäne):** letzte offene Zeile bleibt Marketing/Text. Gezielt
  gesucht (`grep`/`find` über `skills/marketing/`, `skills/linkedin-*`, `wissen/koordination/`,
  alle `*_spec.md` im Hub) — kein belegter Fall. Nichts erfunden.
- **SYN-02 (Faktenbasis-/Freigabe-Wartestand):** gegen `wissen/koordination/SYNERGIE-REGISTER.md`
  geprüft (dortiger Stand 13.08.2026, Lauf 04 des Registers): `volumen_generator.py` liest
  weiterhin kein Parameter-Set, MVP-Bau unverändert offen. Kein neuer Fund für `wissen/spec` —
  das Mandat liegt beim Synergie-Orchestrator, hier nur gegengeprüft, nicht neu bewertet.

## 3. Geändert in diesem Lauf

- `wiki/environment-jans-hub.md` — Nachmessungs-Abschnitt 24.08.2026, `last_updated` aktualisiert.
- `wiki/QUESTIONS.md` — F-ENV1 auf gelöst gesetzt; F1 + F3 Reue-Check-Stände ergänzt.
- `CHANGELOG.md`, dieser Bericht.

## 4. Nächstes

- Kein Environment-Sweep nötig, bis eine der fünf Kennzahlen wieder gebraucht wird — dann die
  Befehle aus Abschnitt 1 ausführen, nicht die hier notierten Zahlen kopieren.
- F1-Überdehnungs-Gegentest und F3 (Marketing/Text) bleiben die beiden ältesten offenen
  Methodik-Fragen; sie brauchen einen realen Anwendungsfall, keinen weiteren Verifikationslauf.
- Kein Commit/Push aus dieser Session (Auftrag: nur prüfen, git diff --numstat kontrolliert).
