# Vertiefungslauf grobkosten — ZIW-Revision 2025, korrigierter Publikationsrhythmus, amtliche BKP-Struktur

**Datum:** 23.08.2026 · **Station:** Revendo · **Auftrag:** Raphael — Wissens-Bibliothekar im
Dauerbetrieb, KB 2 von 4: Kennwerte-Datenbank prüfen und ausbauen, Rule `bkp-2017-referenz`
beachten.

**Vorlauf gelesen:** CHANGELOG-Kopf, `wiki/QUESTIONS.md` (Eintrag 23.08.2026), `wiki/kennwerte.md`
(Abschnitte «Baupreisindex ZH» und «Run 12 — historischer Cross-Check»), `wiki/INDEX.md`.

---

## Zusammenfassung

Der Lauf hat dort weitergemacht, wo die interaktive Session desselben Tages aufgehört hat — und
dabei einen ihrer Befunde **widerlegen** müssen. Ergebnis: eine Frage richtig statt falsch
geschlossen, die Faktorentabelle ein Jahr fortgeschrieben, ein neuer amtlicher Kennwert-Block
angelegt. **Kein Projekt-Kennwert promoviert** — die strukturellen Blocker (Frage 1/2) bleiben
unberührt, sie sind Entscheide Raphaels.

## 1 · Korrektur: der Publikationsrhythmus-Befund war eine Heuristik, kein Beleg

Der Eintrag vom selben Tag schloss Frage 2 (01.04.2026-Indexstand) mit dem Befund, die Stadt
Zürich publiziere den ZIW «mutmasslich jährlich zum Oktober-Stichtag», der April-Wert sei
«unbestätigt», nächster Termin «Sommer 2027». Grundlage war ein **URL-Muster-Test über acht
Nachrichten-Slugs**. Das ist eine Aussage über die Benennung von Webseiten, nicht über einen
Publikationsrhythmus.

| Behauptung | Belegter Stand |
|---|---|
| jährlich, Oktober-Stichtag | **halbjährlich** (BFS wörtlich: Erhebung April/Oktober, Publikation Juni/Dezember; ZIW mit Versatz Januar/Juli) |
| nächster Termin Sommer 2027 | **01.10.2026, Publikation ~Januar 2027** |
| 01.04.2026 unbestätigt | **publiziert 08.07.2026**, Total 100.6, Basis Okt-2025 = 100, Jahresteuerung +0.9 % |
| keine Rebasierung/neue Gewichtung | **Revision 2025 vollzogen** (Basiswechsel April → Oktober, Gewichtung komplett neu) |

**Warum die Heuristik danebenlag — und was daraus zu lernen ist.** Der gesuchte Wert steht gar
nicht in einer Medienmitteilung, sondern in der **Indextabelle der ZIW-Landingpage**. Die frühere
Prüfung hatte diese Seite als «clientseitig gerendert, liefert keine Zahlenwerte» abgeschrieben.
Tatsächlich liegt die Tabelle als JSON im HTML-Quelltext und ist mit `curl` plus Parser
vollständig lesbar. **Lehre:** eine Seite gilt erst dann als leer, wenn der **Rohquelltext**
geprüft ist — nicht schon, wenn ein Markdown-Konverter nichts zurückgibt.

## 2 · Der ZIW-Stand 01.04.2026 und die Revision 2025

**Amtliche Indextabelle, Stichtag 01.04.2026, Basis Oktober 2025 = 100:**

| Reihe | April 2026 | Oktober 2025 | April 2025 | Jahresteuerung |
|---|---|---|---|---|
| Total (BKP 1, 2, 4, 5) | **100.6** | 100 | 99.7 | **+0.9 %** |
| Vorbereitung (BKP 1) | 102.2 | 100 | — | +2.2 % |
| Gebäude (BKP 2) | **100.4** | 100 | — | **+0.4 %** |
| Umgebung (BKP 4) | 100.7 | 100 | — | +0.7 % |
| Baunebenkosten (BKP 5) | 101.0 | 100 | — | +1.0 % |

**Revision 2025** (Methodenbericht, Juni 2026, 16 S., im Volltext gelesen): Basismonat von April
auf Oktober umgestellt — damit derselbe Basismonat wie beim BFS; Gewichtung vollständig neu aus
**54 verwertbaren realen Kostenvoranschlägen** (aus 210 angefragten) Zürcher MFH-Neubauten
2020–2024; Positionsauswahl vom BFS übernommen, dadurch **BKP-1-Positionen wieder aufgenommen**;
**Honorare nicht mehr aus KBOB**, sondern über die BAP-Veränderungsrate — die KBOB-Werte erschienen
zwei Jahre in Folge verspätet (auch für JANS-Honorarrechnungen relevant, die sich auf KBOB
stützen); Verkettung über das Basisjahr **amtlich gedeckt**.

**Faktoren fortgeschrieben auf 01.04.2026.** Letzter Schritt ist kein Kettenglied, sondern die
publizierte Jahresteuerung (100.6/99.7 = 1.009):

| Von | Bis 01.04.2025 | Bis 01.04.2026 |
|---|---|---|
| 01.04.2004 | 1.3336 | **1.3457** |
| 01.04.2020 | 1.1580 | **1.1685** |
| 01.04.2022 | 1.0720 | **1.0817** |
| 01.04.2023 | 1.0160 | **1.0252** |
| 01.04.2024 | 1.0110 | **1.0201** |
| 01.04.2025 | — | **1.0090** |

## 3 · Zwei Zahlenkollisionen dokumentiert

1. **1.3457 gegen 1.346.** Der neue Faktor 01.04.2004 → 01.04.2026 ist numerisch fast identisch
   mit dem *anderen* Anker 1.346 (01.04.2003 → 01.04.2025, geführt in `immobilienbewertung`).
   Zufall, keine Konvergenz — der Stützpunktstreit bleibt offen.
2. **116.1 zweimal.** Der Wert bedeutet **01.04.2025 auf Basis 1.4.2010** (HEV/archis) *und*
   **01.10.2025 auf Basis April 2020** (Medienmitteilung, Grundlage des Run-16-Nachtrags). Beide
   korrekt; ohne Basisangabe verschiebt sich der Stichtag um ein halbes Jahr.

Beide sind als ⚠-Blöcke direkt bei der Faktorentabelle hinterlegt, wo sie zum Zug kommen.

## 4 · Namensfrage geklärt

«Zürcher Index der **Wohnbaukosten**» (diese KB, HEV Schwyz, archis.ch) und «Zürcher Index der
**Wohnbaupreise** (ZIW)» (Statistik Stadt Zürich) bezeichnen **denselben Index**. Belegt: die
HEV-Tabelle trägt den Titel «Wohnbaukosten», nennt in der Quellenzeile aber «Quelle: Zürcher Index
der Wohnbaupreise | Stadt Zürich»; archis.ch führt dieselbe Reihe unter «Wohnbaukosten» mit
identischen Werten (01.04.2025: 143.4 / 116.1 / 115.8 auf den Basen 1998 / 2010 / 2020). Die
Verbände führen den historischen Namen weiter, das Amt den heutigen. Das erklärt die
Verwechslungswarnung, die beide KBs tragen — sie richtet sich gegen die Verwechslung mit dem
**BFS**-Baupreisindex, nicht gegen die beiden Namen derselben Zürcher Reihe.

## 5 · Neuer Kennwert-Block: amtliche BKP-Anteilsstruktur MFH Stadt Zürich 2025

Der Methodenbericht publiziert die vollständige BKP-Gewichtung. Damit hat diese KB erstmals eine
**aktuelle, amtliche, quellenoffene BKP-Kostenstruktur** eines typischen Zürcher
MFH-Neubaus — der moderne Gegenpart zur 1985er-Tabelle 3 der Schätzungsanleitung.

**Auf BKP 2 = 100 % normiert, 1985 gegen 2025:**

| BKP | 1985 | 2025 | Delta |
|---|---|---|---|
| 21 Rohbau 1 | 35.95 % | 26.30 % | **−9.7 Pp** |
| 29 Honorare (Gebäude) | 12.55 % | 20.11 % | **+7.6 Pp** |
| 22 Rohbau 2 | 9.42 % | 13.97 % | +4.6 Pp |
| 27 Ausbau 1 | 12.60 % | 7.87 % | −4.7 Pp |
| 28 Ausbau 2 | 9.30 % | 6.46 % | −2.8 Pp |
| 25 Sanitäranlagen | 8.16 % | 9.93 % | +1.8 Pp |
| 24 HLK-Anlagen | 4.10 % | 5.27 % | +1.2 Pp |
| 20 Baugrube | 2.73 % | 3.82 % | +1.1 Pp |
| 26 Transportanlagen | 0.56 % | 1.26 % | +0.7 Pp |
| 23 Elektroanlagen | 4.63 % | 5.00 % | +0.4 Pp |

**Vier Vorbehalte sind im Artikel mitgeschrieben** — andere Grundgesamtheit (ein Referenzobjekt
1985 gegen 54 Zürcher Projekte 2020–2024), definitorische Verschiebungen der Revision,
Indexgewichte statt Vollkostenrechnung, keine Tiefgaragen in der Stichprobe. Die Tabelle ist
deshalb als **Plausibilisierungsraster** geführt, nicht als Korrektur der 1985er-Werte.

**Alle BKP-Codes gegen `references/bkp-2017/BKP-2017-Liste.md` geprüft** (Rule
`bkp-2017-referenz`). Sämtliche im Bericht verwendeten Codes (1, 13, 17, 2, 20–29, 4, 41, 42, 44,
45, 46, 49, 5, 51, 53, 54) existieren im BKP 2017. Abweichende Beschriftungen sind mit der
BKP-2017-Bezeichnung daneben geführt, namentlich **BKP 17**: der Bericht schreibt «Fundation,
Sicherung, Abdichtung», BKP 2017 heisst **Spezialtiefbau**. Kein erfundener oder nicht
existierender Code übernommen.

## 6 · Nebenbefund zu Frage 1 — Grössenordnung bestätigt, Frage bleibt offen

Der BKP-2-Anteil beträgt in der ZIW-Struktur 2025 **89.4 %** der Gesamtkosten (BKP 1+2+4+5); aus
Tabelle 3 der Schätzungsanleitung (1985) waren **90.6 %** abgeleitet. Zwei unabhängige Quellen,
40 Jahre auseinander, 1.2 Prozentpunkte Abstand — das stützt den Umrechnungsfaktor
BKP 2 → Gesamtkosten belastbar, und zwar echt unabhängig (nicht wie bei zwei Werten aus derselben
Quellenfamilie).

**Frage 1 selbst ist damit nicht beantwortet.** Sie fragt, welchen Scope die m³-Werte von
Tabelle 2 unterstellen; eine Anteilsstruktur sagt darüber nichts aus. Sie bleibt unverändert
offen und an Raphael gerichtet.

## 7 · Begründete Ankerwahl (neu vorgelegt, nicht als Frage offengelassen)

Mit den BKP-Teilindizes gibt es für die Teuerungs-Normalisierung neu die Wahl zwischen **Total**
(+0.9 %) und **Gebäude BKP 2** (+0.4 %). Da die Einzelfälle dieser KB durchgehend als **BKP 1–5**
geführt werden, ist der **Total**-Index hier der richtige Anker; die Faktorentabelle ist bewusst
darauf gerechnet. Anders in `immobilienbewertung`: dort sind die Neuwert-Richtwerte reine
Gebäudekosten je m³ und gehören an **BKP 2** — dort als offener Entscheid **D15** registriert.
Das ist keine Inkonsistenz zwischen den KBs, sondern zwei unterschiedliche Bezugsgrössen; der
Unterschied ist auf beiden Seiten ausgeschrieben.

## Unverändert offen (bewusst nicht angetastet)

Frage 1 (BKP-Scope Tab. 2) · Standard-Label «norm, eloquent» · Teuerungsanker 1.334 gegen 1.346 ·
Doppelführung der Neuwert-Richtwerttabelle · T-Regelgeschoss 0.70 gegen 0.75 · Estrich/RF1-
Einheitspreis (Detailofferte braucht Freigabe). Alle sechs sind Entscheide oder Beschaffungen
Raphaels.

## Geänderte Dateien

- `wiki/kennwerte.md` — Korrektur-/Nachtragsblock im Abschnitt «Baupreisindex ZH» (Rhythmus,
  01.04.2026-Stand, Revision 2025, fortgeschriebene Faktorentabelle, zwei Zahlenkollisionen,
  Namensklärung) **+** neuer Abschnitt «BKP-Anteilsstruktur MFH Stadt Zürich, Stand 2025».
  Beides reine Ergänzung, kein bestehender Kennwert überschrieben.
- `wiki/QUESTIONS.md` — Eintrag 23.08.2026 (Vertiefungslauf): Frage 2 richtig geschlossen,
  Korrekturtabelle, Lehre zur Rohquelltext-Prüfung, Ankerwahl begründet.
- `wiki/INDEX.md` — Lauf-Absatz.
- `CHANGELOG.md` — Eintrag.

## Quellen

1. Statistik Stadt Zürich, **ZIW-Indextabelle Stichtag 01.04.2026**, `stadt-zuerich.ch/ziw`,
   abgerufen 23.08.2026 (Rohquelltext geparst).
2. Statistik Stadt Zürich, **«Methodenbericht Revision 2025 — Zürcher Index der Wohnbaupreise»**,
   Juni 2026, PDF `2026-07-07_Methodenbericht-ZIW.pdf`, 16 S., Volltext (Tabellen T-1, T-3).
3. **BFS, Baupreisindex**, Indexseite mit Publikationsrhythmus und Hauptresultaten nach
   Bauwerksart, Basis Oktober 2025 = 100, Stand April 2026, abgerufen 23.08.2026.
4. **HEV Schwyz**, verkettete Reihe 1939–2025, Publikationsstand 01.01.2026, Volltext.
5. **archis.ch**, Baukostenindex, abgerufen 23.08.2026 (Namensklärung).
6. `references/bkp-2017/BKP-2017-Liste.md` (CRB) — Code-Prüfung.
7. nau.ch, 08.07.2026 — nur Publikationsdatum, als Sekundärquelle gekennzeichnet.
