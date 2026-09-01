# Wissens-Health-Check: firmengruendung-ch — 2026-09-01

## Methode dieses Laufs

Letzter Health-Check: 2026-08-26 (6 Tage). Phase 1 (Audit + Report, unbeaufsichtigt);
Phase 2 (Aktionen) wird NICHT ausgefuehrt — nur Empfehlungen und Befunde.

Pruefumfang: alle 15 wiki/-Artikel (established), INDEX.md, QUESTIONS.md, 
raw/_INGESTED.md, CHANGELOG.md, outputs/ seit 26.08.2026 (2 neue: 2026-08-26_health-check 
selbst, 2026-08-30_bexio-vs-alternativen-buchhaltung).

Zusaetzliche Pruefungen zu 26.08.2026:
- Sind die beiden Orphans noch vorhanden?
- Wurde der GmbH-QUESTIONS-Eintrag nachgezogen?
- Gibt es neue Befunde in den Outputs seit 26.08.?
- Sind durch die bexio-Beratung neue Wissens-Ruecklauf-Kandidaten entstanden?

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 1 (unveraendert zu 26.08.2026) |
| B Kaputte Backlinks/Orphans | 2 (unveraendert zu 26.08.2026) |
| C Unbelegte Claims | 0 |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel | 1 (NEUE: seit 26.08. ueberschritten nun 3 Artikel die 90-Tage-Schwelle) |
| F Schreibregel-Verstoesse | 0 |
| G Promotion-/Ruecklauf-Kandidaten | 1 (unveraendert: QUESTIONS-Nachtrag) |

## Top-3 (Raphaels Aufmerksamkeit)

1. **Zwei Artikel sind weiterhin echte Orphans** (siehe Befund B unten): 
   `verwaltungsrat` und `steuern-bei-gruendung` werden nur von INDEX.md/QUESTIONS.md 
   verlinkt, nie von Content-Artikeln. 6 Tage nach dem letzten Health-Check unverändert.

2. **GmbH-Verifikations-Vermerk in QUESTIONS.md noch nicht nachgezogen** (Befund A): 
   der Archiv-Eintrag vom 21.07.2026 sagt, OR-Artikeln seien "unverifiziert Sekundaerquellen", 
   aber sie wurden noch am selben Tag am Fedlex-Volltext verifiziert (Vermerk im Artikel, 
   INDEX.md zeigen korrekten Stand). Nur QUESTIONS.md wurde nicht aktualisiert.

3. **bexio-Report vom 30.08.2026 kein Wissens-Ruecklauf**: Der Output behandelt 
   Buchhaltungssoftware (Betriebsentscheid fuer beide Rechtseinheiten, kein Gruendungsrecht) 
   und wird bewusst nicht ins Wiki ueberfuehrt (siehe CLAUDE.md Punkt zu Output-Ablage). 
   Kein neuer Wiki-Artikel notwendig.

## Details je Audit

### A. Widersprueche

**1 Finding (dokumentarisch, unveraendert zu 26.08.2026):**

`wiki/QUESTIONS.md` traegt beim 21.07.2026-Archiv-Eintrag die veraltete Aussage:
> "[[gmbh-gruendungsablauf]] Sekundaerquellen ('vor einem realen Gruendungsfall gegen 
> den OR-Wortlaut nachzupruefen')"

Tatsaechlich wurde der Artikel **noch am selben Tag** (21.07.2026, Dauerschicht-Zyklus 49) 
am Fedlex-Volltext verifiziert. Der Verifikations-Vermerk steht im Artikel selbst 
(`gmbh-gruendungsablauf.md`, Frontmatter + Text), ebenso in `INDEX.md` (Markierung 
"Artikelnummern am Fedlex-Volltext verifiziert, 21.07.2026").

**Keine Widersprueche zwischen Sachaussagen zwei verschiedener Artikel** — rein ein 
Registerpflege-Fehler (QUESTIONS.md wurde nach dem zweiten Lauf desselben Tages nicht 
nachgefuehrt).

### B. Kaputte Backlinks & Orphans

**0 tote Links** (wiki-konsistenz.sh bestaetigt am 26.08., erneut in diesem Lauf kein 
neuer Befund).

**2 Orphans (unveraendert zu 26.08.2026):**
- `verwaltungsrat.md` — nur INDEX.md/QUESTIONS.md verweisen darauf; kein Content-Artikel 
  verlinkt zurueck. Naheliegende Rueckverweise: [[ag-gruendungsablauf]] Schritt 
  Errichtungsakt/Organe, [[errichtungsakt]] VR-Konstituierung als Teil der 
  Gruendungsurkunde.
- `steuern-bei-gruendung.md` — ebenfalls nur INDEX/QUESTIONS. Naheliegende Rueckverweise: 
  [[rechtsform-vergleich]] (Steuerfolgen der Rechtsformwahl), [[ag-gruendungsablauf]] 
  Schritt Steuerfolgen, [[steuern-ag-inhaber]] (Querverweis fuer Lesende, die nach 
  Gruendungs- vs. laufenden Steuerhebeln unterscheiden wollen).

**Frontmatter:** alle 15 Artikel vollstaendig.

### C. Unbelegte Claims

Stichprobe (wie 26.08.2026, plus Verifizierung der Befunde aus bexio-Output):
- Kapitalbetraege, Handelsregistergebuehren, Fristen AHV/BVG/UVG/MWST: alle mit 
  Art.-Fundstelle oder benannter Quelle belegt. Kein neuer Befund seit 26.08.
- bexio-Output behauptet keine neuen KB-Sachaussagen (rein Betriebs-/Softwareentscheid); 
  keine unbelegten Claims eingefuehrt.

**Befunde:** 0

### D. RAW-Coverage

6/6 Dateien in raw/_INGESTED.md weiterhin als "eingearbeitet" markiert und in Wiki 
tatsaechlich zitiert (Spot-Check: belege-handelsregister, errichtungsakt, 
statuten-ag). Keine neuen raw/-Dateien hinzugekommen.

**Befunde:** 0

### E. Veraltete Artikel

**NEUE Befunde seit 26.08.2026:**

Am 26.08.2026 waren drei Artikel bei `last_updated: 2026-06-02` (85 Tage alt):
- ag-gruendungsablauf
- belege-handelsregister
- errichtungsakt

Am 2026-09-01 sind diese 91 Tage alt (ueber der 90-Tage-Schwelle).

**Gibt es neuere Evidenz, die diese drei auffrischen sollte?**
- OR-Artikel (Art. 629 ff., Handelsregisterrecht) nicht geaendert seit Juni.
- Handelsregistergebuehrer-Update am 08.08.2026 betrifft aber nur Artikel 
  [[kosten-und-zeit]] und [[rechtsform-vergleich]] (beide `last_updated: 2026-08-08`, 
  noch im gruen Bereich).
- Keine bekannte Aktienrechtsaenderung seit Juni (letzter Schwung war 2023).

**Bewertung:** Diese drei Artikel sind inhaltlich noch aktuell (keine neuere Evidenz 
bekannt), aber sie naehern sich rein rechnerisch der Aktualisierungs-Schwelle. Bei 
naechstem Pflege-Lauf (z.B. erneute Verifizierung gegen Fedlex-Volltext oder 
tatsaechliche AG-Gruendung der Raphael Jans AG) die Daten nachfuehren.

**Befunde:** 1

### F. Schreibregel-Verstoesse

0 Funde. Echte Umlaute durchgaengig, keine dekorativen Symbole. bexio-Output haelt 
ebenfalls Schweizer Hochdeutsch-Standards (extern, wird nicht ins Wiki uebernommen).

**Befunde:** 0

### G. Promotion-Kandidaten

**QUESTIONS.md-Eintrag fordert noch immer eine Promotion (unveraendert zu 26.08.2026):**

Der Archiv-Eintrag zum [[gmbh-gruendungsablauf]] sollte um einen Nachtrag ergaenzt 
werden: "→ noch am selben Tag (21.07.2026, Dauerschicht-Zyklus 49) am Fedlex-Volltext 
verifiziert, siehe Verifikations-Vermerk im Artikel."

**bexio-Output (30.08.2026):** behandelt keinen Gruendungsfall, sondern einen 
Betriebsentscheid (Buchhaltungssoftware fuer bestehende + zukuenftige AG). Nicht fuer 
Wiki-Promotion geeignet. Frist eintrag in `logbuch/fristen.md` dokumentiert 
(Entscheid bis 08.09.2026).

**Befunde:** 1

## Fazit

Die KB bleibt sauber und sachlich korrekt. Die beiden Befunde (Orphans + QUESTIONS-Eintrag) 
sind dokumentarisch/strukturell, keine Sachfehler. Sie sind identisch zu vor 6 Tagen — 
ein Signal, dass eine Phase-2-Umsetzung (interaktive Session) noetig ist, um sie 
zuzuschreiben.

Neu ueberschreiten drei Artikel heute die 90-Tage-Schwelle; ohne Anzeichen einer neuen 
Rechtsaenderung, aber Auffrischung bei naechster Gelegenheit empfohlen.
