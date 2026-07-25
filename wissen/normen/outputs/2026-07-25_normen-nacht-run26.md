# Normen-Training Run 26 — MacBook Pro (SIA/VKF), 25.07.2026

## Ausgangslage

Run 25 hatte zwei konkrete, eng begrenzte Folgeaufgaben hinterlassen:
1. Bestätigungsrunde der 4 Korrekturen in `sia-112-tabelle-infrastruktur.md`.
2. SFG-Kürzel in `sia-271-wegleitung.md` am Original visuell klären.

Sowie die Einschätzung, dass danach nur noch `sia-vertragsunterschiede-2023.md` (bewusst dauerhaft
speculative, kein Normtext) offen bliebe.

## Frischecheck (vor jeder inhaltlichen Arbeit)

- SIA_Norm: 458 PDF-Dateien (unverändert seit Run 20/21).
- VKF_Norm: 58 Dateien gesamt, davon 9 Nicht-PDF (8 PNG-Printscreens in `06_Printscreen_Themen/` + 1,
  bereits in Run 20 als nicht-normativ dokumentiert).
- Keine Dateien mit Änderungsdatum in den letzten 7 Tagen (Stichtag 18.07.2026 als Filter).
- **Befund:** 0 neue/veränderte Dateien. 0 offene `[ ]`-Positionen im Inventar unverändert.

## Durchgeführte Arbeit

### 1. sia-112-tabelle-infrastruktur.md — Bestätigungsrunde

Quelle direkt geöffnet: `SIA_Norm/SIA_Normen/SIA 112/tabelle_infrastruktur.xls.pdf`, S. 1 (Kopftabelle)
und S. 2 (Phasenzeilen 21.0–52.0 + zwei Organisations-Grafiken).

| Run-25-Korrektur | Gegenprüfung Run 26 | Verdikt |
|---|---|---|
| Spalte «Menge» gehört zur Gruppe «Kosten», nicht «Beschrieb» | Kopftabelle S. 1 zeigt «Kosten» als Gruppenüberschrift über Menge/Einheits-Preis/Preis/% | bestätigt |
| 312.0 und 312.1 sind zwei separate Zeilen, nicht zusammengezogen | S. 2: «312.0 Beschrieb und Visualisierung» und «312.1 Projektgrundlagen» als eigene Zeilen sichtbar | bestätigt |
| Vorprojekt-Ausnahme: zweiter Block «Vorprojekt 2» mit 313.1/314.1 | S. 2 zeigt exakt diesen zweiten Block unter «31.0 Projektierung / Vorprojekt 2» | bestätigt |
| «Kosten und Finanzierung» ist vollständiger Text bei 413.1/513.1, nicht abgeschnitten | Beide Zeilen auf S. 2 vollständig lesbar («Kosten und Finanzierung», Ausschreibung 413.1 und Realisierung 513.1) | bestätigt |

**Verdikt: 0 Abweichungen. Status auf `established` gehoben.** Strukturelle Einschränkung bleibt
unverändert bestehen (kein Deckblatt/Ausgabevermerk, daher nicht als SIA-112-Normbeleg zitierfähig —
nur als Struktur-Landkarte für `terminplanung`/`honorarberechnung-sia102`/`kostenkontrolle` nutzbar).

### 2. sia-271-wegleitung.md — SFG-Kürzel visuell geklärt

Quelle direkt geöffnet: `SIA_Norm/SIA_Merkblaetter/SIA271_Wegleitung_Abdichtung.pdf`, S. 1 (Deckblatt),
hochauflösend gerendert. Das Logo unten rechts zeigt eindeutig lesbar:

```
SFG — ASVE
SCHWEIZERISCHE FACHVEREINIGUNG GEBÄUDEBEGRÜNUNG
ASSOCIATION SUISSE DES SPÉCIALISTES DU VERDISSEMENT DES EDIFICES
```

Damit ist die zuvor unsichere Lesart («ASF»/«ASE») widerlegt — korrekt ist **ASVE**. Frontmatter
korrigiert. Alle 3 Run-25-Befunde (PAVIDENSA-Name, SFG-Kürzel, Abb.-75-Titel) sind damit geschlossen.
**Status auf `established` gehoben.** Bleibt Teil-Destillat: das PDF enthält weiterhin nur 2 von
vermutlich >64 Seiten der vollständigen Wegleitung (Beschaffungs-Pendenz bleibt offen).

## Registerpflege

- `training/norm-inventar.md`: beide Zeilen aktualisiert (`established`), Run-26-Zusammenfassung oben ergänzt.
- `destillate/INDEX.md`: beide Statuszeilen auf `established` gehoben.
- `wiki/QUESTIONS.md`: Run-26-Abschnitt oben ergänzt (beide Run-25-Folgeaufgaben als `[x]` geschlossen).
- `CHANGELOG.md`: Run-26-Eintrag oben ergänzt.

## Ergebnis / Ausblick

Die speculative-Bestandsliste der SIA/VKF-KB ist jetzt bis auf den einen bewusst dauerhaften Fall
`sia-vertragsunterschiede-2023.md` (reines Frage-Antwort-Blatt ohne Normtext) leer. Alle anderen jemals
als speculative erfassten Destillate sind entweder auf `established` gehoben oder tragen einen
strukturell begründeten Dauervermerk.

Die verbleibenden offenen Punkte in `wiki/QUESTIONS.md` sind ausschliesslich:
- **Bring-Schulden** (Volltexte nur per SIA-Abo/Kauf zu beschaffen: SIA 380/1:2016, SIA 385/1:2011,
  SIA 118:2013, SIA 242, neuere Ausgaben SIA 266/1 bzw. SIA 410 abklären, vollständige SIA-271-Wegleitung).
- **Strukturentscheide bei Raphael** (PL-03-Ordner ins Inventar aufnehmen oder getrennt führen).

Beide Kategorien sind nicht vom Loop selbst schliessbar. Für den nächsten Lauf: falls keine neue Quelle
und kein neuer Bring-Schuld-Fortschritt vorliegt, ist ein weiterer reiner Frischecheck ohne Mehrwert —
sinnvoller wäre ein Blick in die Q&A-Selbstbefragung (Stufe c) für die seit Run 25 neu auf `established`
gehobenen Destillate (sia-266/1, sia-410, sia-112-leistungsmodell, sia-112-tabelle-infrastruktur,
sia-271-wegleitung), um deren Abdeckung in `destillate/qa/INDEX.md` nachzuziehen.
