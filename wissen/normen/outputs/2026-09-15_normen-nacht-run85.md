# Normen-Nacht Run 85 — 15.09.2026, ab 01:28 CEST (MacBook Pro)

**Drei Arbeitsblöcke:** (A) N84-2, die letzte Klasse der Risikokarte N83-2 (Quellen ohne
Textlayer), blind refutiert; (B) Run-84-Rest (drei ASCII-Destillate) und zwei Prüfvermerke in
SIA 251; (C) WC57-N1 beantwortet. Details und alle Befunde einzeln:
`training/n85-typ-a-refuter-260915.md`.

## Big Points

1. **22 Typ-A-Destillate, 136 Aussagen, 14 von 14 Kontrollwerten erkannt.** Die Prüfstufe kann
   widerlegen (mit Run 84: 22 von 22).
2. **Kein vertauschtes ≤/≥, kein falscher Zahlenwert, aber fünf Strenge- bzw. Grenzfehler.**
   Immer dieselbe Art: < statt ≤ (SIA 271 Tab. 8, SIA 384.201 Tab. B.15), ≥ statt > (SIA 251),
   «unter» statt «nie höher als» (SIA-Wegleitung 271), eine falsche Baujahrs-Klassengrenze. Die
   Textlayer-Klasse (Run 84) hatte keinen solchen Fehler; die Vorhersage aus N84-2 (Ablesen am
   Bild) bestätigt sich in milder Form.
3. **34 Befunde übernommen, alle inline korrigiert.** Der folgenreichste steht nicht in einem
   Wert, sondern im Praxis-Transfer: **SIA 312:2013** nannte die Abflussbeiwerte begrünter Dächer
   «direkt verwendbar» für den GEP-Nachweis. Die Norm sagt: für das Einzelobjekt nach SN 592000,
   **höher als die GEP-Werte**, und gestaffelt nach Aufbau-, nicht Substratdicke. Kein Konsument
   ausserhalb des Destillats gefunden.
4. **Statusabstieg `lignum-4-2` → `speculative`.** Vier Refuter-Runden, die vierte mit null
   Befunden, und jetzt fünf falsche Legenden-/Bildzuordnungen (Abb. 422-1, 427-1, 433-1) und
   eine fehlende Bedingung (Kap. 4.2.5). Anders als früher war nur die Anlage: blindes
   Aussagenpaket statt Destillat neben dem Original (N85-1).
5. **WC57-N1 beantwortet:** das VKF-Verzeichnis 40-15de (11.06.2025) führt SN EN IEC 62368-1
   ohne Jahr und die zwei Alternativnormen als ersetzt. Die SRZ-Angabe 2020+A11 im KISPI-Beleg
   widerspricht der VKF nicht. Registerzeile angelegt.

## Voraussetzungen (gemessen)

| Prüfung | Ergebnis |
|---|---|
| `lauf-gate.sh normen-training-nacht` | Exit 0 |
| Datum | `date` → 2026-09-15 01:28 CEST |
| Kollisionsschutz (`ps`) | kein paralleler Normen-Lauf |
| OneDrive-Zugriff | inhaltlich lesbar (`pdfinfo`, `pdftotext`, `pdftoppm`), kein M365-Fallback |
| Inventar | 0 offene `[ ]` im SIA/VKF-Scope ausser Bring-Schulden (SIA 181:2020 P1, SIA 491 P2) |
| Run-Nummer | 85, nach Sicht der jüngsten `outputs/`-Datei (Run 84, 11.09.) |
| Umfang nach dem Schreiben | `git diff --numstat` nativ per ssh: alle Löschungen benannte Zeilenersetzungen |

Stations-Split eingehalten: keine DIN-, VSS- oder RAL-Position berührt.

## Verdikte

| Paket | Aussagen | bestätigt | widerlegt | eingeschränkt | Kontrollen erkannt |
|---|---|---|---|---|---|
| K1 SIA 384.201, 382/1 | 28 | 22 | 3 (2 Kontrollen) | 3 | 2/2 |
| K2 SWKI VA103, SIA 343.051 | 22 | 14 | 3 (alle Kontrollen) | 5 | 3/3 |
| K3 Stadt ZH, SIA 358, EN 16954, EN 13200-1 | 15 | 9 | 3 (alle Kontrollen) | 3 | 3/3 |
| K4 SIA 180.08x, 251, 312, 329, 2056 | 17 | 10 | 2 (alle Kontrollen) | 5 | 2/2 |
| K5 SIA 271, Wegleitung, Suissetec, SVDW u.a. | 13 | 8 | 3 (2 Kontrollen) | 2 | 2/2 |
| K6 Lignum 4.2 (je Wert) | 162 | 149 | 2 (alle Kontrollen) | 11 | 2/2 |

Nach Hauptprozess-Entscheid: 34 Befunde übernommen, 5 Agentenbefunde als **kein Befund**
eingestuft (Aussage steht im Destillat bereits an anderer Stelle, Methodik-Pflicht 7), 3 Lignum-
Nebenbefunde als offen vermerkt (nicht selbst nachgerendert).

**Hauptprozess selbst am Original entschieden** (Präfix `r85-HP-`): SIA 384.201 S. 78 (Tab.
B.15), SN EN 13200-1 S. 5 (NA.12.2), SN EN 16954 S. 8, SN EN 14351-2 S. 13 und S. 30, SIA 251
S. 18 und S. 26, Stadt ZH S. 3 (Handlauf 400 dpi) und S. 4, SIA MB 2021 S. 7/9, VKF BRL 11-15
S. 7; Agenten-Ausschnitte gesichtet für SIA 271 Tab. 8, SIA 312 Tab. 5, SWKI Tab. 7 und
Ziff. 2.6.6, SIA 382/1 S. 55, SIA 180.081 S. 47, Lignum Abb. 422-1/425-1/427-1/428-1/433-1.

## Was NICHT geprüft wurde

1. `lignum-4-1` und `lignum-lignatec` (dort liefen seit Run 32 schärfere Methoden).
2. Abdeckungsrichtung auf keinem der 22 Destillate; keine Statushebung (Methodik-Pflicht 13).
3. Aussagen ohne Relationszeichen nur, soweit sie im selben Block standen.
4. Drei Lignum-Nebenbefunde (Abb. 424-1, 434-1, Kap. 4.3.5) nicht selbst nachgerendert.
5. Die FAQ 14-030 der VKF ist nicht beschafft.

## Vorgelegt

**Neu:** N85-1 (Refuter-Runden blind und mit Kontrollen, bevor sie eine Statushebung tragen),
N85-2 (Seiten-Inventur Lignum 4.2), N85-3 (zwei unpassende Dateinamen, destruktiv),
N85-5 (Lizenzvermerk eines anderen Büros auf der Hausdatei SIA 251). N85-4 ist ein
Protokollpunkt ohne offene Aufgabe.
**Unverändert bei Raphael:** N84-1, N83-1, N82-1, N81-3 (Methodik-Pflicht 14), N79-2, N78-1,
N77-2/-3, N65-2/-4, N63-2/-3, Beschaffungs-Bring-Schulden (SIA 181:2020, SIA 491, SN EN 12193).

## Nächster Lauf

Die Risikokarte N83-2 ist in allen drei Klassen abgearbeitet. Kandidaten: die Seiten-Inventur
für Lignum 4.2 (N85-2) als erste Abdeckungsrunde auf einem Typ-A-Destillat; danach die
Abdeckungsrichtung auf den übrigen `established`-Destillaten dieser Runde nach der
Kandidatenliste `training/n62-3-pruefstand-kandidaten.md`.
