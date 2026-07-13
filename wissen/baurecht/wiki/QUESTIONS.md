# QUESTIONS — offene Fragen & Wissenslücken (Baurecht)

Vom Bibliothekar gepflegt. Hier landen Wissenslücken, ungelöste Spannungen und
geplante Artikel. Der Health-Check (`wissenscheck`) prüft, ob bereits geflaggte
Lücken erneut auftauchen (Doppel-Flag vermeiden) und ob sie inzwischen geschlossen
wurden.

## WICHTIGER FASSUNGSSTAND-BEFUND — 2026-07-13 (Buch-Run 38): KNHV per 1.8.2025 aufgehoben, Nachfolgeerlass noch nicht identifiziert
Bei der Recherche zu einem neuen Modell-D-Komplex (Kap. 4 Natur-/Heimatschutz, KNHV-Paragraphen) ergab die Pruefung des amtlichen zhlex-Portals: die **Kantonale Natur- und Heimatschutzverordnung (KNHV, LS 702.11)** — auf die das Buch (6. Aufl. 2019) und die Hub-Destillate `buecher/band-1/04-natur-und-heimatschutz.md`/Wiki [[naturschutz-und-denkmalschutz]] mehrfach verweisen (u.a. §§ 23-28 KNHV Denkmalschutz Industriebauten/Bahnhoefe) — wurde **per 01.08.2025 aufgehoben** (zhlex-Seite `erlass-702_11-1977_07_20-1978_07_01-099.html` zeigt "Aufhebungsdatum: 01.08.2025"). Trotz gezielter Suche (WebSearch/WebFetch auf zh.ch, RRB 42/2025, Register der Zuercher Gesetzessammlung 2025) konnte der **Nachfolgeerlass (Titel + LS-Nummer)** in diesem Lauf NICHT ermittelt werden — RRB 42/2025 betrifft nur eine punktuelle Aenderung, nicht die Totalrevision. **needs-verification (hohe Prioritaet, naechster Lauf):** Nachfolgeverordnung zur KNHV ermitteln (z.B. direkt bei der zhlex-Redaktion/Staatskanzlei-Rechtsdienst nachschlagen oder ueber die aktuelle systematische Gesetzessammlung 702.x browsen) und alle KNHV-Zitate im Hub (Destillat 04, Wiki [[naturschutz-und-denkmalschutz]]) auf den neuen Erlass umziehen. Bis dahin sind KNHV-Paragraphen-Zitate im Hub als **Stand 2019 (Buch), nicht mehr amtlich in Kraft** zu kennzeichnen.

## Geklärt / verifiziert — 2026-07-13 (Buch-Run 36, Phase 3 · Modell-D Volltextabgleich, 5 Komplexe parallel via Agent-Tool)
Fünf Komplexe adversarisch gegen `raw/260607_amtlich_zh_pbg.md` (+ ABV/BVV/BBV I) geprüft (je ein Refutations-Agent, Kap. 16 zusätzlich unabhängig zweitgeprüft durch einen zeitgleich laufenden Parallellauf). Gesamtergebnis: fast alles CONFIRMED, **3 echte Korrekturen**, 0 Halluzinationen.
- **✅ [[wohnhygiene-und-raumanforderungen]] `emerging`→`established`:** PBG §§ 299-306 + § 32/§ 4 ABV volltextverifiziert — alle 10 Fundstellen CONFIRMED, kein einziger Fehler. Präzisierung: § 32 ABV referenziert im Original nur §§ 303-305 PBG (nicht den ganzen §§ 299-306-Block). Destillat [[17-gebaeude-und-raeume]] bleibt bewusst `emerging` (Restteile §§ 295-298 PBG/Ausrüstungen-Detail noch offen).
- **✅ [[ausnahmebewilligung-und-bestandesschutz]] ergänzt (bleibt `established`):** echte Lücke geschlossen — **§ 357 Abs. 5 PBG** (Milderung von Bauvorschriften, Verordnungsdelegation + Nachbarschutz-Schranke + Einzelfall-Regel bis Verordnungserlass) volltextverifiziert (Z. 3770-3773) und neu als Abschnitt ergänzt. **Korrektur nach Gegenprüfung:** Die Anwendungspraxis war im Hub bereits dokumentiert (Destillat [[20-ausnahmen-teil2-milderung-missstaende-brandstatt]], seit 2026-07-10, wurde vom Verifikations-Agenten übersehen) — jetzt verlinkt und im Wiki ausformuliert: **Art. 33a ABV** (Aussenwärmedämmung) war der klassische Anwendungsfall, ist aber durch die spezifischere **§ 253a PBG** (bis 35 cm generell privilegiert) weitgehend bedeutungslos geworden. Weiterhin offen: Gerichtspraxis zur Einzelfall-Variante ausserhalb der Aussenisolation.
- **✅ [[abstaende-und-hoehen]] Detailprüfung §282/284/292/293 PBG + §28/30 ABV (bleibt `established`, doppelt verifiziert):** § 282 (Hochhaus-Schwelle 25 m, beide Fassungen), § 284 (4 Absätze), § 292 (Dachaufbauten Hälfte/Drittel-Doppelwert), § 293 (Freilegung UG 1,5 m) alle CONFIRMED. § 30 Abs. 1 lit. a/b ABV (Schattenwurf) CONFIRMED **3 Stunden** (in Kraft seit 1.8.2021, RRB 18.3.2020) — Buch-Destillat gab noch den überholten 2019-Stand, dort nachgeführt. **KORRIGIERT: § 28 ABV** — die «≤ 0,5 m nicht eingerechnet»-Regel steht NICHT im Gesetzeswortlaut (weder harmonisiert noch alt), sondern ist **Gerichtspraxis** (VB.2005.00519) zur Auslegung des «flächenkleinsten Rechtecks»; im Wiki war sie fälschlich als Normwortlaut dargestellt — präzisiert.
- **✅ [[baulinien-und-abstandslinien]] erweitert (bleibt `established`):** §§ 90-95 PBG (Erschliessungsplan, neu ins Wiki aufgenommen), §§ 96-101 PBG (präzisiert), § 111 PBG (Ski-/Schlittellinien, neu), §§ 114-122 PBG (Werkplan/vorsorgliches Bauverbot § 120/Heimschlag, neu) CONFIRMED. **KORRIGIERT: § 106 PBG (Niveaulinien)** — bisher fälschlich nur als «Neigung der Strassenachse» (Verkehrsbaulinien) beschrieben; amtlicher Wortlaut sichert Niveaulinien auch über **Baulinien für Wasserbauprojekte**, nicht nur Verkehrsbaulinien. **OFFEN bleibt § 62 StrG** (Mehrwertbeiträge ¼-½) — kein StrG-Volltext im Hub vorhanden, nur PBG; Beschaffung nächster Lauf.
- **✅ [[baubewilligungsverfahren]] präzisiert (bleibt `established`):** § 325 PBG als reine Delegationsnorm an die BVV korrekt eingeordnet (materielle Regel liegt in §§ 13-18 BVV), § 325a PBG (energetische Sanierungen) CONFIRMED unverändert seit 6. Aufl. 2019 — `speculative`-Vermerk aufgelöst. §§ 13-15 BVV (Anzeigeverfahren-Katalog § 14 lit. a-p) lückenlos übernommen, Dachflächenfenster-Schwelle 1/20 der Dachfläche wortgetreu belegt. **KORRIGIERT: Solaranlagen** — bisheriger Verweis «§ 48 Abs. 2 lit. b-f PBG» existiert im geltenden Recht so nicht mehr; richtig sind **§ 1 BVV** (bewilligungsfrei bis 4 m²) und **§§ 2a-2c BVV** (gestaffelte Meldepflicht), nicht Teil des Anzeigeverfahren-Katalogs. §§ 4-7 BBV I (private Kontrolle) ergänzt um Minergie-Vermutung (§ 4 Abs. 4 BBV I) und Absatz-Korrektur (Hinweispflicht Ausnahmebewilligung = Abs. 5, nicht Abs. 4).
- **needs-verification (neu/verbleibend):** § 62 StrG (Mehrwertbeiträge, kein raw-Volltext vorhanden — StrG als neue Quelle beschaffen); § 357 Abs. 5 PBG Verordnungspraxis/Gerichtsentscheide (Buchtext ab Shot 732 nachlesen); Kap. 17 Restteile §§ 295-298 PBG + Ausrüstungen-Detail (Destillat bleibt `emerging`).

## Geklärt / verifiziert — 2026-07-13 (Buch-Run 34, Phase 3 · Modell-D Volltextabgleich, 5 emerging-Komplexe parallel)
- **✅ [[geschosse-und-kniestock]] `emerging`→`established`:** §§ 275/276 PBG in beiden Fassungen gegen raw/260607_amtlich_zh_pbg.md volltextverifiziert (Hauptteil Z. 2857-2886 / Anhang Z. 4387-4400). Harmonisiert: Kniestock **1,5 m**, vier Geschossarten inkl. Attika (§ 275 Abs. 4). Alt (Anhang): 0,9 m / Bestand 1,3 m, 0,4 m hinter Fassade, drei Arten. Fassungsstand-Umkehr analog [[abstaende-und-hoehen]]. Restpunkt: Destillat [[16-gebaeudedimensionen]] gibt nur die alte Fassung (Buch 2019) — bewusst so vermerkt, kein Fehler.
- **✅ [[ausnahmebewilligung-und-bestandesschutz]] `emerging`→`established`:** § 220 (Abs. 1-3) + § 357 PBG volltextverifiziert (Z. 2186-2194 / 3760-3769). Echte Lücke geschlossen: § 357 Abs. 1 «für eine zonengemässe Nutzung nicht geeignet» ergänzt; § 357 Abs. 4 ergänzt. § 218 = Rechtsnatur (nicht Dispens-Voraussetzung) bestätigt. **Verbleibend (kein Fehler, Unvollständigkeit):** § 357 Abs. 5 (Milderungen durch Verordnung) noch nicht abgebildet; § 220 Abs. 2 Gemeinwesen-Ausnahme im Wiki verkürzt; Bereichs-Endpunkt «Bauvorschriften = §§ 218-306» nur destillat-gestützt.
- **✅ [[gebaeudearten-und-abstandssystem]] `emerging`→`established`:** §§ 2/2a/2b/2c + 21-29 ABV, § 260/271/273 PBG, § 1/2 BVV volltextverifiziert. 3 Fehlzuordnungen korrigiert: Minibau = § 260 Abs. 4 PBG / § 2 Abs. 2 ABV (nicht § 2 Abs. 1); Messweise Grenze = § 260 Abs. 1 PBG (nicht § 269); «ohne Wohnräume» unbelegt → gestrichen. **Verbleibend (nicht Gesetzeswortlaut):** Art. 688 ZGB / §§ 169 ff. EG ZGB (privatrechtl. Pflanzenabstände, kein raw), Fallrecht BEZ 1989 Nr. 21 / RB 1991 Nr. 84 (nur Entscheiddatenbank).
- **✅ [[laermschutz-und-nichtionisierende-strahlung]] `emerging`→`established`:** letzte Restklärung **Anhang 5 Ziff. 222 LSV** geschlossen — = Fluglärm-Belastungsgrenzwerte (Nacht), greift via Art. 31a LSV. Art. 31/31a/32/39/40 LSV + NISV Art. 3/11 + Anhang 1 Ziff. 64 volltextverifiziert (raw/260712_amtlich_ch_lsv-nisv.md). **Verbleibend (per se nicht gesetzeswortlaut-belegbar):** Art. 43 LSV ES I-IV (destillat [[19-baulicher-umweltschutz]]) und die Rechtsprechung (BGE 142 II 100, BGer 1C_40/2009 / 1C_329/2013, URP/VB/BEZ/BRGE).
- **🟡 [[wohnhygiene-und-raumanforderungen]] bleibt `emerging`:** BBV I + BBV II jetzt vollständig volltextverifiziert (§ 7/10/11/19a BBV II, § 36/40 + Haustechnik BBV I). Korrektur: § 9 BBV II aufgehoben → Begriffe §§ 3/6/7 BBV II (Destillat 17 korrigiert). **Kein established, weil offen:** PBG §§ 299-306 (Belichtung § 302, Mindestfläche § 303, Raumhöhe § 304, Erschliessung § 305, Küche § 306) + § 32/§ 4 ABV noch nicht gegen PBG-/ABV-Volltext geprüft (raw-Bereich fehlte diesem Lauf) → **nächstes Ziel**; Gerichtsentscheide VB.2017.00452 / BEZ 2001/30 / 2008/27 / 2011/15 nur destillat-belegt.

## Geklärt / verifiziert — 2026-07-13 (Buch-Run 33, Phase 3 · Kommunale Erlasse/VSS-Normen ausserhalb PBG: Wegleitung 1997, PPV Stadt Zürich Art. 8 Abs. 5-8, VSS-Veloabstellplatz-/Rampennormen)
Die aus Run 29 offen gebliebene Restlücke («Wegleitungs-Tabelle 1, PPV Stadt Zürich Art. 8 Abs. 5-8,
VSS-Rampenneigungen SN 640 291a — an geltenden kommunalen Erlassen/VSS-Normen prüfen») wurde
recherchiert. Betroffener Artikel: [[fahrzeugabstellplaetze-und-parkierung]] (bleibt `established`).

- **✅ Wegleitung der Baudirektion Oktober 1997 «Parkplatz-Bedarf in kommunalen Erlassen»
  CONFIRMED, weiterhin geltend.** Amtlicher Volltext bezogen (Baudirektion Kt. ZH, PDF weiterhin
  unter zh.ch abrufbar). Tabelle 1 (Grenzbedarf je Nutzungsart, bezogen auf VSS-Norm SN 641 400)
  und Tabelle 4 (massgeblicher Bedarf in % des Grenzbedarfs je OeV-Gueteklasse, Gemeindetyp 1/2)
  im Wiki-Artikel korrekt wiedergegeben — keine Korrektur nötig. Eine formelle Nachfolge-Wegleitung
  oder -Verordnung wurde NICHT gefunden; eine Revision war 2018 in Vernehmlassung (Dokument
  `ktzh_bd_vd_pp_wegleitung_vernehmlassung_2018.pdf`), aber nicht nachweisbar in Kraft gesetzt.
  Die Wegleitung 1997 bindet nur behördenintern/als Auslegungshilfe (BGE 124 II 272), nicht die
  Gemeinden direkt — gesetzliche Grundlage bleibt § 242 PBG.
- **✅ PPV Stadt Zürich Art. 8 Abs. 5-8 (autoarme Nutzungen) wortlautbelegt, Fassungsstand
  KORRIGIERT.** Wörtlicher Text amtlich bezogen aus dem Leitfaden «Mobilitätskonzept autoarme
  Nutzungen» des Tiefbauamts Stadt Zürich (9. Juli 2024) — neu abgelegt als
  `raw/260713_amtlich_zh_ppv-stadt-zuerich.md`. Kernaussage im Wiki war inhaltlich **CONFIRMED**
  (Mobilitätskonzept, Behinderten-Minimum bleibt, Grundbuch-Anmerkung), aber die zuerst geprüfte,
  allgemein verlinkte PPV-PDF (Fassung Änderung 7. Juli 2010) enthält Art. 8 Abs. 5-8 **noch
  nicht** — diese wurden erst mit einer späteren Revision eingefügt (Fassungsstand laut Leitfaden
  2024: «PPV vom 11. Dezember 1996 mit Änderungen bis 16. Dezember 2015»). Wiki jetzt mit vollem
  Wortlaut (Abs. 5-8), Kaskade Grundstück→Gemeinschaftsanlage/Zumietung (300 m)→Ersatzabgabe, und
  Abgrenzung zu Art. 8 Abs. 3 PPV (einfacheres Betriebskonzept ohne Mobilitätskonzept) ergänzt.
- **✅ VSS-Veloabstellplatz-Normen KORRIGIERT (Fehlzitat entfernt).** Das Wiki nannte bisher
  «SN 640 060/065/066». Die Wegleitung 1997 stützt sich nur auf **SN 640 065** («Leichter
  Zweiradverkehr – Abstellanlagen, Bedarfsermittlung», Oktober 1996) — bestätigt durch den
  amtlichen Volltext. Eine Norm **«SN 640 060» existiert in der aktuellen VSS-Parkierungsnormen-
  Struktur nicht** (geprüft gegen ParkingSwiss ParkingGuideline 05-V1.2025 «VSS-Parkierungsnormen
  und verwandte Normen», Stand Juni 2025, vollständige Liste aller PW-/Motorrad-/Velo-Normen) —
  als Fehlzitat aus dem Wiki entfernt. SN/VSS 640 065 und 640 066 entsprechen in der aktuellen
  VSS-Nomenklatur **VSS 40 065** (2011/2019, Bedarfsermittlung/Standortwahl) und **VSS 40 066**
  (2011/2019, Projektierung) — inhaltlich dieselben Normen, nur umnummeriert.
- **⚠️ VSS-Rampenneigungsnorm «SN 640 291a» — Normbezeichnung präzisiert, Kennwerte bleiben
  DAUERHAFT needs-verification (Kostenpflicht).** Die alte Bezeichnung «SN 640 291a» entspricht in
  der aktuellen VSS-Struktur **VSS 40 291** «Parkieren – Anordnung und Geometrie der
  Parkierungsanlagen für Personenwagen und Motorräder» (Ausgabe 2021), bestätigt gegen dieselbe
  ParkingSwiss-Übersicht. Das ist die für Tiefgaragen-Rampengeometrie (Neigung, Ausrundung)
  massgebliche Norm; PPV Stadt Zürich Art. 9 Abs. 4 verweist generisch («im Übrigen in der Regel»)
  auf die einschlägigen VSS-Normen, ohne selbst eine Nummer zu nennen. **VSS-Normen sind
  urheberrechtlich geschützt und kostenpflichtig** (Bezug nur über mobilityplatform.ch/vss-shop) —
  der Normtext bzw. die konkreten Zahlenwerte (max. Längsneigung, Ausrundungsradien,
  Übergangsbereiche) konnten im Rahmen dieser Recherche **nicht** amtlich/kostenfrei verifiziert
  werden und wurden **nicht** aus Sekundärquellen kopiert. Dieser Punkt bleibt bewusst offen und
  ist **kein falscher Abschluss**: vor einer konkreten Projektierung (Tiefgaragenrampe) ist der
  aktuelle VSS-Normtext kostenpflichtig zu beziehen und gegen die im Wiki genannten JANS-Regel-
  Praxiswerte (Mehrkosten UG-Platz) zu spiegeln.

## Geklärt / verifiziert — 2026-07-13 (Buch-Run 33, Phase 3 · Modell-D Volltextabgleich § 209 PBG)
- **✅ § 209 «+1 Jahr»-Verlängerung (aus Buch-Run 32) geklärt:** § 209 PBG vollständig im amtlichen
  Volltext gelesen (`raw/260607_amtlich_zh_pbg.md`, Kap. 4 Natur-/Heimatschutz). Ergebnis: § 209 hat
  fünf Absätze, davon sind **Abs. 1, 4 und 5 aufgehoben** («… .»); in Kraft stehen nur **Abs. 2**
  (schriftliche Mitteilung über Inventaraufnahme bewirkt Veränderungsverbot) und **Abs. 3** («Das
  Veränderungsverbot fällt dahin, wenn nicht innert Jahresfrist seit der schriftlichen Mitteilung eine
  dauernde Anordnung getroffen wird.») — **keine Verlängerungsklausel im Gesetzeswortlaut**. Die in
  der Praxis kursierende «+1 Jahr»-Verlängerung ist bestätigt **reine Analogie zu § 213 Abs. 3 PBG**
  (dort steht wortwörtlich die Möglichkeit, die Behandlungsdauer um «höchstens ein weiteres Jahr» zu
  erstrecken — das regelt aber den Provokationsentscheid, nicht das vorsorgliche Veränderungsverbot)
  bzw. Praxis gemäss **BEZ 2017 Nr. 2**, **ohne eigene Grundlage in § 209**. Kein Hinweis auf einen an
  anderer Stelle im PBG (Anhang, andere Fassung) stehenden Verlängerungs-Wortlaut gefunden — auch der
  «vorsorgliche Bauverbot» in §§ 120/121 PBG (anderes Institut, Sicherung öffentlicher Werke) kennt
  keine Fristverlängerung. **Wiki [[naturschutz-und-denkmalschutz]] aktualisiert:** Abschnitt
  «Schutzmassnahmen: vorsorglich → definitiv» um einen expliziten Analogie-Hinweis mit vollem
  Wortlaut-Beleg ergänzt, Frontmatter-Verifizierungsvermerk nachgeführt. **Ergebnis: keine
  Halluzination bestätigt** — die Analogie-Markierung aus Buch-Run 32 war korrekt, jetzt mit
  Wortlaut-Beleg (statt nur Vermutung) im Wiki verankert.

## Geklärt / verifiziert — 2026-07-13 (Buch-Run 33, Phase 3 · Modell-D Volltextabgleich §§ 275-277 PBG, [[geschosse-und-kniestock]])
- **✅ [[geschosse-und-kniestock]] Modell-D-verifiziert, `emerging` → `established` (dieselbe
  Fassungsstand-Umkehr wie [[abstaende-und-hoehen]], Buch-Run 31):** Der amtliche PBG-Volltext
  (LS 700.1, Stand 1.7.2026) führt im **Hauptteil** (geltend) die **harmonisierte Fassung**:
  § 275 Abs. 1 PBG definiert Vollgeschoss als **Ausschlussdefinition** («alle Geschosse ausser
  Unter-, Dach- und Attikageschosse»), Kniestockhöhe für Dachgeschosse **bis 1,5 m** (§ 275
  Abs. 2 PBG, ohne Messweise-/Bestandeszusatz im Gesetzeswortlaut), **vier** Geschossarten
  inkl. neu **Attikageschoss** (§ 275 Abs. 4 PBG) mit halber-Höhe-Rückversetzung, Untergeschoss
  über die bereits in [[abstaende-und-hoehen]] belegte 2,5-m-/3-m-Formel (§ 275 Abs. 3 PBG).
  Anrechenbarkeit (§ 276 Abs. 1 PBG) **vier** Geschossarten inkl. Attika, Geschosszahl-Ersatz
  (§ 276 Abs. 2 PBG) neu auch mit Attikageschossen. Das bisherige Wiki gab **ausschliesslich**
  die **alte** Fassung wieder (§ 275/276 PBG **Anhang**, Stand 28.2.2017, Weitergeltung
  OS 72, 52, gilt übergangsrechtlich bis Gemeinde-BZO-Harmonisierung): Kniestock **0,9 m**
  (Neubau) / **1,3 m** (Bestand vor 1.7.1978), Messweise **0,4 m hinter der Fassade** im
  Gesetzeswortlaut selbst verankert, **nur drei** Geschossarten (kein Attika-Begriff in § 275
  alt), UND ein in der harmonisierten Fassung fehlendes Zusatzkriterium in § 276 Abs. 1 PBG
  alt («andere Untergeschosse, die mehrheitlich über dem gewachsenen Boden liegen» zählen
  ebenfalls als Geschoss, unabhängig von Wohn-/Schlaf-/Arbeitsraum-Nutzung). Beide Fassungen
  jetzt mit vollem Beleg (amtl. Z. 2857-2886 Hauptteil / Z. 4387-4400 Anhang) im Wiki
  nebeneinandergestellt; Buch-Destillat [[16-gebaeudedimensionen]] (Quelle 2019, kennt nur
  alte Fassung) mit Fassungsstand-Hinweis versehen, buchgetreue Wiedergabe unverändert
  gelassen. Case-Law-Zitate (RB 1993 Nr. 42, BEZ 1994/1997 Nr. 7/19, BEZ 1987 Nr. 18) beziehen
  sich alle auf die Kniestock-Messweise-Regel und sind damit korrekt **nur der alten Fassung**
  zugeordnet — ob sie unter der harmonisierten 1,5-m-Regel (ohne Messweise-Zusatz im
  Gesetzestext) unverändert fortgelten, ist offen (`speculative`, neue Frage unten).
- **Offen (neu):** Gilt die «0,4 m hinter Fassade»-Messweise und das Dämmungs-Argument
  (BEZ-Praxis zur alten Fassung) sinngemäss auch für die harmonisierte 1,5-m-Kniestockregel
  (§ 275 Abs. 2 PBG), obwohl der Gesetzeswortlaut dort keinen Messweise-Zusatz mehr enthält?
  Keine Rechtsprechung dazu aufgefunden — bei Bedarf in einer harmonisierten Gemeinde
  konkret abklären (Vorabklärung Bauamt, Skill `behoerden-vorabklaerung`).
- **Offen (neu):** Ist die Kasuistik zu «andere Untergeschosse, die mehrheitlich über dem
  gewachsenen Boden liegen» (§ 276 Abs. 1 PBG alt, u.a. BEZ 2009 Nr. 63) unter der
  harmonisierten Fassung (dieses Zusatzkriterium existiert dort nicht mehr) noch relevant,
  oder ausschliesslich für noch nicht harmonisierte Gemeinden? `speculative`, nicht
  abschliessend geklärt.

## Geklärt / verifiziert — 2026-07-12 (Buch-Run 32, Phase 3 · Modell-D Volltextabgleich, 5 Komplexe)
- **✅ §§ 278-293 PBG (Fassadenhöhe/Gesamthöhe/Hochhaus/Dachaufbauten) — [[abstaende-und-hoehen]] KORRIGIERT:**
  3 Fehler behoben (Gebäudehöhe-Beleg war falsch zugeordnet inkl. sachfremder § 12 ABV-Referenz;
  Untergeschoss-Mass "80 cm" im Gesetz nicht auffindbar, korrekt § 275 Abs. 3 PBG 2,5 m/3 m;
  Hochhaus-Schattenwurf-Schwelle war vertauscht, geltend sind **3 Stunden** nicht 2 seit RRB
  18.03.2020). Ergänzt: §§ 279-281/284/293 Abs. 2 PBG mit vollem Beleg (alt/harmonisiert). Status
  bleibt `established`. Restpunkt: Schwesterartikel [[geschosse-und-kniestock]] noch nicht
  Modell-D-verifiziert (alte Zählweise § 275/276, `emerging`) — nächstes Ziel.
- **✅ §§ 8/9/10c/15 VRG (Akteneinsicht/Realakte/Kostenvorschuss):** § 15 VRG (Kostenvorschuss) im
  Destillat [[09-rechtsschutz-teil2-ablauf-kosten-revision]] bestätigt (keine Korrektur). §§ 8/9/10c
  VRG (Akteneinsicht Grundsatz/Ausnahme, Realakte) waren eine echte Lücke — neu in
  [[rechtsschutz-und-rechtsmittelverfahren]] Abschnitt 6b ergänzt, mit JANS-Praxishinweis (§ 10c
  als Hebel gegen faktisches Verwaltungshandeln ohne Verfügung).
- **✅ LSV/NISV (Kap. 19) — [[laermschutz-und-nichtionisierende-strahlung]] KORRIGIERT + volltextverifiziert
  gegen Fedlex (neu `raw/260712_amtlich_ch_lsv-nisv.md`):** 2 Korrekturen — Anlagegrenzwert-Legaldefinition
  steht in **Art. 3 Abs. 6 NISV** (nicht Art. 6 NISV, das regelt die Änderung neuer Anlagen);
  Mobilfunk-Grenzwerte (Ziff. 64 Anhang 1 NISV) sind **frequenzbereichs-gestaffelt** (≤ 900 MHz
  = 4,0 V/m, ≥ 1800 MHz = 6,0 V/m, Kombi-Anlagen = 5,0 V/m), nicht als starre Einzelfrequenz-Liste.
  Übrige Kernaussagen (Lüftungsfensterpraxis-Aufhebung, Art. 31 Abs. 2 LSV, OMEN Art. 3 Abs. 3 NISV,
  5G-AGW) CONFIRMED. Status bleibt `emerging` (Restklärung Anhang 5 Ziff. 222 LSV noch offen).
- **✅ BBV I/II + EnerG (Kap. 17 Haustechnik) — [[wohnhygiene-und-raumanforderungen]] neuer Abschnitt,
  4 Korrekturen (Fassungsstand 6. Aufl. 2019 überholt):** § 42a BBV I existiert nicht mehr (Befreiung
  neu vollständig in § 43 BBV I); § 45 Abs. 3 BBV I existiert nicht, die EBF>1000m²-Elektrizitäts-
  Grenzwerte stehen in eigenständiger **§ 45a BBV I**; § 48 BBV I (WKK) aufgehoben, Materie neu in
  **§ 12b EnerG**; § 30a Abs. 2 BBV I regelt NUR die Drittabgabepflicht (>2 GWh), die
  Notstrom/Probeläufe-Schwelle ist **50 Std.** (nicht 30) und steht in § 12b Abs. 1 EnerG. **Zentrales
  Ergebnis:** die zitierten §§ 9/9a/10b/12/13 EnerG entsprechen NICHT mehr durchgehend der heute
  (Nachtrag 129, Stand 1.7.2025) geltenden Fassung — neuer Volltext `raw/260712_amtlich_zh_energ.md`
  als Referenz angelegt; harte Werte (VHKA-Schwelle, Elektroheizungsverbot § 10b) vor Bauherren-
  Beratung künftig gegen diese Datei statt gegen das Buch-Destillat zitieren.
- **✅ Gewässerraum-Schwellen-Widerspruch aufgelöst:** Der scheinbare Widerspruch zwischen
  [[abstaende-und-hoehen]] (GSB < 2 m → 11 m) und [[15-lage-von-gebaeuden]] (Sohle < 1 m →
  11 m) ist **kein Widerspruch** — beide Zahlen sind wortgetreu, beziehen sich aber auf
  **verschiedene Absätze** von Art. 41a GSchV: **Abs. 2** (übrige/Normalgebiete) kennt
  Sohle < 2 m → 11 m, Sohle 2-15 m → 2,5 × Sohle + 7 m; **Abs. 1** (Sonderregime nur in
  Biotopen national, kantonalen Naturschutzgebieten, Moorlandschaften, Wasser-/
  Zugvogelreservaten, Landschaften national/kantonal mit gewässerbezogenem Schutzziel)
  kennt Sohle < 1 m → 11 m, 1-5 m → 6 × Sohle + 5 m, > 5 m → Sohle + 30 m. Der Fehler lag
  in [[15-lage-von-gebaeuden]] (Buchsynthese Bd 2, Kap. 15): dort war die < 1 m-Schwelle
  fälschlich Abs. 2 zugeschrieben — dort korrigiert (Abs. 1/Abs. 2 jetzt sauber getrennt
  ausgewiesen). [[abstaende-und-hoehen]] war bereits korrekt, dort nur ergänzt (Verifikations-
  Vermerk + Präzisierung ">15 m keine explizite Formel" statt "kantonale Vorgabe" und
  Klarstellung, dass die 0,5-ha-Schwelle bei Art. 41b nur ein Verzichtsgrund ist, keine
  Formel-Schwelle). Neuer amtlicher Volltext-Beleg **`raw/260712_amtlich_ch_gschv.md`**
  (Art. 41a/41b GSchV, Fedlex konsolidierte Fassung Stand 1.12.2025) angelegt.
- **Gewässerabstand 20 m** (Kap. 11, GSchV-Übergangsbestimmung, nicht PBG) bleibt
  **needs-verification** — nicht Gegenstand dieses Runs.

## Geklärt / verifiziert — 2026-07-12 (Buch-Run 31, Phase 3 · Modell-D Volltextabgleich §§ 218-232 / §§ 269-274+292 / § 120-122+150+264+346 / §§ 203-213 PBG + § 30 VRG, 5 Komplexe parallel via Workflow)
Fünf needs-verification-Komplexe adversarisch gegen `raw/260607_amtlich_zh_pbg.md` (und neu `raw/260712_amtlich_zh_vrg.md`) geprüft (je ein Refutations-Agent). Gesamtergebnis: viele CONFIRMED + **13 Korrekturen/Präzisierungen**, keine Halluzination.

- **✅ GROSSER FASSUNGSSTAND-BEFUND (§§ 269-274/292, Kap. 15):** Der amtliche PBG-Volltext (LS 700.1, Stand 1.7.2026) führt **die harmonisierte Fassung (IVHB) als GELTENDEN Hauptteil** (projizierte Fassadenlinie § 260, Fassadenhöhe §§ 278-280, Gesamthöhe § 281, Hochhaus «Fassadenhöhe > 25 m» § 282, Attika § 275 Abs. 4, **§ 273 «Kleinbauten und Anbauten»**, **§ 292 Dachaufbauten ½**). Das alte Recht (Fassade/Gebäudehöhe/Firsthöhe, «besondere Gebäude» 4 m/5 m, Dachaufbauten 1/3) steht nur noch im **Anhang PBG (Stand 28.2.2017, Weitergeltung OS 72, 52)** und gilt übergangsrechtlich, **bis die Gemeinde ihre BZO harmonisiert**. Das Wiki [[abstaende-und-hoehen]] behandelte die Harmonisierung umgekehrt als «neues Recht/needs-verification» → **Fassungsstand-Box umgekehrt**, § 273/§ 292 als **Doppelwerte** ausgewiesen. Selbst am raw-Volltext gegengeprüft (Z.3012 vs. 4463; Z.2842 vs. 4377). **Zahlenwerk 3,5/12/16,5 m + Summe §§ 270-271 + Waldabstand 30 m § 262 in beiden Fassungen bestätigt** → [[abstaende-und-hoehen]] bleibt `established`.
- **✅ §§ 218-232 (Kap. 11) volltextverifiziert** → Destillat [[11-allgemeine-bestimmungen-baupolizeirecht]] `emerging` → **`established`**, **6 Korrekturen:** (1) **§ 219** kennt NUR die Verschärfung (zwingend «sind aufzustellen»), keine Milderung — die stammt aus BBV II; (2) **§ 220** = allgemeine Dispens für «besondere Verhältnisse» (nicht «nur wo Norm ausdrücklich zulässt» = § 218 Abs. 2); (3) Bau der Gemeinschaftswerke = **§ 225** (nicht § 224 Abs. 2), § 225 ergänzt; (4) 30-Tage-Frist Hammerschlagsrecht = **§ 230 Abs. 2** (nicht Abs. 1 = Mitteilung); (5) **§ 232** Abs. 2 = schriftliche Mitteilung / Abs. 3 = Anpassungen auf Gemeinwesen-Kosten (das «Betreten für Kontrollaufgaben» ist NICHT in § 232 → gestrichen); (6) Näherbaurecht = **§ 270 Abs. 3 PBG** (nicht «§ 270 ZGB»). § 226 Abs. 2 (Übermassverbot, nicht Abs. 4) klargestellt.
- **✅ §§ 203/205/209/211/213 (Kap. 4 Natur-/Heimatschutz) volltextverifiziert** → Destillat [[04-natur-und-heimatschutz]] + Wiki [[naturschutz-und-denkmalschutz]] `emerging` → **`established`**, **2 Korrekturen:** (1) 1-Jahr(+1)-Frist Provokationsentscheid = **§ 213 Abs. 3** (nicht Abs. 1; «§ 213 Abs. 3 = Verwirkungsfristen» war irreführend); (2) vorsorgliches Veränderungsverbot = **§ 209 Abs. 2 (Verbot) i.V.m. Abs. 3 (Jahresfrist)**; die «+1 Jahr»-Verlängerung steht NICHT im Gesetz (§ 209), nur analog § 213 Abs. 3 (BEZ 2017 Nr. 2) → als Analogie markiert. Schutzobjekt-Katalog § 203 lit. a-g, Massnahmen § 205 lit. a-d, § 211 Abs. 4 bestätigt.
- **✅ § 120/§ 150/§ 264/§ 346 PBG (Landsicherung/Baulinien/Planungszone) volltextverifiziert** → Wiki [[baulinien-und-abstandslinien]] `emerging` → **`established`**. **1 Korrektur:** § 122 Abs. 1 Fristbeginn = **«seit Eintritt seiner Rechtskraft»** (nicht «nach Erlass»), 5 J. korrekt → Destillat [[03-erschliessung-landsicherung-teil1]] an 2 Stellen korrigiert. § 150 (Quartierplanbann), § 264 (Strassenabstand subsidiär zur Verkehrsbaulinie), § 346 (Planungszone 3 + 2 J.) bestätigt.
- **✅ § 30 VRG (Dreiteilung) volltextverifiziert** → neuer amtl. Volltext **`raw/260712_amtlich_zh_vrg.md`** (§§ 8/9/10c/15/30 VRG, LS 175.2, ab zhlex) angelegt — die bisher fehlende VRG-Faktenbasis geschlossen. § 30 Abs. 1 VRG (a Schuldbetreibung / b Ersatzvornahme / c unmittelbarer Zwang) + § 10c VRG (anfechtbare Verfügung bei Realakt) bestätigt. **1 Korrektur:** [[bauausfuehrung-und-baukontrolle]] Sektion 5 — Grundpfandrecht stützt sich auf **Art. 836 ZGB**, nicht auf § 15 VRG (§ 15 VRG = «Kostenvorschuss»).
- **needs-verification (neu/verbleibend):** ~~§ 209 «+1 Jahr»-Verlängerung (nur Analogie, kein Wortlaut)~~ **erledigt Buch-Run 33 (2026-07-13, siehe Abschnitt oben)** — bestätigt reine Analogie zu § 213 Abs. 3 PBG, kein Wortlaut in § 209. Gewässerraum-Schwellen weichen zwischen [[abstaende-und-hoehen]] (GSB < 2 m → 11 m) und [[15-lage-von-gebaeuden]] (Sohle < 1 m → 11 m) ab → am **Fedlex GSchV Art. 41a** abgleichen; Gewässerabstand 20 m (Kap. 11, GSchV-Übergangsbestimmung, nicht PBG). **Erledigt** die alten Flags: § 30 VRG (jetzt volltextbelegt), §§ 218-232 PBG, §§ 203-213 PBG, § 120-122/150/264/346 PBG, §§ 269-274/292 PBG.

## Geklärt / verifiziert — 2026-07-12 (Buch-Run 30, Phase 3 · Modell-D Volltextabgleich §§ 233-237 / 326-329 / 340-341 PBG, parallelisiert via Workflow)
Drei needs-verification-Komplexe adversarisch gegen `raw/260607_amtlich_zh_pbg.md` geprüft (je ein Refutations-Agent). **CONFIRMED:** § 233 Abs. 1/2, § 234 (Kern), § 236 Abs. 1 (Reihenfolge Wasser/Energie), § 237 Abs. 1 Satz 2 (OEV-Pflicht «grössere Überbauung»), § 327 Abs. 1/Abs. 2, § 328 Abs. 1 (Arealüberbauung > 2 J.), **§ 329 Abs. 1 (BRG-Anfechtung nach RPG/USG/PBG — vom Volltext bestätigt, Agent-OFFEN aufgelöst)**, § 340 Abs. 1/2, § 340a (5 J.).
- **✅ Baureife §§ 233-237 (Kap. 12) volltextverifiziert** → Wiki [[baureife-und-erschliessung]] geschärft, **4 Korrekturen:**
  - **§ 234:** vierte Voraussetzung ist der **Antrag des Gemeindevorstandes** (amtl. «durch den Gemeindevorstand beantragte» Festlegung) — nicht «behördlicher Antrag» schlechthin.
  - **§ 235:** eigenständige **3-Jahres-Erlassfrist** + Rechtsmittel-Ausnahme ergänzt (Wiki-Paraphrase war logisch verdreht, Frist fehlte).
  - **§ 236 Abs. 1:** amtl. «einwandfreie **Behandlung**» (nicht «Beseitigung») von Abwässern/Abfallstoffen/Altlasten — Wiki + Destillat korrigiert.
  - **§ 237 Abs. 4 Fehlzuordnung:** Abs. 4 amtl. = **Veränderungsverbot privatrechtlicher Zugänge + Grundbuch-Anmerkung**; der «Nachweis dauernder Benützungsrechte» ist der allgemeine Grundsatz §§ 236/237 i.V.m. Rechtsprechung, nicht Abs. 4. Sektionsüberschrift + Text richtiggestellt.
  - Destillat [[12-baureife]]: **Gleisanschlüsse § 237 Abs. 1** amtl. «wo dies technisch möglich und **zumutbar**» — **ohne** «wirtschaftlich» (Buch verengte).
- **✅ Baufreigabe/Kontrolle/Unterbruch §§ 326-329 (Kap. 8) volltextverifiziert** → Wiki [[bauausfuehrung-und-baukontrolle]] `emerging` → **`established`**, **3 Korrekturen + 1 Nachtrag:**
  - **§ 328 Abs. 2 lit. b = FEHLLABELUNG:** amtl. lit. b = **Förderung/Weiterführung der Arbeiten durch die Gemeinde** (soweit Sicherheit/Natur-Heimatschutz), **nicht «Abbruch»**; lit. c = **Einebnung** erstellter Bauteile + ordentlicher Geländestand; lit. a Fertigstellung/Ersatzvornahme; lit. d Bewilligungsverfall (Arealüberbauung). Wiki + Destillat [[08-ausfuehrung-von-bauarbeiten]] korrigiert.
  - **§ 328 Abs. 3** amtl. = **«Kosten trägt der Grundeigentümer»** (der Ersatzvornahme-/Grundpfand-Block ist § 30/§ 15 VRG, war fälschlich als § 328 Abs. 3 etikettiert).
  - **§ 326 Fassungsstand:** geltend zweistufig lit. a (Bewilligungen rechtskräftig + Nebenbestimmungen) **oder** lit. b (**vorzeitiger Baubeginn elektronisch über die Plattform**); «schriftliche Baufreigabe»/«besondere Gründe» als Praxis markiert.
  - **Nachtrag § 328a PBG** (elektronische Verfahrensführung über die Plattform, §§ 328b-g) — im Buch 2019 noch nicht enthalten, in Wiki + frontmatter aufgenommen.
  - **§ 327 Abs. 1** amtl. Qualifier «Abbruch einer Baute **ohne nachfolgenden Neubau**» im Destillat ergänzt.
- **✅ Strafe/Verjährung/Wiederherstellung §§ 340/340a/341 (Kap. 10) volltextverifiziert** → Wiki [[widerrechtliche-bauten-und-sanktionen]] `emerging` → **`established`**, **3 Korrekturen/Präzisierungen:**
  - **§ 341 amtl. Wortlaut:** «Die zuständige Behörde hat **ohne Rücksicht auf Strafverfahren und Bestrafung** den **rechtmässigen Zustand herbeizuführen**; hiezu dienen der **Verwaltungszwang und die Schuldbetreibung**.» Die frühere Paraphrase «abzubrechen/ändern — ohne Vorbehalt» gab den Wortlaut ungenau wieder (Vorbehalt betrifft nur die Unabhängigkeit vom Strafverfahren). Substanz (zwingende Wiederherstellung, kein Entschliessungsermessen) bleibt.
  - **§ 340 Abs. 4/5 präzisiert:** Abs. 4 = Versuch/Anstiftung/**Gehilfenschaft** strafbar (erfasst Architekt/Ingenieur/GU); Abs. 5 = **Solidarhaftung** jur. Personen/Gesellschaften für Bussen/Kosten (Haftungs-, nicht Strafbarkeitsnorm). Abs. 3 (Verzicht in besonders leichten Fällen) im Wiki ergänzt.
  - **§ 340a:** verjähren **Strafverfolgung *und* Strafe** (nicht nur Verfolgung).
- **needs-verification (verbleibend, nicht im PBG-Volltext):** ~~§ 30 Abs. 1 VRG (Dreiteilung)~~ **erledigt Run 31 (raw/260712_amtlich_zh_vrg.md)**; 80/40-m-Erreichbarkeit, Notzufahrt 3 m/16 t, AngebotsV-300er-Schwelle (ZN/VSiV/EV/AngebotsV) am geltenden Erlass; URP-Rechtsprechung «OEV kein Erschliessungsanspruch» (jurisprudentiell). **Erledigt** damit die alten Flags: §§ 233/234/235/236/237 PBG (Run 14/16), §§ 326/327/328/329 PBG (Run 24/Kap. 8-Run), §§ 340/341 PBG (Run 20).

## Geklärt / verifiziert — 2026-07-12 (Buch-Run 29, Phase 3 · Modell-D Volltextabgleich §§ 242-249 PBG)
- **✅ Fahrzeugabstellplätze §§ 242-248 PBG (Kap. 13 T3) volltextverifiziert** gegen `raw/260607_amtlich_zh_pbg.md` → Destillat + Wiki [[fahrzeugabstellplaetze-und-parkierung]] auf `established`. Dabei **2 Fassungsstand-Korrekturen** (Buch 6. Aufl. 2019 ↔ geltender Volltext):
  - **§ 243 Abs. 2/Abs. 3:** Die «bei bestehenden Bauten Schaffung/Aufhebung»-Regel ist geltend **Abs. 3**; der neue **Abs. 2** (FN 72) = antragsgebundene tiefere Platzzahl.
  - **§ 247 Abs. 1:** geltend «nur für die Mobilität» (breiter); die Parkraum/ÖV-Zweckbindung ist die frühere Fassung.
  - Zusatz: § 243 Abs. 1 lit. b amtl. «wesentlich **andere**» (nicht «stärkere») Nutzung; § 309 Abs. 1 lit. i = Fahrzeugabstellplätze (bestätigt).
- **needs-verification (verbleibend, kommunal/nicht im amtl. PBG-Volltext):** Wegleitungs-Tabelle 1 (Parkplatzkennzahlen je Nutzung), PPV Stadt Zürich Art. 8 Abs. 5-8 (autoarm), VSS-Rampenneigungen SN 640 291a — an geltenden kommunalen Erlassen/VSS-Normen prüfen.
- **Methodenlehre Phase 3:** Bei Lehrbuch-Belegen aus der 6. Aufl. 2019 sind revidierte Absätze (Fussnote-Marker im Volltext, z. B. «72») ein systematischer Fehlerherd bei der **Absatz-Zählung** und bei **Zweckbindungen** — solche § immer am Volltext gegenprüfen, bevor sie in Bewilligungen/Reversen zitiert werden.

## Offene Wissenslücken (Coverage-Gaps)
- **Praxisfälle JANS:** `raw/260602_docs-baurecht-praxisfaelle.md` ist ein **leerer
  Platzhalter** (nur Themen-Kategorien, keine echten Fälle) — keine Coverage-Lücke.
  Artikel `praxisfaelle-jans` erst anlegen, sobald reale Fälle reinkommen.
- **Bauen im Betrieb (Healthcare):** Kernkompetenz von JANS, im Wiki noch nicht
  abgebildet. Brücke zu Brandschutz-Schnittstellen fehlt.
- ~~**Dispens / Ausnahmebewilligung:** nirgends behandelt.~~ → **erledigt 2026-06-18** (Run 10):
  neuer Wiki-Artikel [[ausnahmebewilligung-und-bestandesschutz]] (§ 220 PBG Ausnahmebewilligung +
  § 357 PBG Besitzstandsgarantie), distilliert aus [[20-ausnahmen-bestandesschutz]] (Kap. 20,
  S. 1433-1449). Kernaussage: § 220 nur kant./komm. Recht (nie Bundesrecht); § 357 erweiterte
  Bestandesgarantie **ohne feste Quote** (Grenze neubauaehnliche Umgestaltung). Schaerft auch
  [[bestandsumbau-eingriffstiefe]].
- ~~**Gewässerabstand:** kein eigener Artikel~~ → **erledigt**: Gewässerraum in
  [[abstaende-und-hoehen]], die Linien (§ 67/§ 96 PBG) in [[baulinien-und-abstandslinien]] (2026-06-12).

## Offene Wissenslücken / needs-verification — neu (2026-07-11, aus Buch-Run 28: Kap. 15.13 Harmonisierungsvorlage — LETZTE Restschuld geschlossen)
- ~~**Kap. 15.13 «Lage von Gebäuden nach der Harmonisierungsvorlage» (S. 1124-1133) nicht distilliert**~~
  → **erledigt 2026-07-11** (Run 28): Die Shots 566-570 waren im Inventar `[x]`, aber die nPBG/nABV-
  Systematik war nie erfasst (teil2d = nur geltendes Recht §§ 260-274 PBG). Neues Destillat
  [[15-lage-von-gebaeuden-teil3-harmonisierung]] + neue nPBG-Sektion in [[abstaende-und-hoehen]]. Kernaussagen:
  **alles ab projizierter Fassadenlinie** gemessen (Fassadenflucht § 6 / Fassadenlinie § 6a / projizierte
  Fassadenlinie § 6b nABV; Referenz §§ 260/100/256 nPBG); **vorspringende Gebäudeteile bis 2 m + halber
  Fassadenabschnitt § 6c nABV** (statt Drittelregel § 260 Abs. 3 PBG); **Gebäudearten** (Minibaute/Klein-
  /Anbaute nur SIA-416-Nebennutzflächen/unterirdische Baute § 2b vs. Unterniveaubaute § 2c/Hauptgebäude);
  **Baubereich § 7 nABV**. **→ Kap. 15 vollständig; alle 23 Kapitel substanziell geschlossen (ausser
  Kap. 18 Brandschutz = Querverweis `brandschutz`).**
- **needs-verification — Fassungsstand nPBG/nABV (Kap. 15.13):** §§ 2/2a/2b/2c/6/6a/6b/6c/6d/7 nABV und
  §§ 49 Abs. 3/100/256/260/269/273/270-277 nPBG sinngemäss nach Buch S. 1124-1133 (6. Aufl. 2019 =
  **Vorlage-Text der Harmonisierung**, IVHB). Vor Zitat in Kundenberatung am **aktuell in Kraft stehenden**
  kant. Erlass spiegeln (nPBG/nABV bzw. dem heute geltenden PBG/ABV) — die Harmonisierungsvorlage war 2019
  noch nicht in allen Teilen umgesetzt. Betrifft insb. die 1/2-Vorsprungregel (§ 6c) und die UIB/UNB-
  Verschärfung (§ 269 nPBG), die für Volumen-/Machbarkeitsstudien direkt relevant sind.

## Offene Wissenslücken / needs-verification — neu (2026-07-11, aus Buch-Run 27: Kap. 17 T3 Haustechnik / Kap. 19 T2 Lärm+NIS)
- ~~**Kap. 17 Ausrüstungen-Teil offen (Heizungs-/Klima-/Elektroanlagen, Beförderungsanlagen, Briefkästen § 4 ABV, §§ 295-298 PBG, Garagen §§ 37-39 BBV I)**~~ → **erledigt 2026-07-11** (Run 27): Kap. 17 Teil 3 (S. 1304-1319) distilliert [[17-haustechnische-anlagen-teil3]] — **17.9 Haustechnische Anlagen** (Abwärme/WRG/WKK § 30a BBV I, Feuerungen Öl/Gas/Holz § 24 BBV I/LRV/Feuerungskontrolle alle 2 J. Art. 13 LRV, Kaminhöhen 0,5/1,5/2 m, **Elektroheizungsverbot § 10b EnerG**, Warmwasser max. 60 °C § 26 BBV I / Vorlauf ≤ 50 °C-Boden ≤ 35 °C § 23 BBV I, **VHKA ab 5 Nutzeinheiten § 9 EnerG**, besondere Heizungen, Klima/Lüftung § 29 BBV I, **Garagenlüftung § 37 Abs. 1 BBV I**, Elektro NIV Art. 37 ff., **Aufzugspflicht > 5 anrechenb. Geschosse** Kabine 2,10 × 1,10 m/§ 40 Abs. 2 BBV I, Liftanbau Altbau § 19a BBV II, Beförderungsanlagen § 296 PBG/§ 31/32 BBV I, Briefkästen Art. 73 ff. VPG). **Kap. 17 substanziell komplett** (nur 17.10-Rest nPBG offen). Speist [[wohnhygiene-und-raumanforderungen]].
- ~~**Baulicher Umweltschutz / Lärm / NIS nicht als Themenartikel im Wiki**~~ → **erledigt 2026-07-11** (Run 27): neuer Wiki-Artikel [[laermschutz-und-nichtionisierende-strahlung]] aus [[19-baulicher-umweltschutz-teil2-laerm-nisv]] (S. 1404-1431). Kernaussagen: **Aufhebung Lüftungsfensterpraxis BGE 142 II 100** (IGW an ALLEN Fenstern lärmempfindl. Räume), **Baubewilligung trotz IGW-Überschreitung Art. 31 Abs. 2 LSV** (überwiegendes Interesse, > 6 dB(A) nie leicht), Fluglärm Art. 31a LSV; **NISV zweistufig IGW/AGW**, **OMEN Art. 3 Abs. 3 NISV** (Balkone/Terrassen NICHT), **Mobilfunk AGW 4-6 V/m** (Bauzone Anspruch § 320 PBG ohne Bedürfnisnachweis BGer 1C_329/2013). **Kap. 19 vollständig.**
- **needs-verification — BBV-I/BBV-II + EnerG (Fassungsstand):** §§ 21-46a BBV I, § 19a BBV II, §§ 9/9a/10b/12/13 EnerG (Kap. 17) sinngemäss nach Buch S. 1304-1319; die 6. Aufl. 2019 kann durch die EnerG-Revision (MuKEn 2014) überholt sein — am heute geltenden kant. Energierecht spiegeln, bevor harte Werte (VHKA-Schwelle, Vorlauftemperaturen, Elektroheizungsverbot) in Bauherren-Beratung zitiert werden.
- **needs-verification — LSV/NISV-Artikel (Kap. 19):** Art. 31/31a/32/35/39 LSV + Anhang 5 Ziff. 222 LSV; Art. 2/3/4/5/6/7/8/9/11/12/14/16 NISV + Ziff. 61/62/64 Anhang 1 NISV + Anhang 2 NISV (IGW-Tabelle) — am Fedlex-Volltext gegenprüfen. **5G:** die 6. Aufl. kennt die neuen Frequenzen (700/1400/3500 MHz) nur als Prognose; die zugehörigen AGW am aktuellen Anhang 1 NISV spiegeln.
- ~~**needs-verification — Kaminhöhen/LRV:** Ziff. 3 Kaminempfehlungen 2013 (0,5/1,5/2 m) + Art. 6/13/20 LRV an der aktuellen BAFU-Empfehlung/Fedlex prüfen.~~ → **Geklärt/verifiziert — 2026-07-13 (Buch-Run 33):** amtlicher LRV-Volltext (Fedlex, Stand 1.1.2026) und BAFU-Kaminempfehlungen (1. aktualisierte Auflage Dezember 2018, Umwelt-Vollzug Nr. 1318) geprüft. CONFIRMED: Kaminmündung 0,5 m über Dachfirst/höchstem Gebäudeteil, 1,5 m über Flachdach, 2 m über begehbarem Flachdach (Ziff. 3.2 Kaminempfehlungen); Öl-/Gasfeuerungen ≤ 40 kW Abweichung ≥ 1 m rechtwinklig (Ziff. 3.2 Abs. 2); Holzfeuerungen < 10 m zu höheren Nachbargebäuden = Nachbargebäude massgebend (Ziff. 3.2 Abs. 3); Austrittsgeschwindigkeit ≥ 6 m/s (Ziff. 2.2); Art. 6 LRV (Emissionserfassung/-ableitung über Dach, Abs. 3 Hochkamine Anhang 6) wortgetreu bestätigt; Anhang 6 LRV gilt nur bei Q/S > 5. KORRIGIERT: **Art. 20 LRV (Konformitätserklärung Öl-/Gasfeuerungen) ist per 1.1.2022 aufgehoben** (AS 2021 632) — die Buch-Aussage «seit 1.1.2005 keine BAFU-Typenprüfung, nur Konformitätserklärung Art. 20 LRV» ist als Stand-2019-Aussage zu kennzeichnen, heute massgebend ist die Feuerungskontrolle nach Art. 13 Abs. 3 LRV. PRÄZISIERT: Art. 13 Abs. 3 LRV unterscheidet seit 1.6.2018 drei Kontroll-Rhythmen (4 Jahre kleine Holz-/Gasfeuerungen, 2 Jahre übrige Feuerungsanlagen — Regelfall, 3 Jahre übrige Anlagen), nicht pauschal «alle 2 Jahre». Beleg: `raw/260713_amtlich_ch_lrv.md`; nachgeführt in [[17-haustechnische-anlagen-teil3]] und [[wohnhygiene-und-raumanforderungen]]. OFFEN bleibt die Detailregelung zur Herstellerkonformität kleiner Feuerungen in Anhang 3 LRV Ziff. 4 ff. (nicht vertieft geprüft, ausserhalb Auftragsumfang).

## Offene Wissenslücken — neu (2026-07-03, aus Buch-Run 20)
- ~~**Widerrechtliche Bauten / Schwarzbau / Abbruchrisiko (Kap. 10):**~~ → **erledigt 2026-07-03** (Run 20):
  neuer Wiki-Artikel [[widerrechtliche-bauten-und-sanktionen]] aus [[10-widerrechtliche-bauten-teil1]]
  (S. 609-636). Kernaussagen: formell (heilbar via nachträgl. Verfahren) vs. materiell rechtswidrig;
  Wiederherstellung § 341 PBG unter Verhältnismässigkeit; **30-Jahre-Verwirkung** des Einschreitens;
  Strafe § 340 PBG bis 50'000 Fr. (auch Architekt/Ingenieur).
- ~~**Altlasten/Abfall bei der Baureife (Kap. 12 Rest, Art. 32c USG):**~~ → **erledigt 2026-07-03** (Run 20):
  [[12-baureife-teil4-gebuehren-abfall-altlasten]] (S. 770-807) + Block in [[baureife-und-erschliessung]].
  Kernaussage: Trennung **Realleistung (Standortinhaber, Art. 20 AltlV)** ↔ **Kostentragung (Verursacher,
  Art. 32d USG)**; KbS-Eintrag (Art. 32c Abs. 2 USG) als faktisches Beweismittel; Veräusserung braucht
  AWEL-Bewilligung (Art. 32d bis USG). **Kap. 12 vollständig.**
- ~~**Quartierplan/Landumlegung (Kap. 3 Rest):**~~ → **erledigt 2026-07-03** (Run 20):
  [[03-quartierplan-landumlegung-teil2]] + Block in [[baureife-und-erschliessung]]. **Kap. 3 vollständig.**
- **needs-verification — Wortlaut § 160a / § 81 / § 129 PBG (Quartierplan):** im Kap.-3-Destillat nur
  referiert, nicht wörtlich zitiert — bei Kundenzitaten am amtlichen PBG-Volltext (raw/) gegenprüfen.
- **needs-verification — «bis»-Artikel Art. 32b bis / 32d bis USG:** Nomenklatur aus dem Reader-Fliesstext;
  vor Kundenzitat am Fedlex-USG-Volltext prüfen.
- **Offene Band-1-Reste:** ~~Kap. 5 (Planung und Entschädigung)~~ → **erledigt 2026-07-04** (Run 21).
  ~~Kap. 9 «Rechtsschutz» Rest S. 576-606 (Ablauf/Kosten/Revision/Mediation)~~ → **erledigt 2026-07-06**
  (Run 22): Destillat [[09-rechtsschutz-teil2-ablauf-kosten-revision]] + NEU Wiki
  [[rechtsschutz-und-rechtsmittelverfahren]]. **Kap. 9 vollständig.** ~~Offen nur noch **Kap. 4**
  (Natur-/Heimatschutz, P3)~~ → **erledigt 2026-07-08** (Run 23): Destillat [[04-natur-und-heimatschutz]]
  (S. 268-309) + NEU Wiki [[naturschutz-und-denkmalschutz]]. **→ BAND 1 SUBSTANZIELL KOMPLETT**
  (offen nur Kap. 18 Brandschutz = Querverweis auf Skill `brandschutz`).

## Offene Wissenslücken / needs-verification — neu (2026-07-08, aus Buch-Run 23: Kap. 4 Natur-/Heimatschutz)
- ~~**Natur-/Heimat-/Denkmalschutz nicht im Wiki**~~ → **erledigt 2026-07-08** (Run 23): neuer Wiki-Artikel
  [[naturschutz-und-denkmalschutz]] (§§ 203-217 PBG + KNHV): Schutzobjekt-Katalog § 203 Abs. 1 lit. a-g,
  **Inventare binden nur die Behörde** (BLN/ISOS/IVS schutzwürdig, kant./komm. Vermutung), vorsorgl./
  definitive Massnahmen §§ 205/209/210, **Selbstbindung § 204**, **Kernzone § 50 ≠ Substanzschutz**,
  Interessenabwägung (finanzielle Interessen überwiegen i.d.R. nicht; Energie vs. Denkmalschutz abwägbar),
  Verhältnismässigkeit, Provokation § 213 (irreversibel), Rechtsschutz § 211 Abs. 4 (keine aufsch. Wirkung
  ausser bei Aufhebung/negativem Entscheid), Beiträge Art. 13 NHG freiwillig. Distilliert
  [[04-natur-und-heimatschutz]] (S. 268-309). **Speist [[ausnahmebewilligung-und-bestandesschutz]] /
  [[bestandsumbau-eingriffstiefe]] / [[enteignung-und-entschaedigung]] und die Skills `ankaufspruefung`/
  `machbarkeit`/`planungsgrundlagen`.**
- **needs-verification — KNHV-Paragraphen (§§ 2a/4/6/7/8/9/10/12/13-32 KNHV):** aus dem Reader-Fliesstext
  belegt, aber die Kantonale Natur- und Heimatschutzverordnung ist nicht als amtlicher Volltext in raw/ —
  vor Kundenzitat am LS-Erlass (KNHV) gegenprüfen.
- **needs-verification — §§ 203/205/207/209/210/211/213/216/217 PBG + § 50/§ 76/§ 238/§ 338b PBG:** im
  Destillat [[04-natur-und-heimatschutz]] sinngemäss nach Buch S. 268-309; am amtlichen PBG-Volltext (raw/)
  gegenprüfen (Modell D nächster Lauf). Ebenso Art. 78 BV / Art. 2/3/5/7/8/13/17a/25 NHG am Fedlex-Volltext.
- **Materielle Enteignung bei Unterschutzstellung:** nur querverwiesen (Buch S. 322) — vertieft in
  [[enteignung-und-entschaedigung]] (Kap. 5, 5.3). Kein Doppelaufbau, Verknüpfung ok.
- **needs-verification — VRG-Paragraphen Kap. 9 Teil 2 (§ 25/§ 26b/§ 86a-d/§ 87/§ 89 VRG + § 338/§ 339
  PBG):** aus den Screenshots belegt, aber Fassungsstände (§ 26b in Kraft 1.10.2016; § 339 PBG in Kraft
  1.7.2014) und Gerichtsgebühr-Bandbreite (500-50'000 Fr.) am amtlichen VRG-/PBG-Volltext (raw/)
  gegenprüfen, bevor sie in Kundenberatung zitiert werden.

## Offene Wissenslücken — neu (2026-06-17, aus Buch-Run Kap. 17 Teil 1)
- ~~**Wohnhygiene/Raumanforderungen §§ 299-306 PBG**~~ → **erledigt 2026-06-17** (Run 9):
  Belichtung/Belüftung § 302 (Fenster ≥ 1/10 Bodenfläche, öffenbar, ins Freie; Lichtschacht-Falle
  VB.2017.00452/BEZ 2001 Nr. 30), Mindestfläche ≥ 10 m² § 303, lichte Raumhöhe 2,4 m / Kernzone
  2,3 m § 304 (Dachraum halbe Bodenfläche, BEZ 2011 Nr. 15), innere Erschliessung § 305 +
  Aufzugspflicht § 40 BBV I (> 5 Geschosse, krankentransporttauglich 2,1 × 1,1 m), Geltungs-
  bereich-Ausnahme EFH § 32 ABV — distilliert [[17-gebaeude-und-raeume]] (S. 1241-1255), neuer
  Wiki-Artikel [[wohnhygiene-und-raumanforderungen]].
- **§ 10 BBV II Rauminhalt-Staffelung offen:** Die m³/m²-Staffel für Räume mit grosser Belegung
  (Buch: 2,4 m³/m² bis 200 m², Anstieg «0.002 m²» wirkt wie OCR-Verzerrung, ab 500 m² konstant
  3 m³/m²) am amtlichen BBV-II-Volltext (raw/) gegenprüfen — Zwischenwerte unklar.
- ~~**Kap. 17 Ausrüstungen-Teil offen:** Heizungs-/Klima-/Elektroanlagen, Beförderungsanlagen,
  Briefkästen (§ 4 ABV), §§ 295-298 PBG sowie Einstellräume-Detail (Garagenlüftung, §§ 37 ff. BBV I)~~
  → **erledigt 2026-07-11** (Run 27): [[17-haustechnische-anlagen-teil3]] (S. 1304-1319) —
  17.9 Haustechnik + Klima/Lüftung + Elektro (NIV) + Beförderungsanlagen (**Aufzugspflicht > 5
  Geschosse, § 40 Abs. 2 BBV I**) + **Garagenlüftung § 37 Abs. 1 BBV I** + Briefkästen Art. 73 ff. VPG.
  **Kap. 17 substanziell komplett** (nur 17.10-Rest nPBG offen).

## Offene Wissenslücken — neu (2026-06-18, aus Buch-Run Kap. 20)
- **§ 357 Abs. 4 (Verbesserungen)** → **teil-erledigt 2026-06-29** (Welle 1): Abs. 4 (Verbesserungen +
  Erweiterungs-/Nutzungsänderungs-Kasuistik) in [[20-ausnahmen-bestandesschutz]] ergänzt (S. 1450-1455,
  Shots 729-731). **Offen bleibt § 357 Abs. 5** (Milderung von Bauvorschriften für zweckmässige Nutzung),
  ab Shot 732 / S. 1456 ff.
- **Baupolizeiliche Missstände + Brandstattrecht § 307 PBG offen:** dritter/vierter Tatbestand
  der Kap.-20-Übersicht (Wiederaufbau zerstörter Gebäude), S. 1456 ff. noch nicht distilliert.
- **needs-verification — Wortlaut § 220 / § 357 Abs. 1 PBG:** im Destillat
  [[20-ausnahmen-bestandesschutz]] nach Buch S. 1434/1444 sinngemäss wiedergegeben; am amtlichen
  PBG-Volltext (raw/) gegenprüfen (Modell D nächster Lauf).

## Offene Wissenslücken — neu (2026-06-19, aus Buch-Run Kap. 7 Teil 1)
- ~~**7.2/7.3 Auskünfte + baurechtlicher Vorentscheid / Voranfrage offen (HOHE Büroprio)**~~ →
  **erledigt 2026-06-21** (Run 12): Kap. 7 Teil 2 vollständig distilliert (S. 448-484), neuer
  Wiki-Artikel [[baurechtlicher-vorentscheid-und-voranfrage]] (§§ 323/324 PBG: teilverbindlich,
  3 J., nur grundlegende projektunabhängige Rechtsfragen; Auskunft Treu+Glauben 5 Voraussetzungen;
  Verhandlungslösung). Destillat [[07-vorentscheid-auskuenfte-besondere-zustaendigkeiten]] deckt
  zusätzlich **Gültigkeit/Widerruf § 322/§ 328 PBG** und die **besonderen kant. Zuständigkeiten
  (Anhang BVV)** ab. Speist [[baubewilligungsverfahren]] (Schritt 1 «Voranfrage»). **Kap. 7 fertig.**
- **needs-verification — überbelichtete Seiten S. 430/431 + 444/445:** Ausstand-Details (Shot 217)
  und Kostenentscheid-Bemessung/Solidarhaftung §§ 13/14 VRG (Shots 224/225) im Destillat
  [[07-zustaendigkeiten-entscheide-auskuenfte]] nur eingeschränkt lesbar; am amtlichen VRG-/PBG-
  Volltext (raw/) gegenprüfen (Modell D).
- **§ 326 PBG (Erzwingung von Auflagen) + Art. 164 GBV / Art. 962 ZGB (Anmerkungspflicht):**
  Wortlaut am amtlichen Volltext sichern (in [[nebenbestimmungen-und-reverse]] sinngemäss).

## Offene Wissenslücken / needs-verification — neu (2026-06-21, aus Buch-Run Kap. 7 Teil 2)
- **§ 322 / § 324 / § 328 PBG + § 20 BVV (Wortlaut):** Geltungsdauer 3 J. (Verwirkung, Fristbeginn
  letzte Bewilligung), Vorentscheid-Bindung, Stillstand, koordinationspflichtige Beurteilungen — im
  Destillat [[07-vorentscheid-auskuenfte-besondere-zustaendigkeiten]] sinngemäss; am amtlichen
  PBG-/BVV-Volltext (raw/) gegenprüfen (Modell D nächster Lauf).
- **Art. 138 ZPO (Zustellfiktion 7 Tage) + Art. 49 BGG (fehlerhafte Rechtsmittelbelehrung):** aus
  dem Buch übernommen, am Fedlex-Volltext sichern.
- **Anhang zur BVV (Ziffern-Zuordnung kant. Stellen):** nur als Auswahl erfasst (AFV/ALN/AWEL/UVP);
  vollständige Ziffern-Liste bei Bedarf am amtlichen BVV-Anhang nachführen — keine echte Lücke, nur
  Vertiefungsoption.
- **Cross-Article-Spannung GELÖST:** [[baubewilligungsverfahren]] sagte fälschlich «Baubeginn-Frist
  auf Gesuch verlängerbar» — korrigiert (§ 322 Abs. 1 PBG: Verwirkung, nicht verlängerbar; Modell D
  in `training/drills.md` dokumentiert).

## Offene Wissenslücken / needs-verification — neu (2026-07-09, aus Buch-Run 24: Kap. 8 T2 / Kap. 13 T2 / Kap. 16 T3)
- ~~**Rest Kap. 8 (Baustellensicherheit)**~~ → **erledigt 2026-07-09** (Run 24): Kap. 8 Teil 2 (S. 510-535)
  distilliert [[08-ausfuehrung-teil2-baustellensicherheit]] — Schutz Nachbargrundeigentum § 239 Abs. 1 PBG/
  **Rissprotokoll** (privatrechtl., Beweislast Art. 8 ZGB, BEZ 2016 Nr. 15), Feuerpolizei (→ `brandschutz`),
  Arbeitnehmerschutz VUV/BauAV, Baustellenentsorgung Art. 16 VVEA (**Konzept ab > 200 m³**)/Bauherren-Altlast
  Art. 32bis USG (2/3-Rückgriff), Baulärm-Richtlinie (Stufen A/B/C), amtl. Vermessung § 19 KVAV. Wiki
  [[bauausfuehrung-und-baukontrolle]] Abschn. 6 geschärft. **Kap. 8 endet S. 535 → Band 1 komplett (ausser
  Kap. 18 Brandschutz).**
- **NEU Kap. 13 offen — §§ 242 (Antennen) / 248 (Camping/Fahrnisbauten):** stehen erst **nach S. 891**
  (Folge-Shots ab ~449), nicht im gelesenen Kap.-13-Teil-2-Bereich (S. 858-891). Bei Gelegenheit nachholen.
- **needs-verification — Kap. 13 Teil 2 (§§/Erlasse):** § 238 Abs. 3 PBG (Umgebung/Umschwung ohne
  Ausnützungswirkung, BEZ 2011 Nr. 6), § 239 Abs. 1/2 PBG (Regeln der Baukunde / Baumaterialien; Art. 229
  StGB, Art. 58 OR, BauPG, PrSG), § 240/§ 241 PBG (Verkehrssicherheit), **§ 16 StrAV Sichtbereiche 90/150/50 m**,
  §§ 11/12 StrAV (Einfriedungen), Art. 6 SVG / Art. 95-99 SSV (Strassenreklamen), Art. 15 FrSV (Neobiota) —
  sinngemäss nach Buch S. 858-891, am amtlichen Volltext gegenprüfen (Modell D). **§§ 239a-d (hindernisfrei)
  hier nur verwiesen → Buch S. 1269.**
- **needs-verification — Kap. 16 Teil 3 (§§/Erlasse):** § 282/§ 284 PBG (Hochhaus > 25 m Gebäudehöhe, keine
  erhöhte Ausnützung), **§ 30 Abs. 1 lit. a ABV Schattenwurf > 2 h** (Vernehmlassung 2018: 3 h), § 28 ABV
  (Gebäudelänge/-breite flächenkleinstes Rechteck, ≤ 0,5 m nicht eingerechnet), **§ 292 PBG Dachaufbauten
  ≤ 1/3 Fassadenlänge** (Kamine/Solar/Kreuzfirst zählen nicht, BEZ 2014 Nr. 9), § 293 PBG (Freilegung UG
  ≤ 1,5 m über *gestaltetem* Boden; § 280 = *gewachsenes* Terrain) — am amtlichen PBG-/ABV-Volltext prüfen.
- **NEU Kap. 16 offen — 16.9-Schluss (S. 1230 f.):** Abgrabungen/Freilegung UG endet nicht auf S. 1229;
  läuft in den bereits distillierten Teil 16.10 (Harmonisierung, Shot 619). Kleiner Rest, bei Gelegenheit.

## Offene Wissenslücken / needs-verification — neu (2026-06-22, aus Buch-Run Kap. 8)
- ~~**Rest Kap. 8 offen (Restschuld):** ab S. 510 — 8.3 Sicherheit der Baustelle Detail~~ → **erledigt
  2026-07-09** (Run 24, siehe oben). Restfrei.
- ~~**needs-verification — Wortlaut am amtlichen Volltext (raw/):** §§ 326/327/328/329 PBG (Baufreigabe,
  Meldepflichten/Kontrollen, Unterbruch + die lit. a-d des § 328 Abs. 2)~~ → **erledigt 2026-07-12 (Run 30):**
  §§ 326-329 volltextverifiziert (Run-30-Sektion oben) — § 328 Abs. 2 lit. b (Förderung, nicht Abbruch),
  Abs. 3 (Kostenträger Grundeigentümer), § 326-Plattform-Fassung korrigiert, § 328a ergänzt, § 329 Abs. 1
  (BRG-Anfechtung) bestätigt. **Offen** nur noch (nicht im PBG-Kern): § 239 PBG (anerkannte Regeln der
  Baukunde), § 309 Abs. 1 lit. c, §§ 8/9/10c/15/30 VRG, § 12a BBV I/II, §§ 3/23/24 BVV — am jeweiligen Volltext.
- **Art. 3a ABV + Art. 16 VVEA (Asbest-Meldepflicht seit 1.6.2018):** Wortlaut/Verweiskette am amtlichen
  ABV-/VVEA-Volltext sichern — praxisrelevant für Umbau/Abbruch im Bestand.
- **§ 8 Abs. 2 IDG ZH (Drohnen-Datenschutz, KGer LU Horw):** auf das aktuelle ZH-IDG verweisbar prüfen.

## Offene Wissenslücken / needs-verification — neu (2026-06-26, aus Buch-Run Kap. 12)
- ~~**Baureife / Erschliessung / Zugänglichkeit nicht im Wiki**~~ → **erledigt 2026-06-26** (Run 14):
  neuer Wiki-Artikel [[baureife-und-erschliessung]] (§§ 233-237 PBG: technische Erschliessung +
  planungsrechtliche Baureife § 234; Erreichbarkeit 80/40 m, Notzufahrt 3 m/16 t; wesentliche
  Abweichung bei Umbau § 233 Abs. 2), distilliert [[12-baureife]] (S. 707-723). Speist
  [[baubewilligungsverfahren]] (Bewilligungsvoraussetzung) und ergänzt [[bestandsumbau-eingriffstiefe]].
- ~~**Zugänglichkeit-Detail (Zugangskategorien/ZN-Masszahlen, Kehrplatz, Fussgängerschutz, OEV)**~~ →
  **erledigt 2026-06-28 (Run 15):** Kap. 12 Teil 2 (S. 724-741) in [[12-baureife]]/[[baureife-und-
  erschliessung]] distilliert — Zugangsarten + **Anhang-ZN-Tabelle** (Breiten/Radien je WE-Zahl),
  Kehrplatz (SN 640 052), Fussgängerschutz (Bankett 30 cm/Trottoir 1 m), Erleichterungen (§ 11 ZN /
  § 360 Abs. 3 PBG / letzte Baulücke), Umweltschutzrecht-Erschliessung (Art. 24 USG/§ 128 PBG),
  Erreichbarkeit OEV (§ 237 Abs. 1 Satz 2 PBG, AngebotsV, 300-Personen-Schwelle).
- **Rest Kap. 12** → **teil-erledigt 2026-06-30** (Run 16): S. 742-769 distilliert
  ([[12-baureife-teil3-versorgung-entsorgung]]) — 12.3.6 rechtliche Sicherung § 237 Abs. 4 PBG,
  12.4 Wasser/Energie § 236 PBG (Löschwasser § 16 FeuerwehrV, Grundwasserschutzzonen S1/S2/S3,
  Energie zwingend), 12.5 Abwasser (GSchG/Kanalisationsanschluss Art. 17, GEP § 8 KGSchV). **Offen
  bleibt Teil 4: S. 770-809** — Rest 12.5 (Anschlussgebühren-Bemessung), **Abfall/Kehricht** und
  **belastete Standorte/Altlasten Art. 32c USG/AltlV** (im gelesenen Bereich noch nicht behandelt).
- **needs-verification — §§/Erlasse Kap. 12 Teil 2:** § 227 PBG (Schwertransporte), § 12 BBV II,
  § 18 PVG, AngebotsV (§§ 2/4), ZN §§ 4/5/6/7/9/10/11/12, § 360 Abs. 3 PBG — sinngemäss nach Buch
  S. 724-741, am amtlichen Volltext gegenprüfen (Modell D); Anhang-ZN-Tabellenwerte gegen den heute
  geltenden Erlass spiegeln.
- **Stand Erschliessungsverordnung (EV) ZH** → **geklärt (Buchbeleg) 2026-06-30** (Run 16): das Buch
  (Bd 2, S. 750) zitiert die **EV bereits als geltenden Erlass** — Zugangskategorien in **§ 11 Abs. 1 EV**
  (Standard) / **§ 12 EV** (planerisch), mit § 6 ZN ausdrücklich als Vorgänger; EV hebt die WE-Schwellen
  an (Zufahrtsweg 10 → 50/100 WE). **Rest-needs-verification:** den exakt heute in Kraft stehenden
  EV-Wortlaut/Inkraftsetzungsdatum am amtlichen LS-Erlass spiegeln, bevor harte Masszahlen zitiert werden.
- ~~**needs-verification — Wortlaut am amtlichen Volltext (raw/):** §§ 233/234/235/236/237 PBG~~ →
  **erledigt 2026-07-12 (Run 30):** §§ 233-237 volltextverifiziert (Run-30-Sektion oben) — § 234
  (Gemeindevorstand-Antrag), § 235 (3-J-Erlassfrist), § 236 («Behandlung»), § 237 Abs. 4 (Grundbuch-
  Anmerkung) korrigiert. **Offen** noch: § 120 PBG (vorsorgliches Bauverbot), § 150 PBG (Quartierplanbann),
  § 264 PBG (Verkehrsbaulinien), § 346 PBG (Planungszone, 3+2 J.) — nächster Modell-D-Lauf.

## Offene Wissenslücken / needs-verification — neu (2026-06-30, aus Buch-Run 16: Kap. 1 / Kap. 2 T1 / Kap. 12 T3)
- ~~**Grundlagen/Rechtsquellen/Verfassungsgrundsätze nicht im Wiki**~~ → **erledigt 2026-06-30** (Run 16):
  neuer Wiki-Artikel [[grundlagen-planungs-baurecht]] (öff./privates Baurecht § 317 PBG, Rechtsquellen,
  **SIA-Normen-Verbindlichkeit** § 3 Abs. 12 BBV I / § 360 Abs. 3 PBG, Verhältnismässigkeit/Rechtsgleichheit/
  Treu+Glauben, intertemporales Recht § 318 PBG), distilliert [[01-grundlagen]] (Kap. 1 vollständig, S. 80-110).
- ~~**Kap. 2 Teil 2 offen (Restschuld, HOHE Büroprio):** ab S. 142 / Abschnitt 2.3 Nutzungsplanung —
  Zonenarten, BZO, Gestaltungs-/Quartierplan~~ → **teilweise erledigt 2026-06-30 (Run 17):** Kap. 2
  Teil 2 (S. 144-169, Shots 73-85) distilliert [[02-nutzungsplanung-zonenarten-teil2]] — **numerus
  clausus Bauzonentypen § 48 Abs. 2 PBG** (Kern § 50/Quartiererhaltung § 50a/Zentrum § 51/Wohn § 52/
  Industrie-Gewerbe § 56/öff. Bauten § 60/Erholung § 61/Freihalte § 39,62/Reserve § 65/Weiler Art. 33 RPV
  ≥ 10 Geb.), **Neueinzonung Art. 15 Abs. 4 RPG** (4 kumulativ), **Arealüberbauung §§ 69-73 PBG**,
  Grundzonenplan 1:5000/Ergänzungspläne §§ 4/10 VDNP, Wald § 2 WaG-ZH, Grundwasserschutz S1/S2/S3.
  Wiki [[raumplanung-und-gestaltung]] geschärft (Zonenarten-Platzhalter gefüllt). **Restschuld:**
  (a) **Shot 76 / S. 150-151** nicht gelesen (OneDrive-I/O-Fehler `…11.42.54.jpg`) — nachholen;
  (b) **Sondernutzungsplanung / Gestaltungsplan §§ 83 ff. PBG** + Quartierplan + Nutzungsplanverfahren/
  Rechtsschutz § 329 PBG ab S. 169/170 (Teil 3). Detailwerte je Zone gehören weiter in [[zonenkonformitaet]].
- **needs-verification — §§/Lesefehler Kap. 2 Teil 2:** **«§ 935» als Arealüberbauungsbonus** (S. 168)
  ist mutmasslich ein Reader-/OCR-Lesefehler (richtig wohl § 71/§ 72 PBG bzw. ABV) — am amtlichen
  PBG-Volltext (§§ 69-73 PBG) gegenprüfen, bleibt `speculative`. Ebenso exakte Abs./lit. von Art. 15 RPG,
  § 56 PBG, § 60 PBG aus dem Fliesstext rekonstruiert; vor Zitat prüfen (Modell D).
- **needs-verification — §§/Erlasse Kap. 12 Teil 3:** § 237 Abs. 4 PBG (Benützungsrechte), § 27/§ 39 WWG
  (Wasser/Löschwasser), § 16 FeuerwehrV (Hydranten 100/60 m), §§ 109-115 LG (Flurweg/Öffentlicherklärung),
  Art. 694 ZGB (Notwegrecht), Art. 10/11/17 GSchG, § 8 KGSchV (GEP), §§ 8a/9-13 EnerG — sinngemäss nach
  Buch S. 742-769, am amtlichen Volltext gegenprüfen (Modell D).
- **needs-verification — Kap. 1 PBG-Titel-Endparagraphen + 15-J-Frist Art. 15 RPG:** im Destillat
  [[01-grundlagen]] die exakten §§-Spannen der VII PBG-Titel teils `speculative` (Buchtabelle unscharf);
  die wörtliche 15-Jahres-Bauzonenbedarfs-Formel steht in Kap. 2 (Art. 15 RPG, S. 114), nicht Kap. 1.

## Offene Wissenslücken / needs-verification — neu (2026-07-02, aus Buch-Run 18: Kap. 2 T3 / Kap. 3 T1 / Kap. 6 T2)
- ~~**Sondernutzungsplanung / Gestaltungsplan §§ 83 ff. PBG** (Restschuld Kap. 2)~~ → **erledigt
  2026-07-02** (Run 18): Kap. 2 Teil 3 (S. 170-204) distilliert [[02-nutzungsplanung-sondernutzung-verfahren-teil3]]
  — **Gestaltungsplan § 83** (ersetzt Grundordnung), öffentlich § 84 / privat **2/3-Quorum § 85 Abs. 2** /
  Aufhebung 5 J. §§ 82/87, **Gestaltungsplanpflicht § 48 Abs. 3**, **preisgünstiger Wohnraum § 49b**,
  **Verfahren der Nutzungsplanung** (60-T-Auflage Art. 4 RPG/§ 7, kant. Genehmigung § 89/Art. 26 Abs. 3 RPG
  konstitutiv), **Prinzip des einmaligen Rechtsschutzes**. Wiki [[raumplanung-und-gestaltung]] geschärft.
- ~~**Kap. 6 Restschuld S. 405-422** (Publikation/Anzeigeverfahren)~~ → **erledigt 2026-07-02** (Run 18):
  Kap. 6 Teil 2 (S. 402-421) distilliert [[06-baurechtliches-verfahren-teil2]] — **Anzeigeverfahren § 325 PBG /
  §§ 13-15 BVV** (3 kumulative Voraussetzungen, fällt weg in Kern-/Quartiererhaltungszone + BehiG-Umbau),
  **private Kontrolle §§ 4-7 BBV I**. **Kap. 6 damit vollständig.**
- ~~**Cross-Article-Tension 20 vs. 30 Tage (§ 315 PBG)**~~ → **gelöst 2026-07-02 (Modell D):**
  [[baubewilligungsverfahren]] nannte «Auflage-/Einsprachefrist 30 Tage (§ 315 PBG)» — korrigiert auf
  **20 Tage Zustellbegehren** (§ 315 Abs. 1 / § 316 PBG; Beleg [[06-baurechtliches-verfahren]] +
  [[06-baurechtliches-verfahren-teil2]], VB.2015.00248). Die 30-Tage-Frist gilt für Rekurs und
  Anzeigeverfahren-Nachbaranzeige. Am amtlichen PBG-Volltext (raw/) endgültig sichern.
- **NEU: Kap. 3 Teil 2 offen (Erschliessung Rest):** Quartierplan-Detail 3.9 (§§ 125/126/237 PBG),
  **Grenzbereinigung / Gebietssanierung / Landumlegung / Güterzusammenlegung** ab S. 238 noch nicht
  distilliert (Shots ab 121). Ergänzt dann [[baureife-und-erschliessung]].
- **needs-verification — §§/Erlasse Kap. 3 Teil 1:** § 91 PBG (Erschliessungsplan-Inhalt), §§ 90-95/§ 93
  (Ersatzvornahme), §§ 96-101/106/111 PBG (Baulinien/Niveau-/Ski-Linien), §§ 114-122 PBG (Werkplan/
  vorsorgl. Bauverbot/Heimschlag), § 62 StrG (Mehrwertbeiträge ¼-½), Art. 4/5 WEG, Art. 19 Abs. 2/3 RPG,
  `RRB 262/2010` (Nummer schwer lesbar) — sinngemäss nach Buch S. 208-239, Modell D nächster Lauf.
- **needs-verification — §§/Erlasse Kap. 2 Teil 3:** § 49b PBG (preisgünstiger Wohnraum, Fassung 2019/PWV),
  §§ 83-89 PBG (Gestaltungsplan-Zuständigkeit/Verfahren/Aufhebung), § 87a (Vorprüfung), § 44a (überkomm. GP),
  § 329 PBG/§ 41 VRG (Rechtsmittel Nutzungsplanung) — am amtlichen PBG-Volltext gegenprüfen.
- **needs-verification — Kap. 6 Teil 2:** § 325 PBG + §§ 13-15 BVV (Anzeigeverfahren-Katalog/Voraussetzungen),
  §§ 4-7 BBV I (private Kontrolle), § 325a PBG (energetische Sanierungen, seit 2019 revidiert) — Stand
  6. Aufl. 2019, aktuellen Wortlaut prüfen.

## needs-verification (aus Health-Check 2026-06-02)
- **Gebühren 1–3 ‰** ([[baubewilligungsverfahren]]): Quelle/kommunale
  Gebührenordnung hinterlegen.
- ~~**Waldabstand-Ausnahmen 20 m / 10 m**~~ ([[abstaende-und-hoehen]]): **erledigt 2026-06-11**
  per Buchbeleg — § 262 PBG, Regel 30 m, reduzierbar bis 15 m (siehe Archiv unten).
- **BZO-Richtwert-Tabelle** ([[zonenkonformitaet]]): Einzelwerte gegen aktuelle BZO prüfen.

## Cross-Article-Spannungen (worth resolving)
- Noch keine erfasst.

## Geklärte Lücken (aus Buch-Run Kap. 14)
- ~~**Mischrechnungsverbot**~~ — **GEKLÄRT (Run 26, 2026-07-10):** Nach lückenlosem Lesen von Kap. 14
  (S. 919-992, Shots 462-500) existiert **kein «Mischrechnungsverbot» als benannte Doktrin**. Jede
  Nutzungsziffer (AZ/BMZ/ÜZ/Grünflächenziffer) bindet **eigenständig und abschliessend** (§ 251 PBG);
  die einzigen zulässigen Verschiebungen sind Ausnützungsübertragung (§ 259 Abs. 1 PBG) und
  Nutzweisen-Übertragung (§ 17 Abs. 2 ABV) — je auf dieselbe Ziffer bezogen. Siehe
  [[ausnuetzungsuebertragung]], [[nutzungsziffern]].
- ~~**§ 10 ABV / § 13 ABV**~~ — **GEKLÄRT (Run 24 + Run 26):** § 10 ABV Nebenraumgruppen (2 %/2 %/10 %)
  und § 13 ABV (BMZ-Aufteilung, integrierte Garagen) im Destillat [[14-nutzungsdichte-ausnuetzung]] belegt.

## Offene Wissenslücken — neu (2026-06-10, aus Buch-Run Kap. 16 Teil 1)
- ~~**Gebäude-/Firsthöhe** (Kap. 16 Teil 2): Dachgestaltung/Dachaufbauten/Lukarnen, Terrainveränderung~~
  → **erledigt** (Teil 2 Welle 1 2026-06-29 Höhen/Firsthöhe §§278-281; **Teil 3 Run 24 2026-07-09**
  Dachaufbauten-Drittelsregel § 292 / Hochhäuser § 282 / Freilegung UG § 293, distilliert
  [[16-gebaeudedimensionen-teil3-umgebung]], Wiki [[abstaende-und-hoehen]] geschärft).
- **§ 19 BBV II** (Liftbauten-/Hindernisfrei-Erleichterung für Altbauten): die vier
  Voraussetzungen nur kursorisch erfasst — am amtlichen Volltext (BBV II) verifizieren.
- ~~**§ 293 PBG** (Freilegung von Untergeschossen): kommunale Konkretisierung in der BZO offen.~~
  → **teil-erledigt Run 24:** § 293 Abs. 1 = **≤ 1,5 m über gestaltetem Boden**, kommunal strenger möglich
  (§ 293 Abs. 4; z.B. 1,0 m Küsnacht). Genaue BZO-Werte je Gemeinde bleiben einzelfallabhängig.

## Offene Wissenslücken — neu (2026-06-11, aus Buch-Run Kap. 15 Teil 1)
- **Grenz-/Gebäudeabstand konkret** (§§ 269-274 PBG): grosser/kleiner Grenzabstand,
  Mehrlängenzuschlag, Gebäudeabstand als Summe — Zahlenwerk noch nicht distilliert
  (Kap. 15 Teil 2, Shots ab 521, S. 1034 ff.). Ergänzt [[abstaende-und-hoehen]].
- **§ 273 PBG** (reduzierte Abstände besonderer Gebäude): genaues Reduktionsmass am
  amtlichen Volltext präzisieren.
- **Gewässerraum-Formel** «2,5 × Sohle + 7 m» (Art. 41a Abs. 2 GSchV) + Korrekturfaktoren
  1,5/2,0 bei verbauten/eingedolten Gewässern: am Fedlex-Volltext gegenprüfen.

## Offene Wissenslücken — neu (2026-06-12, aus Buch-Run Kap. 15 Teil 2a)
- ~~**Strassenabstand / Verkehrsbaulinien** (Arten/Zweck der Baulinien)~~ → **erledigt
  2026-06-12/14**: Artikel [[baulinien-und-abstandslinien]] (Arten § 96 PBG, subsidiärer
  Abstand § 51 Abs. 2/§ 264 PBG, Gewässerabstandslinie § 67, Rechtswirkung §§ 99-101) +
  Strassen-/Wegabstand §§ 264-267 PBG distilliert ([[15-lage-von-gebaeuden-teil2b]], S. 1034-1061).
- **§ 100 Abs. 1 PBG** (zulässige Überschreitungen einer Baulinie): Katalog der privilegierten
  Bauteile + 1/3-Fassaden-Kriterium am amtlichen Volltext präzisieren.

## Offene Wissenslücken — neu (2026-06-14, aus Buch-Run Kap. 15 Teil 2b)
- ~~**Grenzabstand-Zahlenwerk §§ 269-270 PBG / §§ 21-28 ABV**~~ → **erledigt 2026-06-15** (Run 6):
  Mindestgrenzabstand 3,5 m (§ 270 Abs. 1), Mehrhöhenzuschlag ab 12 m/max 16,5 m (§ 270 Abs. 2),
  Zusammensetzung Grund-/Mehrhöhen-/Mehrlängenzuschlag (§ 21 ABV), grosser/kleiner Grundabstand =
  Hauptwohnseite (§ 22 Abs. 2 ABV), Mehrlängenzuschlag + 2G-Regel (§§ 23/24 ABV), Vorsprung-Privileg
  (§ 260 Abs. 3 / § 27 ABV), abstandsfrei § 269 — distilliert [[15-lage-von-gebaeuden-teil2c]]
  (S. 1062-1085), Wiki [[abstaende-und-hoehen]] geschärft.
- ~~**Gebäudeabstand §§ 271-273 PBG**~~ → **erledigt 2026-06-16** (Run 7): Gebäudeabstand = Summe
  der beiden Grenzabstände (§ 271), Abstand über Verkehrsräume (§ 272), Erleichterungen «Besondere
  Gebäude» § 273 i.V.m. § 49 Abs. 3 PBG (≤ 4 m / 5 m, kein dauernder Aufenthalt, 3,5 m Abstand,
  ~50 m² BEZ 2015 Nr. 2, kein Dispens BEZ 2004 Nr. 75), Näherbaurecht § 270 Abs. 3 PBG (7-m-Schranke
  BEZ 1990 Nr. 28, Grundbuch Art. 680 Abs. 2 ZGB), Aussenisolation § 253a PBG — distilliert
  [[15-lage-von-gebaeuden-teil2d]] (S. 1086-1111), Wiki [[abstaende-und-hoehen]] geschärft.
- **§ 274 PBG offen** (Grenzbaurecht / geschlossene Bauweise / Anbaupflicht-Anbaurecht): § 274 Abs. 1
  wird in der Näherbaurecht-Passage (S. 1100) zitiert, eine eigenständige Sektion (vermutlich 15.10,
  Shots ab 560, S. 1112 ff.) wurde noch nicht erreicht. Ebenso **§ 27 Abs. 2 ABV** (Zusammenrechnung
  benachbarter Hauptgebäude) in den gelesenen Seiten nicht explizit belegt. **Restschuld Kap. 15.**
- **§§ 102/103/104 PBG** (Entschädigung materielle Enteignung / Heimschlagsrecht /
  Leitungsbaurecht bei Baulinien): genaue §-Zuordnung am amtlichen Volltext prüfen (im Buch teils
  zusammengezogen zitiert, S. 1035). *(Teilklärung 2026-07-04, Kap. 5: § 102 PBG = Entschädigung bei
  besonderer Belastung durch Baulinien/Wald-/Gewässerabstandslinien; Heimschlag Baulinien = § 103 f. PBG;
  siehe [[enteignung-und-entschaedigung]]. §-Nummern weiterhin am Volltext bestätigen.)*
- **StrAV-Masszahlen** (Lichtraumprofil 2,5/4,5 m, Pflanzen-/Einfriedungsabstände §§ 7/14/17 StrAV):
  am amtlichen Volltext der Strassenabstandsverordnung gegenprüfen — im Screenshot nur teilweise lesbar.
- **«Dicht überbautes Gebiet»** (Art. 41c Abs. 1 Satz 2 GSchV): praxistaugliche Kriterien aus
  dem Merkblatt ARE/BAFU/BPUK ergänzen — im Buch nur über Fallrecht (BGE 140 II 428;
  Altendorf/Hurden/Rüschlikon) umrissen.

## Offene Wissenslücken — neu (2026-07-10, aus Buch-Run 25)
- ~~**Fahrzeugabstellplätze / Pflichtparkplätze (Kap. 13.5):**~~ → **erledigt 2026-07-10** (Run 25):
  neuer Wiki-Artikel [[fahrzeugabstellplaetze-und-parkierung]] aus [[13-fahrzeugabstellplaetze-spielflaechen-teil3]]
  (§§ 242-248 PBG, S. 892-916). Kernaussagen: Normbedarf kommunal (§ 242 Abs. 1); Reduktion + **Maximum**
  (§ 242 Abs. 2) via Massnahmenplan Lufthygiene + Wegleitung 1997; **autoarme Nutzungen** mit
  Mobilitätskonzept (PPV Zürich Art. 8 Abs. 5-8, Grundbuch-Anmerkung); **Realerfüllung vor Ersatzabgabe**
  (§§ 244-247, Parkplatzfonds § 247). **Kap. 13 vollständig.**
- ~~**Bestandesschutz-Rest § 357 Abs. 5 / § 358 / § 307 (Kap. 20):**~~ → **erledigt 2026-07-10** (Run 25):
  [[20-ausnahmen-teil2-milderung-missstaende-brandstatt]]. Kernaussagen: § 357 Abs. 5 Milderung wegen
  **§ 253a PBG** (Aussendämmung 35 cm) bedeutungslos; **§ 358** baupolizeiliche Missstände (Zufahrt/
  Absturzsicherung/Steinschlag-Aussiedlung); **§ 307 Brandstattrecht** (Wiederaufbau innert **3 J.**).
  **Kap. 20 vollständig.**
- ~~**Ausserhalb-Bauzone-Rest Art. 37a/24d/24e RPG (Kap. 21):**~~ → **erledigt 2026-07-10** (Run 25):
  [[21-ausserhalb-bauzonen-teil2-art37a-24d-24e-wald]]. Kernaussagen: Art. 37a (Gewerbe, Stichtag 1.1.1980,
  +30 % zonenwidrige Fläche); Art. 24d Abs. 1 «Wohnen bleibt Wohnen»; Art. 24d Abs. 2 Rustico (ZH kaum
  nutzbar, § 207 Abs. 2 PBG); Art. 24e Hobby-Tierhaltung; ZH ohne kant. Erweiterung (§ 358a PBG). **Kap. 21
  vollständig.**
- **needs-verification — Wegleitungs-Tabelle 1 (Parkplatz-Kennzahlen je Nutzung):** im Destillat nur
  referiert, Zahlenwerk nicht erfasst — bei konkretem Parkplatz-Mandat am kommunalen Erlass/PPV verifizieren.
- **needs-verification — Rampenneigungen SN 640 291a (15/18 % bzw. 12/15 %):** aus dem Reader-Fliesstext
  gelesen — vor Ausschreibung an der VSS-Norm gegenprüfen.

## Beantwortete Fragen / Korrekturen (Archiv)
- **2026-06-11 (Gegenprobe, Modell D):** [[abstaende-und-hoehen]] nannte für den
  **Waldabstand** fälschlich **§ 268 PBG** und «§ 18b Waldgesetz» sowie eine Reduktion
  «bis 10 m nur durch Gestaltungsplan». Richtig für Kt. ZH: **§ 262 PBG** (§ 268 PBG
  betrifft Anschlussgleise), Regelabstand 30 m, reduzierbar **bis 15 m** über die
  Waldabstandslinie (§ 66 Abs. 2 PBG); zusätzlich forstpolizeilicher Mindestabstand
  Art. 17 WaG (VGr: < 10 m i.d.R. zu gering). Beleg: Buch Bd 2 S. 999 f., 1004 f. Korrigiert.
  Gleichzeitig die alte needs-verification «Waldabstand-Ausnahmen 20 m / 10 m» damit erledigt.
- **2026-06-09 (Gegenprobe, Modell D):** [[nutzungsziffern]] nannte für die
  **Freiflächenziffer** fälschlich § 259 PBG — § 259 regelt die *massgebliche
  Grundstücksfläche*; die Freiflächenziffer ist **§ 257 PBG** (Buch Bd 2 S. 920/949).
  Ebenso behauptete der Artikel, die **Geschossflächenziffer (GFZ)** werde «in neueren
  Planungen anstelle der AZ verwendet» — falsch für ZH: die **IVHB-GFZ steht im Kanton
  Zürich NICHT zur Verfügung** (Buch Bd 2 S. 988). Beides korrigiert.
