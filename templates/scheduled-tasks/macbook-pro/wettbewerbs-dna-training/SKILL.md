---
name: wettbewerbs-dna-training
description: ETAPPE 4 VERTIEFUNG (Entscheid Raphael 30.07.2026, Variante B): kein neues Material, sondern die vorhandenen 11 Teilnahmen in die Tiefe ziehen — ungleiche Abdeckung im Muster delta-zum-ersten-rang ausgleichen, Siegargumente gegen die eigenen Beitraege ruecklesen. Woechentlich Mo 02:20, Nachtfenster.
---

ETAPPE-4-VERTIEFUNGSLAUF der KB `wettbewerbs-dna` (Entscheid Raphael 30.07.2026, Variante B «vertiefen statt verbreitern»). Reaktivierung nach der Stilllegung vom 27.07.2026.

Vorbedingung: test -d /Volumes/daten/jans-ai-hub. Wenn nicht gemountet, einmal osascript -e 'mount volume "smb://diskstation918.tail8265aa.ts.net/daten"' versuchen, sonst still beenden.

GRUNDSATZ DIESER ETAPPE: Es wird **kein neues Quellmaterial** erschlossen und **keine weitere Bauaufgabe** aufgemacht. Etappe 2 (alle 11 Teilnahmen destilliert + verifiziert) und Etappe 3 (Schulbau, Healthcare, Wohnungsbau) sind abgeschlossen. Dieser Loop zieht den **vorhandenen** Bestand in die Tiefe. Wer neues Material destilliert, hat den Auftrag verfehlt.

AUSGANGSBEFUND (erhoben 30.07.2026, gegen den Bestand nachgezaehlt): Der Kern-Artikel `wiki/muster/delta-zum-ersten-rang.md` deckt zwar alle 11 Teilnahmen ab, aber **sehr ungleich tief**. Nennungen je Dossier: 2205 (7), 2101 (6), 2103 (6), 2102 (5), 2206 (5), 2507 (5), 2501 (4), 2408 (3), **2104 (2), 2207 (2), 2503 (2)**. Die letzten drei sind nur gestreift. Diese Schieflage ist der Arbeitsvorrat.

AUFTRAG JE LAUF — genau EIN Baustein, nicht mehrere gleichzeitig:

**V1 (zuerst, mehrere Laeufe): Tiefen-Angleich im `delta-zum-ersten-rang`.** Pro Lauf EINE der duenn abgedeckten Teilnahmen nehmen (Reihenfolge 2104 Theater Luzern, 2207 Schliengerweg Basel, 2503 Glockenacker, dann 2408, 2501). Deren Dossier und die zugehoerigen Rohquellen erneut lesen und die konkrete Frage beantworten: **Was genau trennte diesen Beitrag vom erstrangierten Projekt?** Jede Aussage mit woertlichem Zitat und Fundstelle aus Jurybericht/Programm. Befunde in den Muster-Artikel einarbeiten, bestehende Befunde schaerfen statt duplizieren.

**V2 (nach V1): Rueckkopplung Siegargumente gegen die eigenen Beitraege.** Die drei `jury-argumente-*`-Artikel (Schulbau, Healthcare, Wohnungsbau) tragen je 10 bis 12 belegte Siegargumente. Pro Lauf EINE Bauaufgabe nehmen und tabellarisch pruefen: Welches Siegargument hat der jeweilige JANS-Beitrag bedient, welches nicht, und ist das im Jurybericht auch so benannt? Ergebnis als neuer Abschnitt im jeweiligen Muster-Artikel. Das ist die Stelle, an der die KB von Beschreibung zu Handlungswissen wird.

**V3 (zuletzt): Verdichtung.** Aus V1+V2 die wiederkehrenden Muster herausziehen und `delta-zum-ersten-rang.md` zu einer geordneten, priorisierten Liste umbauen (was kostet am haeufigsten den Sieg, was fast nie).

VERIFIKATION (Pflicht, wie in Etappe 2/3): Jeder inhaltliche Befund geht durch einen Refuter-Durchgang gegen das Original — Zitat, Seitenzahl, Rang und Zuordnung pruefen. Erst nach bestandenem Refuter Status auf `established` heben. Ein nicht bestandener Refuter wird eingearbeitet, nicht weggelassen.

RANG-DISZIPLIN (wichtig, belegter Stolperstein): Die Raenge dieser KB sind mehrfach falsch erinnert worden. Massgeblich ist ausschliesslich `wiki/INDEX.md` und die dedizierte Rang-Klaerung `outputs/2026-07-12_rang-klaerung-2102-2206.md`. Belegt gilt: **2102 Muttenz = 4. Rang / 3. Preis**, **2206 Schoental = 3. Rang / 3. Preis**, 2507 TKHL = 5. Rang / 4. Preis, 2103 Steinhof = kein Rang. Niemals einen Rang aus dem Gedaechtnis oder aus einer Rule/Memory uebernehmen — immer aus dem Jurybericht belegen.

ENDBEDINGUNG UND EHRLICHKEITSPFLICHT: Wenn V1 bis V3 abgearbeitet sind ODER ein Lauf nichts Substanzielles mehr findet, das **ausdruecklich** im Report festhalten («Vertiefung erschoepft, Etappe 4 abgeschlossen») und im PROGRAMM-Statuskopf vermerken, statt Struktur- und Registerpflege als Ertrag auszuweisen. Ein Lauf ohne inhaltliches Delta ist zu melden, nicht zu kaschieren — die Stilllegung vom 27.07. entstand genau daraus, dass Leerlauf zu lange nicht benannt wurde.

OUTPUT: Report nach `outputs/JJJJ-MM-TT_etappe4-vertiefung-NN.md` (welcher Baustein, welche Teilnahme, welche Befunde, Refuter-Verdikt, was als naechstes). CHANGELOG.md ergaenzen (neueste zuoberst), INDEX/QUESTIONS nachfuehren.

SICHERN: NIEMALS git commit/push/pull gegen /Volumes/daten/jans-ai-hub ueber den SMB-Mount (haengt uninterruptibel, blockiert die index.lock, Rule 260726). Ausschliesslich: bash /Volumes/daten/jans-ai-hub/scripts/nas-commit-now.sh "wettbewerbs-dna Etappe 4 NN: <kurz>". Lesende git-Befehle sind erlaubt.

GRENZEN: keine Mails, keine Veroeffentlichungen, nichts loeschen. `raw/` wird nie editiert. Artikel umbenennen/mergen/loeschen nur nach Rueckfrage (Rule wissens-bibliothekar). Schweizer Hochdeutsch, echte Umlaute ä/ö/ü, ss statt ß, keine erfundenen Zahlen, keine erfundenen Kennwoerter oder Buerobezeichnungen. Datums-Prefix im Dateinamen aus LOKALER Zeit (date "+%y%m%d"), nie aus toISOString().
## Modell-Politik (Minimum Viable Model, Rule modellwahl-routine, 07.08.2026)
Die mechanischen Stufen dieses Laufs (Material sichten, Rohtext destillieren, Artikel
kompilieren, Register nachfuehren) an einen Subagenten mit model: sonnet delegieren; der
Hauptkontext orchestriert, faellt das Urteil und prueft das Ergebnis. Gleiches Ergebnis-Format
wie bisher.
