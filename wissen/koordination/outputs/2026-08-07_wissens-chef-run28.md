# Wissens-Chef Run 28 — Cross-KB-Konsistenzlauf

**Datum:** 07.08.2026, 23:12 bis 08.08.2026 ca. 00:20 CEST (Datumsgrenze überschritten; alle
Korrekturvermerke tragen einheitlich das Datum des Laufbeginns, 07.08.2026).
**Umfang:** 6 Felder · 20 gemeldete Befunde · 20 verifiziert · 30 Agenten (6 Melder, 20 Refuter,
4 Ausführende) · 0 Agentenfehler.
**Ergebnis:** 4 bestätigt, 16 gedämpft, 0 widerlegt. Rund 20 Dateien in 6 KBs plus zwei Dateien
im Skill-Layer geändert.

---

## 1 · Dimensionierung, gemessen statt geschätzt

Zuwachs seit Run 27, per `git log --name-only` über `wissen/` im SSD-Klon:

| KB | geänderte Dateien seit 06.08. 23:00 |
|---|---|
| normen | 72 |
| baurecht | 43 |
| energie | 26 |
| bauprodukte | 20 |
| twin | 16 |
| immobilienbewertung | 6 |

Die sechs Felder folgten dem Zuwachs, nicht einem Turnus: fünf von sechs zielten auf Material,
das jünger als 24 Stunden war. `normen` hatte in der Nacht zehn Erstdestillate mit vollständigen
Refuter-Runden abgeschlossen (Vorrang-Lauf Run 47), `baurecht` neun neue Wiki-Artikel angelegt.
Genau dieser Zuwachs hat den teuersten Fund erst möglich gemacht: er lag in dem, was gestern
noch nicht da war.

---

## 2 · Der teuerste Fund: der Reparatur-Lauf hat Wissen gelöscht

**Commit `f147dac4`, 07.08.2026 20:54, drei Stunden vor diesem Lauf.** Betreff: «normen:
REGISTER.md Frontmatter + 6 Artikel-Stubs fuer tote Backlinks angelegt + ins INDEX aufgenommen
(Health-Check Rueparatur 260807)».

Drei der sechs «neu angelegten» Stubs landeten auf Dateinamen, die bereits mit vollem,
verifiziertem Inhalt existierten:

| Datei | vorher | nachher |
|---|---|---|
| `sia-180-2014.md` | 137 Zeilen, «destilliert VOLLSTAENDIG», Anhänge A-H, verifiziert 13.07./25.07.2026 | 15-Zeilen-Stub, `speculative` |
| `din-1961-2010.md` | 299 Zeilen, `established`, Retro-Verifikation Mini-Run 14 (85 Aussagen) + Q&A Mini-Run 25 | 15-Zeilen-Stub, `speculative` |
| `sia-mb-2024-2006.md` | 55 Zeilen, `established` | 15-Zeilen-Stub, `speculative` |

**477 Zeilen gelöscht, dreieinhalb Stunden lang unbemerkt.** Kein Loop hat es gemeldet; der
Commit sieht in der Historie aus wie eine Aufräumarbeit.

Gefunden haben es **zwei voneinander unabhängige Felder zugleich** — Feld B (baurecht ↔ normen)
und Feld F (energie ↔ normen), zusammen fünf konvergente Befunde. Beide wollten Zahlen aus genau
diesen Destillaten gegenlesen und fanden statt der Zahlen einen Stub. Ein Lauf, der nur einem
Feld gefolgt wäre, hätte es mit einiger Wahrscheinlichkeit nicht gesehen.

**Zurückgenommen** aus dem Vorstand `f147dac4^`, vom Hauptprozess selbst am Original nachgemessen
und ausgeführt, sofort committet. Die drei echt neuen Stubs (`sia-102-2003.md`, `sia-2032.md`,
`links.md`) bleiben stehen.

### 2b · Zwei Fehler, die schwerer wiegen als der Datenverlust

**Der Gegenstand wurde aus der Nummer geraten.** Der Stub für DIN 1961 trug den Titel
«Elektrische Leitungen — Bemessung und Ausführung». DIN 1961 ist **VOB Teil B**, die Allgemeinen
Vertragsbedingungen für die Ausführung von Bauleistungen. Der Stub für SIA MB 2024 trug «Beton
mit Recycling-Gesteinskörnungen»; SIA 2024 sind die **Standard-Nutzungsbedingungen für die
Energie- und Gebäudetechnik**, der Betontitel gehört zu SIA 2030. Beide falschen Gegenstände
standen danach als saubere Tabellenzeile im INDEX.

Das ist die Fehlerklasse «erfundener Beleg» aus Run 27, eine Ebene höher: nicht eine Zahl im
Artikel ist erfunden, sondern **der Gegenstand des Artikels**. In einer Registerzeile sieht das
vollständig verifizierbar aus. Wer die Zeile später liest, hat keinen Anlass zu zweifeln.

**Der Backlink-Prüfer hielt einen Feldnamen für einen Feldwert.** Aus dem Frontmatter-Feld
`links:` wurde ein toter Backlink «links» abgeleitet und dafür `destillate/links.md` angelegt.
Der Stub beschreibt sich selbst als Redirect und hält fest, er «sollte normalerweise nicht
vorhanden sein» — trägt aber `status: established`. Ein Struktur-Prüfer, der Feldnamen nicht von
Feldwerten unterscheidet, erzeugt Phantom-Artikel und weist sie anschliessend als Bestand aus.

---

## 3 · Der teuerste Sachbefund: eine Gegenkontrolle, die keine ist

Der Skill `machbarkeit` schreibt für den Residualwert (Wissensbasis
`03_wirtschaftlichkeit-residualwert.md`, Z. 22): «Gegenkontrolle **immer** über UBS-Fact-Sheet
(Baulandpreis/m²) + Makleranalyse.»

Der Quellenvergleich, den `immobilienbewertung` am 07.08.2026 angelegt hat, belegt am
Original-PDF (UBS RE Local Fact Sheet Wangen SZ, S. 13, Quellenverzeichnis): **die
UBS-LFS-Preisdaten stammen von Wüest Partner.** Die vermeintlich unabhängige Zweitmeinung ist
ein Derivat der ersten Quelle. Wer eine Residualwert-Rechnung mit Wüest-Kennwerten aufbaut und
sie «gegen UBS» prüft, prüft gegen sich selbst.

Der Verifikator hat die Belegkette selbst am PDF nachgezogen, nicht nur am Report. Gesetzt ist
ein **Vorbehalt**, der Satz und alle Werte bleiben unverändert: eine echte Zweitmeinung liefern
IAZI/CIFI oder die kantonale Handänderungsstatistik; die Makleranalyse bleibt die unabhängige
Komponente. Neue Matrix-Zeile im Register: wer als «Gegenkontrolle» gelten darf, führt
`immobilienbewertung`, nicht der einzelne Skill.

---

## 4 · Der praktisch folgenreichste Befund: eine Verbindlichkeitsstufe, die es nicht gibt

Der Skill `behoerden-vorabklaerung` erzeugt Behördenfragen für reale Projekte. Er kannte den
**förmlichen baurechtlichen Vorentscheid** nicht und sprach stattdessen vom «verbindlichen
Vorbescheid» — einem Begriff, den das Gesetz nicht kennt. Nur der förmliche Vorentscheid bindet
(Kt. ZH §§ 323/324 PBG; SZ § 84 PBG). Der neue baurecht-Artikel nennt den Skill ausdrücklich als
Gegenstück, der Rückweg fehlte vollständig.

Wer die Verbindlichkeitsstufe falsch etikettiert, verlässt sich später auf eine Auskunft, die
nicht bindet. Präzisiert, mit zwingender Kantonsangabe — ein blankes «§§ 323/324 PBG» wäre
ausserhalb ZH falsch gewesen.

---

## 5 · Was die Verifikation an den Meldungen korrigiert hat

Die Quote von Run 26/27 hält: **die Befunde tragen, die Auflösungen nicht.** 16 von 20
Melder-Auflösungen wurden von der Verifikation korrigiert — meist auf «Vorbehalt oder Verweis
setzen» statt «Wert ändern». Kein einziger Befund wurde widerlegt; das ist neu und erklärt sich
daraus, dass fünf der zwanzig auf denselben, hart belegbaren Commit zeigten.

Die lehrreichsten Korrekturen:

- **Zwei Klassen heruntergestuft.** Der 1'420-CHF-Befund und die Revers-Typologie waren als
  WIDERSPRUCH bzw. DOPPELSPURIGKEIT gemeldet. Beide sind KB-intern bzw. blosse fehlende
  Verlinkung. Eine zu hohe Klasse erzeugt im nächsten Lauf einen Eingriff, der nicht nötig ist.
- **Ein zweiter Registerfehler in der Korrektur des ersten.** Der Melder wollte den Umschlag der
  Beleuchtungs-Registerzeile auf den 07.08.2026 datieren. Falsch: die Klausel «einziger
  Zahlenbestand im Hub» war schon am 05.08. unzutreffend, weil SIA 2056 seit dem 24.07. E_vm-Werte
  führt. Neu ist am 07.08. nur der UGR-Bestand.
- **Eine zu breite Entwarnung verhindert.** «Die Lücke ist über SIA 387/4 geschlossen» hätte die
  Wissenslücke E-122-6 vorzeitig geschlossen. SIA 387/4 verweist selbst auf SN EN 12464-1 als
  massgebend und deckt weder Nutzungen ausserhalb der 43 Standardnutzungen noch Wohnen und
  Notbeleuchtung ab.
- **Der Unterschied zwischen erfundenem Beleg und verrutschter Fundstelle.** Zwei ERCO-Befunde
  waren als ERFUNDENER_BELEG gemeldet. Am Original-PDF nachgelesen: die **Sachwerte stimmen**,
  nur die Seitenzahl ist um eine Seite falsch (S. 136 statt 137, S. 138 statt 139). Beides sieht
  im Artikel identisch aus. Korrigiert als Seitenkorrektur mit Vermerk, nicht als Streichung.

Und danach haben **drei von vier Ausführenden** die verifizierte Vorlage nochmals am Bestand
korrigiert: eine Einfügestelle, die den Satzbau eines mehrzeiligen Bullets zerrissen hätte; ein
Fett-Span, in dessen Mitte der Vorbehalt die Hotellerietaxe von ihren Bezugsgrössen abgeschnitten
hätte; und ein Verweisziel, das ein Skill an ein tagesdatiertes Lauf-Artefakt gebunden hätte
(korrigiert auf den Wiki-Artikel). Die dritte Korrekturstufe verdient ihren Platz.

---

## 6 · Ausgeführte Aktionen

Der P0 wurde vom Hauptprozess selbst ausgeführt und sofort committet; danach vier Ausführende mit
strikt disjunkten Dateimengen.

| KB / Ort | Was gesetzt wurde |
|---|---|
| `normen` (P0, Hauptprozess) | Drei überschriebene Destillate aus `f147dac4^` wiederhergestellt (137/299/55 Zeilen); drei Falsch-Zeilen aus `destillate/INDEX.md` entfernt; eigener Commit |
| `normen` (E1) | Seitenzahl Tabelle 1 des Solaranlagen-Merkblatts an drei Stellen S. 6 → S. 7; datierter Nachtrag zur weiterhin offenen Merge-Frage in QUESTIONS; **neue REGISTER-Zeile** «VKF-Merkblatt 2001-15de Solaranlagen» mit vollem Fassungsstand (2015 Haus, Zwischenfassung 2017, geltend 2022) und beiden Vorbehalten; toter Cross-KB-Wikilink aus dem `links:`-Feld der VSS-40291 entfernt und durch Backtick-Pfad im Praxis-Transfer ersetzt; SIA-387/4-Nachfolgervorbehalt in Destillat, REGISTER und QUESTIONS; CHANGELOG-Block mit der Protokollierung der Rücknahme |
| `baurecht` + `planungsgrundlagen` + Skill `behoerden-vorabklaerung` (E2) | Beide Halbsätze von § 321 Abs. 2 PBG an beiden Orten geführt, mit Fassungsvorbehalt; Vorentscheid-Terminologie im Skill richtiggestellt, mit Kantonsangabe und Pfad in die KB; beidseitiger Verweis zur Revers-Typologie samt Statusetiketten |
| `bauprodukte` (E3) | Verweis auf SIA 2056 Ziff. 6.23 an der Elektro-Schnittstelle BKP 261, mit Vorprojekt-Vorbehalt; drei ERCO-Seitenkorrekturen mit datiertem Vermerk, Sachwerte unverändert |
| `immobilienbewertung` + Skill `machbarkeit` (E4) | UBS-LFS-Vorbehalt an der Residualwert-Gegenkontrolle; Vorbehalt zur nicht reproduzierbaren 1'420 an der Abholstelle; Quellenvergleich in Wiki und Datenquellen-Registry verlinkt |
| `normen/wiki/QUESTIONS.md` (Hauptprozess) | Bezugsgrössen-Divergenz E_vm (SIA 2056 300 lx gegen SIA 387/4 E_vm 100 lx bei E_0 = 300) als KB-interner Prüfpunkt angemeldet |
| `koordination` | 5 Paar-Einträge, 2 Matrix-Zeilen, 3 Struktur-Muster (achtes bis zehntes), Nachtrag an der Beleuchtungs-Zeile und an der Aufzug-Zeile, CHANGELOG |

**Bewusst nicht ausgeführt:** kein Merge der beiden 2015er-Solaranlagen-Destillate (destruktiv,
seit Run 26 parkiert, braucht Einzelfreigabe); keine Löschung von `destillate/links.md`; keine
Fassungs- oder Statusänderung an SIA 387/4; keine Änderung an den Zahlen 1'420 und 4'250; keine
Streichung des «immer» im Machbarkeits-Skill; die Rückrichtung des SIA-387/4-Vorbehalts in
`wissen/energie/destillate/` lag ausserhalb der Dateimenge von E1 und ist in QUESTIONS N27-2
vermerkt statt still liegen gelassen.

---

## 7 · Offene Entscheide für Raphael

1. **Der Health-Check-Reparaturlauf** (Urheber von `f147dac4`) läuft unverändert weiter. Der
   Datenverlust ist zurückgenommen, **die Ursache nicht.** Der nächste Lauf kann dasselbe wieder
   tun. Zu entscheiden: Absicherung (kein Überschreiben vorhandener Dateien, Titel nie aus der
   Nummer raten, Feldnamen von Feldwerten unterscheiden) oder Stilllegung, bis das gebaut ist.
   **Das ist der einzige Punkt dieses Laufs mit Wiederholungsrisiko.**
2. **Verbleib von `wissen/normen/destillate/links.md`** — ein Phantom-Artikel, der sich selbst als
   überflüssig bezeichnet. Löschung braucht Einzelfreigabe.
3. **Ticket T-Regelgeschoss** (unverändert aus Run 25/26/27).
4. **D10 — Bereinigung des Original-Blatts** der acht Healthcare-Objekte (1'420 und Vella-Zeile).
   Der Vorbehalt reist jetzt an einer Stelle mehr mit, die Frage bleibt offen.
5. **Verbleib des Spektrumskosten-Bands** (unverändert aus Run 27, nicht dringend).
6. **`MAX_AUTO_BYTES` im Twin-Riegel** (unverändert, im Fristen-Register).
7. **Beschaffungs- und Bring-Schulden** (unverändert aus Run 27): VKF 2001-15:2022 und BRL
   22-15:2017 in den SharePoint-Bestand; Zwischenausgabe 2001-15:2017 destillieren; N27-1
   VKF-Publikationsindex; N27-2 Herausgeber-Beleg SIA 380/4, **neu erweitert** um die Produktseite
   der SIA 387/4 (Klärung, ob 2023 eine neue Ausgabe oder eine Aktualisierung ist).

---

## 8 · Was dieser Lauf über das Verfahren gelernt hat

**Der Hub schreibt schneller, als er sich selbst prüft.** Der Datenverlust entstand um 20:54 und
wurde um 23:20 gefunden — nur, weil zufällig in derselben Nacht ein Cross-KB-Lauf über genau
diese Dateien ging. Ohne ihn hätte der nächste Leser einen 15-Zeilen-Stub mit falschem Titel
für den Bestand gehalten, und die Wiederherstellung wäre mit jedem weiteren Commit teurer
geworden. **Ein automatischer Lauf, der Inhalt erzeugt, gehört unter dieselbe Verifikationspflicht
wie ein Destillier-Lauf** — bisher galt sie nur für das Destillieren.

**Konvergenz ist das stärkste Qualitätssignal, das dieser Harness hat.** Fünf Befunde aus zwei
unabhängigen Feldern auf denselben Commit: das ist kein Zufallsfund, sondern das Ergebnis
davon, die Felder am gemessenen Zuwachs auszurichten statt an einem Turnus. Beide Felder wollten
etwas ganz anderes prüfen (Wohnhygiene-Zahlen, Raumklima-Zahlen) und stolperten über dieselbe
Lücke.

**Die Dämpfungsquote ist kein Mangel, sondern der Ertrag der Stufe.** 16 von 20 Auflösungen
korrigiert, davon zwei Klassenherabstufungen und eine verhinderte vorzeitige Schliessung einer
Wissenslücke. Melder finden zuverlässig, was nicht stimmt; was zu tun ist, entscheidet erst der,
der am Original gegenliest.

---

## 9 · Meldung

**Keine eigene Mail** (Rule 260803). Für das Tagesbriefing des `hub-chef`: **kein
terminkritischer Punkt, aber ein operativer Befund mit Wiederholungsrisiko** — Abschnitt 7,
Punkt 1 (Absicherung oder Stilllegung des Health-Check-Reparaturlaufs). Der Datenverlust selbst
ist zurückgenommen und committet; offen ist allein die Ursache.
