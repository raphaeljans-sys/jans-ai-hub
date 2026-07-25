# Rule: Auftrags-Dekomposition vor Mehrfach-Auftraegen

## Regel

Enthaelt eine Eingabe **mehrere Teildeliverables** (≥ 3 Dinge, oder ein langer
Bündelsatz mit mehreren «und»-verknüpften Aufträgen), wird **zuerst** eine explizite
Deliverable-Checkliste über `TaskCreate` angelegt — **bevor** mit dem ersten
Erzeugnis begonnen wird. Erst dann abarbeiten, jedes Deliverable als eigene Task.

## Warum

- Die Session-Analyse (43 Sessions) zeigt: das häufigste Eingabemuster ist ein
  kommaloser Lauf-Satz mit 4–5 Teilaufträgen (z.B. «erstelle Submission … inkl.
  Kellerabteile … Türenkontrolle … zwei Türen montieren … Küchenrevision»).
- Ohne explizite Zerlegung geht regelmässig ein Teilpunkt verloren — der teuerste
  Fehlertyp, weil er erst beim Versand auffällt.
- Eine sichtbare Checkliste macht den Umfang für beide Seiten überprüfbar und
  erlaubt dem Benutzer, vor der Produktion zu korrigieren statt danach.

## Wie anwenden

### IMMER (bei Mehrfach-Auftrag)

1. Den Bündelsatz in einzelne, atomare Deliverables zerlegen.
2. Pro Deliverable eine Task via `TaskCreate` anlegen (klarer, imperativer Titel).
3. In **einem** Satz bestätigen, was erkannt wurde — dann mit der ersten Task starten.
4. Jede Task einzeln auf `completed` setzen; am Ende gegen die ursprüngliche Eingabe
   abgleichen, ob wirklich jeder Teil erledigt ist.

### NICHT nötig

- Bei Einzelaufträgen (ein Deliverable) — direkt ausführen, keine Task-Bürokratie.
- Bei rein gesprächigen/Frage-Antwort-Eingaben ohne Erzeugnis.

## Geltungsbereich

Alle Skills und direkten Aufträge, die mehr als ein Erzeugnis verlangen — besonders
`ausschreibung`, `pendenzenliste`, `protokoll`, Dokument-/Mail-Pakete. Ergänzt die
Korrektur-Pflicht (jedes fertige Teilstück läuft am Ende durch Skill `korrektur`).

## Verwandt

- `auto-verbesserungen.md` — Quelle dieser Regel (Session-Analyse 260602).
- Skill `korrektur` — QS jedes einzelnen Deliverables vor Ausgabe.
