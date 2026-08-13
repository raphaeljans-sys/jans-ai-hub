# Wissens-Chef Run 30 — Cross-KB-Konsistenzlauf

**Datum:** 13.08.2026, 01:45–02:10 CEST.
**Umfang:** 3 Felder · 17 gemeldete Befunde · 21 Agenten (3 Melder, 18 Refuter) · 0 Agentenfehler ·
3,06 Mio Subagenten-Token.
**Ergebnis:** **6 bestätigt, 11 verworfen.** Ein Befund der Stufe «hoch» mit direkter Geldwirkung,
korrigiert. Zwei Dateien geändert, beide ausserhalb der Normen-KB.

---

## 1 · Warum dieser Lauf schmal geschnitten war

Run 29 endete um 01:13, dieser Lauf begann um 01:45 — zweiunddreissig Minuten später. Run 29 hatte
in seinem eigenen Bericht empfohlen, nicht täglich zu laufen, sondern zuwachsgesteuert, und bei
knappem Kontingent «eher die Zahl der Felder senken als die Refuter-Runden».

Gemessen statt geschätzt: seit 01:30 hatten sich **22 Dateien in `wissen/`** geändert, praktisch
alle aus `normen` Run 49. Das ist weit unter der von Run 29 vorgeschlagenen Schwelle von rund 40.
Ein voller Sechs-Felder-Lauf wäre hier Verbrennung gewesen.

Der Zuschnitt folgte deshalb dem, was in diesen zweiunddreissig Minuten tatsächlich passiert war:
**drei Melder statt sechs, dafür die volle Verifikationsstufe** (18 Refuter). Das hat sich
ausgezahlt — der wertvollste Einzelbefund dieses Laufs stammt nicht von einem Melder, sondern von
einem Refuter.

---

## 2 · Der Befund: eine Korrektur, die in der eigenen KB stecken blieb

Die Ereigniskette einer einzigen Stunde:

| Zeit | Was geschah |
|---|---|
| 01:13 | **Wissens-Chef Run 29** verdrahtet den Skill `ausschreibung` erstmals in die Normen-KB und referiert dabei die ABB-Synthese: «beim Betonbau gar nicht inbegriffen» |
| 01:43 | **normen Run 49** liest das Original nach und korrigiert genau diesen Satz in der Synthese als **Bedeutungsumkehr** |
| 02:03 | **normen Run 50** zieht die drei Stellen im Destillat nach |
| — | **Der Skill bleibt auf dem falschen Stand.** Niemand im Normen-Strang schaut dorthin |

Das ist die Struktur, für die es diese Instanz gibt. Die KB hat sich innerhalb von zwanzig Minuten
selbst geheilt, in bemerkenswerter Gründlichkeit. Was sie nicht kann, ist **aus sich
heraussehen**: der Abnehmer liegt in `skills/`, nicht in `wissen/normen/`, und kein Lauf des
Normen-Strangs hat ihn im Blick.

**Verschärfend ist die Zeitspanne.** Die falsche Aussage war dreissig Minuten alt, als sie
widerlegt wurde. Wäre dieser Lauf der empfohlenen Zuwachsschwelle gefolgt und erst in einigen
Tagen gelaufen, hätte der Skill die Umkehr bis dahin getragen — und ein in dieser Zeit
geschriebenes Beton-LV hätte sie mitgenommen.

### Was inhaltlich falsch war

SIA 118/262:2004 Ziff. 8.4.2.2 (gedruckte S. 21):

> «Arbeitsgerüste, die für die Ausführung der Betonarbeiten nötig sind, werden nicht vergütet,
> ausgenommen wenn im Leistungsverzeichnis hierfür getrennte Positionen enthalten sind.»

«Nicht vergütet» heisst in der Vertragsterminologie dieser Norm **nicht gesondert vergütet**, also
**im Einheitspreis inbegriffen**. Ziff. 0.3 (S. 10) definiert die «Nicht inbegriffene Leistung»
gerade über das Merkmal «gesondert zu vergüten». Die Aussage «gar nicht inbegriffen» kehrt die
Rechtslage also um.

**Die praktische Folge fürs LV ist Geld.** Unter der falschen Lesart schreibt man eine
Gerüstposition ins Beton-LV — für eine Leistung, die im Einheitspreis bereits enthalten ist. Das
ist Doppelvergütung. Und in der Nachtragsprüfung führt dieselbe Umkehr dazu, dass eine
Arbeitsgerüst-Nachforderung ohne LV-Position fälschlich als berechtigt anerkannt wird.

---

## 3 · Was die Verifikation geleistet hat: sie hat mehr gefunden als die Meldung

Der Refuter auf die Kernfrage bekam die Nullhypothese «**die Korrektur ist der eigentliche
Fehler**» — er sollte die Korrektur widerlegen, nicht bestätigen. Er hat das Original-PDF auf
SharePoint aufgetrieben (`PL - 02_Recht_Norm/02_Normen/SIA_Norm/SIA_Normen/alle/118_262_2004_d.pdf`)
und die Seitenzuordnung über die Copyright-Fusszeilen verifiziert, statt sich auf ein Destillat zu
verlassen.

Ergebnis: Nullhypothese widerlegt, mit fünf unabhängigen Stützen (Ziff. 0.3 Definition,
Ziff. 1.3.2.3 Arbeitsgerüst als Unternehmeraufgabe, Ziff. 1.3.1.5, Katalog Ziff. 8.2.1,
Gegensatz Ziff. 8.4.2.3). Zwei denkbare dritte Lesarten wurden gezielt gesucht und am Wortlaut
ausgeschlossen.

**Und dabei fiel ein zweiter Fehler auf, den bis dahin niemand gesehen hatte** — auch Run 49
nicht, der die Umkehr ja gerade korrigiert hatte:

> Die Kontrastierung «anders als die Mauerwerk-ABB» ist ebenfalls falsch. **Beide** ABB stellen das
> Arbeitsgerüst in den Einheitspreis. Der Unterschied ist allein die Schwelle: SIA 118/266-1
> Ziff. 2.2 deckelt bei 3,0 m, SIA 118/262 kennt gar keine Höhengrenze. Der Betonbau ist für die
> Bauherrschaft damit **grosszügiger**, nicht enger — genau umgekehrt zur bisherigen Darstellung.

Das ist der praktisch wichtigste Satz dieses Berichts. **Wer nur die Formel «nicht inbegriffen» →
«inbegriffen» getauscht und den Nebensatz hätte stehen lassen, hätte einen neuen Fehler erzeugt** —
einen, der nach einer sauber ausgeführten Korrektur aussieht. Ein mechanischer Suchen-und-Ersetzen
wäre hier schlimmer gewesen als Nichtstun.

Bemerkenswert: `normen` Run 50 kam parallel, auf eigenem Weg und ohne Kenntnis dieses Laufs, zur
**identischen** Präzisierung («Im Ergebnis deckt sich das mit der Mauerwerk-ABB … kennt dafür keine
Höhengrenze»). Zwei unabhängige Lesungen desselben Originals, dasselbe Ergebnis. Das ist die
stärkste Bestätigung, die in diesem Harness überhaupt erreichbar ist.

---

## 4 · Der zweite bestätigte Befund: der Vorbehalt sass auf der falschen Seite

Run 29 hatte im Skill sauber getrennt: der Wiki-Artikel ist **Warnkarte** (Status `speculative`,
sagt nur, WO ein Unterschied liegt), das Destillat ist **Zitierquelle** («Nur diese Fundstelle
wandert ins LV»).

Die Trennung war richtig gedacht und in der Statusfrage **asymmetrisch**: der Verifikationsstatus
wurde ausschliesslich bei der Warnkarte benannt. Beim Destillat nicht — obwohl

- **8 der 10 ABB-Destillate** `status: speculative` tragen (nur `sia-118-266-1-2017` und
  `-266-2-2017` sind `established`), und
- `sia-118-262-2004` intern sogar eine ausdrückliche **Nichtverwendungs-Sperre** trug («Bis zur
  Nachprüfung ist die Angabe oben NICHT zu verwenden»), von der die Skill-Anweisung nichts wusste.

Ein als alleinige Zitierquelle deklariertes Dokument, das intern «nicht verwenden» sagt: genau
diese Lücke hat die Umkehr in den Skill gelassen. Die Rule `normen-referenz` (Fundstelle mit Norm,
Ausgabe, Ziffer) wird von einem `speculative`-Destillat formal erfüllt und inhaltlich unterlaufen.

**Korrektur bewusst an das Feld `status:` gebunden, nicht an eine Normnummern-Liste.** Eine Liste
«zitierfähig sind derzeit 266-1 und 266-2» wäre mit der nächsten Statushebung veraltet und würde
dann Destillate sperren, die längst verifiziert sind — derselbe Fehlertyp wie der Phantom-Code
271.10 (Rule `bkp-2017-referenz`): eine Abschrift, die verifiziert aussieht und beim nächsten Audit
nicht mehr auffällt.

---

## 5 · Was verworfen wurde, und warum das der zweite Ertrag ist

11 der 17 Meldungen fielen in der Verifikation. Ein Muster trägt fast alle:

**Vier Vorschläge wollten historische Protokolle nachträglich umschreiben** — den `normen`-CHANGELOG
(Z. 86, 390), den Laufbericht Run 48, den Registereintrag in `QUERBEZUEGE.md` (Z. 227). Alle vier
verworfen. Ein Protokoll hält fest, was zu einem Zeitpunkt galt; wer es glättet, zerstört die
Möglichkeit, einen Fehler später zu rekonstruieren. Der richtige Umgang ist der **datierte
Nachtrag**, und genau der ist am Run-29-Registereintrag gesetzt: der falsche Satz bleibt als
Wiedergabe des damaligen Standes stehen, mit der Widerlegung daneben.

**Drei Vorschläge wollten Vorbehalte ergänzen, die bereits dastanden** (Wiki-INDEX Z. 8,
Hindernisfrei-Fixmasse, Inklusivgrenzen im Skill). Ein Refuter formulierte den Grund scharf:
redundante, nicht deckungsgleiche Vorbehalte sind der Ausgangspunkt für die nächste
Bedeutungsumkehr, weil ein späterer Lauf entscheiden muss, welche Fassung gilt.

**Zwei betrafen Zahlen, die im Kontext korrekt waren** (Estrich-Mehrmengen `grobkosten`,
Holzbau-Traglasten `planungsgrundlagen`) und deren «Korrektur» eine richtige Aussage beschädigt
hätte.

---

## 6 · Was bewusst nicht angefasst wurde

**Kein einziger Eingriff in `wissen/normen/**`.** Während dieses Laufs arbeitete ein `normen`-Lauf
50 an genau denselben Dateien: das Destillat `sia-118-262-2004.md` änderte sich um 02:03 unter
laufender Messung, vier parallele Sessions waren nachweisbar aktiv. Ein Eingriff wäre Doppelarbeit
mit Kollisionsrisiko gewesen — der Fall, vor dem Rule `auto-verbesserungen` 260811 warnt.

Run 50 hat alle drei Destillat-Stellen (Z. 17, 123, 161) samt beider Warnmarker selbst korrigiert.
Der Cross-KB-Lauf war dafür nicht nötig; nötig war er für den Abnehmer, den Run 50 nicht sieht.

**Nicht mit-korrigiert, weil bereits richtig** (vom Refuter ausdrücklich geprüft): Z. 110
(Arbeitsgerüste FÜR SCHALUNGEN, Ziff. 8.2.2 — eine andere Leistung) und Z. 166 (Skill
`kostenkontrolle`, unter der korrigierten Lesart zutreffend). Beide standen auf der Kippe, blind
mitgeändert zu werden.

---

## 7 · Ausgeführte Aktionen

| Ort | Was gesetzt wurde |
|---|---|
| `skills/ausschreibung/SKILL.md` | Bedeutungsumkehr entfernt; neuer Absatz «Arbeitsgerüste im Beton-LV» mit Fundstelle (Ziff. 8.4.2.2, S. 21 · Ziff. 0.3, S. 10), LV-Konsequenz (keine Gerüstposition, Nachforderung ohne Position unbegründet), Abgrenzung Lehr-/Schutzgerüste (Ziff. 8.4.2.3) und richtiggestellter Mauerwerk-Parallele |
| `skills/ausschreibung/SKILL.md` | Neuer Status-Vorbehalt für die Zitierquelle, angebunden an das Feld `status:` im Destillat; `speculative` = Entwurf, am Original gegenlesen; ⚠-Marker = gar nicht verwenden |
| `wissen/koordination/QUERBEZUEGE.md` | Neuer Paar-Eintrag (Run 30) mit Belegkette; datierter Nachtrag am Run-29-Eintrag, der die falsche Fassung referierte |
| `wissen/koordination/CHANGELOG.md` | Lauf-Eintrag |

Schreibumfang nachgemessen (Rule 260811): QUERBEZUEGE 2757 → 2804 Zeilen, **0 Löschungen**.
SKILL.md 382 → 402 Zeilen, 4 ersetzte Zeilen (der beanstandete Satz), keine Fremdlöschung.

---

## 8 · Offene Punkte

1. **An `normen` übergeben:** `destillate/INDEX.md` Z. 22 trägt die falsche Fassung
   («Arbeitsgerüste für Beton NICHT inbegriffen») weiterhin und wurde bis 02:06 nicht mitgezogen.
   Bewusst nicht selbst korrigiert (Lauf 50 aktiv). **Bestätigter Befund, nicht erledigt.**
2. **Zur Prüfung durch `normen`:** ob die Wendung «umgekehrte Systematik» im korrigierten
   Wiki-Artikel (Z. 63) präzise genug ist. Nach der Refuter-Lesung ist die Systematik **dieselbe**
   (beide ABB: Einheitspreis), nur die Schwelle unterscheidet sich. Kein Sachfehler mehr, aber eine
   Formulierung, die den nächsten Leser wieder in Richtung «gegenläufig» schiebt.
3. **Methodik-Pflicht 11** (Vorschlag aus `normen` Run 49, Freigabe Raphael offen): «Ein
   unverifiziertes Destillat ist kein Wissensstand, sondern ein Entwurf.» Dieser Lauf ist der
   empirische Beleg dafür — der Vorbehalt stand im Wiki-Artikel zweimal, fett, und die Umkehr
   wanderte trotzdem in einen Skill. **Empfehlung: annehmen.**
4. **Unverändert offen aus Run 29:** lokaler OneDrive-Spiegel «IMMO - 02 UBSFS» (Punkt 1 dort),
   Beschaffung SIA 380/2:2022 (N29-1), Satz zur ABB-Reihe in `goldstandard-lv/README.md`, Verbleib
   von `normen/destillate/links.md`, Ticket T-Regelgeschoss, D10, Spektrumskosten-Band,
   `MAX_AUTO_BYTES`, Bring-Schulden aus Run 27/28.

---

## 9 · Zur Taktfrage, ergänzend zu Run 29

Run 29 empfahl **zuwachsgesteuert statt täglich**, Schwelle rund 40 geänderte Dateien. Dieser Lauf
liefert dazu ein Gegenbeispiel, das die Empfehlung nicht umstösst, aber präzisiert.

Der Zuwachs betrug **22 Dateien** — unter der Schwelle. Der Lauf wäre nach der Regel nicht
gestartet. Gefunden hat er trotzdem einen Befund mit Geldwirkung, und zwar genau deshalb, weil er
in derselben Nacht lief wie die Korrektur.

Der Unterschied zur allgemeinen Suchpatrouille: **hier war nicht der Zuwachs das Signal, sondern
die Kollision.** Zwei Läufe hatten innerhalb von dreissig Minuten dieselbe Sachfrage angefasst, der
eine als Abnehmer, der andere als Quelle. Das ist maschinell billig erkennbar — es genügt zu
fragen, ob zwei Läufe im selben Fenster dieselben Dateien oder dasselbe Thema berührt haben.

**Präzisierte Empfehlung** (Entscheid bleibt bei Raphael): Zuwachsschwelle beibehalten, aber einen
zweiten Auslöser danebenstellen — **ein Cross-KB-Lauf, sobald ein KB-Lauf einen Kernbefund
korrigiert, der ausserhalb seiner eigenen KB zitiert wird.** Der Lauf kann dann schmal sein, wie
dieser: drei Felder, volle Verifikation. Was ein KB-Lauf strukturell nicht leisten kann, ist der
Blick auf seine eigenen Abnehmer.

---

## 10 · Meldung

**Keine eigene Mail** (Rule 260803). Für das Tagesbriefing des `hub-chef`: **kein
terminkritischer Punkt, aber ein operativer Hinweis mit Geldbezug.**

Der Skill `ausschreibung` hat zwischen 01:13 und 02:10 eine Norm-Aussage getragen, die im
Beton-LV zu einer doppelt bezahlten Gerüstposition oder zur Anerkennung eines unbegründeten
Nachtrags geführt hätte. Sie ist korrigiert.

**Ein Schaden ist nach Messung nicht eingetreten:** unter `skills/ausschreibung/` wurde in diesem
Fenster ausser der SKILL.md selbst keine Datei angefasst, und im SharePoint-Baum liegt seit 01:00
kein neues LV/Devis. Das Fenster war knapp eine Stunde lang und fiel in die Nacht — hätte es einen
Arbeitstag getroffen, wäre die Aussage in ein Devis gewandert. Erwähnenswert bleibt der Fall
deshalb nicht wegen des Ausgangs, sondern weil er zeigt, wie schnell eine KB-Korrektur ihre
Abnehmer verfehlt.
