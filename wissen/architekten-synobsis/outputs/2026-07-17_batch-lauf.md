# Batch-Lauf 2026-07-17 — architekten-synobsis

Scheduled Task `synobsis-batch-nacht`, Mac Mini (Macmini.local), Nachtfenster.

## Voraussetzungen
- Host-Weiche: `Macmini.local` (enthaelt "Macmini") — erfuellt.
- NAS gemountet: `/Volumes/daten/05_Architekten_Synobsis` und `/Volumes/daten/jans-ai-hub` erreichbar.

## Lauf
- Start 02:18:34, Ende 02:19:02 (+0200), Dauer 28 s.
- Charge 25.
- **Stufe 1 (Scan/Katalog):** nichts zu tun — 853/853 verarbeitet, offen 0. Kein neuer Stoff seit 2026-07-02 (15 Tage).
- **Stufe 2 (Embeddings):** venv `~/.venvs/synobsis` vorhanden, Vektorindex neu geschrieben `catalog/vectors.npz` (853 × 768, Modell `intfloat/multilingual-e5-base`). Deterministisch → kein inhaltlicher Diff.
- **Stufe 3 (Kuratierung):** entfaellt, keine neuen Eintraege.

## Fortschritt
- Architekten gesamt: 853
- verarbeitet: 853 (100 %)
- offen: 0
- Katalog-Stand: 2026-07-02T22:52:26 (unveraendert)

## Gegen-Verifikation der Quelle
Unabhaengig vom Scan geprueft, ob wirklich kein Rohmaterial dazugekommen ist:
- Quelle zeigt 854 Top-Level-Ordner = 853 Architekten + `00_Organisation` (Buero-interne
  Ablage, kein Architekt) — deckungsgleich mit dem Katalog, kein Rueckstand.
- Juengste Aenderung eines Top-Level-Ordners: `HdM`, 07.04.2026. Seit dem Katalog-Stand
  (02.07.2026) ist in der Quelle nichts Neues angelegt worden.

## Repo-Aenderung
- Nur Zeitstempel: `catalog/INDEX.md` (Stand-Zeile) und `catalog/cad-index.json` (`stand`-Feld),
  je 1 Zeile. `vectors.npz` ohne Diff (`git diff --stat`: 2 files changed, 2 insertions, 2 deletions).

## Auffaelligkeiten / Empfehlung
- **Der Loop hat seine Endbedingung erreicht und sollte stillgelegt werden.** Seit dem
  2026-07-02 ist das Inventar mit 853/853 vollstaendig; seither laufen die Batches (13.07.
  siebenmal, 14.07. sechsmal, 15.07., heute) ausnahmslos ohne inhaltlichen Ertrag und
  schreiben je zwei Zeitstempel-Zeilen. Regel 260712b sieht dafuer ausdruecklich vor:
  «Abgeschlossene Inventare (Endbedingung erreicht) werden ganz beendet statt gedrosselt.»
  Die Drosselung (Regel 260714) allein greift hier zu kurz — der Lauf ist nicht zu haeufig,
  sondern gegenstandslos.
- Praezedenz besteht bereits: der `normen-training-mini`-Loop wird aus demselben Grund
  («Inventar komplett») stillgelegt — dazu liegt eine offene Sync-Task fuer den Mac Mini vor.
- Nicht selbst umgesetzt: das Loeschen/Pausieren des Scheduled Task ist eine
  Konfigurationsaenderung, die dieser Task-Auftrag nicht abdeckt. Entscheid liegt bei Raphael.
- Wieder-Anlass fuer einen Lauf gaebe es nur bei (a) neuem Rohmaterial in der Quelle oder
  (b) einer freigegebenen Stufe-3-Bereinigung der in `wiki/QUESTIONS.md` gesammelten
  Doppelordner-/Slug-Fragen. Der Katalog bleibt such- und embedding-bereit.
