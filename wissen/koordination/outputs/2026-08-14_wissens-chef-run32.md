# Wissens-Chef Run 32 — 14.08.2026 (Abendlauf, 23,4 h nach Run 31)

**Delta-Basis:** Run-31-Bericht committet 13.08.2026 23:37:43, HEAD `852c9535` vom
14.08.2026 23:00:01. **50 geaenderte Dateien in `wissen/`** — ueber der in Run 29
vorgeschlagenen Schwelle von rund 40, der Lauf war faellig.

**Zuschnitt:** 5 Melder-Felder, 7 Refuter (12 Agenten, 2,10 Mio Token), in zwei getrennten
Workflows, damit der Hauptprozess zwischen Melden und Widerlegen selbst urteilt.

**Uhr-Kontrolle:** Station 23:11 CEST gegen Synology-Commit `2026-08-14 23:00:01` — konsistent,
kein Datumssprung (Rule 260730b).

---

## 1 · Der erste Schritt war die eigene Uebergabe, nicht der Fan-out

Run 31 hatte vorgeschlagen, vor jedem Fan-out die offenen Uebergaben des Vorlaufs abzuarbeiten.
Dieser Lauf hat es zum ersten Mal getan, und die Empfehlung bestaetigt sich sofort.

**Uebergabe Run 30/31, Punkt 4 — geschlossen, und sie war mehr als eine Wortfrage.** Run 30
hatte die Wendung «umgekehrte Systematik» in
`normen/wiki/abb-reihe-verguetungs-und-ausmassgrenzen.md` gemeldet, Run 31 sie als «kein
Sachfehler» stehen lassen. Am Destillat nachgelesen ist sie mehr als unscharf: umgekehrt waere
die Systematik nur, wenn SIA 118/262 die Arbeitsgerueste **ausschloesse**. Sie schliesst allein
die **gesonderte** Verguetung aus, womit die Gerueste nach Ziff. 0.3 (S. 10) in den
Einheitspreisen **inbegriffen** sind — gleich wie bei den uebrigen ABB, nur ohne Hoehenlimite.

Die Wendung war der **sprachliche Rest genau des Fehlers, den Run 49 am 13.08. inhaltlich
behoben hatte** (vorher stand dort: «Arbeitsgerueste sind grundsaetzlich NICHT inbegriffen»).
Die Korrektur hatte die Aussage gedreht, die Beschreibung der Systematik aber in der alten
Richtung stehen lassen. Tabellenzelle und Fliesstext sind auf «nicht gesondert verguetet, also
inbegriffen» umgestellt, mit Korrekturkasten.

**Lehre, die ueber diesen Fall hinausgeht:** Eine Bedeutungsumkehr hinterlaesst zwei Spuren, die
falsche Aussage und die falsche Beschreibung. Wer nur die Aussage dreht, laesst den Leser durch
die Beschreibung weiter in die alte Richtung laufen. Zwei Laeufe haben die Restspur gesehen und
liegengelassen, weil sie «kein Sachfehler» war.

**Mitgenommen aus dem Nachbar-Register (SYN-28b, Synergie-Lauf 07):**
`skills/email-preferences/SKILL.md` fuehrte in drei Codebloecken noch
`tell application "Mail"` statt der Bundle-ID, obwohl die importierte Rule
`osascript-apple-apps` das verbietet und die Datei den Verstoss seit dem 14.08. selbst als
Warnkasten dokumentierte («noch nicht nachgezogen»). Nachgezogen. **Achtung fuer kuenftige
Laeufe:** ein globales Ersetzen haette hier den Warnkasten zerstoert, der die falsche Form
zitiert — die vierte Fundstelle muss stehen bleiben (Rule 260811, Lehrbuchfall).

---

## 2 · Bilanz der Gegenpruefung: 2 bestaetigt, 3 widerlegt, 1 bereits bekannt

| Befund | Urteil | Vorschlag tragfaehig? |
|---|---|---|
| F5 · `energie`: Quelle «nie eingelesen», Destillat besteht seit Run 123 | **bestaetigt** | nein — zu eng gefasst |
| F3 · `twin`: «Parallelprojekt KISPI Albertstrasse 7» | **bestaetigt** | ja |
| F1 · SIA 387/4 Ausgabe 2023 gegen 2017 fuer EN-111 | widerlegt | nein |
| F2 · `jans-dna.md` Gruss-Skala gegen Facetten-Korrektur | widerlegt (beide Linsen) | nein |
| F6 · `ausschreibung`: Zahlenpaar 2,5 m / 3,0 m | widerlegt im Kern, Praezisierungsrest | nein |
| F4 · SIA 112/1 Vorgaengerausgabe 2004 gegen 2005 | bereits bekannt (Run 29) | ja |

**Bei drei der vier gefallenen Meldungen war auch der Korrekturvorschlag fehlerhaft** — dieselbe
Quote wie in Run 31. Die Refuter-Stufe traegt sich weiterhin selbst.

### Was die Refuter besser wussten als die Melder

**F2 ist der lehrreichste Fall.** Gemeldet war, der immer aktive Kern `rules/jans-dna.md`
Z. 20-22 widerspreche mit seiner Gruss-Skala der Facetten-Korrektur vom 13.08. Linse 1 fand:
kein Widerspruch, der Kern nennt die grobe Beziehungsachse, die Facette verfeinert sie. Linse 2
pruefte nur die Zustaendigkeit und kam unabhaengig zum selben Ergebnis: **selbst wenn der
Widerspruch bestuende, duerfte dieser Loop die Zeile nicht selbst aendern.**

Daraus ein Merksatz fuer kuenftige Laeufe, im Register hinterlegt: **eine Meldung «importierte
Rule widerspricht KB» ist nie eine Aktion dieses Loops, immer eine Vorlage.** Der Kern von
`jans-dna.md` faellt in jede Session; ihn still nachzuziehen waere der wirkungsvollste
unbemerkte Eingriff, den dieser Loop ueberhaupt tun koennte.

**F1 fiel, warf aber mehr ab als die Meldung wert war.** Der gemeldete Widerspruch existiert
nicht (die energie-Stellen sagen «die **Fachnorm** gilt», nicht «der Nachweis laeuft nach dieser
Ausgabe»), und der Punkt ist seit 07.08. als `normen` N27-2 protokolliert. Der Refuter fand
beim Widerlegen jedoch einen Fehler auf der **anderen** Seite: `normen/wiki/REGISTER.md` Z. 268
sagte, die BBV I ZH erklaere die Ausgabe 2017 **verbindlich**. Am Rohtext gegengelesen
(vom Hauptprozess selbst, nicht dem Refuter geglaubt): Ziff. 2.3382 steht unter der
Anhangs-Ueberschrift «**2. Als Richtlinien und Normalien sind zu beachten**» (Z. 1013), nicht
unter «1. Als Verordnungsbestimmungen gelten» (Z. 1006); § 4 Abs. 5 BBV I laesst begruendete
Abweichung ausdruecklich zu. Auf «beachtlich» umgestellt.

---

## 3 · Der Hauptbefund: eine KB hat ihre eigene Arbeit nicht gefunden

`energie` Run 132 hat am 14.08. festgestellt, die Quelle «Massstaebe fuer Umwelt- und
energiegerechtes Bauen» (Stadt Zuerich AHB, Mai 2006) sei «nie eingelesen» und der Wikilink
`[[ahb-zuerich-massstaebe-nachhaltiges-bauen]]` ein Dangling-Link ohne Datei. **Das Destillat
besteht seit dem 04.08.2026 (Run 123) unter buchstabengleichem Dateinamen**, vollstaendig
gelesen (S. 1-2), registriert in `destillate/INDEX.md`.

Die Gegenpruefung hat den Befund nicht nur bestaetigt, sondern **verbreitert: die Falschaussage
stand an sieben Stellen, nicht an den zwei gemeldeten** — darunter im Register, im CHANGELOG und
in QUESTIONS, also genau dort, wo der naechste Lauf zuerst nachschlaegt. Ohne die Verbreiterung
haette die Korrektur den Fehler an seinen wirksamsten Stellen stehen lassen.

**Ursache, und sie ist wiederholbar:** `INDEX.md` fuehrte nur einen der beiden SharePoint-Pfade
derselben Datei. Run 132 suchte ueber den zweiten Pfad, fand nichts und schloss auf «nicht
vorhanden». Der Dateiname des Destillats war dabei buchstabengleich der gesuchte Linkname — eine
Verzeichnisliste haette genuegt. Der Dubletten-Pfad ist nachgetragen, ein QUESTIONS-Punkt
angelegt.

**Nicht getan:** die beiden Destillate mergen oder das 2006er als redundant loeschen. Es sind
zwei verschiedene Dokumente (Faltblatt Mai 2006 gegen Stadtratsbeschluss Nr. 1094 vom
17.09.2008); eine Zusammenlegung waere destruktiv und braucht Raphaels Entscheid.

**Was richtig bleibt und ausdruecklich nicht angetastet wurde:** der Quellverweis selbst ist
korrekt, ebenso der Kopfzeilen-Beleg und der Fassungsvergleich 25 % → 40 % erneuerbare Energien
bzw. MINERGIE → MINERGIE-ECO. FAQ F234 formuliert bereits sauber und blieb unberuehrt.

---

## 4 · Ausgefuehrte Aktionen

**Korrekturen bestaetigter Fehler**

1. `normen/wiki/abb-reihe-verguetungs-und-ausmassgrenzen.md` — Systematik-Beschreibung Betonbau
   (Tabellenzelle + Fliesstext + Korrekturkasten). Schliesst die Uebergabe aus Run 30/31.
2. `energie` — F5 an **sieben** Stellen additiv korrigiert (wiki-Artikel, Destillat, INDEX,
   CHANGELOG, QUESTIONS), Dubletten-Pfad nachgetragen, neuer QUESTIONS-Punkt E-WC32-1.
3. `twin/wiki/beziehungsregister.md` — «Parallelprojekt KISPI Albertstrasse 7» auf
   «Albertstrasse 7 (Nova)» korrigiert, Vermerk mit Belegen. Fehlerfamilie Staehlin/Waechter.
4. `normen/wiki/REGISTER.md` Z. 268 — «verbindlich» auf «beachtlich» praezisiert, Schluss
   «fuer EN-111 massgeblich» als Auslegung gekennzeichnet.
5. `skills/email-preferences/SKILL.md` — drei Codebloecke auf die Bundle-ID (SYN-28b).

**Querverweise gesetzt**

6. `energie/destillate/2000-watt-gesellschaft-sieben-thesen-ahb.md` → `[[sia-2040-2017]]`.
   Der offene Punkt «aktuelle Fassung des SIA-Effizienzpfads» ist in `normen` seit 13.07.
   established beantwortet (SIA 2040:2017, ersetzt Ausgabe 2011). **Teilantwort**, ausdruecklich
   so gekennzeichnet: der zweite Teil (Wohnen-Anteil 40 % / 800 Watt) bleibt offen, weil
   SIA 2040:2017 mit flaechenbezogenen Zielwerten je Gebaeudekategorie arbeitet.
7. `skills/werkvertrag/templates/werkvertrag-vorlage.md` und
   `skills/unternehmerkontrolle/templates/abnahmeprotokoll.md` → `sia-118-c1-2026` (established).
   Beide zitierten nur Art. 179 **Abs. 1** SIA 118. Die Korrigenda C1:2026 setzt fuer verdeckte
   Maengel eine **zwingende Ruegefrist von 60 Tagen ab Entdeckung** an die Stelle der
   «sofortigen» Ruegepflicht (OR-Revision Baumaengel per 01.01.2026, geht der SIA 118 vor).
   Additiver Hinweis, Vertragsklauseln unveraendert. **Praktisch die teuerste Luecke des Laufs.**

**Register:** `QUERBEZUEGE.md` um vier datierte Paar-Eintraege ergaenzt (zwei davon
Erst-Pruefungen); CHANGELOG in `normen`, `twin`, `energie` und `koordination`.

---

## 5 · Offene Entscheide fuer Raphael

1. **SIA 112/1, Vorgaengerausgabe 2004 oder 2005 — gilt der Run-29-Entscheid weiter?**
   `energie` fuehrt an fuenf Stellen «2005» (Beleg shop.sia.ch), `normen` hat am Original «2004»
   gelesen (Titelblatt S. 1 und Genehmigungsblock S. 52). Run 29 hat den Widerspruch am 13.08.
   bewusst stehen lassen. **Neu ist:** er ist seither in ein neues Destillat vom 14.08.
   weitergewandert — ein offener Punkt, der sich als gesicherte Tatsache ausbreitet. Aufloesbar
   waere er belegt und billig: die beiden dafuer noetigen Dokumente (Gesamtverzeichnis SIA,
   ersetzte_normen) liegen laut `normen` N48-2 im Bestand. **Empfehlung:** als Auftrag an den
   Skill `normen` geben, statt in `energie` eine Qualifier-Welle zu fahren.
2. **Drei Uebernahmen in `rules/anrede-kontakte.md`** (@-importierte Rule, keine stille
   Aenderung): Du-Kontakt **Stefanie Sonderegger** (KISPI, ueber mindestens zehn Batches belegt,
   Reziprozitaet dokumentiert — sie steht neben dem bereits gelisteten Albin Spahic im laufenden
   Projekt 2619, eine Mail an beide traegt heute fuer ihn Du und fuer sie faelschlich Sie) ·
   **Gertrud Angerer** (2414 Thalwil, Du — die Liste kennt nur Thomas Angerer bei Nova, ein
   Nachnamen-Treffer zieht heute den falschen Projektkontext) · die **Kanal-Achse**
   («Sammelpostfach senkt die Stufe») als Gegenstueck zur Gewichts-Klausel vom 29.07.
3. **Praezisierung `skills/ausschreibung/SKILL.md` Z. 109-113.** Kein Fehler — das Wiki
   bestaetigt die Aussage ausdruecklich —, aber das Wort «gegenueber» suggeriert einen sauberen
   Zahlenvergleich, und der Vorbehalt «nur fuer Arbeiten zu Einheitspreisen» fehlt. Fertiger,
   belegter Ersatzwortlaut liegt vor; nicht selbst gesetzt, weil der Skill in LV mit Geldfolge
   wirkt und der Befund «teilweise» lautet.
4. **Unveraendert offen:** Ticket **T-Regelgeschoss** (HNF/GF 0,70 gegen 0,75, seit Run 15,
   Fachentscheid) · BKP-Code Briefkastenanlage 2620 · Ticket N43-1 (SharePoint-LV ungeprueft) ·
   `normen` N27-2 (Fassungsstand SIA 387/4 am Normtext) · die aelteren Bring-Schulden
   (UBSFS-Spiegel, SIA 380/2:2022, `normen/destillate/links.md`, D10, Spektrumskosten,
   `MAX_AUTO_BYTES`).
5. **Nicht ausgefuehrt, Zuwachs fuer Run 33:** Rueckrichtung nach `energie/wiki/QUESTIONS.md`,
   die `normen` QUESTIONS Z. 367-368 ausdruecklich verlangt · Verlinkung der drei
   ERCO-Lichtartikel mit dem EN-111-Abschnitt (Vorsicht: Hersteller-Quelle, keine neutrale
   Kennwertquelle) · `skills/kostenkontrolle` hat **null** Verbindungen in die Normen-KB ·
   divergierende RC-Beton-Mindestanteile in zwei energie-Destillaten (50 % Konstruktionsbeton
   gegen 60 % generell, beide Vertragskontext Stadt Zuerich) — moeglicherweise verschiedene
   Bezugsgroessen, ungeprueft.

---

## 6 · Kontrollen

- **Schreib-Kontrolle** (Rule 260811): `git diff --numstat` ueber alle 13 bearbeiteten Dateien,
  read-only im NAS-Repo. Loeschungen ausschliesslich dort, wo eine Zeilenersetzung am Anker
  beabsichtigt war; **jede geloeschte Zeile einzeln gesichtet**. Der historisch markierte
  Originalwortlaut im 7-Meilenschritte-Destillat (Z. 96-106) und in QUESTIONS (ab Z. 3279) ist
  unveraendert. **Keine Datei hat Bestand verloren.**
- **Kein globales Suchen-und-Ersetzen.** Ausdruecklich kritisch bei
  `email-preferences/SKILL.md`, wo der Warnkasten die falsche Form zitiert, und bei den
  energie-Dateien, in denen «und war nie eingelesen» mehrfach vorkommt.
- **`raw/` unberuehrt** in allen KBs; nur lesend auf `baurecht/raw/` zugegriffen (BBV-Rohtext).
- **Kein Eingriff in fremde Wiki-Struktur**, keine Loeschung, kein Merge.
- **Kein `git` ueber SMB schreibend** (Rule `sync-kanonische-quelle`); Commit ueber
  `nas-commit-now.sh`. Zwei Dateien waren beim Messen bereits vom 15-Min-Selfcommit erfasst
  (`fd176ad4`, 23:30) — beim Nachmessen beachten.
- **Agenten-Befunde nicht ungeprueft uebernommen** (Rule 260729b): der BBV-Nebenbefund und die
  Schreib-Kontrolle des Subagenten wurden vom Hauptprozess an der Quelle gegengelesen.

---

## 7 · Zur Methode

Run 31 empfahl, vor dem Fan-out die offenen Uebergaben abzuarbeiten. Der erste Vollzug bestaetigt
es: **Punkt 1 des Laufs kostete vier Minuten und schloss einen Fehler, den zwei Laeufe gesehen
und beide liegengelassen hatten** — weil er als «kein Sachfehler» eingestuft war.

Der zweite Befund dieses Laufs zeigt die Gegenrichtung. Der Ertrag lag wieder **nicht** dort, wo
der Zuwachs am groessten war (`energie` mit 16 Dateien lieferte den Hauptbefund, aber als
KB-**internen**), und die wertvollste Einzelzeile — die 60-Tage-Ruegefrist in zwei
Vertragsvorlagen — kam aus einer Nebenmeldung, die kein Melder als Widerspruch gefuehrt hatte.

**Vorschlag fuer Run 33 (Entscheid bleibt bei Raphael):** die Kategorie «fehlende
Querverlinkung» ernster nehmen als die Kategorie «Widerspruch». Dieser Lauf hat 19 fehlende
Verlinkungen gemeldet und 7 Widersprueche; von den Widerspruechen hielten zwei, von den
Verlinkungen war keine falsch. Der Refuter-Apparat ist auf Widersprueche zugeschnitten, der
Ertrag liegt zunehmend daneben.
