# Datenaufbereitungs-Prozess (Rohdaten → veredelt)

Damit Bauleitungs-Anfragen mit der Zeit immer bessere Ergebnisse liefern, werden
die Grundlagendaten stufenweise veredelt. Jede Stufe erhöht den Reifegrad.

## Reifegrade

| Stufe | Name | Zustand | Beispiel |
|---|---|---|---|
| **R0** | Roh | Originaldatei im Archiv | `.crbx`, `.xls`, `.docx`, PDF |
| **R1** | Extrahiert | maschinell in `.md`/`.json` gewandelt | crbx_parser-Output |
| **R2** | Bereinigt | dedupliziert, Encoding/Format korrekt, MWST aktualisiert | Goldstandard-LV `.md` |
| **R3** | Angereichert | mit Fachwissen, BKP↔NPK-Mapping, Konditionen verknüpft | LV + Knowhow-Verweise |
| **R4** | Vorlage | parametrisiert (Platzhalter), wiederverwendbar | Master-LV je Gewerk |
| **R5** | Validiert | an echtem Projekt erprobt + vom Benutzer bestätigt | freigegebene Vorlage |

Ziel: möglichst viele Gewerke auf **R4/R5** bringen.

## Pipeline-Stufen (was bei jeder Veredelung passiert)

```
R0 Roh ──[crbx_parser.py / npk2000_struktur.py / docx-extract]──▶ R1 Extrahiert
R1 ──[dedup, Encoding, MWST 8,1 %, Textmerge]──────────────────▶ R2 Bereinigt
R2 ──[Knowhow + Gewerksliste + Konditionen verknüpfen]─────────▶ R3 Angereichert
R3 ──[Platzhalter setzen, projektneutral machen]───────────────▶ R4 Vorlage
R4 ──[an echtem Projekt testen + Benutzer-Freigabe]────────────▶ R5 Validiert
```

## Verarbeitungsregeln (verbindlich)

- **Quelle nie verändern** — Archiv (R0) bleibt unangetastet; gearbeitet wird auf Kopien/Ableitungen.
- **Herkunft mitführen** — jede `.md` trägt im Frontmatter `quelle:`.
- **MWST** beim Bereinigen immer auf **8,1 %** ziehen, Altwert vermerken.
- **Preise** aus Altquellen (NPK 2000 = 1996) nur als Richtwert markieren, nie als aktuell ausgeben.
- **Platzhalter-Konvention** bei R4: `<Objekt>`, `<Bauherr>`, `<Menge>`, `<EP>`, `<Frist>`.
- **Reifegrad** im Frontmatter führen: `reifegrad: R3`.

## Laufende Veredelung (Hintergrundprozess)

Der Bestand wird nicht einmalig, sondern fortlaufend veredelt — gesteuert über
den [Wochenplan](wochenplan-bauleitung.md). Pro Durchgang:
1. `reifegrad.py` zeigt den niedrigsten abgedeckten Gewerk-Reifegrad.
2. Das schwächste Glied eine Stufe höher heben (z.B. ein R1-LV auf R2 bereinigen).
3. Neue Lücken, die dabei auffallen, in `wissensluecken.md` eintragen (Mecano).
4. Reifegrad im Frontmatter aktualisieren.

So steigt die Datenqualität monoton — jede Bauleitungs-Anfrage profitiert vom
jeweils aktuellen Stand.

## Werkzeuge

| Tool | Stufe | Funktion |
|---|---|---|
| `tools/crbx_parser.py` | R0→R1 | SIA-451/.crbx → .md/.json |
| `tools/npk2000_struktur.py` | R0→R1 | NPK-2000-.xls → Struktur-.md |
| `tools/reifegrad.py` | Messung | Abdeckung + Reifegrad-Report |
