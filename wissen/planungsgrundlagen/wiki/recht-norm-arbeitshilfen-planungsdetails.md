---
title: Recht & Norm — Arbeitshilfen Planungsdetails (2h-Schatten, Briefkastenanlage, Absturzsicherungen, Türen in Fluchtwegen, Estriche, Balkonabdichtung)
status: established
last_updated: 2026-07-24 (Run 58)
sources: [PL - 02_Recht_Norm/03_Arbeitshilfen/2h Schatten/2h-Schatten_AFB.pdf (Amt für Baubewilligungen/Amt für Regionalplanung Kt. ZH, "Die 2-Stunden-Schattenkurve", 1967/09.12.03 DEC), PL - 02_Recht_Norm/03_Arbeitshilfen/Post Briefkastenanlage/Post_Briefkastenanlage.pdf (Die Schweizerische Post, PostMail, Faktenblatt "Der Hausbriefkasten", 09.2010, gestützt auf Verordnung des UVEK zur Postverordnung vom 18.03.1998), PL - 02_Recht_Norm/04_Merkblätter/Absturzsicherungen Richtlinie.pdf (Stadt Zürich Amt für Baubewilligungen, Richtlinie "Absturzsicherungen im Hochbau", 1. Juni 2019), PL - 02_Recht_Norm/04_Merkblätter/Merkblatt-TK004_Fluchtwege_DE.pdf (Schweizerische Metall-Union SMU/Verband Schweizerischer Türenproduzenten VST, Merkblatt 004 "Türen in Fluchtwegen", 11 S.), PL - 02_Recht_Norm/04_Merkblätter/Fugenlose Bodenbeläge/PAV-E_16-2012_Checkliste (PAVIDENSA, "Checkliste Planung und Ausführung von Estrichen", März 2012, vollständig gelesen, Run 58), PL - 02_Recht_Norm/04_Merkblätter/Fugenlose Bodenbeläge/PAV-E_01-2008_Spez_Bedingungen_Fussbodenheizung (PAVIDENSA, "Spezielle Bedingungen für Heizestriche", Oktober 2008, vollständig gelesen, Run 58; 7 weitere PAV-A/PAV-E-Empfehlungen im selben Ordner als Backlog), PL - 02_Recht_Norm/04_Merkblätter/Merkblatt Unterlagsboden/Balkone_Laubengänge_Anforderungen_nach_SIA_281_2007_273_WZ230211.pdf (LPM AG/Richard Graf dipl. Bauingenieur HTL, KBS-Fachtagung 2010 "Balkone und Laubengänge — Anforderungen nach SIA-Norm 271:2007+ (273)", 36 Folien vollständig gelesen, Run 58)]
links: [[recht-norm-quellenlandkarte]], [[recht-norm-baueingabe-verfahren-zh]], [[recht-norm-raumprogramm-referenzwerke]], [[recht-norm-tiefgarage-erschliessung]], [[machbarkeit]], [[brandschutz-pl03-wegweiser]]
---

# Recht & Norm — Arbeitshilfen Planungsdetails (2h-Schatten, Briefkastenanlage, Absturzsicherungen, Estriche, Balkonabdichtung)

**Neu erschlossen (Run 30, 2026-07-13; erweitert Run 52 + Run 58).** Bisher nicht ausgewertete
Einzel-PDF-Ordner unter `03_Arbeitshilfen/`/`04_Merkblätter/` — jede Quelle behandelt einen
konkreten, isolierten Planungsdetail-Nachweis, der in einer Baueingabe/Ausführungsplanung
wiederkehrend gebraucht wird, aber zu klein für einen eigenen Themenordner ist. Gebündelt in einem
Artikel statt lauter Einzeiler-Stubs.

## 1. 2-Stunden-Schatten — Schattenwurf-Grobnachweis Kt. ZH

**Rechtliche Grundlage:** § 284 Abs. 4 PBG ZH ("Die Nachbarschaft darf nicht wesentlich
beeinträchtigt werden, insbesondere nicht durch Schattenwurf in Wohnzonen oder gegenüber
bewohnten Gebäuden") und die Präzisierung in **§ 30 ABV** — als **wesentliche Beeinträchtigung**
gilt eine Beschattung, die an den mittleren Wintertagen (3. Nov. / 8. Feb.) **länger als 2 Stunden**
dauert:
- bei überbauten Grundstücken: Beschattung des Nachbargebäudes, in der Regel am Fusspunkt gemessen;
- bei unüberbauten Grundstücken in Wohnzonen: Beschattung überbaubarer Flächen, sofern eine der
  Bau- und Zonenordnung entsprechende Überbauung dadurch verunmöglicht oder erheblich erschwert wird.

Keine wesentliche Beeinträchtigung liegt vor, wenn ein normkonformes Vergleichsprojekt keine
geringere Beschattung nachweist, oder wenn die Nachbarüberbauung erheblich überaltert bzw. im
starken Missverhältnis zur BZO-Zielsetzung steht (dann gelten die Regeln für überbaute
Grundstücke sinngemäss auch bei unüberbauter Nachbarparzelle).

**Konstruktionsverfahren (Grobbeurteilung, kein rechnerischer Ersatz für ein Sonnenstand-Tool):**
1. Für jede volle Stunde von 8:00 bis 16:00 Uhr die Schattenlänge `L = Gebäudehöhe H × cot β`
   ermitteln (β = Sonnenhöhe zur Zeit t) und im Grundriss ab den Gebäudeecken im Winkel α
   (Azimut) nach Norden einzeichnen.
2. Schnittpunkte der Schatten in 2-Stunden-Intervallen bestimmen (Schatten 08:00 mit Schatten
   10:00, 09:00 mit 11:00 usw.) und die Schnittpunkt-Hüllkurve verbinden → das ist der
   2-Stunden-Schatten.

**Tabellenwerte (mittlere Wintertage, Quelle: Amt für Regionalplanung 1967):**

| Ortszeit-Paar | α Azimut | β Sonnenhöhe | cot β |
|---|---|---|---|
| 12:00 | 00°00' | 27°37' | 1.911 |
| 11:00 / 13:00 | 16°11' | 26°11' | 2.033 |
| 10:00 / 14:00 | 31°25' | 22°06' | 2.463 |
| 09:00 / 15:00 | 45°13' | 15°47' | 3.538 |
| 08:00 / 16:00 | 57°37' | 07°51' | 7.254 |

(Feinraster im 15-Min-Takt liegt im Quelldokument vor, hier nur die Stundenwerte.)

**Wichtiger Vorbehalt der Quelle selbst:** "Diese Anleitung dient lediglich der Grobbeurteilung
des 2-Stunden-Schattens. Es wird deshalb empfohlen, frühzeitig mit dem Amt für Baubewilligungen
Kontakt aufzunehmen." — kein Ersatz für ein rechnerisches Sonnenstand-/Schattenwurf-Gutachten bei
grenzwertigen Fällen.

**JANS-Praxisrelevanz:** Grober Vorprüf-Handnachweis in der Konzeptphase, bevor ein
Verschattungsgutachten beauftragt wird — insbesondere bei Attika-/Dachaufbauten oder Aufstockungen
in dichter Nachbarschaft (Zusammenspiel mit Grenzabstand/Gebäudehöhe, → Skill `baurecht`).

## 2. Post-Briefkastenanlage — Standort und Abmessungen

**Grundlage:** Verordnung des UVEK zur Postverordnung vom 18.03.1998; Faktenblatt der Post
(PostMail, 09.2010).

**Standortregeln je Gebäudetyp:**
- **EFH/Reihen-EFH/Häusergruppen:** Briefkasten an der Grundstücksgrenze beim Hauszugang, am
  nächsten zur vom Zustelldienst befahrenen Strasse/Verkehrsfläche.
- **MFH/Geschäftshäuser** (> 2 Haushalte): Briefkästen im Bereich der Hauseingänge, frei
  zugänglich (**nicht** hinter abgeschlossener Eingangstüre), gut beleuchtet, möglichst neben der
  Sonnerie.
- **Ferien-/Wochenendhäuser:** zentrale Briefkastenanlage an der Zufahrt zum Gebiet/zur
  Häusergruppe.

**Mindestmasse Brief-/Ablagefach (Innenmindestmasse, cm):**

| Format | Höhe | Breite | Tiefe | Einwurföffnung |
|---|---|---|---|---|
| liegend | 10 | 25 | 35.5 | 25×2.5 |
| quer liegend | 10 | 35.5 | 25 | 35.5×2.5 |
| stehend | 35.5 | 25 | 10 (8 kombiniert) | 25×2.5 |

Ablagefach analog (Höhe/Breite/Tiefe vertauscht, Öffnung 15×25/15×35.5/35.5×25). **Stehendes
Format mit Ablagefach nur ausnahmsweise zulässig** (bauliche Zwänge oder Denkmalschutz) — Gefahr,
dass Briefpost zwischen Zeitungen/Reklame untergeht. Einwurföffnung nur mit Schliessklappe,
Anschriften-Aussparung 8×2.5 cm im mittleren/oberen Frontbereich (nicht auf der Klappe, nicht
direkt bei der Einwurföffnung).

**Paketboxen (Zustellangebot MFH):** verschliessbare Ablagefächer, empfohlen 1 grosse Box je
5–6 Haushalte, 2 Grössen (80×55×40 cm / 40×55×40 cm), elektronisches Schliesssystem wird von der
Post programmiert.

**JANS-Praxisrelevanz:** Kleiner, aber regelmässig übersehener Nachweis in der Aussenraum-/
Erschliessungsplanung (Baueingabe-Situationsplan) — insbesondere bei MFH-Eingangsbereichen und
Umbauten mit neuer Erschliessung.

## 3. Absturzsicherungen im Hochbau — Richtlinie Stadt Zürich (1. Juni 2019)

**Rechtliche Grundlage:** § 239 Abs. 1, § 357 Abs. 4, § 358 PBG ZH; § 20 BBV I; SIA-Norm 358
"Geländer und Brüstungen"; bfu-Broschüre "Geländer und Brüstungen"; bfu-Handbuch für
Sicherheitsdelegierte.

**Grundregel:** Schutzelemente sind überall dort anzubringen, wo die Höhendifferenz am Rand einer
begehbaren Fläche zur darunterliegenden Fläche **mehr als 1 m** beträgt (bei vergrösserter
Absturzgefahr — grosse Personenansammlungen, Absturzhöhen > 12 m — wird eine Erhöhung über das
Minimalmass empfohlen).

**Neue Schutzelemente (Ziff. 1):**
- **Geländer/Brüstungen:** mind. 100 cm hoch; feste Brüstungen mit oberem Abschluss ≥ 20 cm
  Tiefe genügen mit 90 cm; am Treppenlauf Mindesthöhe 90 cm (vertikal ab Stufenvorderkante).
- **Nicht kindersichere Elemente** (zulässig dort, wo sich i. d. R. keine unbeaufsichtigten Kinder
  aufhalten: Gewerbe/Industrie, für Publikum unzugängliche Büro-/Geschäftshausbereiche,
  Erwachsenenbildung, Parkdecks): obere und mittlere Traverse, Spannseile/vertikale Stäbe im
  Abstand max. 30 cm Lichtmass; horizontaler Abstand Gehfläche↔Absturzsicherung max. 5 cm.
- **Kindersichere Elemente** (notwendig in Wohnbauten, Kindergarten-/Volksschulbauten samt
  Umgebungsbereich, für Publikum zugänglichen Bereichen anderer Bauten): weder durchkriech- noch
  bekletterbar. Durchkriechen verhindert = bis 75 cm Höhe keine 12-cm-Kugel durchstossbar.
  Nicht bekletterbar = bis 65 cm Höhe keine Aufstiegsmöglichkeiten (Vorsprünge > 3 cm Tiefe,
  Einstiegsöffnungen > 4 cm Breite/> 2 cm Höhe, runde Ausschnitte > 5 cm Durchmesser gelten als
  Aufstiegshilfe). Bekletterbare Elemente: oberer Abschluss gegen die Zugangsseite um mind. 15 cm
  versetzen.
- **Handläufe:** bei Treppen mit mehr als 5 Steigungen sowie bei steilen Rampen; Zugangstreppen
  MFH/Fluchttreppen ab 2 Steigungen mit Handlauf; Treppen breiter als 1.5 m beidseitig; breiter
  als 5 m zusätzlich Handlauf in der Treppenmitte. Öffentlich zugängliche Treppen zusätzlich nach
  **SIA 500 "Hindernisfreie Bauten"**.

**Bestehende Schutzelemente (Ziff. 2, Umbau/Umnutzung):** Anpassungspflicht an geltende
Massvorschriften, wenn die bestehenden Elemente **mehr als 15 %** davon abweichen; bei direkten
Veränderungen angrenzender Bauteile (z. B. Bodenaufbau-Ersatz) oder Entfernung/Wiederanbringung
von Schutzelementen gelten sofort die Anforderungen an **neue** Schutzelemente. Abgestufte
Toleranzwerte für "bestehende Mindesthöhen ohne Zusatzmassnahmen" (Geländer ≥ 85 cm bzw. am
Treppenlauf ≥ 77 cm; kindersicher ≥ 85 cm bzw. ≥ 77 cm mit engmaschigeren Zwischenwerten). Bei
Abweichungen von weniger als 15 % wird die Anpassung — unter Verweis auf die
**Werkeigentümerhaftung Art. 58 OR** — empfohlen, ist aber nicht zwingend.

**Erhebliche polizeiliche Missstände (Ziff. 3):** instabile oder absolut unzureichende
Absturzsicherungen müssen **auch ausserhalb eines Baubewilligungsverfahrens** behoben werden.

**Zuständigkeit:** Amt für Baubewilligungen Stadt Zürich (Baukontrolle), persönliche Beratung
ohne Voranmeldung Mo–Fr 8–9 Uhr.

**JANS-Praxisrelevanz:** Verbindliche Bemessungsgrundlage für Geländer-/Brüstungsdetails in jeder
Stadt-ZH-Baueingabe und bei Umbauten (15-%-Abweichungs-Schwelle ist die praxisrelevante Grenze,
ob eine bestehende Balkonbrüstung saniert werden muss). Ergänzt die generischen SIA-500-Vorgaben
(→ [[recht-norm-raumprogramm-referenzwerke]] Hindernisfreies Bauen) um die konkreten
Absturzsicherungs-Masse.

## 4. Türen in Fluchtwegen — Schliesstechnik (SMU-Merkblatt 004, Run 52, 2026-07-18)

Quelle: **Schweizerische Metall-Union (SMU)/Verband Schweizerischer Türenproduzenten (VST),
Merkblatt 004 «Türen in Fluchtwegen»** (11 S., Erscheinungsjahr nicht im Dokument datiert,
inhaltlich Stand VKF-Brandschutznorm 1.1.2005). Anders als die VKF-Brandschutznorm selbst
(→ Skill `brandschutz`, keine Duplizierung der dortigen Fundstellen) behandelt dieses Merkblatt
die **Schliesstechnik-Ebene**: welche Schloss-/Beschlagfunktionen (mechanisch und elektrisch) ein
Türhersteller/Metallbauer für eine normkonforme Fluchtweg-/Panik-Tür konkret verbauen muss. Direkt
JANS-relevant für Türdetail-Ausschreibungen (BKP 271/272) bei jedem Neubau mit Fluchtwegen —
besonders bei Healthcare-Projekten, wo das Merkblatt explizit auf Kinder, ältere Menschen,
Personen mit Gehhilfen (Spital) und Rollstuhlfahrer als Problemfall bei hohen Bedienkräften
hinweist (§5.3).

### 4.1 Begriffe und Schutzziel

- **Fluchtweg** = kürzester Weg, der (a) Personen zur Verfügung steht, um von einer beliebigen
  Stelle in Bauten/Anlagen ins Freie an einen sicheren Ort zu gelangen, oder (b) der Feuerwehr/
  den Rettungskräften als Einsatzweg dient. Fluchtwege sind gleichzeitig Rettungswege (in
  EU-Normen «Rettungsweg» genannt).
- **Vier Schutzziele für Türen in Fluchtwegen** (§2): (1) jederzeit als solche erkennbar (Bezeichnung,
  z.B. leuchtende/nachleuchtende Rettungszeichen, nicht verdeckbar), (2) jederzeit in
  Fluchtrichtung ohne Hilfsmittel rasch öffenbar (SN EN 179/SN EN 1125: max. 1 Handbewegung von
  innen; prEN 13637 elektrisch: max. 2 Handbewegungen), (3) jederzeit sicher benutzbar
  (standortgerecht, nicht durch Schnee/Gegenstände blockierbar, Panik-/Notausgangstüren müssen
  sich unter Vorlast von **1000 N** öffnen lassen), (4) auch Türen in Rettungswegen (von aussen mit
  geeigneten Mitteln, z.B. Feuerwehrschlüssel, öffenbar).
- **Türbreiten (§3.1):** minimale nutzbare Breite **900 mm**, je nach Personenbelegung um
  Vielfache von 600 mm erweitert (1200/1800/2400 mm) — Bemessung nach VKF-Brandschutzrichtlinie
  «Flucht- und Rettungswege».

### 4.2 Notausgangs- vs. Panikausgangstüren (Abgrenzung, §4-5)

| | Notausgangstür (SN EN 179 / prEN 13637) | Panikausgangstür (SN EN 1125 / prEN 13633) |
|---|---|---|
| Zielgruppe | Ortskundige Personen, kleine Räume (≤ 30 m²/≤ 6 Personen) — z.B. Wohnbereich | Ortsunkundige Personen, grosse Personenbelegung (Disco/Kino/Ausstellungshalle) oder besondere Gefährdung (Labor/Fabrikation) |
| Öffnung | Türdrücker, max. 1 Handbewegung | Panikstange/Pushbar, horizontal gegen die Türe |
| Bedienkraft normal | F ≤ 70 N senkrecht nach unten | F ≤ 80 N horizontal |
| Bedienkraft bei 1000 N Vorlast (Gedränge) | — | F ≤ 220 N horizontal |

Die europäischen Normen unterscheiden begrifflich Notausgang/Panikausgang; die **VKF-
Brandschutznorm kennt diese Unterscheidung nicht** — sie fordert generell, dass Türen in
Fluchtwegen in Fluchtrichtung ohne Hilfsmittel geöffnet werden können (Ausnahme: Türen zu kleinen
Räumen ≤ 30 m²/≤ 6 Personen oder Räumen ohne erhöhte Brandgefahr).

**Problematik Panikstangen/Pushbars (§5.3, wörtlich relevant):** «Die Bedienkräfte sind bei
Paniktüren sehr hoch und in einer ungünstigen Richtung aufzubringen. […] Für kleine Kinder
(Kindergarten, Schulen), ältere Leute (Altersheim), Personen mit Gehhilfen (Spital) und
Rollstuhlfahrer kann es ein Problem sein, solche Kräfte horizontal aufzubringen.» — ein direkt
übertragbarer Einwand gegen Panikstangen-Standardlösungen bei JANS-Healthcare-/Schulprojekten;
Alternative: Notausgangstür mit Drücker (niedrigere, senkrecht wirkende Bedienkraft) statt
Panikstange, wo baurechtlich zulässig (kleine Räume/geringe Personenzahl).

### 4.3 Funktionen von Panikschlössern (mechanisch, §6-7)

Fünf standardisierte Funktionsbuchstaben (Vorsicht: Hersteller weichen im Detail leicht ab,
Funktionsbeschreibung je Fabrikat immer genau prüfen):

- **Umschalt-Funktion B**: Aussendrücker beidseitig an-/abkoppelbar per Schlüssel (Grundstellung
  frei begehbar ↔ Schaltstellung nur mit Schlüssel von aussen).
- **Schliesszwangfunktion C**: Aussendrücker nur mit Schlüssel angekoppelt (Sicherungsfunktion —
  Verschliessen kann nicht vergessen werden, da der Drücker nach Schlüsselabzug automatisch
  wieder auf Grundstellung «verriegelt» springt).
- **Durchgangs-Funktion D**: Aussendrücker angekoppelt (beidseitig frei begehbar), Riegel als
  zusätzliches Sicherheitselement.
- **Wechsel-Funktion E**: fluchtseitig Drücker, interventionsseitig Schild mit feststehendem
  Knauf — von aussen nur mit Schlüssel.
- **Selbstverriegelnd SVP**: Schlossriegel wird bei jeder Schliessung automatisch ausgestossen
  (versicherungstechnisch relevant); geringerer Verschleiss, wenn nur in Position «verriegelt»
  ausgestossen wird.

### 4.4 Elektrisch gesteuerte Fluchtwegtüren (§8)

- **Ruhestromprinzip** (Pflicht für Verriegelungen in Fluchtrichtung, stromlos offen) vs.
  **Arbeitsstromprinzip** (stromlos verriegelt, nur in Interventionsrichtung/Eintritt zulässig,
  nicht in Fluchtrichtung).
- **Notausgangsverschluss nach prEN 13637**: mit Türsteuerterminal + Nottaster; Fernfreischaltung
  automatisch über Brandfallsteuerung oder manuell aus der Sicherheitszentrale; Alarm muss vor
  Ort quittiert werden.
- **Panikverschluss nach prEN 13633**: kein Nottaster erlaubt (widerspräche der Panikfunktion) —
  die Freigabe muss direkt durch Betätigen der Panikstange/des Pushbars ausgelöst werden.
- **Automatische Türen nach DIN 18650-1/-2**: mit Brand-/Rauchschutzeigenschaften müssen im
  Brandfall automatisch schliessen (Gefahr: Sensoren dürfen die Schliessfunktion wegen Rauchs
  nicht blockieren); ohne solche Eigenschaften öffnen bei Brandfallsteuerung und bleiben offen
  stehen.
- Elektrische Verriegelungen dürfen **nur im Sturzbereich** angebracht werden, wenn auch der
  Standflügel (zweiflügelige Tür) Fluchtwegfunktion erfüllen muss — die Verriegelung muss jederzeit
  manuell entriegelbar bleiben.

### 4.5 Anhang — VKF-Brandschutznorm-Auszug (nur Fundstellen, Volltext bleibt bei `brandschutz`)

Das Merkblatt zitiert als Anhang die einschlägigen VKF-Artikel/Anhänge (Art. 37 Begriff Flucht-/
Rettungsweg, Art. 47 Breite von Türen/Korridoren/Treppen — Mindestbreite Treppen/Korridore 1.2 m,
wohnungsintern 0.9 m, lichtes Durchgangsmass Türen 0.9 m; Art. 48 Türen müssen in Fluchtrichtung
öffnen; Anhang 3.5.5 automatische Schiebe-/Drehtüren nur zulässig, wenn Flucht jederzeit
gewährleistet ist + Selbstschliesser-Pflicht bei Verwechslungsgefahr zu Treppenhäusern; Anhang
7.3.5 Sonderbestimmungen Beherbergungsbetriebe). **Diese Ziffern sind bereits über den Skill
`brandschutz`/die Normen-KB abzugleichen** ([[recht-norm-quellenlandkarte]] Prinzip «verlinken,
nicht duplizieren») — hier nur als Beleg dafür referenziert, dass die Schliesstechnik-Vorgaben
(§4.1-4.4) direkt aus derselben Norm abgeleitet sind, nicht als eigenständige Fundstelle.

**JANS-Praxisrelevanz:** Bei jeder Fluchtweg-Türausschreibung (BKP 271/272, Metall-/Stahltüren)
die Funktionsbuchstaben-Systematik (§4.3) und die Bedienkraft-Warnung bei Panikstangen (§4.2) als
Grundlage für die Produktespezifikation nutzen — besonders in Schul-/Kindergarten- und Healthcare-
Projekten, wo Panikstangen für die Nutzergruppe ungeeignet sein können und eine Notausgangstür mit
Drücker die bessere Wahl ist (sofern die Raumgrösse/Personenzahl das zulässt, §4.1/§5.1).

**Delta-Check Run 58 (2026-07-24):** VST-Merkblatt Nr. 012 «Türen in Fluchtwegen» (PL-03 Brandschutz/
02 Brandschutzrichtlinien 2015-17-22/Merkblatt_012_d.pdf, Erstausgabe 2009) behandelt dieselben
Kernthemen (EN 179/EN 1125-Abgrenzung, Türbreiten-Staffel 900/1200/1800/2400 mm, prEN 13633/13637,
DIN 18650) wie das hier ausgewertete Merkblatt 004 — **kein neuer Fakt**, gleicher Herausgeberkreis
VST. Register-Fund in [[brandschutz-pl03-wegweiser]] §1 statt eigenem Abschnitt.

## 5. Fugenlose Bodenbeläge / Estriche — PAVIDENSA-Empfehlungen (Run 58, 2026-07-24)

Quelle: **PAVIDENSA (Verband Abdichtungen Estriche Schweiz)**, Ordner `04_Merkblätter/Fugenlose
Bodenbeläge/` — 9 Einzel-Empfehlungen PAV-A/PAV-E, bisher nie erschlossen. Zwei davon vollständig
gelesen (Checkliste PAV-E 16:2012, Heizestrich-Bedingungen PAV-E 01:2008); die übrigen 7
(Betonoberflächenbearbeitung PAV-A 01, Schutzschichten PAV-A 03, Mineralfaserdämmplatten PAV-E 05,
Fugen in Calciumsulfatestrichen PAV-E 11, Verschleisswiderstand PAV-E 12, Schwimmende Estriche
oberflächenfertig PAV-E 17) liegen als Backlog vor.

**PAV-E 16:2012 — Checkliste Planung und Ausführung von Estrichen.** Fünf-Phasen-Ablauf, jede
Phase mit Verweis auf die passende PAV-Einzelnorm bzw. SIA-Norm:
- **Planung:** Nutzungsvereinbarung, Trittschall (SIA 181), Wärmeschutz, Beanspruchung, Heiz-/
  Kühlestrich, Feuchtigkeit, Belagstyp.
- **Ausführungsplanung:** Bodenaufbau, Untergrund/Ebenheit (PAV-E 06/13), Feuchtigkeitssperren
  (PAV-E 04/05), Wärmedämmung (SIA 180/380-1), Trittschall (SIA 181), Dimensionierung (PAV-E 13).
- **Vor dem Einbau:** Meterriss/Belagsdicke je Raum (SIA 118/251), Heizungsplan (PAV-E 01),
  Fugenplan Zement-/Calciumsulfatestrich (PAV-E 10/11/14).
- **Während des Einbaus:** Ebenheit, Bautemperatur, keine Zugluft.
- **Nach dem Einbau:** Begeh-/Belastbarkeit, Austrocknung (PAV-E 03), **Belegreife** nach SIA
  244/246/248/252/253 (belagsspezifisch).

**PAV-E 01:2008 — Spezielle Bedingungen für Heizestriche.** Zentrale Fehlerquelle: **Estriche
werden vor dem Belagseinbau nicht ausreichend trocken/belegreif**, oder es entstehen unerwünschte
Risse durch ungleichmässige Beheizung. Kernregeln:
- **Fugenplan-Pflicht des Bestellers** (SIA 251:2008 Art. 2.4.9): Lage/Art der Fugen (Bewegungs-/
  Schwind-/Randfuge), Aufbaudicken, Registerflächen, beheizte/unbeheizte/unterschiedlich beheizte
  Flächen (Temperaturdifferenz ≥ 5 K = eigenes Feld mit Fuge).
- **Feldgrössen-Richtwerte:** Zementestrich (CT) max. 6 m Seitenlänge; Calciumsulfatestrich
  (CA/CAF) max. 8 m; Seitenverhältnis max. 1:1,5.
- **Drei Verlegearten der Heizregister:** reihenförmig/mäanderförmig (Rohrabstand ≥ 150 mm,
  Temperaturdifferenz Vor-/Rücklauf beachten), spiralförmig (ausgeglichenere Bodentemperatur, mehr
  Planungsaufwand), kombiniert (Randzone spiralförmig 100 mm, Zentrum linear 150 mm).
- **Leitungen zu Radiatoren dürfen nicht im Estrich verlegt werden** (SIA 251:2008 Art. 2.6.5).
- **Funktionsheizen/Belastungsprobe** (SIA 251 Art. 5.9.5): Vorlauftemperatur bis Einbringen max.
  20 °C; Belastungsprobe frühestens 21 Tage (Zement) bzw. 7 Tage (Calciumsulfat) nach Herstellung
  — 3 Tage bei 25 °C, dann 4 Tage bei max. Vorlauftemperatur; **Calciumsulfat-Estriche max. 50 °C
  Vorlauftemperatur**, nie überschreiten.
- **Heizen bis Belegreife:** 25 °C für 1 Tag, danach täglich +5 °C bis zur max. Vorlauftemperatur
  halten, danach täglich −10 °C abheizen.
- **Häufige Fehlerquellen** (Praxisliste): fehlende/falsch angeordnete Bewegungsfugen,
  Heizregister nicht auf Estrichfelder abgestimmt, zu dünner Estrich mit unzureichender
  Mörtelüberdeckung der Leitungen, Belag auf zu feuchtem Estrich verlegt (Bimetalleffekt-Wölbung
  bei starren Plattenbelägen).

**JANS-Praxisrelevanz:** Direkt LV-relevant für BKP 281.1 «Fugenlose Bodenbeläge» — die
Fugenplan-Pflicht liegt beim **Besteller** (Architekt/Bauleitung), nicht beim Ausführenden; ein
fehlender Fugenplan ist eine der häufigsten Ursachen für spätere Rissschäden. Checkliste PAV-E 16
eignet sich direkt als Ausführungsplanungs-Pendenzenliste.

## 6. Balkone und Laubengänge — Abdichtungsanforderungen nach SIA 271/273 (Run 58, 2026-07-24)

Quelle: **LPM AG, Richard Graf (dipl. Bauingenieur HTL), KBS-Fachtagung 2010** «Balkone und
Laubengänge — Anforderungen nach SIA-Norm 271:2007+ (273)» (`04_Merkblätter/Merkblatt
Unterlagsboden/Balkone_Laubengänge...pdf`, 36 Folien, vollständig gelesen — Ordnername irreführend,
Inhalt hat nichts mit Unterlagsböden zu tun). Praxis-Vortrag mit realen Schadensfällen + der
normativen Anforderungsliste, bisher nie erschlossen.

**Schadensbild (Teil 1, Fotobelege):** Durchfeuchtung/Ausblühungen über die ganze Balkon-/
Laubengangfläche auch nach längerer Trockenzeit, Risse bis 4 mm Breite über die volle Breite,
Anschlussschäden an Pfeilern (kein Fuge → Abplatzungen), Ablösung des «schwimmenden Hartbetons»
vom Stahlwinkel (Fassadenkitt statt Fuge → Wassereintritt), nicht entwässerte «Wannen» an
Fassaden-Anschlüssen.

**Ursachen (Teil 2):** keine/ungenügende Entwässerung, keine/zu schmale Fugen bei Anschlüssen an
aufgehende Bauteile, Gefälle nicht im Konstruktionsbeton angelegt, unebene Wasserabdichtung, keine
Drainageschicht zwischen Abdichtung und Belag, ungleichmässige Dicke des «schwimmenden Hartbetons».

**Anforderungen an Planung und Ausführung (Teil 3, normativ):**
- **Schichtaufbau** (von unten): Unterkonstruktion/Untergrund → Dampfbremse/Luftdichtung →
  Wärmedämmung → Abdichtung → Entwässerungsschicht → Schutz-/Nutzschicht.
- **Untergrund-Tabelle** (Anforderungen je nach Abdichtungssystem mit/ohne Verbund): Festigkeit
  (Haftzugfestigkeit ≥ 1,5 N/mm² bei Verbund), Rauheit (Rautiefe 0,5–1,2 mm bei Verbund),
  Ebenheit (≤ 8 mm unter 2-m-Latte bei Verbund, ≤ 12 mm ohne Verbund), Trockenheit (Restfeuchte
  ≤ 4 Massen-% CM).
- **Dampfbremse:** vollflächig aufgeschweisste bituminöse Dampfsperren min. 3,5 mm dick (5 mm bei
  Rauheit bis 1,5 mm); Luftdichtung raumseitig der Wärmedämmung (SIA 180).
- **Wärmedämmung unter der Abdichtung:** zulässige Stauchung durch Nutzlasten max. 2 % der
  Gesamtdicke, max. 5 mm absolut; separate Trittschalldämmung max. 3 mm Zusammendrückbarkeit bei
  3 kPa; EPS hat Sonderregel (SN SIA 271 Art. 3.4.4).
- **Abdichtungsgefälle mindestens 1,5 %** in Richtung Entwässerung — **Unterschreiten ist gemäss
  SIA 271 für folgende Konstruktionen unzulässig:** Balkone, begehbare Dächer/Terrassen, Dächer
  ohne Schutzschicht, Dächer mit Gussasphalt, nicht belüftete Holzkonstruktionen.
- **Nutzschicht Beton:** Gefälle mind. 1,5 %, **durchgehende Fugen min. 20 mm entlang aller
  Anschlüsse**, Fugen-/Feldgrössen objektbezogen, ausreichende Drainageschicht über der Abdichtung,
  minimal kalkausscheidende Baustoffe (ggf. Trasszement), hohe Frost-Tausalz-Beständigkeit.
- **Belastung:** Feuchtigkeit (Regen/Schnee/Eis-Frost-Tau-Wechsel/Tauwasser/Nebel — Entwässerung
  und Trockenhaltung ist «das wichtigste Gebot»); Temperatur (Sommer bis 70 °C je nach Belagsfarbe,
  Winter bis −20 °C, rasche Wechsel bei Gewitterregen).
- **SIA 273 (separate Norm)** gilt für **befahrene Flächen im Hochbau** (Parkdecks, Garagen,
  Rampen, Innenhöfe/Vorfahrten, Dachparking/Helikopterlandeplatz) mit eigener
  Systemaufbau-Zuordnungstabelle je Flächentyp und Rampenneigung (Systeme Nr. 1/9/11/16 bei
  Gefälle > 6 %) — eigenständig von SIA 271 (Balkone/Dächer/Wohnbereich), Grundkonzept muss bereits
  im Projektstadium feststehen.

**JANS-Praxiswert.** Ergänzt [[recht-norm-tiefgarage-erschliessung]] (dort Geometrie) um die
**Abdichtungs-Norm SIA 273 für befahrene Flächen**, und liefert für jede Balkon-/Laubengang-Detail-
planung (BKP 281.1 in Kombination mit Abdichtung BKP 224/226) die konkrete Fehlerquellen-Checkliste
— besonders wertvoll für Bestandsbauten-/Sanierungsprojekte (Ankaufsprüfung), wo genau dieses
Schadensbild (Durchfeuchtung, Risse, Ausblühungen) ein typischer Befund ist.
