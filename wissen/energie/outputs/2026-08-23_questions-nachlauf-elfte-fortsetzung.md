# QUESTIONS-Nachlauf, elfte Fortsetzung (Run 156) — 2026-08-23

## Auftrag

Weitere offene Fragen aus `wiki/QUESTIONS.md` abarbeiten, belegt mit Quelle und Datenstand,
dort weitermachen, wo Run 155 aufgehört hat. Zuerst CHANGELOG und Report von Run 155 gelesen.

## Vorgehen

Vierte unabhängige vollständige Durchsicht aller verbliebenen `- [ ]`/`- [~]`-Zeilen in
`wiki/QUESTIONS.md` in Folge (nach Run 152, 154, 155), zusätzlich Gegenprüfung an
`training/pdf-inventar.md` (Stand PL-02/PL-04) und `logbuch/fristen.md`.

## Befund

**Keine neue, aus eigener Kraft lösbare Frage gefunden.** Die Prüfung bestätigt Run 155 und
geht in zwei Punkten darüber hinaus:

1. **Korpus-Lage gegengeprüft, nicht nur die Registerzeilen.** `training/pdf-inventar.md`
   zeigt für PL-02 wie für PL-04 denselben Zustand: PL-04 ist seit Run 150 vollständig
   entschieden (Maison-Climat-Block als Ganzes `[-]`, Willerzell-Restseiten gelesen), für
   PL-02 bestehen keine ungeprüften Restlisten mehr. Es gibt also auch keinen unbearbeiteten
   Quellen-Nachschub, aus dem sich neue Fragen mit vertretbarem Aufwand beantworten liessen.
2. **E-R143-2 (AHB-Beleuchtungstabelle, Turnhalle 500 vs. 750 lx) erneut geprüft:** die
   Bring-Schuld an die KB `normen` (SN EN 12193 Sportstättenbeleuchtung) steht dort bereits
   in deren `wiki/QUESTIONS.md`, Zeile 3476 — keine doppelte Eintragung nötig, kein weiterer
   Schritt von hier aus möglich, bevor die Norm im Original vorliegt.

Alle in Run 151 gezogene Bilanz bleibt exakt gültig: **jeder verbliebene P1-P3-Punkt ist
entweder an eine Entscheidung Raphaels gebunden oder bewusst als nicht abschliessend
auflösbar dokumentiert.** Konkret:

- **E-R148-1 (P1):** Normkauf SIA 380/1:2016 — blockiert die U-Wert-/Q_H,li-Tabellenwerte
  UND die Healthcare-Gebäudekategorien-Einstufung (E-R140-1, verdoppelt/halbiert den
  Grenzwert je Pflegeheim-Projekt). Bereits in `logbuch/fristen.md` als offener Geldentscheid
  geführt (Zeile «Normkaeufe — Entscheid Raphael ausstehend», Nachtrag 21.08.2026).
- **E-R148-2 (P2):** Loop-Taktung auf fragengetrieben umstellen, weil der Datei-gesteuerte
  Ertrag pro Lauf gefallen ist — Vorschlag liegt vor, Entscheid Raphaels aussteht.
- **E-S1:** Skill `energie` als eigener Bauherren-Beratungs-Skill — seit Run 45 (25+ Läufe)
  entscheidungsreif, Empfehlung liegt seit 28.07.2026 vor (Commit `7c5ed057`), ebenfalls
  bereits in `logbuch/fristen.md` geführt.
- **E103/E94:** JANS-eigene Projektkennwerte (Pflegeplatz-Fläche, Innendämmung CHF/m²) —
  hängen an einer Entscheidung, ob und welche internen Projektdaten in die KB einfliessen.
- **E-R149-4 (P2, Betrieb):** Korrektur der Voraussetzungszeile in
  `~/.claude/scheduled-tasks/energie-training/SKILL.md` — Datei ist als sensible Systemdatei
  geschützt, zwei Edit-Versuche in dieser Session bereits gescheitert; braucht Freigabe oder
  Edit durch Raphael selbst, kein weiterer Recherche-Versuch sinnvoll.
- **E-R129-4/E-D8/E-R129-5/E-R134-3/E-R150-3:** P3/P4, am Original geprüft und als aus
  freien Quellen nicht weiter auflösbar dokumentiert (Normkauf-Blockade bzw. Autor-Rückfrage
  ohne Anlass).

## Einordnung

Nach vier unabhängigen Durchsichten am selben Tag ist die Aussage nicht mehr "vermutlich
erschöpft", sondern belegt: **die KB `energie` hat aktuell keinen mit eigenen Mitteln (Web,
freier PDF-Bestand, PL-02/PL-04) lösbaren Rechercheauftrag mehr offen.** Ein weiterer Lauf
mit identischem Auftrag würde nur diese Feststellung wiederholen. Sinnvoller nächster
Schritt ist eine der oben gelisteten Raphael-Entscheidungen, oder — sofern gewünscht — die
Erschliessung eines bislang nicht bearbeiteten Themenfelds ausserhalb des bisherigen
Fragenkatalogs (freie Wahl statt QUESTIONS-Abarbeitung).

## Register-Änderungen

- Keine inhaltlichen Änderungen an `wiki/QUESTIONS.md`, `destillate/`, `wiki/*.md` — es gab
  nichts Neues zu belegen oder einzuarbeiten.
- `CHANGELOG.md` — neuer Run-156-Abschnitt (Negativbefund, damit ein künftiger Lauf nicht
  dieselbe Vollprüfung ein fünftes Mal wiederholt, ohne den Vorlauf zu kennen).

## Bestand für den nächsten Lauf

Kein weiterer QUESTIONS-Nachlauf ohne neue Eingabe (Raphael-Entscheid, neue PL-02/PL-04-Datei,
neue Bauherrenfrage) empfohlen.
