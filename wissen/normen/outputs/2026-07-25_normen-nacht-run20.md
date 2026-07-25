---
titel: "Normen-Training Run 20 (MacBook Pro) — unabhaengige Datei-fuer-Datei-Vollstaendigkeitsverifikation SIA/VKF (NFC-Diff), 0 neue/uebersehene Normen"
datum: 2026-07-25
station: "MacBook Pro"
familien: "SIA + VKF (Stations-Split; DIN/VSS/RAL gehoeren dem Mac Mini, nicht angefasst)"
meilenstein: "SIA/VKF KOMPLETT — 6. unabhaengige Bestaetigung, erstmals via programmatischem NFC-normalisiertem Basenamen-Diff"
---

# Normen-Training Run 20 — MacBook Pro (SIA/VKF)

## Ergebnis in Kuerze

- **Kein Destillat noetig** — Grunddestillation (0 offene `[ ]`) und alle vier Vertiefungsstufen
  (a-d) sind fuer SIA/VKF seit Run 19 (260724) abgeschlossen. Statt bereits erledigte
  Vertiefungsarbeit zu wiederholen, hat dieser Lauf die **Vollstaendigkeit unabhaengig und
  rigoros re-verifiziert** — genau die Sorgfalt, die in Run 15 einen falschen «komplett»-Befund
  aufdeckte, hier mit dem umgekehrten, sauberen Ergebnis.
- **Methode neu (haerter als Eyeball):** programmatischer Diff aller **503 live** vorhandenen
  SIA/VKF-Basenamen (rekursiv ab `SIA_Norm/` und `VKF_Norm/`) gegen alle im `norm-inventar.md`
  erwaehnten Dateinamen, **beide Seiten NFC-normalisiert** (macOS-Dateisystem liefert Umlaute
  NFD-zerlegt, das Inventar ist NFC-komponiert — ein naiver `grep -F` erzeugt sonst
  Umlaut-Fehlalarme).
- **Befund: 0 neue oder uebersehene normative Dateien.** Die einzigen 8 live vorhandenen
  SIA/VKF-Dateien ohne Inventar-Erwaehnung sind **8 PNG-Screenshots** in
  `VKF_Norm/06_Printscreen_Themen/` — nicht-normativ, korrekt ausserhalb des Destillat-Scopes.
  Jede der 458 SIA-PDF und aller VKF-PDF ist im Inventar erfasst (destilliert, als Sprachvariante/
  Altausgabe uebersprungen, oder als nicht-normativ markiert).

## Zugriffs-Check (Pflicht)

- NAS `/Volumes/daten` gemountet: **OK**.
- OneDrive-Ordnerzugriff (`ls`/`find` rekursiv ueber `PL - 02_Recht_Norm/02_Normen/SIA_Norm`
  und `VKF_Norm`): **OK** — keine TCC-Blockade auf der Verzeichnisebene. Kein Content-Read
  noetig (dieser Lauf verifiziert Datei-**Existenz**, nicht -Inhalt; die Inhalts-Verifikation
  der Destillate ist in Run 5/13-19 adversarial erfolgt).
- Kollisions-Check (`ps`, Rule 260724): **keine** zweite normen-Instanz auf dem Host aktiv.

## Verifikations-Verdikt (Datei-Existenz-Ebene)

| Pruefung | Ergebnis | Verdikt |
|---|---|---|
| Live SIA-PDF (rekursiv) vs Inventar-Erwaehnung, NFC | 458/458 erfasst | **bestanden** |
| Live VKF-Dateien vs Inventar-Erwaehnung, NFC | alle normativen PDF erfasst | **bestanden** |
| Nicht erwaehnte Live-Dateien | 8 (alle PNG-Screenshots, nicht-normativ) | **kein Befund** |
| Umlaut-Kandidaten (Gebaeude/Innenhoefe/Spaenefeuer/Fluessiggas/Wohnungslueftung/Gelaender) | NFC-Fehlalarme, alle im Inventar vorhanden | **kein Befund** |

Damit ist «SIA/VKF KOMPLETT» zum **6. Mal in Folge** und erstmals via reproduzierbarem
programmatischem Diff bestaetigt (Run 15/16/17/18/19 + dieser Lauf).

## Erledigte Restnotiz aus Run 19

- **Cross-Link SIA 500:** Run 19 notierte als offene Pruefung, ob `500_2009.pdf` als eigenes
  Destillat vorliegt. Verifiziert: `destillate/sia-500-2009.md` existiert, `status: established`,
  und `sia-en-13200-1-2019.md` verlinkt bereits korrekt auf `[[sia-500-2009]]` (Zeile 9 `links:`).
  **Kein Handlungsbedarf** — die Restnotiz ist geschlossen.

## Verbleibende Rest-Bring-Schulden (NICHT loop-schliessbar — brauchen Beschaffung)

Unveraendert seit Run 15; beide sind Vorschau-/Auszug-PDF im JANS-Bestand, deren normativer Teil
fehlt. Nur ueber SIA-Abo/Kauf schliessbar, kein Loop-Fall:

- **SIA 380/1:2016** (`[~]`, P1, Heizwaermebedarf): im Bestand nur 6 von 60 Normseiten; keine
  Q_H-Grenzwerte, U-Werte, Gebaeudekategorien. Nutzer: Agent `energie-berater`, Skill
  `planungsgrundlagen`. Falle dokumentiert: `xalt/neu/380_1_d_2001.pdf` ist Volltext, aber
  zweifach ueberholt (2001->2009->2016) und darf NICHT als Ersatz dienen.
- **SIA 385/1:2011** (`[x]` struktur-destillat, P2, Anlagen fuer Trinkwarmwasser): im Bestand nur
  6 von 28 Normseiten; keine Legionellen-/Ausstosszeit-/Speicher-/Daemmungs-Grenzwerte.

## Register-Nachfuehrung

- `training/norm-inventar.md`: Kopfnotiz «Run 20 (260725)» ergaenzt — unabhaengige NFC-Diff-
  Re-Verifikation dokumentiert, 8 PNG-Screenshots explizit als nicht-normativ ausgewiesen (damit
  kuenftige Laeufe sie nicht erneut als Kandidaten flaggen).
- `CHANGELOG.md`: Eintrag zuoberst.
- `destillate/INDEX.md`, `wiki/REGISTER.md`, `wiki/QUESTIONS.md`: **keine Aenderung** — kein
  Destillat erzeugt, keine Ausgaben-Gueltigkeit veraendert, keine neue offene Frage.

## Empfehlung an Raphael (Endbedingung PROGRAMM.md erreicht — 6. Mal)

Die PROGRAMM.md-Endbedingung ist stabil erreicht; ein weiterer 2-Stunden-Takt erzeugt keinen
Wissenszuwachs mehr, nur Re-Verifikation. Konkret:

1. **Task `normen-training-nacht` pausieren oder auf Datei-Aenderungs-Trigger umstellen** — analog
   zum bereits stillgelegten `normen-training-mini` (DIN/VSS/RAL komplett seit Mini-Run 32). Neue
   Laeufe erst, wenn neue Dateien in `SIA_Norm/` oder `VKF_Norm/` auftauchen (der NFC-Diff dieses
   Laufs ist die reproduzierbare Trigger-Pruefung dafuer — als Einzeiler wiederholbar).
2. **VOLLGAS-ENDLOS/TOKEN-VOLLGAS-Passus aus dem Auftragstext entfernen** — durch die Drosselung
   260714 aufgehoben, zieht aber bei jedem Lauf die widerrufene Vorgabe wieder herein.
3. **Zwei P1/P2-Bring-Schulden per SIA-Abo/Kauf beschaffen** (SIA 380/1:2016, SIA 385/1:2011) —
   nur so werden die beiden letzten `speculative`/Auszug-Destillate `established`.

## Commit-Lage

Alle Edits (Report, Inventar-Kopfnotiz, CHANGELOG) liegen auf der NAS-ext4-Platte. `git pull` +
pathspec-begrenzter Commit (`git commit -- wissen/normen`, Rule 260724 gegen Cross-Contamination)
+ `git push github main`. Bei Index-Sperre durch den nativen Synology-Selfcommit-Cron NICHT
erzwingen — der Cron uebernimmt die additiven Edits kollisionsfrei.
