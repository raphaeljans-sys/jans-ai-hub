---
titel: "Normen-Training Run 23 (MacBook Pro) — Retro-Verifikation der 5 Run-22-Artefakte + BRL-16-15-Diagnosekorrektur"
datum: 2026-07-25
station: "MacBook Pro"
familien: "SIA + VKF (Stations-Split; DIN/VSS/RAL gehoeren dem Mac Mini, nicht angefasst)"
meilenstein: "Kein neues Destillat — Rueckstandsabbau gemaess ausdruecklichem Run-22-Auftrag"
agenten: "5 adversariale Refuter-Agenten (Hintergrund) + Korrekturen direkt durch den Hauptmodell-Lauf"
---

# Normen-Training Run 23 — MacBook Pro (SIA/VKF)

## Ergebnis in Kuerze

Run 22 hatte explizit angeordnet: «Retro-Verifikation der fuenf heutigen Artefakte — das ist der
naechste Lauf, bevor irgendeine neue Quelle angefasst wird.» Dieser Lauf hat genau das getan — keine
neue Norm destilliert, sondern fuenf adversariale Pruef-Agenten gegen die Original-PDFs geschickt und
zusaetzlich einen offenen P1-Punkt (BRL 16-15, S. 15/16-Diagnose) selbst per `pdftotext` korrigiert.

## Zugriffs- und Kollisions-Check (Pflicht)

- NAS `/Volumes/daten` gemountet: **OK**.
- OneDrive-Zugriff auf `PL - 02_Recht_Norm/02_Normen/` und `PL - 03 Brandschutz/`: **OK**, alle fuenf
  Refuter-Agenten sowie der eigene `pdftotext`-Check konnten die Original-PDFs lesen.
- Kollisions-Check: keine zweite `normen`-Instanz auf diesem Host aktiv.

## Eigene Korrektur (vor den Agenten-Laeufen, direkt per `pdftotext` verifiziert)

**BRL 16-15, Ziff. 2.4.3/2.4.4-Bildunterschrift (S. 15, nicht S. 16 wie zuvor angenommen).** Die
bestehende Diagnose im Destillat `vkf-brl-16-15-flucht-rettungswege.md` behauptete, die vom Beschluss
ABSV 22.03.2017 betroffene Bildunterschrift sei zwischen den Ueberschriften Ziff. 2.4.3 und Ziff. 2.4.4
**vertauscht** und liege auf S. 16. Per `pdftotext -f 15 -l 16 -layout` beider Fassungen (Fassung
01.01.2017 vs. Stand 01.12.2022) direkt nachgeprueft: Die Bildunterschrift liegt auf **S. 15**, und sie
steht in **beiden** Fassungen unter derselben Ueberschrift «zu Ziffer 2.4.4» — es handelt sich um eine
**reine Umbenennung** («Horizontaler Fluchtweg mit einem Ausgang…» → «Gesamtlaenge von Fluchtwegen mit
einem Ausgang…»), keine Vertauschung. Das bestaetigt Run 22s Vermutung («keine vertauschte
Bildunterschrift») und praezisiert sie um die exakte Seite und die Fundstellenanalyse. Korrigiert in
`destillate/vkf-brl-16-15-flucht-rettungswege.md` (Abschnitt «Ziff. 2.4.3/2.4.4 und der Beschluss ABSV
22.03.2017» + Delta-Liste Punkt 2).

## Retro-Verifikations-Verdikte (5 Hintergrund-Agenten, adversarial)

| Artefakt | Verdikt | Ergebnis | Status danach |
|---|---|---|---|
| `sia-410-1986.md` (Erstverifikation) | BEANSTANDET | Systematischer Zitierfehler korrigiert | **established** |
| `vkf-brl-13-15-baustoffe-bauteile.md`, Delta 2017 (Erstverifikation) | BESTANDEN | 0 Befunde | **established** |
| `vkf-brl-verwendung-baustoffe.md`, Delta 2017 (Erstverifikation) | BEANSTANDET | 5 lokale Korrekturen | speculative (Delta) |
| `sia-266-1-2003.md` (zweite Runde) | BEANSTANDET | 1 neuer Fehler gefunden+korrigiert | speculative |
| `wiki/vkf-beherbergungskategorien.md` (zweite Runde) | BEANSTANDET | 1 unbelegte Fundstelle korrigiert | **established** |

### SIA 410 — systematischer Zitierfehler

Die inhaltliche Substanz (Dokumenttyp «Empfehlung», Ausgaben-/Genehmigungsdaten, sechs Grundsinnbilder,
Modalverb-Aussage, alle Kurzzeichen) war bereits korrekt. Gefunden: ein **systematischer** Fehler bei
den Fundstellen-Zitaten — die Positionsnummern der Grundsinnbild-Tabelle (S. 5) waren als Unterziffern
«1.11.1» bis «1.11.6» einer gemeinsamen Ziffer 1.11 zitiert; tatsaechlich sind es sechs eigenstaendige
Ziffern «1.11» bis «1.16». Gleiches Muster bei den Fundstellen zu Ziff. 1.27/2.2/2.5/3.3/3.4 korrigiert
(«Ziff. X.Y, S. Z» → «Ziff. X, Pos. Y, S. Z»). Relevant, weil Rule `normen-referenz` exakte, am Original
nachschlagbare Fundstellen verlangt. Kleinere Korrekturen: Seitenbereich «1.27 Apparate» auf S. 10-11
erweitert, «Duschenwanne» statt «Duschwanne», «Abscheider» statt «Fettabscheider» (das Destillat hatte
sich an einer Stelle entgegen der eigenen Methodik-Vorgabe aus der franzoesischen statt der deutschen
Spalte bedient). Ein Fussnoten-Marker («farbige\*», S. 5-6) ohne auffindbare Erlaeuterung bleibt als
offener Punkt vermerkt. Nach Korrektur auf `established` gehoben.

### VKF-BRL 13-15, Delta 2017 — vollstaendig bestaetigt

Der Refuter hat alle zwoelf im Delta-Abschnitt zitierten Original-Seiten (S. 1, 2, 8, 9, 10-11, 12, 19,
24, 25 beider Fassungen) per Seitenbildvergleich Zeile fuer Zeile gegengelesen — keine einzige
Abweichung. Auf `established` gehoben; damit sind Basis-Destillat UND Fassungs-Delta dieser Norm jetzt
vollstaendig verifiziert.

### VKF-BRL 14-15, Delta 2017 — fuenf lokale Korrekturen

Die drei als «praxisrelevanteste» markierten Kernbefunde (neuer cr-Ausnahmekatalog Ziff. 2 Abs. 3,
Wegfall der Hochhaus-Sonderanforderung Ziff. 5.1.2, Wegfall der RF1-Gehaeusepflicht Ziff. 5.3) sowie
drei stichprobenartig geprueft Einzelaenderungen waren **wortgetreu korrekt**. Der Refuter hat bei der
notwendigen Breitenlektuere jedoch fuenf konkrete Fehler/Luecken gefunden:

1. **Fussnote [2] zu Ziff. 3.3.2 — Richtung verdreht.** Das Destillat behauptete, der Zusatz «(inkl.
   Ueberlappungsbereich)» sei 2017 neu ergaenzt worden. Tatsaechlich stand er bereits 2015 und wurde
   **2017 gestrichen** — genau umgekehrt.
2. **Ziff. 3.3.1 Abs. 5/6 faelschlich «buchstabengleich».** Beide Absaetze wurden real (wenn auch
   redaktionell) umformuliert («Deckung» → «oberste Schicht (Deckung)»; «Dachbekleidung»/«EI 30-
   Dachkonstruktion» → «Dachkonstruktion»/«Dach mit Feuerwiderstand EI 30»); die daraus gezogene
   methodische Schlussfolgerung zur Aenderungsliste stand auf einem falschen Einzelbeispiel.
3. **Ziff. 2, Abs. 8 komplett uebersehen** — ein vollstaendig neuer Absatz zu Beschichtungen ≤1.5 mm
   ohne Brandverhaltens-Anforderung, in der amtlichen Aenderungsliste genannt, aber weder in den
   Kernziffern noch in der Materielle-Aenderungen-Liste erfasst. Ergaenzt.
4. **Ziff. 3.2.3, Abs. 1 uebersehen** — Geltungsbereichs-Erweiterung auf Hinterlueftungsbereich-
   Daemmstoffe/flaechige Schichten; nur Abs. 2/3 waren erfasst. Ergaenzt.
5. **SN-EN-60065-Fassungsbezeichnung verkuerzt zitiert** («SN EN 60065:2011» statt der vollen
   Fassungsbezeichnung «SN EN 60065+A1+A11+A2+A12:2011») sowie **Ziff. 4.1 Abs. 7 mit Fussnote [7] zu
   Ziff. 4.2 vermischt** (die tatsaechliche Aenderung betrifft ausschliesslich die Tabellen-Fussnote,
   nicht den Ziffertext selbst) — beide korrigiert und getrennt dargestellt.

Alle fuenf Korrekturen eingearbeitet; das Delta bleibt bis zu einer kurzen Re-Verifikation auf
`speculative` (das Basis-Destillat 2015 bleibt unveraendert `established`).

### SIA 266/1 — zweite Runde, ein neuer Fehler in einer selbst nachgetragenen Passage

Alle 13 Korrekturen und 9 Ergaenzungen aus der ersten Runde (Run 22) wurden bestaetigt korrekt und
vollstaendig eingearbeitet. Die unabhaengige Neupruefung (nicht nur der Korrekturstellen, sondern des
gesamten Destillats) hat jedoch einen neuen Fehler in der **am selben Tag** (25.07.2026, Run 22)
nachgetragenen Figur-1-Beschreibung gefunden: die Groessen h/l waren als «Pruefkoerperhoehe/-laenge»
bezeichnet, gemaess Formel 1 (S. 9: «hi Breite des Versuchskoerpers») ist es jedoch umgekehrt — h ist
die Breite, l die Hoehe in Kraftrichtung. Zusaetzlich die Position der Ausgleichsschicht praezisiert
(an der Krafteinleitungsstelle, nicht «zwischen den Zonen»). Beide korrigiert. Lehre fuer diese KB:
frisch nachgetragene Passagen koennen selbst wieder neue Fehler einfuehren — eine erste Verifikation
deckt das nicht zwingend ab, wenn der Nachtrag NACH dieser Verifikation erfolgt. Bleibt `speculative`;
eine dritte Runde ist erst nach dieser Korrektur sinnvoll.

### VKF-Beherbergungskategorien — zweite Runde, eine unbelegte Fundstelle korrigiert

Alle 12 Korrekturen der ersten Runde wurden Seite fuer Seite (physische PDF-Einzelseiten-Extraktion,
nicht nur Volltext-Dump) bestaetigt, inkl. der Ausgaben-Disziplin-Korrektur 2015 vs. 2017 (unabhaengig
am Kontrastdokument nachgeprueft). Ein neuer, lokal begrenzter Befund: die Aussage zu «Betreutes
Wohnen» zitierte die Fundstelle «BRL 16-15de Ziff. 3.2» fuer die Aussage «Alterswohnungen sind der
Nutzung Wohnen zugeordnet» — diese Ziffer nennt Alterswohnungen jedoch nirgends; der eigentliche Beleg
(«Alterswohnungen» als Wohnbauten) steht ausschliesslich in der Begriffs-Richtlinie 10-15de, S. 35. Die
Formulierung wurde auf «plausibel, aber nicht explizit belegt» praezisiert. Nach dieser Korrektur auf
`established` gehoben.

## Register-Nachfuehrung

- `destillate/vkf-brl-16-15-flucht-rettungswege.md`: Diagnose-Abschnitt + Delta-Liste Punkt 2
  korrigiert (S. 15 statt 16, keine Vertauschung), `last_updated` auf 2026-07-25 gesetzt.
- `destillate/sia-410-1986.md`: 6 Zitierfehler-Korrekturen + 3 kleinere Korrekturen, `status` auf
  `established`, `verifikation`-Feld ergaenzt, Offene-Punkte um Fussnoten-Marker erweitert.
- `destillate/vkf-brl-13-15-baustoffe-bauteile.md`: Verifikationsstand-Callout auf BESTANDEN/established
  aktualisiert.
- `destillate/vkf-brl-verwendung-baustoffe.md`: 5 Korrekturen im Fliesstext, Verifikationsstand-Callout
  und `gelesen`-Feld aktualisiert.
- `destillate/sia-266-1-2003.md`: Figur-1-Beschreibung korrigiert, `verifikation`-Feld um zweite Runde
  ergaenzt (Status bleibt speculative).
- `wiki/vkf-beherbergungskategorien.md`: Fundstellen-Korrektur, `status` auf `established`,
  `verification`-Feld ergaenzt.
- `destillate/INDEX.md`: 4 Eintraege aktualisiert (sia-410, sia-266-1, vkf-brl-13-15, vkf-brl-verwendung-baustoffe).
- `wiki/REGISTER.md`: 4 Eintraege aktualisiert (SIA 410, SIA 266/1, VKF-BRL 13-15, VKF-BRL 14-15).
- `wiki/QUESTIONS.md`: Run-23-Sektion am Kopf ergaenzt.
- `training/norm-inventar.md`: Kopfnotiz Run 23 ergaenzt (0 offene `[ ]`, keine neue Destillation).
- `CHANGELOG.md`: Eintrag zuoberst.

## Weiterhin offen — nicht selbst entschieden (Uebergabe an Raphael)

Diese beiden Punkte aus Run 22 sind unveraendert offen; sie sind strukturelle bzw. Beschaffungs-
Entscheide, die dieser Lauf bewusst NICHT eigenmaechtig trifft:

1. **Entscheid PL-03 ins Inventar aufnehmen** (mit eigener Fassungs-Spalte) oder als getrennte
   Brandschutz-Ablage fuehren und im Skill `normen` einen Pflicht-Querblick verankern. Das ist die
   einzige strukturelle Frage, die bestimmt, ob kuenftige Fassungsluecken (wie in Run 22 gefunden)
   automatisch auffallen.
2. **Bring-Schulden** (nur ueber SIA-Abo/Kauf schliessbar, kein Loop-Fall): Volltext SIA 380/1:2016
   (P1, blockiert Agent `energie-berater`), SIA 385/1:2011, SIA 118:2013 (Werkvertraege), SIA 2048,
   SIA 242, SN EN 520, SIA 410/1 (Farbcode, referenziert in SIA 410 Ziff. 2.5 Pos. 7).

## Empfehlung an Raphael

**Kein neuer Endbedingungs-Vorschlag** — Run 22s Kernbefund (die Vollstaendigkeits-Metrik misst nur
Datei-Existenz, nicht Verifikationstiefe) bleibt gueltig, und dieser Lauf hat gezeigt, dass Retro-
Verifikation selbst wieder Rueckstand erzeugen kann (SIA 266/1: neuer Fehler in einer eigenen
Korrektur). Fuer den naechsten Lauf: (1) VKF-BRL-14-15-Delta kurz re-verifizieren, (2) SIA 266/1
dritte Runde, danach kann `wiki/QUESTIONS.md` weiter abgearbeitet werden (rund 40 verbleibende Punkte
laut Run-22-Zaehlung). Die zwei oben genannten Entscheide (PL-03, Bring-Schulden) bleiben bei Raphael.

## Modell- und Kostendisziplin

5 adversariale Verifikations-Agenten liefen als eigenstaendige Hintergrund-Agenten (Haupttmodell-
Ebene, da Verifikation/Richter-Stufe gemaess Rule 260719 nicht auf ein guenstigeres Modell delegiert
wird). Alle Korrekturen (Fliesstext-Edits, Register-Nachfuehrung) wurden vom Hauptmodell direkt
ausgefuehrt, nicht an mechanische Subagenten delegiert, da sie inhaltliche Praezisions-Entscheidungen
erforderten. Die BRL-16-15-Diagnosekorrektur (S. 15 vs. 16) wurde vom Hauptmodell selbst per
`pdftotext` verifiziert, nicht per Agent — schnellster und zuverlaessigster Weg fuer eine reine
Text-Layer-Frage. Kein Artefakt-Status wurde ohne vorherige unabhaengige Verifikation gehoben.
