# Batch-Lauf 2026-07-18 — architekten-synobsis

Scheduled Task `synobsis-batch-nacht`, Mac Mini (Macmini.local), Nachtfenster.

## Voraussetzungen
- Host-Weiche: `Macmini.local` (enthaelt "Macmini") — erfuellt.
- NAS gemountet: `/Volumes/daten/05_Architekten_Synobsis` und `/Volumes/daten/jans-ai-hub` erreichbar.

## Lauf
- Start 02:18:13, Ende 02:18:42 (+0200), Dauer 29 s.
- Charge 25.
- **Stufe 1 (Scan/Katalog):** nichts zu tun — 853/853 verarbeitet, offen 0. Kein neuer Stoff seit 2026-07-02 (16 Tage).
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
  Ablage, kein Architekt) — deckungsgleich mit dem Katalog, kein Rueckstand. Zusaetzlich liegen
  6 lose Streudateien direkt im Wurzelordner (`lieblingsarchitekt.jpg`,
  `New_York_Segram_pl_00_caruso2012FSworkbook 25.dwg`, `tumblr_...500.jpg`, `Unknown.jpg`,
  `_Japanische Architekten.docx`, `.DS_Store`) — keine Architektenordner, vom Scan korrekt
  ignoriert. (Der Roh-`ls`-Zaehler von 859 entsteht aus 854 Ordnern + 6 Dateien − versteckte
  `.DS_Store`; keine neue Substanz.)
- Juengste Aenderung eines Architekten-Ordners: `HdM`, unveraendert seit 07.04.2026. Seit dem
  Katalog-Stand (02.07.2026) ist in der Quelle nichts Neues angelegt worden.

## Repo-Aenderung
- Nur Zeitstempel: `catalog/INDEX.md` (Stand-Zeile) und `catalog/cad-index.json` (`stand`-Feld),
  je 1 Zeile (`git diff --stat`: 2 files changed, 2 insertions, 2 deletions). `vectors.npz`
  deterministisch ohne inhaltlichen Diff.

## Auffaelligkeiten / Empfehlung
- **Endbedingung weiter erreicht — der Loop bleibt gegenstandslos.** Wie schon am 13.–17.07.
  protokolliert, laeuft der Batch seit dem 02.07.2026 (853/853 vollstaendig) ohne inhaltlichen
  Ertrag und schreibt je zwei Zeitstempel-Zeilen. Regel 260712b: «Abgeschlossene Inventare
  (Endbedingung erreicht) werden ganz beendet statt gedrosselt.» Die Empfehlung, den Scheduled
  Task `synobsis-batch-nacht` stillzulegen, steht unveraendert — Entscheid liegt bei Raphael
  (Konfigurationsaenderung ausserhalb dieses Task-Auftrags).
- Wieder-Anlass fuer einen Lauf nur bei (a) neuem Rohmaterial in der Quelle oder (b) einer
  freigegebenen Stufe-3-Bereinigung der in `wiki/QUESTIONS.md` gesammelten
  Doppelordner-/Slug-Fragen. Der Katalog bleibt such- und embedding-bereit.
