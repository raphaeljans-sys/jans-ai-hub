---
titel: "Normen-Training Run 25 (MacBook Pro) — SIA 266/1 auf established gehoben, VKF-BRL-Delta vollstaendig verifiziert, 3 weitere speculative Destillate erst-/tiefer geprueft"
datum: 2026-07-25
station: "MacBook Pro"
familien: "SIA + VKF (Stations-Split; DIN/VSS/RAL gehoeren dem Mac Mini, nicht angefasst)"
meilenstein: "Kein neues Destillat — zwei Run-24-Folgeaufgaben abgeschlossen + 3 weitere speculative Destillate verifiziert"
agenten: "6 adversariale Refuter-Agenten (Hintergrund, parallel)"
---

# Normen-Training Run 25 — MacBook Pro (SIA/VKF)

## Ergebnis in Kuerze

Run 24 hatte zwei konkrete Folgeaufgaben hinterlassen (SIA 266/1 vierte Runde, VKF-BRL-14-15-Delta
Ziff. 3.2.3 Abs. 1 Re-Verifikation). Dieser Lauf hat beide abgeschlossen — SIA 266/1 ist nach einer
fuenften, vollstaendig fehlerfreien Runde erstmals auf `established` gehoben, der VKF-BRL-Delta-
Abschnitt gilt jetzt als vollstaendig verifiziert. Zusaetzlich wurden drei speculative Destillate
geprueft, die seit ihrer Erstdestillation am 19.07.2026 (Run 16) nie oder nur oberflaechlich
adversarial verifiziert waren: sia-112-leistungsmodell.md (BESTAETIGT, established), sia-112-tabelle-
infrastruktur.md (BEANSTANDET, 4 Befunde korrigiert, bleibt speculative) und sia-271-wegleitung.md
(technischer Kern bestaetigt, 3 Frontmatter-Befunde korrigiert). Kein neues Destillat, `norm-inventar.md`
zeigt weiterhin 0 offene `[ ]`-Positionen.

## Zugriffs- und Kollisions-Check (Pflicht)

- NAS `/Volumes/daten` gemountet: **OK**.
- OneDrive-Zugriff auf `PL - 02_Recht_Norm/02_Normen/` und `PL - 03 Brandschutz/`: **OK**.
- Kollisions-Check: `git status --short -- wissen/normen/` leer vor Beginn; `ps aux` zeigte nur diesen
  einen Claude-Prozess auf dem Host — keine Zweitinstanz.
- Datei-Frischecheck: `find` mit `-newermt "2026-07-25 06:00:00"` auf `SIA_Norm/`+`VKF_Norm/` liefert
  0 neue/geaenderte Dateien; Dateianzahl (458 SIA-PDF, 49 VKF-PDF) unveraendert gegenueber Run 20/24.
- Workflow-Tool in dieser Session nicht nutzbar — wie in Run 24 sechs unabhaengige Hintergrund-Agenten
  direkt ueber das Agent-Tool gestartet (funktional aequivalent zur vorgesehenen Workflow-Pipeline).

## Runde 1 — die zwei Run-24-Folgeaufgaben (2 parallele Agenten)

### SIA 266/1 — vierte Retro-Verifikationsrunde: Figur-1-Zeile endlich sauber, 2 kleinere Stilbefunde

Fokus: die dreimal in Folge fehlerbehaftete Figur-1-Zeile (Ziff. 2.2, Prüfaufbau Mauerwerksdruck-
festigkeit) nach der Run-24-Korrektur (Trennung Fy-Hauptkraft/Querdruck-System) erneut pruefen, plus
komplettes 12-seitiges Original gegenlesen.

- **Figur-1-Zeile: 0 Befunde.** Das Fehlermuster (zuletzt editierte Zeile enthaelt neuen Fehler, zwei
  Runden in Folge) ist durchbrochen.
- **Restliches Dokument:** vollstaendig fehlerfrei bestaetigt (31 Verweisungen einzeln nachgezaehlt,
  Tabelle 1 inkl. aller 8 Fussnoten, Formeln 1/2, Ziff. 0.1-4.3, Genehmigung/Uebergangsbestimmungen).
- **2 geringfuegige, rein stilistisch-terminologische Befunde ausserhalb der Figur-1-Zeile:**
  1. Ziff. 2.3.7-Modalitaetsetikett "durchgehend Gerundivform" war zu pauschal (nur der zweite Halbsatz
     "ist ... anzugeben" ist Gerundivform, der erste "ist gleich dem ..." ist Definitionsaussage).
  2. Im Absatz "Zahlenwerte ausserhalb Tabelle 1" wurde "Krafteinleitung gestaffelt l/4-l/2-l/4" fuer
     den Querdruck-Mechanismus verwendet — inkonsistent zur frisch geschaerften Trennung in der
     Kernziffern-Zeile, wo "Krafteinleitung" bewusst nur fuer Fy (Ziff. 2.2.3) steht.
- Beide Korrekturen im Destillat eingearbeitet.

**Fuenfte, eng begrenzte Bestaetigungsrunde** (nur die zwei frisch editierten Stellen gegen S. 7-9
des Originals): **BESTAETIGT, 0 Befunde.** Damit erstmals eine komplette Verifikationsrunde ohne jeden
Befund — Fehlerverlauf ueber alle fuenf Runden: 13+9 / 1 / 1 / 2 / **0**. **Status auf `established`
gehoben** (25.07.2026).

### VKF-BRL 14-15-Delta, Ziff. 3.2.3 Abs. 1 — Re-Verifikation der Run-24-Praezisierung

Unabhaengiger Refuter hat Ziff. 3.2.3 Abs. 1 in beiden Original-Fassungen (2015/2017) wortwoertlich
extrahiert und Satz fuer Satz gegen die Run-24-Praezisierung geprueft: "Aussenwandbekleidungen" und
"im Hinterlueftungsbereich" standen tatsaechlich bereits 2015 wortgleich (nur andere Satzstellung),
die einzige materielle Neuerung 2017 ist der Zusatz "bzw. flaechige Schichten" plus "Materialien"→
"Baustoffe". **Verdikt: BESTAETIGT, 0 Befunde.** Damit sind jetzt alle 5 Run-23-Korrekturen des
Delta-Abschnitts unabhaengig re-verifiziert; der Delta-Abschnitt gilt als vollstaendig verifiziert
(verbleibender methodischer Vorbehalt unveraendert nur die Matrix-Tabellen-Zellwerte).

## Runde 2 — drei bislang nie/oberflaechlich verifizierte speculative Destillate (3 parallele Agenten)

Nach Abschluss von Runde 1 wurden die verbleibenden speculative-Destillate durchsucht: 4 der 7
speculative Artefakte haben einen dokumentierten Verifikationsgrund (sia-380-1-2016.md/sia-vertrags-
unterschiede-2023.md bewusst dauerhaft speculative bzw. Bring-Schuld-Auszug); 3 Destillate trugen kein
`verifikation`-Feld bzw. hatten nur die oberflaechliche Run-16-Pruefung (19.07.2026) durchlaufen.

### sia-112-leistungsmodell.md — BESTAETIGT, 0 Befunde → established

Vollstaendiger Satz-fuer-Satz-Abgleich (Herausgeber, 6 Phasen/12 Teilphasen, alle Phasenziele,
nachgelagerte Ordnungen SIA 102/103/105/108, alle Negativ-Aussagen). Zusaetzlich unabhaengig per
`mdls`/`strings` gegen die rohen PDF-Metadaten verifiziert (CreationDate 13.01.2016, Word 2010) —
exakt bestaetigt. **Status auf `established` gehoben.**

### sia-112-tabelle-infrastruktur.md — BEANSTANDET, 4 Befunde korrigiert, bleibt speculative

Die Run-16-Pruefung (19.07.2026) hatte bei oberflaechlicherer Lektuere 0 Befunde gemeldet; die
vollstaendige Seite-fuer-Seite-Pruefung dieses Laufs fand 4 Abweichungen:

1. **Substanziell:** Spalte "Menge" war im Destillat der Gruppe "Beschrieb" zugeordnet, gehoert laut
   Kopftabelle aber zur Gruppe "Kosten" (Menge × Einheitspreis = Preis).
2. 312.0 ("Beschrieb und Visualisierung") und 312.1 ("Projektgrundlagen") waren im Destillat faelschlich
   zu einem Eintrag zusammengezogen — im Original zwei separate Zeilen.
3. Die Pauschalaussage "jede Phase ist gleich aufgebaut" wird durch das im Destillat selbst zitierte
   Beispiel (Vorprojekt, 31.0) widerlegt: Vorprojekt hat als einzige Phase einen zweiten, im Original
   als "Vorprojekt 2" beschrifteten Kosten-/Termine-Block.
4. "Kosten und Finanzierung" war faelschlich in der Liste der abgeschnittenen Zeilentexte gefuehrt —
   im Original ein vollstaendiger Zeilentext (413.1/513.1), keine Kuerzung.

Alle 4 Befunde im Destillat korrigiert. Bleibt `speculative` bis zu einer kurzen Bestaetigungsrunde
der Korrekturen (naechster Lauf) — zusaetzlich strukturell weiterhin nicht als SIA-112-Normbeleg
zitierfaehig (kein Ausgabevermerk im PDF).

### sia-271-wegleitung.md — technischer Kern bestaetigt, 3 Frontmatter-Befunde korrigiert

Der fachlich-technische Kern (Ziff. 5.10.3-5.10.5, alle Zahlenwerte 50mm/0,7 l/s/60mm/150mm/2,9 l/s/
25mm/50%/80%/1,5%, Tabelle Abb. 75) ist wortgetreu bestaetigt, 0 Abweichungen. Drei Befunde ausschliesslich
bei Attribution/Bildunterschriften:

1. **PAVIDENSA-Verbandsname falsch:** Destillat "Abdichtungen Belaege Schweiz", Original (Deckblatt-Logo)
   "Abdichtungen Estriche Schweiz" — korrigiert.
2. **SFG-Kuerzel unsicher:** Destillat "SFG/ASE", Original-Logo klein/unscharf, eher "SFG-ASF" lesbar —
   im Frontmatter als unsicher markiert statt als gesichert gefuehrt.
3. **Abb.-75-Titel:** Destillat verwendet eine freie Umschreibung statt der Original-Bildunterschrift
   ("Einflussfaktoren auf die Planung von Dachwassereinlaeufen und Notueberlaeufen") — als Praezisierung
   ergaenzt.

Nicht auf `established` gehoben, da das SFG-Kuerzel noch am hochaufgeloesten Original zu verifizieren
ist.

## Register-Nachfuehrung

- `destillate/sia-266-1-2003.md`: 2 Kleinbefunde korrigiert, Status `established`, Frontmatter-
  `verifikation`-Feld um Runde 4+5 ergaenzt.
- `destillate/vkf-brl-verwendung-baustoffe.md`: Delta-Callout um Run-25-Bestaetigung ergaenzt.
- `destillate/sia-112-leistungsmodell.md`: Status `established`, `verifikation`-Feld neu angelegt.
- `destillate/sia-112-tabelle-infrastruktur.md`: 4 Korrekturen eingearbeitet, `verifikation`-Feld
  neu angelegt, bleibt `speculative`.
- `destillate/sia-271-wegleitung.md`: 3 Korrekturen eingearbeitet (Frontmatter + Fliesstext), bleibt
  `speculative`.
- `destillate/INDEX.md`: 5 Eintraege aktualisiert.
- `wiki/REGISTER.md`: 2 Eintraege aktualisiert (SIA 266/1, SIA-271-Wegleitung).
- `wiki/QUESTIONS.md`: neue Run-25-Sektion am Kopf ergaenzt (2 Punkte geschlossen, 2 neu offen fuer
  den naechsten Lauf).
- `training/norm-inventar.md`: Kopfnotiz Run 25 ergaenzt (0 offene `[ ]`, keine neue Destillation).
- `CHANGELOG.md`: Eintrag zuoberst.

## Weiterhin offen — nicht selbst entschieden (Uebergabe an Raphael)

Unveraendert aus Run 22/23/24, dieser Lauf trifft sie bewusst nicht:

1. **Entscheid PL-03 ins Inventar aufnehmen** oder als getrennte Brandschutz-Ablage fuehren mit
   Pflicht-Querblick im Skill `normen`.
2. **Bring-Schulden** (nur ueber SIA-Abo/Kauf schliessbar): Volltext SIA 380/1:2016 (P1, blockiert
   `energie-berater`), SIA 385/1:2011, SIA 118:2013 (Werkvertraege), SIA 2048, SIA 242, SN EN 520,
   SIA 410/1 (Farbcode), 260/1-267/1 deutsche Fassungen (nur franzoesisch im Bestand), SIA 240:1988
   Ausgabe pruefen, vollstaendige SIA-271-Wegleitung (nur 2-Seiten-Auszug im Bestand).

## Empfehlung an Raphael

Fuer den naechsten Lauf: (1) kurze Bestaetigungsrunde der 4 sia-112-tabelle-infrastruktur-Korrekturen;
(2) SFG-Kuerzel bei sia-271-wegleitung.md am Original visuell klaeren, dann `established`; (3) die
verbleibende speculative-Liste ist damit fast abgearbeitet — nur noch sia-vertragsunterschiede-2023.md
(bewusst dauerhaft speculative, kein Normtext) und sia-112-tabelle-infrastruktur.md offen, sowie die
drei SIA-112-Bereichs-Phasenmatrix/-Tabelle-Grenzfaelle bereits mit Vorrunden-Verifikation; (4) danach
QUESTIONS.md weiter Richtung Bring-Schulden/Strukturentscheide bearbeiten (beide weiterhin bei Raphael).
Kein "INVENTAR KOMPLETT"-Vorschlag noetig — die Basis-Inventarisierung ist seit mehreren Laeufen
bestaetigt komplett; die laufende Arbeit ist jetzt reine Vertiefungsstufe (b) Retro-Verifikation.

## Modell- und Kostendisziplin

6 adversariale Verifikations-Agenten liefen als eigenstaendige Hintergrund-Agenten auf Hauptmodell-
Ebene (Verifikations-/Richter-Stufe wird gemaess Rule 260719 nicht an ein guenstigeres Modell delegiert).
Das Workflow-Tool war in dieser Session wie in Run 24 nicht nutzbar — als Fallback wurden die
unabhaengigen Pruefstraenge direkt und parallel ueber das Agent-Tool gestartet (2 Agenten Runde 1 zeitgleich,
1 Agent Bestaetigungsrunde SIA 266/1 zeitgleich mit 2 neuen Erstpruefungen — insgesamt 3 parallele
Wellen). Alle Korrekturen (Fliesstext-Edits, Register-Nachfuehrung, Status-Hebungen) wurden vom
Hauptmodell direkt ausgefuehrt, da sie inhaltliche Praezisionsentscheidungen erforderten. Kein Artefakt-
Status wurde ohne vorherige unabhaengige Verifikation gehoben.
