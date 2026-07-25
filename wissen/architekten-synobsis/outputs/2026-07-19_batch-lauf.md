# Batch-Lauf 2026-07-19 — architekten-synobsis

Scheduled Task `synobsis-batch-nacht`, Mac Mini (Macmini.local), Nachtfenster.

## Voraussetzungen
- Host-Weiche: `Macmini.local` (enthaelt "Macmini") — erfuellt.
- NAS gemountet: `/Volumes/daten/05_Architekten_Synobsis` und `/Volumes/daten/jans-ai-hub` erreichbar.

## Lauf
- Start 02:18:18, Ende 02:18:48 (+0200), Dauer 30 s.
- Charge 25.
- **Stufe 1 (Scan/Katalog):** nichts zu tun — 853/853 verarbeitet, offen 0. Kein neuer Stoff seit 2026-07-02 (17 Tage).
- **Stufe 2 (Embeddings):** venv `~/.venvs/synobsis` vorhanden, Vektorindex neu geschrieben `catalog/vectors.npz` (853 × 768, Modell `intfloat/multilingual-e5-base`). Deterministisch → kein inhaltlicher Diff.
- **Stufe 3 (Kuratierung):** entfaellt, keine neuen Eintraege.

## Fortschritt
- Architekten gesamt: 853
- verarbeitet: 853 (100 %)
- offen: 0
- Katalog-Stand: 2026-07-02T22:52:26 (unveraendert)

## Gegen-Verifikation der Quelle
Unabhaengig vom Scan geprueft, ob wirklich kein Rohmaterial dazugekommen ist:
- Quelle zeigt 854 Top-Level-**Verzeichnisse** = 853 Architekten + `00_Organisation` (Buero-interne
  Ablage, kein Architekt) — deckungsgleich mit dem Katalog, kein Rueckstand. Dazu 6 lose
  Streudateien direkt im Wurzelordner (jpg/dwg/docx/`.DS_Store`) — keine Architektenordner, vom
  Scan korrekt ignoriert.
- Juengste Aenderungen von Architekten-Ordnern: `HdM` (07.04.2026), `Ilg Santer Architekten`
  (25.03.2026), `MPP` (17.11.2025). Seit dem Katalog-Stand (02.07.2026) ist in der Quelle nichts
  Neues angelegt worden.

## Repo-Aenderung
- Nur Zeitstempel: `catalog/INDEX.md` (Stand-Zeile) und `catalog/cad-index.json` (`stand`-Feld),
  je 1 Zeile (`git diff --stat`: 2 files changed, 2 insertions, 2 deletions). `vectors.npz`
  deterministisch ohne inhaltlichen Diff.

## Auffaelligkeiten / Empfehlung
- **Endbedingung erreicht — Empfehlung zum siebten Mal in Folge: den Loop stilllegen.** Gezaehlt
  ueber das CHANGELOG ist dies der **17. ergebnislose Lauf** seit dem 13.07.2026 (13.07.: 7 Laeufe,
  14.07.: 6, 15.07.: 1, 17.07.: 1, 18.07.: 1, 19.07.: 1). Jeder dieser Laeufe hat ausschliesslich
  zwei Zeitstempel-Zeilen produziert. Regel 260712b: «Abgeschlossene Inventare (Endbedingung
  erreicht) werden ganz beendet statt gedrosselt.» Der Entscheid liegt bei Raphael — eine
  Konfigurationsaenderung am Scheduled Task ist vom Task-Auftrag nicht gedeckt und wurde deshalb
  auch heute nicht selbst vorgenommen. **Konkret zu tun: Scheduled Task `synobsis-batch-nacht`
  loeschen oder pausieren.**
- Beobachtung am Rande: fuer den **16.07.2026** existiert weder ein Laufprotokoll in `outputs/`
  noch ein CHANGELOG-Eintrag, und `outputs/batch.log` enthaelt keinen START-Eintrag fuer dieses
  Datum — an diesem Tag hat der Task nicht ausgeloest. Ohne Ertragsfolge (Katalog war ohnehin
  vollstaendig), hier nur der Vollstaendigkeit halber festgehalten.
- Wieder-Anlass fuer einen Lauf nur bei (a) neuem Rohmaterial in der Quelle oder (b) einer
  freigegebenen Stufe-3-Bereinigung der in `wiki/QUESTIONS.md` gesammelten
  Doppelordner-/Slug-Fragen. Der Katalog bleibt such- und embedding-bereit.
