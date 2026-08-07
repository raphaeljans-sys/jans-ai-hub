# Referenz: Bundesrecht-Volltexte ueber Fedlex lesen

Ausgelagert am 07.08.2026 aus `rules/auto-verbesserungen.md` (Eintrag 260721, Grundkontext-
Diaet Runde 3). Die Regel gilt unveraendert, sie wird nur nicht mehr in jede Session geladen —
gebraucht wird sie von den KBs und Loops, die Bundesrecht zitieren (`normen`, `baurecht` fuer
Bundesnormen, `firmengruendung-ch`, `energie`).

## Die Regel

Das Fedlex-Portal liefert **ohne JavaScript keinen Text**. Amtliche Volltexte deshalb immer
ueber das Filestore-Muster beziehen:

```
https://www.fedlex.admin.ch/filestore/fedlex.data.admin.ch/eli/cc/<ELI>/<JJJJMMTT>/de/html/fedlex-data-admin-ch-eli-cc-<ELI-mit-Bindestrichen>-<JJJJMMTT>-de-html.html
```

- Konsolidierungsdatum ist meist der 01.01. des laufenden Jahres; per curl-Statuscode testen.
- Beispiel OR (SR 220): ELI `27/317_321_377`.
- Artikel sind per `<article id="art_NNN">` extrahierbar; Buchstaben-Artikel tragen einen
  Unterstrich, z.B. `art_777_c`.

## Verwandt

- Rule `normen-referenz.md` — Fundstellenpflicht bei Normen (importiert).
- Rule `auto-verbesserungen.md`, Eintrag 260721 — verweist hierher.
