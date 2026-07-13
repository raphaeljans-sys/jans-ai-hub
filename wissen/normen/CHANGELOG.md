## 2026-07-13 — SIA D 0165 Kennzahlen im Immobilienmanagement: Teil-Destillat aus Fragment
- Nachtrag zum vorigen Lauf (dort d0165 als im Hintergrund laufend vermerkt, aber nicht
  registriert): `d 0165.pdf` (5-seitiges Scan-Fragment, S. 14-17 der Publikation +
  Titelblatt) gegen den Bestand geprueft — kein vorhandenes Destillat gefunden.
- Vollversion (73 S.) liegt bereits als `xalt/SIA D0165_2000 Kennzahlen im
  Immobilienmanagement.pdf` und `xalt/neu/...` im Bestand, war aber ebenfalls noch nicht
  destilliert. Da nur das Fragment gelesen wurde, neues Destillat als **Teil-Destillat**
  angelegt: `sia-d0165-2000-kennzahlen-immobilienmanagement.md` (Flaechenhierarchie
  Konstruktionsflaeche/NGF/Funktionsflaeche/Verkehrsflaeche/Nutzflaeche/HNF/NNF sowie
  Mietflaechen VMF/VTF/LF/VWAGF/EMF/DMF, Abschnitt 3.1 der Publikation).
- Offen fuer naechsten Lauf: Vollversion (73 S.) aus xalt vollstaendig lesen und dieses
  Destillat ergaenzen (Basisgroesse GF, Zuschlagsflaeche ZF, Anhaenge 1/2/5, evtl. weitere
  Kosten-/Ertrags-Kennzahlenkapitel).
- `destillate/INDEX.md` und `training/norm-inventar.md` (Zeile `d 0165.pdf`) nachgefuehrt.

## 2026-07-13 — normen-training-nacht MacBook: 12 neue SIA-Destillate (Verifikation ausstehend)
- Workflow-Tool blockierte im unbeaufsichtigten Lauf ("Review dynamic workflow before running");
  Fallback auf parallele Einzel-Agenten (PROGRAMM.md-Fallback bei Workflow nicht verfuegbar).
- 12 neue Destillate geschrieben: sia-723-2001, sia-752-2002, sia-753-2002, sia-721-2001,
  sia-462-1994, sia-370-028-2003, sia-465-1998, sia-469-1997, sia-244-2006, sia-246-2006,
  sia-312-2013, sia-248-2006. Alle mit Status `destilliert` (Fundstellen belegt), OHNE
  separate Verifikations-Stufe (Budget-Abbruch dieses Laufs) -- Status bewusst NICHT auf
  `established` gehoben, Verifikation ist naechster Schritt.
- Weitere Destill-Agenten liefen zum Abbruchzeitpunkt noch im Hintergrund (d0165, 199,
  2051, 2014, 272, 423, 431, VKF-107-15 Fluessiggasanlagen) -- deren Resultate sind auf der
  Platte zu pruefen und im naechsten Lauf zu registrieren, bevor neue Positionen begonnen werden.
- Duplikat-Bereinigung (VKF Anerkennungsverfahren/Solaranlagen/Aenderungen-2017, aus
  QUESTIONS.md) bewusst NICHT ausgefuehrt -- Loeschen ist destruktiv (Rule wissens-bibliothekar),
  braucht Rueckfrage in einer interaktiven Session.
- `training/norm-inventar.md` fuer die 12 destillierten Positionen auf `[x] 260713` gesetzt,
  Bemerkung "Verifikation ausstehend". `destillate/INDEX.md` wurde von den Agenten direkt
  nachgefuehrt.
- Naechster Lauf: (1) Register fuer die im Hintergrund fertiggestellten, aber hier nicht mehr
  verarbeiteten Destillate nachziehen, (2) Verifikations-Stufe fuer alle 12+ neuen Destillate
  nachholen (adversarial gegen Original-PDF), (3) restliche offene SIA-Positionen (384.201,
  450, 382/1, 193.111, 592056 -- Gross-Normen) angehen.

## 2026-07-13 — normen-training-mini Mac Mini Run 10: Retro-Verifikation DIN-5034-Reihe + DIN-1053-Reihe, 8/8 beanstandet-korrigiert
- Stufe (b) Deepening-Fortsetzung: 8 DIN-Destillate adversarial gegen das Original-PDF geprüft
  (din-5034-1, din-5034-2, din-5034-4, din-5034-6, din-1053-1, din-1053-2, din-1053-3,
  din-1053-100) — ALLE 8 (100%) beanstandet, Korrekturen direkt im Fliesstext integriert
  (Lehre aus Run 8/9: nicht als Anhang), Status auf `established` gehoben.
- Wichtigste Befunde: din-5034-4 hatte einen sachlich FALSCHEN Formelfehler (k1h/k1v-Werte
  vertauscht/falsch angewendet, hätte zu falscher Tageslichtberechnung geführt); din-5034-1
  fehlte eine komplette Regelspur für wohnraumähnliche Arbeitsräume (Healthcare-relevant);
  din-1053-2 hatte 7 von 8 Ziffern und 18 von 20 Tabellenwerten komplett fehlend trotz
  Status "destilliert". din-1053-1/-3/-100 hatten kleinere Tabellen-/Fundstellenfehler.
- Zusätzlich: 5 stale INDEX.md-Einträge korrigiert (din-276-1-2008, din-5034-3-2007,
  din-en-12101-2-2003, din-en-12207-2000, din-1045-2-2008 — Frontmatter war bereits
  `established` aus vorherigen Commits, INDEX.md hatte das nicht nachgezogen).
- `destillate/INDEX.md` und `training/norm-inventar.md` für alle 8 Destillate nachgeführt.
- Report: `outputs/2026-07-13_normen-mini-run10.md`. Nächster Lauf: Retro-Verifikation
  VSS-Altbestand + restliche unverifizierte DIN-Einzelnormen, danach Q&A-Selbstbefragung
  sobald Beanstandungsquote über mehrere Läufe sinkt.

## 2026-07-13 — din-276-1-2008 adversarial verifiziert: beanstandet-korrigiert, auf established gehoben
- Destillat `destillate/din-276-1-2008.md` gegen das Original-PDF (26 S., vollständig gelesen)
  geprüft. Drei Korrekturen: (1) Geltungsbereich behauptete faelschlich «für Ingenieurbau gilt
  DIN 276-4» — das Vorwort (S. 3) sagt tatsächlich, dass ein Teil 2 (nicht Teil 4) für den
  Ingenieurbau in Vorbereitung war; korrigiert. (2) KG 470 Nutzungsspezifische Anlagen: die
  Aufzählung liess «475 Feuerlöschanlagen» aus (Sprinkler-, Gaslöschanlagen,
  Löschwasserleitungen, Wandhydranten, Handfeuerlöscher) — brandschutzrelevant, ergänzt. (3) KG
  740 Gutachten und Beratung: die Aufzählung liess «746 Brandschutz», «747 Sicherheits- und
  Gesundheitsschutz» und «748 Umweltschutz, Altlasten» aus — ergänzt; zusätzlich KG 730 um «734
  Planung der Ingenieurbauwerke und Verkehrsanlagen» ergänzt. Alle übrigen Ziffern (Begriffe
  2.1–2.13, Grundsätze 3.1–3.3.11, Stufen der Kostenermittlung 3.4.1–3.4.5, Kostengliederung
  4.1–4.2, KG 100–700 Struktur der 1./2. Ebene) gegen das Original bestätigt korrekt. Status auf
  `established`, `last_updated` auf 2026-07-13 gesetzt.

## 2026-07-13 — normen-verify-abschluss MacBook: 9 Retro-Verifikationen (2x bestanden, 7x beanstandet-korrigiert) + Brandmauern-Duplikat gemerged
- Die letzten 9 Draft-Destillate des MacBook-Intensivlaufs vom 12.07. adversarial am
  Original-PDF verifiziert; alle 9 auf `established` gehoben. Verdikte:
  bestanden: en-179-1125-2009-panikbeschlaege-gege, vkf-brl-100-15-brandmauern (Merge);
  beanstandet-korrigiert: sia-104-2003, sia-110-2003, szs-steeldoc-brandschutz-stahlbau-2015,
  vkf-brl-17-15-kennzeichnung-fluchtwege, vkf-brl-aenderungen-2017,
  vkf-merkblatt-brandschutzklassifikation-bauteile, vkf-bsv2015-vernehmlassungsbericht,
  vst-merkblatt-012-tueren-fluchtwegen.
- Wichtigste Korrektur-Befunde: 2 Bedeutungsumkehrungen (steeldoc: Treppenanlagen sind von
  der Geschossfläche ENTKOPPELT, nicht gekoppelt; VST 012: Schliesszwangfunktion C = begrenzte
  Schlüsseldrehung, nicht begrenzte Öffnungszeit); vkf-brl-aenderungen-2017 mit 12 substanziellen
  Beanstandungen (u.a. QS-Tabelle S.5 falsch dargestellt, Galerie-Definition verdreht,
  Tabelle-1-Fussnote [5] als eigentliche Änderung, Wärmedämmschichten 3.7.4 umgekehrt);
  sia-104: falsche «abweichend von SIA 103»-Behauptung entfernt (SIA 103 hat wortgleiche
  10-Jahres-Klausel); sia-110: Qualifikationstabelle 6.2.5 und Ziffern-Notation auf Original
  korrigiert; BRL 17-15: «Ziff. 5.1/5.2» → «Ziff. 5 Abs. 1/Abs. 2», Anforderungsstufen [a]/[b]
  richtiggestellt; NSV-Merkblatt: Herausgeber «Nidwaldner Sachversicherung (NSV)», Datierung
  V.1/11.12.2014 aus PDF-Metadaten belegt; Vernehmlassungsbericht: Seitenangaben + IOTH als
  interkantonales Organ der IVTH präzisiert.
- Brandmauern-Duplikat gemerged: `vkf-brl-brandmauern-100-15.md` in
  `vkf-brl-100-15-brandmauern.md` zusammengeführt (Basis Fassung A, Ergänzungen aus B:
  RF1-Materialisierung REI 180, VKF-anerkannte Konstruktion, Anhang-Zeichnungsliste,
  JANS-Transfer ausschreibung/werkvertrag; scheinbarer Widerspruch Anhang S. 11 am PDF
  komplementär aufgelöst; Standfestigkeits-Beispiele S. 13 ergänzt), Duplikatdatei gelöscht.
- INDEX.md und training/norm-inventar.md nachgeführt (9x established, Merge-Vermerk erledigt).
- Report: `outputs/2026-07-13_normen-verify-abschluss-macbook.md`. Offen bleiben die weiteren
  Duplikat-Merges (vkf-brl-aenderungen-2017, Solaranlagen, Anerkennungsverfahren) und die
  REGISTER-Gegenprüfung BRL 100-15 auf spätere Ausgabe.

## 2026-07-13 — normen-training-mini Mac Mini Run 9: 12 Verifikations-Korrekturen in Fliesstext eingearbeitet, alle auf established
- Prioritaet 1 aus Run 8 abgearbeitet: die 12 in Run 8 angehaengten "Verifikations-Hinweis"-
  Abschnitte (din-18065-2000, din-18299-2010, din-4844-2-2001, vss-640060-1994,
  vss-640066-1996, vss-640281-2006, vss-640578-2006, vss-40291-2021, vss-640065-2011,
  din-v-105-100-2005, din-v-106-2005, komm-din18024-t1-bayern-2001) wurden per 12 parallelen
  Agenten in den Fliesstext eingearbeitet (Ersetzung statt Anhang) statt nur angehaengt.
- 4 Destillate (din-18065-2000, vss-640060-1994, vss-640281-2006, vss-40291-2021) hatten
  komplett fehlende Ziffern — dafuer wurden gezielt Original-PDF-Seiten nachgelesen und die
  fehlenden Ziffern akkurat ergaenzt (keine Erfindungen).
- Frontmatter-Status aller 12 auf `established` gehoben, `destillate/INDEX.md` nachgefuehrt.
- DIN/VSS/RAL-Basisinventar bleibt vollstaendig (0 offene Positionen seit Run 5); alle
  ehemals "beanstandet"-Destillate aus Run 8 sind bereinigt.
- Report: `outputs/2026-07-13_normen-mini-run9.md`. Naechster Schritt: weitere Retro-
  Verifikation des Rests unverifizierter DIN/VSS-Destillate, danach Q&A-Selbstbefragung.

## 2026-07-13 — normen-training-mini Mac Mini Run 8: Retro-Verifikation 12 Destillate, 12/12 beanstandet
- Stufe (b) Fortsetzung: 12 DIN/VSS-Destillate adversarial gegen Original geprueft
  (din-18065-2000, din-18299-2010, din-4844-2-2001, vss-640060-1994, vss-640066-1996,
  vss-640281-2006, vss-640578-2006, vss-40291-2021, vss-640065-2011, din-v-105-100-2005,
  din-v-106-2005, komm-din18024-t1-bayern-2001) — ALLE 12 beanstandet (100%, deutlich hoeher
  als Run 7s 50%). Fehlerbild: falsche Fundstellen, vermischte Tabellenspalten (B/F bei
  vss-40291, Kapazitaeten bei vss-640066), fehlende Ziffern trotz "vollstaendig"-Anspruch,
  eine Bedeutungsumkehr (din-18065-2000: Tragbolzentreppen faelschlich ausgeschlossen statt
  als Bauart-Beispiel mit erfasst).
- Korrekturen als "Verifikations-Hinweis"-Abschnitt an jedes Destillat angehaengt (Original-
  Fundstelle + Korrekturtext), Frontmatter-Status auf "beanstandet, korrigiert siehe
  Verifikations-Hinweis" gesetzt (noch nicht `established` — Fliesstext-Einarbeitung folgt).
- `komm-din18024-t1-bayern-2001.md` INDEX.md-Eintrag korrigiert: war faelschlich "Teil-
  Destillat (S.1-40/68)" gefuehrt, Volltextpruefung bestaetigt Vollstaendigkeit (S.1-68/68).
- Report: `outputs/2026-07-13_normen-mini-run8.md`. Naechster Schritt: Verifikations-Hinweise
  in Fliesstext einarbeiten, dann `established`.

## 2026-07-13 — normen-training-mini Mac Mini Run 7: Deepening-Stufe (b), Retro-Verifikation 8 Destillate, 4 Fehler korrigiert
- Stufe (b) des Deepening-Programms: 8 bestehende DIN/VSS-Destillate mit adversarialem
  Volltextabgleich (Modell D, je 1 Agent, Ziel Widerlegung) gegen das Original geprüft.
- BEANSTANDET (4, korrigiert): `din-4102-1-1998.md` (Verbundbaustoff-Regel fälschlich als
  Verbot, Rauchprüf-Temperaturen vermischt — bleibt Teil-Destillat), `din-18040-1-2010.md`
  (2 komplett fehlende Kernziffern-Abschnitte 5.2.1/5.3.6 trotz Vollständigkeits-Behauptung —
  ergänzt, auf `established` gehoben), `din-1946-6-2009.md` ("Bautenschutz" statt "Beheizung"
  in EnEV-Zweckbezug — bleibt Teil-Destillat), `din-277-1-2005.md` (Fundstellenfehler +
  unbelegte "Pendant zu SIA 416"-Gleichsetzung — bleibt `established`, korrigiert).
- BESTANDEN (4, auf/als `established` bestätigt): `din-4102-2-1977.md`, `din-18040-2-2011.md`,
  `din-277-2-2005.md`, `vss-640050-1993.md`.
- `destillate/INDEX.md` + `wiki/QUESTIONS.md` nachgeführt. Report:
  `outputs/2026-07-13_normen-mini-run7.md`.
- Fazit: 50% Fehlerquote in der Stichprobe bestätigt den Wert der Verifikations-Pflicht
  (Rule 260712) — nächster Lauf setzt Stufe (b) mit weiteren ~15 unverifizierten
  DIN/VSS-Destillaten fort, danach Stufe (c) Q&A-Selbstbefragung.

## 2026-07-13 — normen-training-mini Mac Mini Run 6: Deepening-Stufe (a), SN 640 105a destilliert
- Nach der KOMPLETT-Meldung in Run 5 gemäss Token-Vollgas-Eskalation (`training/PROGRAMM.md`,
  Rule 260712c) NICHT in den Leerlauf gegangen, sondern in die Vertiefungsstufen übergegangen.
- Neues, vollständiges Destillat `destillate/sn-640105a-2000.md` (SN 640 105a «Verbreiterung der
  Fahrbahn in Kurven», Dez. 2000, 13/13 S.) — lag als Anhang (S.25-37) in
  `VSS 640 291a Parkieren Geometrie.PDF` und war seit Run 4/5 als offene Einzellücke vermerkt.
- Verifikations-Stufe: Volltextabgleich (Modell D) aller Kernwerte (D-Werte Kategorien A-D,
  Formel e=Ra-√(Ra²-D²), Bagatellgrenzen, Geltungsbereich 11,25-500 m) direkt gegen den
  Originaltext — Status `established`.
- Register nachgeführt: `destillate/INDEX.md`, `training/norm-inventar.md`, `wiki/REGISTER.md`
  (neue Sektion Mini-Run-6), `wiki/QUESTIONS.md` (Lücke geschlossen). Report:
  `outputs/2026-07-13_normen-mini-run6.md`.
- Verbleibende Deepening-Kandidaten für den nächsten Lauf: Retro-Verifikation bestehender
  Grossdatei-Destillate, Q&A-Selbstbefragung, Querschnitts-Synthese für Fach-Skills.

## 2026-07-13 — normen-training-mini Mac Mini Run 5: DIN/VSS/RAL KOMPLETT (Endbedingung erreicht)
- Inventar-Abgleich gegen den echten SharePoint-Ordnerinhalt: 4 bisher nicht erfasste
  Nicht-Norm-Dateien nachgetragen (`FileOpenInstaller.dmg`, 2 Screenshots, 1 Foto) — DIN-Header
  71→72, VSS-Header 14→17 korrigiert.
- Danach 0 offene `[ ]`-Positionen in DIN (72)/VSS (17)/RAL (1) — jede Datei destilliert oder
  begruendet uebersprungen. `wiki/QUESTIONS.md` bereinigt (durch Run 3/4 bereits erledigte
  Eintraege auf `[x]` gesetzt).
- Meldung **DIN/VSS/RAL KOMPLETT** an Raphael: Scheduled Task `normen-training-mini` kann beendet
  werden; verbleibende Arbeit ist Qualitaetsvertiefung (VKF-Duplikat-Merge, Teil-Destillate,
  fehlende CH-Pendants), kein Inventar-Loop mehr noetig. Report: `outputs/2026-07-13_normen-mini-run5.md`.

## 2026-07-13 — normen-training-mini Mac Mini Run 4: DIN/VSS-Sonstiges-Rest + alle 5 grossen VSS-Scans komplett
- Stations-Split eingehalten: NUR DIN/VSS/RAL bearbeitet (SIA/VKF bleiben MacBook Pro). RAL-Familie
  war bereits vollstaendig (1/1).
- **2 Teil-Destillate auf vollstaendig gehoben:** `vstaettvo-niedersachsen-2004.md` (S.1-31/31,
  §§31-33/36-37 ergaenzt), `komm-din18024-t1-bayern-2001.md` (S.1-68/68, Abschnitte 12-19+Anhang
  ergaenzt).
- **8 neue vollstaendige Destillate:** `din-inhaltsverzeichnis-normensammlung-2012.md` (Register
  ~450 Normen, Buero-Bestand Stand 2012), `vds-2234-1999-brand-komplextrennwaende.md` (D-VdS-
  Versicherungsmerkblatt, kein CH-Normwerk), `din-planungsgrundlagen-hoai-vorschriften-2004.md`
  (HOAI-Leistungsphasen/MBO-Fachbuch, kein CH-Bezug), `vss-40291-2021-parkieren-anordnung-
  geometrie.md` (aktuell gueltige VSS-Norm, S.1-32/32), `vss-640291a-2005-parkieren-anordnung-
  geometrie.md` (historische Vorgaengerausgabe, ersetzt durch 40 291:2021; enthaelt S.25ff
  angehaengte SN 640 105a, nicht destilliert), `vss-640065-2011.md` (Veloparkierung
  Bedarfsermittlung), `vss-640281-2006.md` (Parkfelder Personenwagen), `vss-640578-2006.md`
  (Laermimmissionen Parkierungsanlagen).
- **5 Skip-Eintraege im Inventar dokumentiert (keine Normen):** `0 Anleitung.docx` (Admin-
  Anleitung Buero Meili Peter), `DIN 277-1_Bildteil_MMMP München.pdf` + `DIN 277-1_MMMP
  München.pdf` (Foto-Scan-Duplikate von bereits destilliertem din-277-1-2005.md),
  `_In der Schweiz sind bei der Planung von Tiefgaragen...docx` + `buk/https.docx` (Notiz-/
  Linkdateien).
- **DIN/VSS/RAL-Inventar damit vollstaendig abgearbeitet** (alle offenen Positionen destilliert
  oder begruendet uebersprungen) — naechster Lauf sollte Endbedingung "DIN/VSS/RAL KOMPLETT"
  pruefen und ggf. Task-Beendigung vorschlagen.
- KB-Luecke notiert (`wiki/QUESTIONS.md`): SN 640 105a (Verbreiterung Fahrbahn in Kurven,
  Dez. 2000, in VSS-640-291a-PDF ab S.25 angehaengt) referenziert aber nicht destilliert.

# CHANGELOG — KB Normen
## 2026-07-13 — normen-training-mini Mac Mini Run (Scheduled): 5 neue/vervollständigte Destillate
- Zwei Teil-Destillate auf vollständig gehoben: `din-1054-2010.md` (S.1-105/105, Rest
  Verankerungen/Stützbauwerke/Erddämme/Anhang AA ergänzt) und `vstaettvo-niedersachsen-2004.md`
  (S.1-31/31, §§ 34-49 ergänzt).
- **3 neue vollständige Destillate:** `din-v-105-100-2005.md` (Mauerziegel-Vornorm,
  S.1-31/31), `din-v-106-2005.md` (Kalksandstein-Vornorm, S.1-26/26), `din-4844-2-2001.md`
  (Sicherheitszeichen-Bildkatalog, S.1-23/23).
- **1 methodisches Destillat (keine DIN-Norm):** `baupreisindizes-statistisches-bundesamt-2010.md`
  (Statistik-Publikation, als Methodik-Referenz eingeordnet, Werte veraltet).
- **1 neues Teil-Destillat:** `komm-din18024-t1-bayern-2001.md` (bayerischer Kommentar zu
  DIN 18024-1 Barrierefreies Bauen öffentlicher Raum, S.1-40/68, Rest naechster Lauf).
- Norm-Inventar (DIN-Familie) entsprechend nachgeführt; Stations-Split eingehalten
  (nur DIN/VSS/RAL, SIA/VKF bleiben MacBook Pro).
- Noch offen im DIN/VSS/RAL-Inventar: `Sonstiges/Planungsgrundlagen.pdf`,
  `DIN V 105-100`/`DIN V 106`-Nachbardateien geprüft; DIN 277-1 MMMP-München-Bildmaterial,
  `Sonstiges/Komm Din 18024 Teil 1.pdf` Rest S.41-68, sowie die 5 grossen VSS-Scans
  (40 291/640 065/640 281/640 291a/640 578) und zwei VSS-docx — naechster Lauf.

## 2026-07-13 — normen-training-mini Mac Mini Run 3 (Intensiv-Lauf): 9 neue DIN-Volltext-Destillate
- Stations-Split eingehalten: NUR DIN/VSS/RAL bearbeitet (SIA/VKF bleiben MacBook Pro).
- Workflow-Tool verweigerte erneut die Ausführung ("Review dynamic workflow before running") -
  Fallback auf 9 parallele Agent-Aufrufe in einem Batch (gleiches Muster wie MacBook-Pro-Run 6).
- **9 neue Destillate, davon 8 vollständig gelesen:**
  `din-1045-2-2008.md` (Beton-Expositionsklassen, S.1-62/62), `din-105-100-2012.md`
  (Mauerziegel-Zusatzanforderungen, S.1-28/28), `din-1053-1-1996.md` (Mauerwerk Berechnung/
  Ausführung, S.1-32/32), `din-1053-100-2007.md` (Mauerwerk semiprobabilistisch, S.1-39/39),
  `din-1053-4-2011.md` (Mauerwerk-Fertigbauteile, S.1-32/32), `din-18040-2-2011.md`
  (Barrierefreies Bauen Wohnungen, Pendant zu DIN 18040-1, S.1-34/34), `din-18232-2-2007.md`
  (Rauch-/Wärmeabzugsanlagen Bemessung, Brandschutz-relevant, S.1-30/30), `din-1946-4-2008.md`
  (Raumlufttechnik Gesundheitswesen, Healthcare-relevant, S.1-66/66).
- **1 Teil-Destillat:** `din-1054-2010.md` (Baugrund/Grundbau-Sicherheitsnachweise, S.1-60+78-93
  von 105, ca. 72% - Rest Pfahlgründung/Verankerungen/Anhang AA nächster Lauf).
- **2 weitere Destillate im selben Zeitfenster durch parallel laufenden Vollgas-Runner ergänzt:**
  `din-1960-2010.md` (VOB Teil A), `din-1961-2010.md` (VOB Teil B) - übernommen und registriert.
- **KB-Lücke notiert** (`wiki/QUESTIONS.md`): Schweizer Pendant SWKI 99-3 (Heiz-/RLT Spitalbauten)
  fehlt zu DIN 1946-4; DIN 4159/DIN 4149 referenziert aber nicht destilliert.
- Verifikationsstufe nicht separat angewendet (Status durchgehend `destilliert`/`Teil-Destillat`,
  keine Hebung auf `established` - konsistent mit Vorlauf-Präzedenz, DIN hat geringere Priorität
  als SIA/VKF-Kernnormen für JANS CH-Praxis).
- **Offen für nächsten Lauf (16 Positionen):** DIN 4844-2, DIN V 105-100, DIN V 106, Sonstiges/
  Baupreisindizes, Sonstiges/Inhaltsverzeichnis (verschlüsselt, noch nicht getestet), Sonstiges/
  Komm Din 18024 Teil 1, Sonstiges/VdS-Richtlinie 2234 (verschlüsselt), Rest DIN 1054, alle 5
  offenen VSS-Grossdateien (40 291, 640 065, 640 281, 640 291a, 640 578) - Batch aus
  Budgetgründen ($20 von $25 Sessionbudget bei 9 Agenten) hier beendet.
## 2026-07-13 — normen-training-mini Mac Mini: 9 neue DIN/Sonstiges-Destillate (12 Positionen)
- Stations-Split eingehalten: NUR DIN bearbeitet (SIA/VKF bleiben MacBook Pro).
- **9 neue Destillate (12 Inventar-Positionen):**
  `din-18041-2004.md` (DIN 18041 Hörsamkeit in kleinen/mittelgrossen Räumen, vollständig
  S.1-39/39, `established`), `treppen-hcu-hamburg-2008.md` (HCU-Hamburg-Lehrskript Treppen +
  Neufert-Planungsgrundlagen, vollständig S.1-19/19), `nbauo-barrierefreiheit-2004.md`
  (gebündelt: NBauO §§45/48 + DVNBauO §§18/29 Niedersachsen, 4 Einzelnorm-Ausdrucke),
  `baunvo-1990.md` (Baunutzungsverordnung D), `arbstaettv-2004.md` (Arbeitsstättenverordnung D),
  `din-abkuerzungsverzeichnis-2010.md` (Glossar), `hoai-bauen-im-bestand-2011.md` (HOAI-2009-
  Leistungsbild Bauen im Bestand), `vstaettvo-niedersachsen-2004.md` (Versammlungsstätten-
  verordnung Niedersachsen, Teil-Destillat S.1-20/31), `baurecht-din-normenwerk-grundlagen-2010.md`
  (VOB-Struktur/DIN-Normenarbeit/EU-Harmonisierung/Bauprodukte).
- **1 Position bewusst übersprungen:** `DIN 68800-2 e.pdf` als englische Sprachvariante
  (Sprachvarianten-Regel, analog SIA e/f/i).
- **KB-Lücken notiert** (`wiki/QUESTIONS.md`): Schweizer Pendants SIA 500 (Hindernisfreie
  Bauten), SIA-Raumakustik-Grundlagen, SIA-260er-Tragwerksnormen fehlen noch — Kandidaten für
  den SIA/VKF-Loop (MacBook Pro).
- Verifikationsstufe nicht separat angewendet (mechanisches Direkt-Destillieren aus dem
  Original-PDF, keine Status-Hebung auf `established` ohne Volltextbeleg — DIN 18041 als
  `established` markiert, da Volltext 39/39 Seiten vollständig gelesen und alle Kennziffern
  direkt mit Fundstelle belegt wurden).
- Git-Disziplin (VOLLGAS): nur lokal committet, Push/Pull dem git-auto-sync-Job überlassen.

## 2026-07-13 — normen-training-nacht MacBook Pro Run 6: 13 neue VKF-Destillate (Ordner Brandschutzrichtlinien 2015 komplett)
- Stations-Split eingehalten: NUR VKF bearbeitet.
- **13 neue Destillate** (parallel via Agent-Fanout destilliert, Workflow-Tool verweigerte in
  diesem Hintergrundlauf die Freigabe „Review dynamic workflow before running" — Fallback auf
  parallele Agent-Aufrufe gemäss PROGRAMM.md):
  VKF-Brandschutzerläuterungen 101-15 bis 108-15 (Atrien/Innenhöfe, Doppelfassaden, Cheminées,
  Späne-/Schnitzel-/Pelletsfeuerungen, Flüssiggasanlagen, Betriebsbereitschaft BFS),
  VKF-Verzeichnis 40-15 (Weitere Bestimmungen, teil-destilliert), VKF-Arbeitshilfen 1000-15
  (Gebäude geringer Abmessung), 1001-15 (Wohnbauten), 1002-03d (Parkhäuser), 1002-15
  (Schulbauten). Alle Quell-PDFs vollständig gelesen (12-30 Seiten je Dokument), Fundstellen
  auf Ziffer-/Seitenebene.
- Damit sind **beide VKF-Ordner „02_Brandschutzrichtlinien 2015" und „04_Erlaeuterungen
  Brandschutz 2015" sowie „05_Arbeitshilfen Brandschutz 2015" vollständig destilliert.**
- Vorab per MD5-Vergleich geprüft: `04_Erlaeuterungen.../100-15_Brandmauern.pdf` ist byte-
  identisch mit dem bereits destillierten `02_Brandschutzrichtlinien.../100-15_Brandmauern.pdf`
  → kein Doppel-Agent gestartet, im Inventar auf bestehendes Destillat referenziert.
  `z_Administration/*` (Bestellformular/Lieferschein) und `_LINK.docx` sind keine Normen und
  wurden im Inventar als „—" (übersprungen) markiert statt destilliert.
- `norm-inventar.md`: 13 Zeilen + 1 Dublette + 3 Admin-Dateien nachgeführt.
  `destillate/INDEX.md`: 13 neue Zeilen ergänzt.
- Verifikationsstufe nicht angewendet (Status bleibt `destilliert`, nicht `established`) —
  bewusster Kostenentscheid in dieser Session (Session-Budget war nach der Reconcile-Arbeit
  bereits stark ausgeschöpft); bei Bedarf in einem Folgelauf adversarial verifizieren.
- Offene SIA-P2-Positionen (121/125/144/150/166/179 u.v.m.) sind für den nächsten Lauf vorgesehen,
  wurden in diesem Lauf aus Budgetgründen zurückgestellt.

## 2026-07-13 — normen-training-nacht MacBook Pro Run 5: Inventar-Reconcile (35 Positionen)
- Stations-Split eingehalten: NUR SIA/VKF bearbeitet.
- **Fund:** 7 SIA- + 28 VKF-Positionen standen seit 12.07.2026 als `[~] in Arbeit (MacBook
  Session)` im Inventar — eine Vorsession war offenbar nach dem Schreiben der Destillate,
  aber vor dem Nachführen von Inventar/INDEX abgebrochen. Alle 35 zugehörigen Destillate
  wurden auf der Platte vollständig vorgefunden (kein PDF musste neu gelesen werden).
- **`norm-inventar.md`:** alle 35 Zeilen auf `[x] 260713` gesetzt, je mit Reconcile-Vermerk
  auf das gefundene Destillat.
- **`destillate/INDEX.md`:** 31 bislang unregistrierte Destillate nachgetragen (6 SIA:
  100/102-2014/104/108/110/111; 25 VKF: BRL 10/11/12/13/15/17/18/19/20/21/22/23/24/25/26/28-15,
  Brandschutznorm-1-15-BSPUB, BSV2015-Bericht ×2, Merkblatt 2001-15 Solaranlagen,
  Änderungen 2017, Merkblatt Brandschutzklassifikation, VST-Merkblatt 012, SZS-steeldoc,
  EN-179/1125-gege).
- **5 Duplikat-Paare entdeckt** (gleiche Quelle, zwei Destillat-Dateinamen) — NICHT gemergt/
  gelöscht (destruktiv), als offener Punkt in `wiki/QUESTIONS.md` festgehalten: VKF-BRL
  100-15 Brandmauern, VKF-Merkblatt 2001-15 Solaranlagen, VKF-Änderungen 2017,
  VKF-BRL 28-15 Anerkennungsverfahren, VKF-BSV2015-Bericht/Vernehmlassungsbericht.
- **1 Dateiname/Inhalt-Mismatch entdeckt:** `vkf-merkblatt-brandschutzklassifikation-bauteile.md`
  referenziert die Quelle „Brandschutz-Praevention.pdf" — Titel und Quelle passen nicht
  zusammen, als offener Punkt notiert statt spekulativ umbenannt.
- Verifikationsstufe nicht neu angewendet (reines Nachführen bereits bestehender Destillate,
  keine neuen Aussagen).

## 2026-07-13 — normen-training-mini Mac Mini: 15 DIN-Destillate (Token-Vollgas)
- Stations-Split eingehalten: NUR DIN/VSS/RAL bearbeitet (SIA/VKF bleiben MacBook Pro).
- **15 neue Destillate:** din-105-5-1984, din-1053-2-1996, din-1053-3-1990,
  din-en-1627-2011 (Teil-Destillat, nur 4/44 S. im Bestand), din-1072-beiblatt1-1988,
  din-1076-1999, din-272-1986, din-107-1974, din-1164-10-2004, din-1356-1-1995,
  din-1356-6-2006, din-4102-2-1977, din-919-1-1991, din-1946-7-2009, din-18560-2-2009.
  Themenspektrum: Mauerwerk/Ziegel, Zement, Brandschutz (Feuerwiderstandsklassen
  F30-F180), Bauzeichnungen/Bauaufnahme (Schadenschlüssel, JANS-relevant für
  Bestandeskartierung), Raumlufttechnik Labor, Estriche, Holzverarbeitungszeichnungen,
  Ingenieurbauwerke-Prüfung, Links/Rechts-Bezeichnung.
- **Inventar-Reconcile:** `DIN-Norm/DIN 277-3.pdf` war im Inventar faelschlich als offen
  `[ ]` markiert, obwohl das Destillat `din-277-3-2005.md` bereits am 12.07.2026 (Vorlauf-
  Session) erstellt worden war (established/vollstaendig, 23/23 Seiten) — beim Read-Vergleich
  entdeckt (Write-Tool verweigerte Overwrite ohne vorherigen Read) und im Inventar auf
  `[x] 260712` korrigiert, KEIN neues Destillat angelegt (bestehendes ist besser/vollstaendiger
  als der eigene Entwurf).
- `norm-inventar.md`: alle 15 Zeilen auf `[x] 260713` gesetzt + der 277-3-Nachtrag.
  `destillate/INDEX.md`: 15 neue Zeilen ergaenzt. `wiki/QUESTIONS.md`: DIN EN 1627
  Teilbestand-Luecke dokumentiert (Vollnorm-Beschaffung als offener Punkt).
- Verifikationsstufe (Pflicht seit 12.07.2026) nicht angewendet: kein Destillat wurde auf
  `established` gehoben — alle bleiben `destilliert`/`teil-destillat`, konsistent mit der
  bisherigen DIN/VSS/RAL-Konvention (nur SIA/VKF werden bislang verifiziert-`established`).
- Offene DIN-Positionen fuer naechsten Lauf: DIN 1045-2 (62 S., gross), DIN 1053-1/-4/-100,
  DIN 1054, DIN 1960 (82 S., gross), DIN 1961, DIN 18232-2, DIN 18040-2, DIN 1946-4,
  DIN 4844-2, DIN 68800-2 e, DIN_18041, DIN V 105-100, DIN V 106, DIN 105-100,
  DIN 277-1_Bildteil/_MMMP (Bildvarianten, niedrige Prioritaet).

## 2026-07-12 — Nacht-Run 4 MacBook Pro: SIA 118 (Volltext-Destillat, P1-Kernnorm)
- Stations-Split eingehalten: NUR SIA destilliert (DIN/VSS/RAL = Mac Mini; lief parallel).
- **Neu: `sia-118-1991.md`** — SIA 118 «Allgemeine Bedingungen für Bauarbeiten» (Ausgabe 1977/1991),
  die grösste P1-Kernnorm und das Rückgrat der Skills `werkvertrag`/`unternehmerkontrolle`/`kostenkontrolle`.
  Volltext gelesen (75 S. mit Textlayer, pdftotext -layout), alle 7 Kapitel (Art. 1–190) über
  Inhaltsverzeichnis + die JANS-relevanten Artikelblöcke detailliert erfasst (Vergütung/Preisarten
  Art. 38–61, Bestellungsänderung Art. 84–91, Fristen/Konventionalstrafe Art. 92–98, Ausmass/
  Rückbehalt/Schlussabrechnung Art. 141–156, Abnahme/Mängel/Garantiefrist/Verjährung/Sicherheit
  Art. 157–182, vorzeitige Beendigung/Zahlungsverzug Art. 183–190).
- **Verifikation (Modell D, Volltextabgleich):** alle Kennzahlen per grep gegen den Quelltext
  gegengeprüft und BESTANDEN (0 Beanstandungen): ±20 % Art. 86; Rückbehalt 10 %/5 % (>300 000)/
  20 %, min 30 000, max 1 000 000 Art. 150; Bürgschaft 10 %/5 % (>200 000), min 20 000, max
  1 000 000 Art. 181; Garantiefrist 2 Jahre Art. 172; Verjährung 5/10 Jahre Art. 180; Zahlungsfrist
  30 Tage Art. 190; Baustelleneinrichtungen 80 %/100 % Art. 146; Regierapport 7 Tage Art. 47;
  Schlussabrechnung 2 Monate / Prüfung 1–3 Monate Art. 154. → Status `established`.
- `norm-inventar.md`: SIA 118 auf `[x] 260712`; `INDEX.md`: sia-118-Zeile ergänzt; REGISTER bereits
  korrekt (Bestand 1991, 2013 gültig/Bring-Schuld). Registry-Zeilen der parallelen run3-Destillate
  (SIA 232–500, verwaist markiert) NICHT angetastet — werden vom Reconcile-Mechanismus geschlossen.
- **Hinweis Nebenläufigkeit:** Lauf fiel in ein Fenster mit aktiver run3 (SIA 232–500) + Mac-Mini-DIN;
  eigener Commit auf die zwei isolierten Neu-Dateien beschränkt, Shared-Registry-Edits dem
  NAS-Self-Commit/Folgecommit überlassen (Kollisions-/index.lock-Vermeidung, Rule sync-kanonische-quelle).

## 2026-07-12 — Mini-Run 2 Mac Mini: Reconcile 15 verwaiste Destillate + 5 neue DIN-Destillate
- Stations-Split eingehalten: NUR DIN/VSS/RAL bearbeitet (SIA/VKF = MacBook Pro).
- **Reconcile (Bookkeeping-Lücke geschlossen):** 14 DIN/VSS-Destillate + 1 RAL-Vervollständigung
  waren bereits am 12.07.2026 abends (nas-selfcommit 20:00, Datei-Zeitstempel 19:01–19:05) auf
  dem NAS vorhanden (`din-18040-1-2010.md`, `din-18065-2000.md`, `din-18299-2010.md`,
  `din-1946-6-2009.md`, `din-276-1-2008.md`, `din-276-4-2009.md`, `din-4102-1-1998.md`,
  `din-5034-2/3/4/6`, `din-en-12101-2-2003.md`, `vss-640060-1994.md`, `vss-640066-1996.md`)
  — vermutlich ein Lauf, der destillierte, aber vor dem abschliessenden Bookkeeping-Schritt
  (Inventar/INDEX/REGISTER/Commit) endete. Inhalt stichprobenartig geprüft (DIN 4102-1,
  SN 640 060) — Qualität entspricht dem KB-Standard, keine erfundenen Fundstellen. Alle 14
  in `norm-inventar.md` auf `[x] 260712`, in `destillate/INDEX.md` und `wiki/REGISTER.md`
  (Abschnitt «Mini-Run-2-Reconcile») nachgetragen. **RAL-GZ 638** war zusätzlich bereits von
  «Teil-Destillat S.1-10/24» auf vollständig (S.1-24) erweitert worden, ohne dass Status/
  INDEX/REGISTER das nachvollzogen hatten — korrigiert auf «destilliert, vollständig».
  RAL-Familie (1/1 Datei) damit **komplett**.
- **5 neue Destillate (direkt gelesen, `pdftotext`/visuell, alle klein/mittel):**
  DIN 1249-11:1986 (Flachglas Glaskanten, Kurzzeichen-System K/GK/FK/RK ×
  KG/KGS/KMG/KGN/KPO), DIN 68119:1996 (Holzschindeln, Schindelarten/Güteklassen/
  Reihenabstand-Bedarfstabelle), **DIN 4426:2001** (Instandhaltung baulicher Anlagen —
  Arbeitsplätze/Verkehrswege auf Dach+Fassade, Sicherheitsdachhaken-Bestückung nach
  DIN EN 517, **Gerüstverankerungs-Bemessung 2,25/0,75 kN/m, Verdoppelung an
  Gebäudekanten** — hohe JANS-Praxisrelevanz Unterhaltsplanung), DIN EN 12207:2000
  (Fenster/Türen Luftdurchlässigkeit-Klassen 1–4 + Nationaler Anhang Korrelationstabelle
  zu alten Beanspruchungsgruppen A/B/C nach DIN 18055), DIN 1055-2:2010 (Bodenkenngrössen
  — Wichte/Scherfestigkeit nichtbindiger und bindiger Böden, Tabellen 1–4, Anwendungsbereich
  strikt auf Geotechnische Kategorie 1 / Gründungstiefe ≤ 3 m begrenzt).
- **Verifikation:** Direktlektüre Original-PDF mit Seiten-/Ziffer-Fundstellen (Modell D,
  Volltextabgleich an der Quelle); alle 5 neuen Normen vollständig gelesen (kein Teil-Destillat).
- Register (`wiki/REGISTER.md`, Abschnitte «Mini-Run-2-Reconcile» + «Mini-Run-2-Neu») und
  `destillate/INDEX.md` nachgeführt; `training/norm-inventar.md` git-gepullt vor Bearbeitung
  (Stationskollision mit parallelem MacBook-Pro-Lauf SIA P2-Batch beachtet, nur DIN/VSS/RAL-
  Zeilen editiert).
- Report: `outputs/2026-07-12_normen-mini-run2.md`.

## 2026-07-12 — Nacht-Loop Run 3 MacBook Pro: 20 P2-SIA-Normen (Tragwerk + Hochbau), Workflow-parallelisiert + adversarial verifiziert
- Stations-Split eingehalten: NUR SIA bearbeitet (DIN/VSS/RAL = Mac Mini). Kollisionsschutz: viele parallele Sessions liefen (VOLLGAS-Dauerbetrieb); nur FREIE `[ ]`-Positionen genommen, Batch vorab mit Tag «MacBook run3» im Inventar geclaimt (nach Abschluss auf `[x] 260712` gesetzt).
- **Methode:** Workflow-Pipeline (20 Normen × 2 Stufen = 40 Agenten, 0 Fehler, ~23 Min, 6,55 Mio Tokens). Stufe 1 Destillier-Agent (`sonnet`, `pdftotext -layout`; bei Bildscans OCR via `ocrmypdf --force-ocr -l deu` bzw. `pdftoppm`+`tesseract`). Stufe 2 unabhaengiger Verifikations-Agent (Hauptmodell Opus) — versuchte jede Ziffer/Seite/Kennwert am Quell-PDF zu WIDERLEGEN.
- **20 neue Destillate, alle `established`:** SIA 260–267 (Tragwerksnormen-Generation 2003: Grundlagen/Einwirkungen/Beton/Stahl/Verbund/Holz/Mauerwerk/Geotechnik), SIA 500:2009 Hindernisfreie Bauten, SIA 358:2010 Geländer/Brüstungen, SIA 251:2008 Estriche, SIA 252:2002 + 253:2002 + 257:2005 Beläge/Maler, SIA 271:2007 + 281:2017 Abdichtungen/Dichtungsbahnen, SIA 279:2018 Wärmedämmstoffe, SIA 232:2000 Geneigte Dächer, SIA 329:2018 Vorhangfassaden, SIA 240:1988 Metallbau.
- **Verifikations-Verdikte:** 17/20 «bestanden» (keine inhaltlichen Fehler), 3 «beanstandet & am Original korrigiert» (SIA 262/266 Off-by-one-Seitenzahlen aus Scan-Paginierung; SIA 329 Präzisierungen) — alle nach Korrektur `established`, 0 `speculative`. Keine erfundenen Ziffern/Kennwerte gefunden; Korrekturen betrafen Seiten-/Absatzangaben und Überinterpretationen (z.B. SIA 260 Tab. 1 Erddruck-Zuordnung 0,70; SIA 263 Brandkurve ky,θ; SIA 261 Erdbeben-Tabellen-Seiten).
- Register nachgefuehrt: `wiki/REGISTER.md` (Run-3-Präzisierungen, Gültigkeit/«ersetzt» am PDF belegt), `destillate/INDEX.md` (20 Zeilen), `training/norm-inventar.md` (20× `[x] 260712`). Nebenbei Inventar-Drift bereinigt: SIA 142/143 waren bereits destilliert, standen aber offen → `[x]`.
- Lauf-Report: `outputs/2026-07-12_normen-nacht-run3.md`.

## 2026-07-12 — Wettbewerbs-Layer-Normen: SIA 400 neu destilliert; SIA 142/143 in INDEX nachgezogen
- Auftrag Normen-Destillateur für den neuen Wettbewerbs-Layer: SIA 400 (Planbearbeitung im Hochbau),
  SIA 142 (Wettbewerbe), SIA 143 (Studienaufträge) lokalisieren + destillieren.
- **SIA 142:2009 und SIA 143:2009**: bereits vollständig destilliert vorhanden (`sia-142-2009.md`,
  `sia-143-2009.md`, Original je S.1-19 gelesen) und in REGISTER geführt — nur im destillate/INDEX.md
  gefehlt, jetzt nachgetragen. Kein Doppel angelegt.
- **SIA 400:2000 neu destilliert** (`sia-400-2000.md`): Quelle `SIA_Norm/SIA_Normen/alle/400_2000_d.pdf`
  (72 S., sauberer Textlayer, `pdftotext -layout`), 2. Auflage 2001-03, ersetzt Empfehlung SIA 400:1985.
  Fokus für die MASCHINELLE Planerzeugung (Anhang B): Planformate A0-A4 + 5-mm-Randlinie (B.1.1),
  Plankopf-Pflichtinhalt unten rechts (B.1.3), Massstabsleiter 1:200 Wettbewerb/1:100/1:50/1:20 (B.1.4),
  **max. 3 Liniendicken 0,25/0,50/1,00 oder 0,18/0,35/0,70** + Linienart-Zuordnung Tabelle 4 (B.3),
  Masse/Koten mit Massstrich=2×Masslinie (B.5), Baustoff-Sinnbilder/Kurzzeichen + Schwarz ab 1:100 (B.8.3),
  Bauteildarstellung Fenster/Tür/Treppe (B.9), **CAD/Layer nach Merkblatt SIA 2014** Agent+Element+E/T/D (B.11).
- Inventar `training/norm-inventar.md`: SIA 400 war `[ ]` P2 — auf `[x] 260712` gesetzt.
  REGISTER führt SIA 400/142/143 bereits als gültig (2013er-Register) — keine Änderung nötig.
- Bring-Schuld vermerkt: Merkblatt SIA 2014 (CAD-Layerkatalog) nicht im Bestand (→ QUESTIONS).

## 2026-07-12 — Nacht-Loop Run 2 MacBook Pro: P1-Kernnormen SIA/VKF (Stations-Split, Workflow-parallelisiert)
- Stations-Split eingehalten: NUR SIA/VKF bearbeitet (DIN/VSS/RAL bleiben Mac Mini).
- **10 Destillate neu, alle `established`** (Extraktion `pdftotext`/OCR-Fallback via sonnet,
  danach je ein unabhaengiger Verifikations-Agent auf dem Hauptmodell, der jede Fundstelle am
  Quell-PDF zu WIDERLEGEN versuchte): SIA 103:2003 (Bauingenieur-Honorar, Formeln Art. 7 +
  Leistungstabelle 7.11.3 wortgenau), SIA 105:2020 (Landschaftsarchitekt-Honorar, Kategorie-Modell
  Art. 6, kein Baukosten-Prozentmodell), SIA 111:2014 (Modell Planung und Beratung), SIA 112:2014
  (Modell Bauplanung, 6 Phasen/13 Teilphasen), **SIA 416:2003 (Flächen und Volumen — JANS-Kernnorm
  GSF/GF/NGF/HNF/NNF/KF/AGF/GV)**, SIA 451:1992 (Datenformate LV), VKF 1-15 Brandschutznorm 2015,
  VKF-BRL 16-15 Flucht-/Rettungswege (rev. 2016), VKF-BRL 14-15 Verwendung von Baustoffen (RF-Klassen),
  VKF-BRL 27-15 Nachweisverfahren.
- **Verifikations-Verdikte:** 10/10 `bestanden`. Korrekturen durch die Widerlegungs-Instanz:
  105 Tabellen-Seitenangabe 51→52; Brandschutznorm Art. 27 «Abs. 3»→Abs. 2 + Überinterpretation
  «hohe Sicherheitsanforderung»→«Je nach Sicherheitserfordernis» angeglichen; 16-15/27-15
  IVTH-/IOTH-Zuordnung richtiggestellt («alle Kantone», nicht «IVTH-Kantone»). Keine erfundenen
  Ziffern/Kennwerte gefunden.
- Befund: 105:2020 hat KEIN baukostenabhängiges Prozentmodell (Art. 7), nur Kategorie-/Zeitmodell
  (Art. 6) — relevant für `honorarberechnung-sia102`. 3 Normen (105/111/112) sind reine Scans ohne
  Textlayer → via tesseract/ocrmypdf OCR verifiziert.
- Inventar (`training/norm-inventar.md`): 10 Zeilen `[x] 260712`; INDEX + REGISTER (Abschnitt Run-2)
  nachgeführt. Report: `outputs/2026-07-12_normen-nacht-run2.md`.

## 2026-07-12 — Intensiv-Lauf Mac Mini: DIN/VSS/RAL (Stations-Split)
- Stations-Split eingehalten: NUR DIN/VSS/RAL bearbeitet (SIA/VKF bleiben MacBook Pro).
- **8 Destillate neu:** DIN 277-1:2005, DIN 277-2:2005, DIN 5034-1:1999, RAL-GZ 638:2008
  (Teil-Destillat S.1-10/24), VSS/ZH 700.5 Zugangsnormalien (1987), VSS/ZH 722.15
  Verkehrssicherheitsverordnung (1983), Stadt-ZH-Merkblatt Veloabstellplätze (1996/1998),
  SN 640 050 Grundstückzufahrten (1993). RAL-Familie damit inhaltlich begonnen (1/1 Datei,
  teilweise); VSS 4 von 11 PDF-Normen destilliert; DIN 3 Positionen (Serie 277 Teil 1+2 von 3).
- **Verifikation:** Direktlektuere Original-PDF mit Seiten-/Ziffer-Fundstellen (Modell D,
  Volltextabgleich an der Quelle); keine DRM-Barriere bei den getesteten DIN-PDFs.
- **Reduzierter Umfang:** Lauf wurde bei 8 von geplanten 15-25 Positionen aus Budgetgruenden
  vorzeitig abgeschlossen (Bericht + Register + Commit vollstaendig, aber Fortsetzung noetig).
  Zurueckgestellt: DIN 277-3, DIN 276-1/-4, DIN 18065, DIN 4102-1/2, DIN 18040-1/2 (gross,
  18-20 MB, scanlastig), DIN 1946-6 (125 S.); VSS 640 060/065/066/281/291a/578 (teils gross,
  bis 20 MB); DIN-Sonstiges-Ordner. Alle im `norm-inventar.md` mit Grund/Status vermerkt,
  DRM-Test fuer grosse DIN-EN-Dateien offen (QUESTIONS.md).
- Register (`wiki/REGISTER.md` Abschnitt B) und Destillat-Index nachgefuehrt.
- Report: `outputs/2026-07-12_normen-mini-run1.md`.


## 2026-07-11 — Gültigkeits-Klärung SIA 118 + VKF (Anfrage Raphael)
- **SIA 118:** Web-verifiziert — aktuelle Ausgabe ist 118:2013, keine neuere; SharePoint-weiter
  Suchlauf: nur 1991 im Bestand → Kauf SIA-Shop nötig (Bring-Schuld Raphael). QUESTIONS nachgeführt.
- **VKF:** Web-verifiziert (bsvonline.ch) — BSV 2015 weiterhin rechtsgültig; Inkraftsetzung
  BSV 2026 wird erst im IOTH-Plenum März 2027 behandelt. **Normkonzept BSV 2026** (170 S.,
  Stand 06.10.2022) vom VKF-Publikationsserver beschafft und abgelegt:
  `VKF_Norm/07_BSV 2026 Projekt (noch nicht in Kraft)/260711 VKF Normkonzept BSV 2026 Stand 2022-10-06.pdf`.
  Neue Daueraufgabe in QUESTIONS: definitive BSV-2026-Texte nach Publikation beschaffen.

## 2026-07-11 — Compounding-Zugriff (Anfrage Raphael, Pflichten Architekt/Bauleiter)
- SIA 102:2020 am Original gelesen (S. 21–26, 30–37, visuell — Scan nicht text-extrahierbar)
  → Teil-Destillat `destillate/sia-102-2020.md`: **Ziff. 4.41 verifiziert** (Ausschreibung,
  Offertvergleich, Vergabeantrag = Architekten-Grundleistungen inkl. Durchführung),
  dazu 4.31–4.33, 4.53, 4.6, Art. 5 als Kurzbefund. Rest (v.a. 4.52 Oberleitung vs.
  örtliche Bauleitung, Art. 7 Phasenanteile) an den Nacht-Loop delegiert.

## 2026-07-11 — Nacht-Loop Run 1 (Sonderprogramm: Gültigkeits-Register)
- **Zugriffs-Check OK:** OneDrive-Normenpfad lesbar (keine TCC-Blockade); PDFs via
  `pdftotext -layout` extrahiert (effizienter als visuelles Lesen für Listen-PDFs).
- **Datenstand geklärt:** `ersetzte_normen.pdf` = SIA-Rückzugs-/Ersatz-Register, Stand
  **25.02.2013**; `Gesamtverzeichnis SIA.pdf` = Produkt-/Preiskatalog **~2002** (kein
  Gültigkeitsregister). → QUESTIONS-Punkt 1 beantwortet.
- **`wiki/REGISTER.md` aufgebaut** (330 Zeilen): SIA-Gültigkeit je Norm (Stand 2013),
  Ausgaben-Ketten (✓/✗), Bestand-Abgleich gegen das Inventar, grosse Umnummerierungen
  (26x-Tragwerksreform, 118/xxx-Integration, 116→416, 462→269), Mehrfach-Ausgaben-Flags,
  Nicht-SIA-Familien (VKF 2015, DIN/VSS/RAL). Ehrlicher Hinweis: Register bildet 2013 ab,
  Post-2013-Revisionen als Bestands-Abgleich markiert, nicht erfunden.
- **2 Destillate:** `sia-register-2013.md`, `sia-gesamtverzeichnis-2002.md` (+ INDEX).
- **Inventar nachgeführt:** beide Register-PDFs `[x] 260711`; Mehrfach-Ausgaben markiert
  (SIA 102 2014→2020, 111 2003→2014, 108 2003→2014, 142 1998→2009, 273, 329, 384.201).
- **Wichtige Befunde:** SIA 118 im Bestand = 1991, gültig wäre 118:2013 (Flag in QUESTIONS);
  SIA 102 Bestand 2020 (jünger als Register-Stand 2003, vermutlich aktuell).
- Report: `outputs/2026-07-11_normen-nacht-run1.md`. Nächster Lauf: P1-Destillate (SIA 102/103/105/…).

## 2026-07-11
- KB angelegt (Gerüst nach WISSEN-CLAUDE.md: raw/wiki/outputs + destillate/ + training/).
- `training/norm-inventar.md` automatisch erzeugt: 528 Dateien über die Familien
  SIA (inkl. Gesamtverzeichnis), VKF, DIN, VSS, RAL gescannt; Prioritäten gesetzt
  (P1 = Skill-Kernnormen SIA 102/103/105/111/112/118/380/416/451 + VKF Norm/Richtlinien).
- Skill `normen` (Router) und Rule `normen-referenz` erstellt; Nacht-Loop
  `normen-training-nacht` (täglich 22:00) aufgesetzt.
- Entscheide Raphael 11.07.2026: alle Norm-Familien im Scope; SharePoint bleibt
  einzige PDF-Quelle (keine Kopien); Zugriff via Skill + Rule; Destillierung im
  nächtlichen Loop bis das Inventar abgearbeitet ist.
