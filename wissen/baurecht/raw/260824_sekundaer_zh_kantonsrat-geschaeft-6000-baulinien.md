---
quelle: sekundaer
ebene: Kanton Zürich
erlass: Planungs- und Baugesetz (PBG), Änderung, Baulinien — Kantonsrats-Geschäft
kuerzel: KR-Geschäft 6000
herausgeber: Aggregator inzh.ch, laut eigener Quellenangabe gespeist aus opendata.swiss und
  kantonsrat.zh.ch
quelle_url: https://inzh.ch/kantonsrat/geschaefte/id/8e0d643ee68244f18d0db2c0c8f46c24
abgerufen: 2026-08-24
extraktion: WebFetch (Prosa-Extraktion durch Hilfsmodell, keine direkte HTML/JSON-Abfrage)
lizenz: unbekannt (privater Aggregator, kein amtliches Impressum auffindbar)
status_vorlage: >
  Die offizielle Quelle kantonsrat.zh.ch/geschaefte/geschaeft/ ist clientseitig gerendert
  (JavaScript-SPA) und liefert per WebFetch nur die Navigationshülle, keine Geschäftsdaten —
  dieselbe Fehlerfamilie wie bei Fedlex (siehe raw/-Konvention in dieser KB). inzh.ch spiegelt
  laut eigener Angabe dieselben Daten (opendata.swiss + kantonsrat.zh.ch) in statischem HTML.
  NICHT als amtliche Primärquelle geführt, sondern als Indiz — die exakten Daten sind bei
  Gelegenheit gegen die offizielle Seite oder eine kantonsrat.zh.ch-API gegenzuprüfen.
hinweis: >
  Zwei WebFetch-Durchläufe derselben URL wichen in der Zuordnung "welches Datum gehört zu
  welcher Verfahrensstufe" leicht voneinander ab (Interpretationsfehler des Hilfsmodells bei
  einer tabellenartigen Struktur). Der dritte Durchlauf mit der Anweisung "gib die Rohstruktur
  zeilenweise wieder, ohne zu interpretieren" ergab eine in sich konsistente, plausible
  Reihenfolge (siehe unten) und wird hier als massgeblich übernommen.
---

# KR-Geschäft 6000 — Planungs- und Baugesetz (PBG), Änderung, Baulinien (Auszug)

Wörtliche Wiedergabe der von inzh.ch als Zeilenstruktur gelieferten Verfahrensschritte (dritter,
nicht-interpretierender WebFetch-Durchlauf):

```
Business 6000
Planungs- und Baugesetz (PBG), Änderung, Baulinien
Type of business: Vorlage
KR Nr.: 6000
Pending with: Kantonsrat
Beginning: 13.1.2025
Directorate: Baudirektion (BD)
Commission: Kommission für Planung und Bau (KPB)
Participation: Regierungsrat des Kantons Zürich

Process: Antrag Regierungsrat
Deadline / Meeting date: 18.12.2024
Documents: Vorlage 6000 Planungs- und Baugesetz (PBG), Änderung, Baulinien

Process: Antrag Kommission
Status: Antrag KPB
Kurzmitteilung der KPB: "Baulinien sollen neu geregelt werden. Die Kommission für Planung und
  Bau (KPB) beantragt dem Kantonsrat mit 10 zu 5 Stimmen, die Änderung des Planungs- und
  Baugesetzes (PBG) betreffend «Baulinien» zu verabschieden."
Deadline / Meeting date: 2.12.2025
Documents: Antrag KPB 6000a ...

Process: 1. Lesung
Status: Abschluss 1. Lesung (115 zu 59 Stimmen für Eintreten)
Deadline / Meeting date: 15.6.2026
Documents: VOTE-KRZH-Dokument, KR-Teilprotokoll

Process: Antrag Kommission
Status: Antrag REDKO (Redaktionskommission)
Deadline / Meeting date: 2.7.2026
Documents: Antrag REDKO 6000b ...

Data: opendata.swiss, Kantonsrat Zürich
```

**Keine weiteren Einträge** (Schlussabstimmung, Referendumsfrist, Publikation im Amtsblatt,
Inkraftsetzung) waren auf der Seite zum Abrufzeitpunkt (24.08.2026) vorhanden — die Vorlage ist
damit nach dem hier verfügbaren Stand **noch nicht in Kraft**, aber deutlich weiter als
"Kommissionsberatung": die KPB hat bereits am 02.12.2025 mit 10:5 Stimmen Verabschiedung
beantragt, die 1. Lesung ist seit 15.06.2026 abgeschlossen (Eintreten 115:59), und die
Redaktionskommission wurde am 02.07.2026 befasst.
