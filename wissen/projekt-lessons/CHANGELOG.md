# CHANGELOG — Wissensbasis Projekt-Lessons

Jede Änderung des Bibliothekars, datiert (JJJJ-MM-TT), **neueste zuoberst**.
Im Zweifel, was geändert wurde: dieses CHANGELOG ist die Wahrheit.

## 2026-08-23 (elfte Fortsetzung) — Korpus bestätigt vollständig; letzte offene Wertdifferenz als aus diesem Korpus unauflösbar markiert

- **Getan:** Sechster Fortsetzungsauftrag in Folge («Triage des Korpus `buero-projekte`
  weiterführen», erneut mit dem veralteten Zwischenstand «807 Positionen»/Verweis auf
  `projekt-triage2`) erhalten. Vor jeder Handlung Spec, diesen CHANGELOG und den Report der
  zehnten Fortsetzung gelesen — dort ist die verbleibende offene Frage (Wertdifferenz
  Köfler-Pentagon-Vollofferte CHF 40'747.00 vs. Vertragswert CHF 18'596.90, sowie die analoge
  Alpiq-Differenz) bereits auf «weiterer Beleg im Ordner `Nerves_Binz_DatenMisc` nicht
  vorhanden» eingegrenzt.
- **[Verifikation]** Eigene Nachzählung: `buero-projekte-inventar.md` unverändert 813
  Sachzeilen (56 `[x]`, 757 `[-]`, 0 `[ ]`/`[t]`). `KORPUS-QUEUE.md` führt den Korpus
  weiterhin als **erledigt** (23.08.2026). Laufende `claude`-Prozesse geprüft: der Prozess mit
  demselben Auftragstext wie diese Session ist der eigene Lauf (kein Konkurrent), zwei weitere
  bearbeiten andere KBs (`normen`).
- **[Klärung, kein neuer Artikel]** Statt einer weiteren reinen Bestandsprüfung wurde die
  einzige noch offene, potenziell auflösbare Frage bearbeitet: existiert im Korpus überhaupt
  noch unerschlossenes Material, das die Wertdifferenz klären könnte? `find
  /Volumes/daten/04_Buero/02_Projekte -iname "*Nerves*"` über den gesamten Korpus zeigt: das
  Projekt liegt ausschliesslich als flache Sammelablage `00_Allgemein/Nerves_Binz_DatenMisc/`
  vor (Pläne, Offerten, Renders) — **kein eigener Projektordner, keine
  `02_Korrespondenz`-Ablage, keine Auftragsbestätigungen**. Die Wertdifferenz ist damit nicht
  mehr «in diesem Lauf nicht gegengelesen», sondern **aus dem vorliegenden Korpus
  grundsätzlich nicht auflösbar** — der fehlende Beleg existiert im Archiv nicht. In
  [[nerves-2015-pentagon-systemwahl-streuung]] und `wiki/QUESTIONS.md` entsprechend als
  endgültig offen (nicht weiter im selben Korpus zu bearbeiten) nachgetragen.
- **[Verifikation]** Beide Edits reine Ergänzungen (`git diff --numstat`:
  `wiki/nerves-2015-pentagon-systemwahl-streuung.md` +11/−0, `wiki/QUESTIONS.md` +8/−0) — kein
  bestehender Text verändert oder gelöscht, gemäss Rule `auto-verbesserungen` 260811.
  CHANGELOG-Diff separat geprüft (reiner Anhang).
- **Kein sonstiger Destillat-/Triage-Schritt.** Der Pflicht-Zusatzauftrag
  `bevorzugte-systeme-jans.md` bleibt aus denselben, mehrfach dokumentierten Gründen offen
  (keine projektübergreifende System-Wiederholung belegt). **Hinweis für künftige
  Fortsetzungsaufträge an diesen Korpus, unverändert seit der neunten Fortsetzung:** der
  Korpus ist inventarseitig und jetzt auch bei der letzten offenen Einzelfrage abgeschlossen —
  eine weitere reine Nachzähl-Bestätigung bringt keinen Erkenntnisgewinn mehr. Echte offene
  Arbeit im Wissens-Destillat-Prozess liegt bei den Korpora `buero-referenzen` und
  `archiv-fachwissen` (Ziel-KB `wissen/architektur-fachwissen`, Spec dort jeweils noch offen).

## 2026-08-23 (zehnte Fortsetzung) — Zwei seit drei Läufen offene Fragen geklärt: Unternehmerspalte tatsächlich gegengelesen

- **Getan:** Fünfter Fortsetzungsauftrag in Folge («Triage des Korpus `buero-projekte`
  weiterführen», wieder mit dem veralteten Zwischenstand «807 Positionen») erhalten. Vor
  jeder Handlung Spec, diesen CHANGELOG und den Report der neunten Fortsetzung gelesen —
  dort steht explizit, dass eine weitere reine Bestandsprüfung ohne neues Quellmaterial
  keinen Erkenntnisgewinn mehr bringt. **Anders als die fünfte bis neunte Fortsetzung wurde
  hier kein reiner Nachzähl-Lauf gefahren**, sondern die einzige in `wiki/QUESTIONS.md`
  namentlich offene, tatsächlich auflösbare Lücke bearbeitet: drei frühere Destillat-Läufe
  (Run 2, 3, 4) hatten notiert, ein Preis-/Zuordnungswiderspruch bei den Positionen BKP
  214.1 (Pentagon, Köfler Holzbau) und BKP 232 (Elektro, Alpiq) im Projekt Nerves 2015 liesse
  sich nur klären, wenn die Unternehmerspalte von `nerves_baukosten_v2.pdf` erneut gegengelesen
  würde — das war in keinem der drei Läufe tatsächlich geschehen (jeder verwies nur auf den
  vorherigen). In diesem Lauf wurde die Quelldatei gelesen (2 Seiten, PDF).
- **[Klärung, kein neuer Artikel]** Seite 1 der Baukostenübersicht bestätigt beide Zeilen
  wörtlich: BKP 214.1 → Unternehmer «Köfler Holzbau», Vertrag CHF 18'596.90; BKP 232 →
  Unternehmer «Alpiq», Vertrag CHF 14'040.40. **Die Anbieterzuordnung in
  [[nerves-2015-kv-nebengewerke-unterschaetzt]] war damit in beiden Fällen korrekt** — keine
  Verwechslung mit Goger, Atelier Seitz oder einem anderen Unternehmer. Offen bleibt nur die
  engere, nicht mehr auf eine Zuordnungsfrage reduzierbare Frage, warum Köfler Holzbaus eigene
  Pentagon-Vollofferte (CHF 40'747.00) mehr als doppelt so hoch liegt wie der Vertragswert, und
  warum die separate Alpiq-Elektro-Offerte (CHF 31'591.65, 06.08.2015) über doppelt so hoch wie
  der Vertragswert liegt — die Baukostenübersicht selbst enthält keinen Hinweis auf Teilumfang
  oder Nachverhandlung. Nicht spekulativ aufgelöst, sondern als enger gefasste offene Frage in
  `wiki/QUESTIONS.md` und im Abschnitt «Offene Frage» von
  [[nerves-2015-pentagon-systemwahl-streuung]] nachgetragen (Status dort unverändert `emerging`).
- **[Verifikation]** Beide Edits reine Ergänzungen (`git diff --numstat`: `wiki/QUESTIONS.md`
  +21/−0, `wiki/nerves-2015-pentagon-systemwahl-streuung.md` +12/−0) — kein bestehender Text
  verändert oder gelöscht, gemäss Rule `auto-verbesserungen` 260811.
- **Kein sonstiger Destillat-/Triage-Schritt.** Der Korpus bleibt inventarseitig unverändert
  vollständig (813 Sachzeilen: 56 `[x]`, 757 `[-]`, 0 `[ ]`/`[t]`); der Pflicht-Zusatzauftrag
  `bevorzugte-systeme-jans.md` bleibt aus denselben, bereits mehrfach dokumentierten Gründen
  offen. **Hinweis unverändert gültig:** eine weitere reine Nachzähl-Bestätigung ohne neues
  Quellmaterial oder eine wie hier tatsächlich auflösbare offene Frage bringt keinen weiteren
  Erkenntnisgewinn — echte offene Arbeit im Wissens-Destillat-Prozess liegt bei den Korpora
  `buero-referenzen` und `archiv-fachwissen` (Wechsel der Korpus-Reihenfolge ist Entscheid
  Raphaels, keine eigenmächtige Umschaltung).

## 2026-08-23 (neunte Fortsetzung) — Vierte Folgeprüfung ohne Befund: Korpus abgeschlossen, keine fünfte Prüfung mehr sinnvoll

- **Getan:** Vierter unabhängiger Fortsetzungsauftrag in Folge («Triage des Korpus
  `buero-projekte` weiterführen», erneut mit dem veralteten Zwischenstand «807 Positionen»)
  erhalten. Vor jeder Handlung Spec (`skills/wissens-destillat/specs/buero-projekte-spec.md`),
  diesen CHANGELOG und `KORPUS-QUEUE.md` gelesen.
- **[Verifikation]** Eigene, von den drei Vorläufen unabhängige Nachzählung:
  `buero-projekte-inventar.md` zeigt unverändert 822 Zeilen, 56 `[x]` + 757 `[-]` = 813
  Sachzeilen, 0 `[ ]`/`[t]`. `find -newermt "2026-08-23 16:00" -type f` auf
  `/Volumes/daten/04_Buero/02_Projekte` erneut 0 Treffer. Laufende `claude`-Prozesse geprüft:
  einer trägt denselben Auftragstext wie diese Session (eigener Prozess der `-p`-Ausführung,
  kein Konkurrent), ein zweiter bearbeitet die KB `normen` (anderer Korpus, kein Konflikt).
- **[Pflicht-Zusatzauftrag]** `wissen/bauprodukte/wiki/bevorzugte-systeme-jans.md` weiterhin
  nicht angelegt — unverändert korrekt, keine neue projektübergreifende Wiederholung seit der
  fünften Fortsetzung.
- **Kein neuer Destillat-/Triage-Schritt ausgeführt.** Dies ist die vierte identische
  Folgebestätigung in Serie (fünfte bis achte Fortsetzung kamen bereits zum selben Ergebnis).
  **Hinweis für künftige Fortsetzungsaufträge an diesen Korpus:** eine weitere reine
  Bestandsprüfung ohne neues Quellmaterial bringt keinen Erkenntnisgewinn mehr (Rule
  `wissens-ruecklauf`, kein Pflicht-Rauschen) — bitte direkt hier ansetzen, nicht erneut
  nachzählen. Tatsächlich offene Arbeit im Wissens-Destillat-Prozess liegt in
  `KORPUS-QUEUE.md` bei zwei anderen Korpora mit abgeschlossenem Inventar, aber offener
  Destillat-Phase und fehlender Spec: `buero-referenzen` (12/32 Sektionen, P1 44/P2 124,
  Ziel-KB `wissen/architektur-fachwissen`) und `archiv-fachwissen` (4/23 Sektionen, P1 69/
  P2 507, gleiches Ziel-KB). Ein Wechsel der Korpus-Reihenfolge ist laut `KORPUS-QUEUE.md`
  ein Entscheid Raphaels, kein Loop-Entscheid — darum hier nur als Hinweis, nicht als
  eigenmächtige Umschaltung.

## 2026-08-23 (achte Fortsetzung) — Dritte Folgeprüfung ohne Befund: Korpus bleibt abgeschlossen, kein weiterer Lauf ausgelöst

- **Getan:** Dritter unabhängiger Fortsetzungsauftrag in Folge («Triage des Korpus
  `buero-projekte` weiterführen», wieder mit dem veralteten Zwischenstand «807 Positionen»)
  erhalten. Vor jeder Handlung Spec (`skills/wissens-destillat/specs/buero-projekte-spec.md`),
  diesen CHANGELOG und den Kurator-Bericht der fünften Fortsetzung gelesen.
- **[Verifikation]** Eigene, von den beiden Vorläufen unabhängige Nachzählung:
  `buero-projekte-inventar.md` zeigt 56 `[x]` + 757 `[-]` = 813 Sachzeilen, 0 `[ ]`/`[t]` —
  deckungsgleich mit sechster und siebter Fortsetzung. Eigener `find -newermt
  "2026-08-23 16:00" -type f` auf `/Volumes/daten/04_Buero/02_Projekte` erneut mit **0
  Treffern** — kein neues Quellmaterial seit Inventarabschluss. Laufender `claude`-Prozess
  (`ps aux`) trägt einen andersartigen Auftragstext (SIA-Sweep KB `normen`) und ist damit
  kein Parallellauf an diesem Korpus.
- **[Pflicht-Zusatzauftrag]** `wissen/bauprodukte/wiki/bevorzugte-systeme-jans.md` weiterhin
  nicht angelegt — unverändert korrekt (keine projektübergreifende Wiederholung seit der
  fünften Fortsetzung).
- **Kein neuer Destillat-/Triage-Schritt ausgeführt**, aus demselben Grund wie in der
  sechsten und siebten Fortsetzung: es gibt nichts mehr zu triagieren, eine erneute
  Volltext-Gegenprüfung der bereits zweimal verifizierten Artikel wäre reines
  Pflicht-Rauschen (Rule `wissens-ruecklauf`). **Hinweis für den nächsten Fortsetzungsauftrag
  an diesen Korpus:** dies ist die dritte Folge-Bestätigung ohne Befund in Serie; ein
  vierter identischer Lauf bringt keinen Erkenntnisgewinn mehr. Wer als Nächstes Kapazität
  für den Wissens-Destillat-Prozess hat, findet in `KORPUS-QUEUE.md` zwei Korpora mit
  abgeschlossenem Inventar, aber offener Destillat-Phase: `buero-referenzen` (12/32 Sektionen
  inventarisiert, P1 44/P2 124) und `archiv-fachwissen` (4/23 Sektionen, P1 69/P2 507) — beide
  ins Ziel-KB `wissen/architektur-fachwissen`, beide Spec noch offen.

## 2026-08-23 (siebte Fortsetzung) — Erneut geprüft: Korpus weiterhin vollständig, kein Zeilenverlust seit sechster Fortsetzung

- **Getan:** Neuer, unabhängiger Fortsetzungsauftrag («Triage des Korpus `buero-projekte`
  weiterführen») erhalten, mit dem veralteten Zwischenstand «807 Positionen» (das war die
  Zeilenzahl nach Inventar-Phase 0, vor der Triage) — vor jeder Handlung Bestand geprüft statt
  dem Auftragstext zu folgen.
- **[Verifikation]** `buero-projekte-inventar.md` erneut ausgezählt: 822 Zeilen gesamt, davon
  0 `[ ]` offen, 0 `[t]` triagiert, 757 `[-]` übersprungen, 56 `[x]` destilliert — identisch zum
  Stand der sechsten Fortsetzung. `KORPUS-QUEUE.md` führt den Korpus weiterhin als **erledigt**
  (23.08.2026). Zusätzlich geprüft, was die sechste Fortsetzung nicht explizit tat: die
  Quelle `/Volumes/daten/04_Buero/02_Projekte` selbst auf Dateien neuer als den
  Inventarabschluss durchsucht (`find -newermt "2026-08-23 16:00"`) — **0 Treffer**, also kein
  Material nach Abschluss des Inventars nachgereicht worden, das eine Neuöffnung rechtfertigen
  würde. Laufender `claude`-Prozess mit demselben Auftragstext identifiziert als der eigene
  Lauf dieser Session (kein Parallelbetrieb).
- **[Pflicht-Zusatzauftrag]** `wissen/bauprodukte/wiki/bevorzugte-systeme-jans.md` weiterhin
  nicht angelegt (Datei existiert nicht) — unverändert korrekt, da der Korpus seit der fünften
  Fortsetzung keine zusätzliche projektübergreifende System-/Unternehmer-Wiederholung
  hervorgebracht hat.
- **Kein neuer Destillat-/Triage-Schritt ausgeführt.** Dieser Eintrag ist bewusst kurz gehalten
  (Rule `wissens-ruecklauf`: kein Pflicht-Rauschen) und dokumentiert nur die erfolgte
  Gegenprüfung, damit ein künftiger Fortsetzungsauftrag zu diesem Korpus nicht ein drittes Mal
  denselben vollständigen Bestand nachzählt.

## 2026-08-23 (sechste Fortsetzung) — Fortsetzungsauftrag geprüft: Korpus bereits vollständig, kein weiterer Lauf nötig

- **Getan:** Auftrag «Triage des Korpus `buero-projekte` fortsetzen» erhalten, vor Beginn den
  Bestand gegen `skills/wissens-destillat/training/buero-projekte-inventar.md` und den
  Eintrag in `skills/wissens-destillat/KORPUS-QUEUE.md` geprüft.
- **[Befund]** Das Inventar (813 Sachzeilen, Kopfzeile ausgenommen) enthält **keine** einzige
  offene `[ ]`- oder triagierte `[t]`-Zeile mehr (`grep -n '^| \[ \]\|^| \[t\]'` ohne Treffer):
  757 `[-]` bewusst übersprungen, 56 `[x]` destilliert. Der vorangegangene Lauf vom selben
  Tag («fünfte Fortsetzung», 18:56 Uhr) hat die Kurator-Verifikation aller fünf neuen/
  aktualisierten Artikel bereits abgeschlossen und den Pflicht-Zusatzauftrag
  `bevorzugte-systeme-jans.md` erneut geprüft (weiterhin korrekt offen mangels
  projektübergreifender System-Wiederholung).
- **Kein neuer Destillat-/Triage-Schritt ausgeführt** — es gibt nichts mehr zu triagieren.
  Dieser Eintrag dokumentiert die Verifikation, damit ein künftiger Fortsetzungsauftrag zum
  selben Korpus nicht erneut denselben (bereits vollständigen) Bestand durchsucht, sondern
  direkt hier ansetzt und stattdessen den offenen Pflicht-Zusatzauftrag prüft.

## 2026-08-23 (fünfte Fortsetzung) — Kurator-Verifikation `buero-projekte` abgeschlossen, Pflicht-Zusatzauftrag weiterhin mangels Wiederholung offen

- **Getan:** Eigener Auftrag traf beim Einstieg auf einen bereits laufenden Parallellauf
  (interaktive Session `projekt-triage2`), der den Rest-Bestand (72 P2/P3-Zeilen) noch
  während dieser Session vollständig destillierte («vierte Fortsetzung» unten, drei
  parallele Lese-Agenten dieser Session liefen zeitgleich auf denselben vier Clustern). Um
  Doppelarbeit zu vermeiden: keine neuen Wiki-Artikel geschrieben, stattdessen die drei
  unabhängig gelesenen Agentenberichte als Zweitquelle für die Kurator-Stufe (Spec-Pflicht,
  «nie übersprungen») genutzt — jede nicht-triviale Aussage der fünf neuen/aktualisierten
  Artikel gegen die eigene unabhängige Lektüre geprüft.
- **[Verifikation]** Alle fünf Artikel (`nerves-2015-pentagon-systemwahl-streuung`,
  `lorraine-kueche-1318-kuehlschrank-beschaffungsrisiko`,
  `eh-europe-1527-mahnkaskade-unbezahlter-zusatzauftrag`, Update
  `nerves-2015-kv-nebengewerke-unterschaetzt`, Update
  `lorraine-kueche-maria-1318-kv-nebengewerke-abweichung`) stimmen mit der eigenen
  unabhängigen Lektüre exakt überein — **keine Korrektur nötig**. Nebenbefund: der eigene
  Agent zum Cluster `1527 EH Europe GmbH` hätte die dortige Mahnkaskaden-Lesson beinahe
  übersehen (zu grobe Zusammenfassung einer 78-seitigen Sammelmappe) — der bestehende
  Artikel liest bis zur relevanten Seite 76 und ist korrekt; Methodenhinweis für künftige
  Leseaufträge im Bericht festgehalten.
- **[Pflicht-Zusatzauftrag]** `bevorzugte-systeme-jans.md` nach vollständigem Korpus-Abschluss
  erneut geprüft: alle belegten Unternehmer/Systeme (Schneider Hämmerli, binggeli-wbm,
  Köfler, Goger, Atelier Seitz, Alpiq, Kälin, Fust, Sedus, Zemp) treten je nur in einem
  einzigen der vier Projekte auf — keine projektübergreifende Wiederholung. Bleibt darum
  bewusst offen (kein erfundenes Muster aus Einzelnennungen), bis ein weiterer Korpus oder
  mehr laufende Projekte Wiederholung belegen.
- Bericht: `wissen/projekt-lessons/outputs/2026-08-23_kurator-verifikation-buero-projekte.md`.

## 2026-08-23 (vierte Fortsetzung) — Wissens-Destillat `buero-projekte` Phase 2/P2-P3-Abschluss: drei neue Artikel, zwei Nachträge, Inventar vollständig abgearbeitet

- **Getan:** Vierter Destillat-Lauf auf den restlichen 72 `[t]`-Zeilen (46 P2 + 26 P3) des
  Korpus, verteilt auf `00_Allgemein`, `1012_Ardez`, `1318_Lorraine_Kueche`,
  `1527 EH Europe GmbH`. Vier parallele Lese-Agenten (nur lesend), sequenzielle Anwendung.
- **[neu] `wiki/nerves-2015-pentagon-systemwahl-streuung.md`** (emerging): drei Unternehmer
  offerierten für denselben freistehenden Besprechungsraum «Pentagon» drei fundamental
  unterschiedliche Konstruktionssysteme (Vollholz-Ständerbau CHF 40'747, Trockenbau
  CHF 19'235.47, Leichtbau-Vorfertigung EUR 16'987) — Faktor >2 Preisspanne. Verlinkt mit
  [[nerves-2015-kv-nebengewerke-unterschaetzt]].
- **[neu] `wiki/lorraine-kueche-1318-kuehlschrank-beschaffungsrisiko.md`** (emerging):
  Bildbemusterung wechselt binnen drei Tagen (01.→04.08.2015) von freistehendem
  SMEG-Retro-Kühlschrank zu Electrolux-Einbaumodell; dokumentierte Vorsichtsmassnahme
  (Rückgabeoption, Kartonmodell-Prüfung) verschwindet mit dem Wechsel.
- **[neu] `wiki/eh-europe-1527-mahnkaskade-unbezahlter-zusatzauftrag.md`** (emerging): ein
  gelobter Möbel-Preisvergleich (CHF 1'500.-) blieb nach Verschiebung des Hauptprojekts
  unbezahlt, drei Mahnstufen bis zur Betreibungsandrohung binnen fünfeinhalb Monaten;
  verlinkt mit [[kispi-fehlende-auftragsbestaetigung-mahnkaskade-re00087]] (gleiche
  strukturelle Ursache: fehlende schriftliche Auftragsgrundlage).
- **[update] `wiki/nerves-2015-kv-nebengewerke-unterschaetzt.md`**: Baubeschrieb, Mietvertrag
  und Schnittstellenbeschrieb (Juli 2015) belegen die Mietfläche als reinen Rohbau —
  strukturelle Teilursache für die Nebengewerke-Abweichung (vollständiger MEP-Erstausbau
  statt kleiner Mieterausbau-Anpassung).
- **[update] `wiki/lorraine-kueche-maria-1318-kv-nebengewerke-abweichung.md`**: eigener
  JANS-Werkplan vom 03.12.2015 spezifiziert für BKP 285 bereits Kalkputz statt einfachem
  Neuanstrich — erklärt die Malerarbeiten-Abweichung teilweise aus der eigenen
  Ausführungsplanung.
- **[QUESTIONS]** zwei offene Fragen ergänzt (Pentagon-Vertragszuordnung ungeklärt,
  Elektro-Offerte Alpiq widerspricht zitiertem Vertragswert) — bewusst nicht spekulativ im
  Artikel aufgelöst.
- **[Nullbefunde]** `1012_Ardez/.../beispiel/`-Ordner vollständig als fremdes
  Referenzmaterial (Baueingabeplansatz Kerez-Büro, Thalwil 2010) identifiziert, keine Lesson;
  Datenhygiene-Fund `1318_Lorraine_Kueche/.../2015-05-05_Bildbemusterung.pdf` gehört zu
  fremdem Projekt (Villa Groth München).
- **[INDEX]** drei neue Artikel registriert, Statistik auf 14 Artikel aktualisiert.
- **[Inventar]** alle 72 Zeilen auf `[x]`/`[-]` gesetzt (Unicode-NFC/NFD-Normalisierungsfehler
  beim ersten Skriptdurchlauf bemerkt und korrigiert, siehe Bericht) — **Korpus
  `buero-projekte` damit inventarseitig vollständig: 0 `[ ]` offen, 0 `[t]` offen, 757 `[-]`,
  56 `[x]` von 813 Zeilen.**
- Bericht: `wissen/projekt-lessons/outputs/2026-08-23_destillat-buero-projekte-p2p3-run4.md`.

## 2026-08-23 (dritte Fortsetzung) — Wissens-Destillat `buero-projekte` Phase 2, P2-Start: neuer Artikel Vordach-Denkmalpflege 1011, Cluster 1602 St. Karli ohne Lesson

- **Getan:** Erster Lauf auf den 91 offenen P2-Zeilen (nach Abschluss aller 62 P1-Zeilen in
  den beiden vorigen Läufen). Zwei parallele Lese-Agenten (nur lesend im Archiv, kein
  Schreibzugriff): Projekt `1011_Lorrainestr_4` (20 Zeilen: 18 P2 + 2 P3) und Projekt
  `1602_St_Karli_11` (25 Zeilen P2, Systemvergleich Metallfenster BKP 221).
- **[Neuer Artikel]** `wiki/vordach-lorrainestrasse4-1011-glasbaustein-denkmalpflege-2010.md`
  (status emerging): eigenes JANS-Mandat 2010 (nicht das Fremdmandat 2003/2004 im selben
  Gebäude), Erneuerung des Vordachs Wellplatte→Glasbaustein. Belegte Kette aus fünf Dateien:
  historische Baubewilligung des Vordachs (1963/64) vorab beschafft, Checkliste vor der
  Denkmalpflege-Besprechung (26.05.2010), quantifizierte Materialstudie mit Stückzahlen und
  Fotomontage (16./28.08.2010), Bauherren-Kostendach (CHF 30'000.- exkl. Eigenleistungen,
  03.09.2010) **danach** fixiert, eigene Fach-Empfehlung «möglichst wenige, schlichte
  Materialien» an die Miteigentümerin (20.09.2010). Ausgang (Bewilligung/Realisierung) nicht
  belegt — als Einschränkung im Artikel vermerkt. Bidirektional mit
  [[dachstock-lorrainestrasse4-1011-denkmalpflege-foerderkombination-2003]] verlinkt (`links`-Feld
  dort ergänzt, vorher `[]`).
- **[Datenhygiene-Befund, kein Artikel]** Im selben Unterordner
  (`12_Schriftverkehr/Jans_Maria/in/110413_Dachstock/Dachstocksanierung_Pläne_Oktober2003.pdf`)
  trägt eine Plandatei einen irreführenden Namen: Dateiname nennt «Oktober 2003», die
  Planstempel zeigen effektiv **24.01./29.05.1988** (Architekt W. Kulik, Nasszellen-Einbau
  4. OG) — ein drittes, eigenständiges Fremdmandat, weder mit dem neuen Vordach-Artikel noch
  mit dem bestehenden Dachstock-2003/2004-Artikel zu verwechseln. In beiden betroffenen
  Artikeln als Warnhinweis vermerkt. Ausserdem: `04_Kosten/00_Offerten/PDF/111122_Projektbeschrieb.pdf`
  im Projektordner 1011 ist ein fehlabgelegtes Fremddokument (Text über eine Kirchenfassade,
  kein Bezug zu Lorrainestrasse) — als `[-]` im Inventar vermerkt, keine weitere Aktion nötig.
- **[Cluster ohne Lesson]** `1602_St_Karli_11`: 24 von 25 Dateien sind unkommentierte
  Hersteller-Prospekte/-kataloge (Forster, Jansen, MHB, Mira Contour, Schweizer, Wicona) zu
  Metallfenstersystemen BKP 221 — ohne JANS-eigenen Vermerk, gehören allenfalls in
  `wissen/bauprodukte`, nicht hierher. Einzige Datei mit JANS-eigenem Entscheidungskontext:
  ein Fragenkatalog an Metallbauer Hirt (Systemwahl Janisol/MHB, Hochwasserschutz-Rolltor)
  — aber ohne dokumentierte Antwort. Eigene Nachprüfung (Orchestrator-Session, gezielte
  Ordnersuche, kein neuer Agent): die drei Korrespondenzordner zu den tatsächlichen
  Endanbietern (Jansen, «Wigona»/Wicona, Naef Holz-Metall) im Projekt sind angelegt, aber
  **leer** — kein Entscheiddokument im gesamten Projektordner 1602 auffindbar. Als offene
  Frage in `wiki/QUESTIONS.md` festgehalten (auch als möglicher Datenpunkt für den
  Pflicht-Zusatzauftrag `bevorzugte-systeme-jans.md`).
- **Inventar:** 45 Zeilen `[t]`→`[x]`/`[-]` (5 `[x]`, 40 `[-]`, exakt per Dateipfad-Anker
  gesetzt, kein Blanket-Replace, Rule `auto-verbesserungen` 260811). Zähler danach: 822
  Zeilen gesamt, 700 `[-]`, 72 `[t]` (46 P2, 26 P3), 41 `[x]`, 9 sonstige Kopfzeilen.
- **INDEX.md**: neuer Eintrag unter «Behörden & Bewilligungen», Statistik auf 11 Artikel.
- **Verifikation:** jede Zahl/jedes Zitat gegen den Original-Wortlaut des jeweiligen
  Agentenberichts geprüft (keine Interpolation); die 1602-Nachprüfung (leere
  Korrespondenzordner) selbst am Dateisystem verifiziert, nicht nur aus dem Agentenbericht
  übernommen. Nach jedem Schreibvorgang `git diff --numstat` geprüft: Inventar exakt 45/45
  geändert, keine Fremdänderung; die Wiki-Änderungen wurden zwischenzeitlich vom laufenden
  15-Minuten-NAS-Selfcommit (Commit `e14bc048`, gemeinsam mit unabhängiger Fremdarbeit an
  `wissen/normen` aus einer anderen Session) sauber miterfasst — Stat-Diff der Wiki-Dateien in
  diesem Commit geprüft und deckt sich exakt mit den beabsichtigten Änderungen.
- **Offen / nächster Schritt:** 46 P2-Zeilen (`00_Allgemein` 17, `1318_Lorraine_Kueche` 28,
  `1527 EH Europe GmbH` 3) sowie 26 P3-Zeilen (`1012_Ardez` 19, `00_Allgemein` 3,
  `1527 EH Europe GmbH` 2, `1011_Lorrainestr_4` bereits erledigt) — nächster Lauf.
  Pflicht-Zusatzauftrag `bevorzugte-systeme-jans.md` weiterhin nicht begonnen.
  Bericht: `outputs/2026-08-23_destillat-buero-projekte-p2-run3.md`.

## 2026-08-23 (weitere Fortsetzung) — Wissens-Destillat `buero-projekte` Phase 2, zweiter Destillat-Lauf: Update an bestehendem Artikel, zwei neue Artikel, BKP-Korrektur

- **Getan:** Die restlichen 46 (von ursprünglich 62) P1-Zeilen aus dem Cluster
  `1318_Lorraine_Kueche` sowie vier weitere P1-Zeilen aus `1011_Lorrainestr_4`,
  `1115_Kostenberechnung` und `1603_Steinhof` gelesen (zwei Subagenten, Read-Tool, nur lesend
  im Archiv). Referenzquelle für LV-Schätzwerte: `150916_Kostenanschlag_dreistellig_Kueche_Maria.pdf`.
- **[Update]** `wiki/lorraine-kueche-maria-1318-kv-nebengewerke-abweichung.md`: drei
  Ergänzungen. (1) Wandbeläge (LV CHF 1'300) vs. real (Fliesen bezahlt CHF 2'305.60 +
  Verlegung CHF 1'296.00) = **+177,0 %, Faktor ≈ 2,77** — inkl. dokumentiertem
  GBP/CHF-Verhandlungsproblem (Raphael forderte CHF, Anbieterin lieferte durchgehend GBP).
  (2) Malerarbeiten (LV CHF 560) vs. zwei vollständigen Konkurrenzofferten: OptiMaler
  CHF 5'799.03 (**+935,5 %, Faktor ≈ 10,36**), Edulu CHF 4'458.50 unvollständig ohne
  Weissputz-Position (**+696,2 %**, real höher) — die grösste Einzelabweichung im ganzen
  Cluster. (3) Metallbau (BKP 272) bleibt **ohne gültigen Vergleichswert** — die im
  gleichnamigen Ordner abgelegten Offerten (Weibel, Franke) betreffen sachlich andere
  Leistungen; die Franke-CNS-Abdeckung und die Dunstabzugshaube-Offerte gehören laut LV zu
  BKP 273 (Positionen 273.2.1/273.3.5), nicht 272 — Ordner-BKP-Diskrepanz als eigener
  Verfahrensbefund festgehalten. Zusätzlich nuanciert: auch innerhalb des insgesamt gut
  geschätzten Hauptgewerks Schreinerarbeiten weichen dessen technische Apparate-
  Unterpositionen (+54 % bis +178 %) im selben Muster ab wie eigenständige Nebengewerke.
- **[BKP-Korrektur]** Derselbe Artikel übernahm in Run 1 für Heizung/Sanitär/Elektro
  unkommentiert die **internen LV-Nummern der Kostenschätzungssoftware** (223/224/225) als
  BKP-Codes. Gegen `references/bkp-2017/BKP-2017-Liste.md` geprüft: 223 ist dort
  «Blitzschutzanlagen», 224 «Bedachungsarbeiten», 225 «Spezielle Dichtungen und Dämmungen» —
  keines passt zur beschriebenen Leistung. Korrigiert auf 242 (Heizungsanlagen), 251/254
  (Sanitäranlagen), 232 (Starkstrominstallationen — deckt sich mit der bereits korrekten
  Verwendung in [[nerves-2015-kv-nebengewerke-unterschaetzt]]). Gleiche Fehlerfamilie wie die
  dokumentierte «271.10»-Korrektur, Rule `bkp-2017-referenz`.
- **[neu]** `wiki/lorraine-kueche-1318-elektro-nachtrag-anschlusswerte-kuechenbauer.md`
  (status emerging): Elektro-Endrechnung desselben Projekts übersteigt die Ausgangsofferte um
  **+54,2 %** (CHF 4'272.55 → CHF 6'588.15), weil die Anschlusswerte des Backofens erst
  während der Ausführung beim Küchenbauer geklärt werden konnten (Rechnung nennt die Ursache
  im Wortlaut). Eigenständiger Ausführungs-/Nachtrags-Befund, kein KV-Schätzungsfehler wie
  der Hauptartikel — daher separater Artikel, verlinkt.
- **[neu]** `wiki/dachstock-lorrainestrasse4-1011-denkmalpflege-foerderkombination-2003.md`
  (status emerging): Fremdmandat (Architektin Monika Wyss, Miteigentümergemeinschaft),
  eingegangene Korrespondenz bei Maria Jans. Dachstocksanierung Lorrainestrasse 4, Bern,
  2003/2004 — protokollierte Denkmalpflege-Begehung mit bezifferten Zugeständnissen (hälftige
  Mehrkosten bei Naturschiefer, 10-12 cm Dachüberhöhungs-Toleranz, differenzierte
  Erhaltungspflicht), gleichzeitig bewilligte Förderung durch Denkmalpflege UND Minergie für
  dieselbe Massnahme, plus eigene Unterhalt-/Wertvermehrungs-Gliederung für die Mietzins-
  anpassung. Über 20 Jahre alt, Verhandlungsmuster übertragbar, Zahlen nicht.
- **[INDEX]** Neue Einträge unter Bauleitung/Ausführung und Behörden & Bewilligungen, Eintrag
  Kosten & Termine für `lorraine-kueche-maria-1318` nachgeführt, Statistik auf 10 Artikel
  (5 established, 5 emerging).
- **[QUESTIONS]** Coverage-Gap-Eintrag aktualisiert: `1318_Lorraine_Kueche` P1-seitig
  vollständig abgearbeitet, 91 P2/26 P3-Zeilen des Gesamtkorpus bleiben offen.
- **[Inventar]** `skills/wissens-destillat/training/buero-projekte-inventar.md`: 46 Zeilen von
  `[t]` auf `[x]` (18, mit Backlink) bzw. `[-]` (28, mit Begründung — Duplikate, Blanko-
  Formulare, reine Pläne/CAD-Exporte, Scope-Mismatches) gesetzt. Zeilenzahl unverändert (822),
  `git diff --numstat` nach dem Schreiben geprüft: 46/46 (Rule `auto-verbesserungen` 260811).
- Bericht: `outputs/2026-08-23_destillat-buero-projekte-lorraine-kueche-run2.md`.

## 2026-08-23 (Fortsetzung) — Wissens-Destillat `buero-projekte` Phase 2, erster Destillat-Lauf: neuer Artikel + Zweitbeleg hebt bestehenden Artikel auf `established`

- **Getan:** 16 der 62 P1-Zeilen aus dem Cluster `1318_Lorraine_Kueche` gelesen (Subagent,
  Read-Tool, nur lesend im Archiv) — die vollständige Kostenschätzungs-Kette (ORCA-Stufen
  15./16.09.2015) plus vier reale Gewerke-Offerten (Heizung/Sanitär/Elektro/Schreiner,
  01.–06.10.2015) eines privaten Küchenumbau-Mandats (Projekt 1318, Lorrainestrasse 4, Bern).
- **[neu]** `wiki/lorraine-kueche-maria-1318-kv-nebengewerke-abweichung.md` (status emerging):
  Hauptgewerk Schreinerarbeiten traf die LV-Schätzung vergleichsweise gut (+15–22 %), die
  kleinen technischen Nebengewerke Sanitär/Elektro wichen um +48–95 % ab, Heizung um Faktor
  ≈ 31,6 (weil die LV-Position dort die falsche Leistung — Repositionierung statt Neubeschaffung
  — beschrieb). Lesson: LV-Einzelpositionen kleiner Nebengewerke vor der Schätzung inhaltlich UND
  preislich verifizieren, vorliegende Vergleichsofferten einarbeiten statt eines tieferen eigenen
  Schätzwerts.
- **[korrektur/promotion]** `wiki/nerves-2015-kv-nebengewerke-unterschaetzt.md`: Status
  `emerging` → **`established`** — der neue Fall ist eine unabhängige Zweitbelegung desselben
  qualitativen Musters (grosses Hauptgewerk trifft die Schätzung, kleine technische
  Nebengewerke werden massiv unterschätzt), zwei verschiedene Projekte/Bauherrschaften, beide
  2015 (Rule 260714, nie ohne echten Zweitfall heben). **Bewusst nicht** übernommen: der zuvor
  dort genannte Zuschlags-Erfahrungswert «Faktor 2–4» — der zweite Fall streut deutlich weiter
  (Faktor 1,5–2 bei Sanitär/Elektro, Faktor ≈ 31,6 bei Heizung) und stützt keinen einzelnen
  Kennwert, nur das qualitative Muster. Update-Abschnitt im Artikel ergänzt, `links` und
  `sources` nachgeführt.
- **[INDEX]** Statistik auf 8 Artikel aktualisiert (5 established, 3 emerging), beide Zeilen
  Bauleitung/Kosten & Termine nachgeführt.
- **[QUESTIONS]** Fortschritt und offener Rest (46 weitere P1-Zeilen desselben Projekts,
  91 P2, 26 P3) vermerkt.
- **[Inventar]** `skills/wissens-destillat/training/buero-projekte-inventar.md`: die 16
  gelesenen Quellzeilen von `[t]` auf `[x]` gesetzt, Bemerkung mit Artikel-Backlink.
- Bericht: `outputs/2026-08-23_destillat-buero-projekte-lorraine-kueche-run1.md`.

## 2026-08-23 — Triage Phase 1 des Korpus `buero-projekte` vollständig abgeschlossen

- **Getan:** Alle 706 verbliebenen offenen Inventarzeilen (Sektion+Dateiname-basierte
  Klassifikation P1/P2/P3/`-`, keine Quelldateien geöffnet) trianiert. Inventar-Stand danach:
  813 Zeilen, 0 offen, 632 übersprungen, 179 für Phase 2 vorgemerkt (62 P1, 91 P2, 26 P3),
  2 bereits destilliert (Run 1, 17.08.). Report: `outputs/2026-08-23_triage-buero-projekte-phase1-vollstaendig.md`.
- **Kein neuer Wiki-Artikel** — reine Triage-Stufe, kein Destillat. Nächster Lauf: Phase 2
  auf den 62 P1-Zeilen, Schwerpunkt `1318_Lorraine_Kueche` (48/62 P1-Treffer, dichte
  Kosten-Ist/Soll- und Offertenprüfungs-Kette).
- **Zwischenfall dokumentiert, nicht hier:** ein Sync-Konflikt beim Anwenden der Triage
  (Schreibung versehentlich gegen den SSD-Klon statt NAS-Quelle) hinterliess kurzzeitig
  Git-Konfliktmarker in der Inventar-Datei — vollständig repariert, siehe
  `rules/betrieb-chronik.md` Eintrag 260823c.

## 2026-08-17 (Wissens-Chef Run 35, Cross-KB) — beide neuen Lessons sind in den Skills angekommen

- **Befund:** `grep` ueber **alle** `skills/*/SKILL.md` nach «projekt-lessons» ergab **null
  Treffer** — die Lehren dieser KB waren in keinem Skill verankert, obwohl beide neuen Artikel ihre
  Abnehmer im Frontmatter taggen.
- **Gesetzt (Pruefschritt + Herkunftsverweis):** `skills/honorarberechnung-sia102` («keine Phase
  ohne Preis ODER Preismechanismus — jede Phase vor dem Versand durchzaehlen», aus
  `lorrainestrasse-2011-realisierungsphase-honorar-unpreist`), `skills/kostenschaetzung` («nach
  Beleglage differenzieren statt pauschal bandbreiten») und `skills/kostenkontrolle` («nie nur die
  kumulierte Abweichung kommentieren»), beide aus `nerves-2015-kv-nebengewerke-unterschaetzt`.
- **Gegenkante in beiden Artikeln:** neuer Abschnitt «Wo diese Lehre gelandet ist». 9/0 bzw. 7/0.
- **Bewusst NICHT uebernommen:** der Zuschlags-Erfahrungswert **«Faktor 2 bis 4»**. Beide Lessons
  tragen `status: emerging` mit genau **einem** Beleg; ein einzelbelegter Faktor darf kein Kennwert
  in einem Skill werden. Die qualitative Regel ist uebernommen, die Zahl bleibt im Fall.
- **Registerpunkt beantwortet:** Keiner der beiden Artikel ist der seit Run 23 gesuchte **zweite
  Fall** fuer `projekt-lessons ↔ mahnwesen/bexio` — jenes Muster ist Zahlungsverzug/Mahnkaskade,
  hier geht es um Angebots- und Schaetzgenauigkeit ohne jeden Bezug zu Rechnung, Mahnstufe oder
  bexio. Der Punkt bleibt offen.
- Bericht: `wissen/koordination/outputs/2026-08-17_wissens-chef-run35.md`.

## 2026-08-17 (Kurator-Stufe, Phase 3, 07:1x-Lauf) — Beleg-Prüfung `lorrainestrasse-2011-realisierungsphase-honorar-unpreist`, Rückverweis ergänzt

- **Beleg-Prüfung:** Quelldokument `111118_Offerte_Jans_Back.docx` per `textutil -convert txt`
  vollständig gegen den Artikel zurückgeprüft — alle Zahlen (84 h × 80.-/h = 6'720.-; vier
  Phasenpreise 2'000/2'000/1'000/1'000 = 6'000.-; Terminstand je Phase; Strich statt Preis bei
  Phase 5 «Realisierung») stimmen wortgetreu mit der Quelle überein, keine unbelegte Aussage
  gefunden. BKP 291 gegen `references/bkp-2017/BKP-2017-Liste.md` verifiziert (Zeile 1064:
  «291 Architekt (Gebäude) ← STANDARD für Honorarofferten»). Referenzierte Skills
  `honorarberechnung-sia102`/`ausschreibung` existieren im Hub.
- **Widerspruchs-Prüfung:** kein Konflikt mit bestehenden Artikeln oder Nachbar-KBs
  (`normen`, `baurecht`, `grobkosten`) — Thema (unpreiste SIA-102-Phase in einer Honorarofferte)
  ist neu im KB.
- **Promotion:** `status: emerging` bestätigt, nicht gehoben — nur ein Beleg, keine
  unabhängige Zweitquelle (Rule 260714).
- **Verwebung:** Rückverweis ergänzt — `nerves-2015-kv-nebengewerke-unterschaetzt.md` trug
  `links: []`, obwohl der neue Artikel bereits darauf verlinkt; jetzt beidseitig verknüpft
  (gemeinsames Muster: Kostenpositionen, die ohne Mechanismus/Einzelofferte offen blieben,
  wurden zum Problem — einmal unpreiste Phase, einmal pauschal geschätzte Nebengewerke).
- Report: `outputs/2026-08-17_destillat-buero-projekte-run1.md`.

## 2026-08-17 (Destillat-Lauf, verbleibende [t]/P1-Positionen) — vier Positionen geprüft, eine destilliert, drei als [-] verworfen

Die fünf verbliebenen `[t]`/P1-Zeilen aus `training/buero-projekte-inventar.md` wurden gelesen
und abschliessend bearbeitet:

- **[[lorrainestrasse-2011-realisierungsphase-honorar-unpreist]]** (Quelle:
  `1011_Lorrainestr_4/04_Kosten/00_Offerten/111118_Offerte_Jans_Back.docx`, Offerte Back Lukas
  & Raphael Jans an Maria Jans & Tom Bickel, 18.11.2011) — die SIA-102-Phasenofferte bepreist
  die vier Planungsphasen bis Ausschreibung mit total 6'000.-, lässt die Realisierungsphase
  (Bauleitung, März–Mai 2012) aber mit einem blossen Strich unpreist; die parallele
  Stundenvariante für eine einzige Arbeitswoche (6'720.-) kostet dabei mehr als die vier
  bepreisten Planungsphasen zusammen. Status `emerging`.
- Drei Positionen `101103_Schnitte_Treppenhaus_50.pdf`, `101103_Schnitte_Wohnung_50.pdf`,
  `101110_Grundrissmasse_50.pdf` (alle `1011_Lorrainestr_4/02_Berichte/110104_Vermassungsgrundlage/`)
  geprüft und als `[-]` verworfen — reine Vermassungszeichnungen (Schnitte/Grundriss mit
  Kotenwerten) ohne jede Entscheid- oder Fehler-Story, exakt die in der Korpus-Spec
  `buero-projekte-spec.md` (Abschnitt Abgrenzung) explizit ausgeschlossene Kategorie „reine
  Pläne sind Arbeitsergebnisse, keine Erfahrungsträger".
- Position `12_Schriftverkehr/Jans_Maria/in/090909_DOK_Vermietung_Ladenlokal_Lorrainestr_4.pdf`
  geprüft und als `[-]` verworfen — trotz des irreführenden Inventar-Vermerks
  „Entscheidungskorrespondenz" ist es eine reine Vermietungsbroschüre (Objektbeschrieb,
  Fotos, Nutzungsvorschläge, Kontaktangabe), keine Korrespondenz mit Entscheid- oder
  Konfliktgehalt.

`training/buero-projekte-inventar.md` entsprechend nachgeführt, `wiki/INDEX.md` aktualisiert
(7 Artikel). Damit sind alle im Inventar als `[t]`+P1 markierten Zeilen abgearbeitet; offen
bleiben nur noch P2-/P3-Positionen für einen Folgelauf.

## 2026-08-17 (Mac Mini Nachtschicht 05:30) — Korpus `buero-projekte`: P1-Position destilliert, Phase-2-Rest der Triage von 02:32 offen

Der 02:30-Lauf hatte Phase 1 (Triage, Haiku) für die nächsten 40 Positionen abgeschlossen
(39 klassifiziert: P1: 1, P2: 16, P3: 3, übersprungen: 19; Protokoll
`skills/wissens-destillat/training/buero-projekte-lauf-20260817-0232.md`) und danach Phase 2
(Destillation) im Hintergrund gestartet — der Hintergrundlauf ist ohne Ergebnis stehen
geblieben (Protokolldatei seit 02:39 unverändert, keine Fertigstellungsmeldung). Dieser Lauf
hat die einzige P1-Position selbst gelesen und destilliert:

**[[nerves-2015-kv-nebengewerke-unterschaetzt]]** (Quelle: `00_Allgemein/Nerves_Binz_DatenMisc/nerves_baukosten_v2.pdf`,
Baukostenübersicht ARCHmark Hofstetter, Referenzfall Nerves Büroumbau 2015) — Holzbau- und
Küchen-Gewerk trafen die grobe KV fast exakt (+3,3 % / −0,3 %), drei technische Nebengewerke
(Elektro, Sanitär, Gipser) lagen 76 bis 322 % über der KV, während die Gesamtsumme nur moderat
(+8,8 %) driftete und die Einzelabweichungen dadurch verdeckte. Status `emerging`.
`training/buero-projekte-inventar.md` Zeile auf `[x]` gesetzt, `wiki/INDEX.md` nachgeführt
(6 Artikel).

Die 16 P2-/P3-Positionen aus derselben Triage bleiben `[t]` offen für einen Folgelauf —
Budget-Disziplin, ein Artikel pro Nachtschicht-Slot bei diesem Korpus-Anlauf.

## 2026-08-16 (Mac Mini Nachtschicht 23:30) — Korpus `buero-projekte` Inventar Phase 0 abgeschlossen

Fortsetzung des 05:31-Laufs (Spec stand, Inventar war offen). `bash
skills/wissens-destillat/tools/inventar.sh buero-projekte` über alle 21 Sektionen
(22 Projektordner minus `180716 Schilder.pln`, lose Datei ohne Verzeichnis) durchlaufen
lassen: `training/buero-projekte-sektionen.md` (21/21) und `training/buero-projekte-inventar.md`
(812 Zeilen: 807 `[ ]` offen, 5 `[-]` pauschal für Projekte mit exakt benannten
`01_Plaene`/`11_Bildablage`-Ordnern, 1 `[-]` für den Sonderfall `180716 Schilder.pln`)
neu angelegt. `korpus.conf` um die Ausschluss-Teilstrings `/01_Plaene/,/11_Bildablage/`
für `buero-projekte` ergänzt (spec-konform: diese Klassen nicht dateiweise auflisten) —
erwies sich als grösstenteils redundant zur ohnehin bestehenden Extensions-Whitelist
(`pdf,docx,doc,md,txt` filtert Bild-/CAD-Ordner unabhängig vom Namen), griff aber nur bei
4 der 21 Projekte, weil die übrigen 17 völlig andere Ordnernamen führen (`Fotos`, `CAD`,
`Skizzen`, `Plaene` ohne Präfix u.a.) — Befund und Konsequenz für Phase 1 (keine pauschale
Ordnerklassen-Triage möglich, Sektion/Datei bleibt die Einheit) in
`skills/wissens-destillat/specs/buero-projekte-spec.md` unter «Plan» nachgetragen.
`KORPUS-QUEUE.md` Standspalte aktualisiert. Nächster Schritt: Triage Phase 1 (Haiku) je
Sektion — grösste ungeprüfte Sektionen `1318_Lorraine_Kueche` (262 Dateien),
`1527_EH Europe GmbH` (229), `1012_Ardez` (82), `1011_Lorrainestr_4` (71), `00_Allgemein`
(58). Kein Destillat-Lauf (Phase 2) in diesem Zyklus — Budget-Disziplin, Phase 0 ist ein
eigener abgeschlossener Schritt.

## 2026-08-16 (Mac Mini Nachtschicht 05:31) — Korpus-Spec `buero-projekte` geschrieben, Destillat-Lauf startet als Nächstes

`skills/wissens-destillat/specs/buero-projekte-spec.md` angelegt (Skill `wissens-destillat`
verlangt: kein Destillat ohne Spec, erster Lauf schreibt sie und endet). Anlass: Korpus 1
(`bauprodukte`) wurde am 15.08.2026 als `erledigt` markiert (Inventar 214/214, 0 offen),
`buero-projekte` (Quelle `/Volumes/daten/04_Buero/02_Projekte`, 22 Projektordner, ca. 17 GB)
ist gemäss `KORPUS-QUEUE.md` nachgerückt. Ziel, Abgrenzung und Artikelschnitt direkt aus der
bereits bestehenden `CLAUDE.md` dieser KB und dem Goldstandard-Artikel
`kispi-fehlende-auftragsbestaetigung-mahnkaskade-re00087.md` abgeleitet (kein Widerspruch,
keine Neuerfindung). Abgrenzung priorisiert die vier ergiebigen Ordnerklassen je Projekt
(`12_Schriftverkehr`, `02_Berichte`, `04_Kosten`, `13_Recherche`/`15_Referenzen`) gegenüber
`01_Plaene`/`11_Bildablage` (CAD/Bild ohne Fliesstext, pauschal `[-]`); zwei Sonderfälle
vermerkt (`1115_Kostenberechnung` ist ein Einzeldokument kein Projekt, `180716 Schilder.pln`
eine lose CAD-Datei ohne erkennbaren Projektbezug). **Pflicht-Zusatzauftrag aus der Spec
übernommen:** aus diesem Korpus zusätzlich die Bürohaltung zu bevorzugten Systemen ableiten,
Ergebnis als Entwurf `wissen/bauprodukte/wiki/bevorzugte-systeme-jans.md`, Status zwingend
`emerging`, Raphael zur Bestätigung vorlegen (Entscheid Raphael 31.07.2026). Kein
Destillat-Lauf (Phasen 0-2) in diesem Zyklus — das ist gemäss SKILL.md der nächste Schritt
eines Folgelaufs; Budget bewusst nicht auf einen unvollständigen Pipeline-Start verwendet
(Nachtschicht-Budgetdisziplin).

## 2026-08-14 — Rücklauf aus 2619 KISPI PPTS: Türfachplanung, Vorabzug-Prüfmethode

Neuer Report `outputs/2026-08-14_tuerfachplanung-vorabzug-pruefmethode.md` (interaktive
Session, Rule `wissens-ruecklauf`). Vier belegte Lehren aus der Architektur-Prüfung des
TeKoSi-Vorabzugs (LOS 231.10): Tür-ID-Duplikate am PDF-Textlayer prüfen (drei Duplikate
gefunden, keines in der Bauherren-Rückmeldung); Türbuch-Vorabzug ohne Türmatrix ist nicht
freigabefähig; Grundlagenstand des Fachplaners vor Detailkorrekturen verifizieren;
ID-Systematik mit dem FM-System der Bauherrschaft abgleichen.

## 2026-08-08 — Rücklauf aus 2619 KISPI PPTS: Küchenlüftung und Nutzungseinstufung

Neuer Report `outputs/2026-08-08_kuechenlueftung-planervorbehalt-und-nutzungseinstufung.md`
(Hub-Chef-Lauf, Rule `wissens-ruecklauf`). Vier verallgemeinerbare Lehren, alle am Original belegt:
die Abluftangabe in der Geräteliste des Gastroplaners trägt einen ausdrücklichen Planervorbehalt
und ist keine Berechnung; die Nutzungseinstufung (gewerbliche Küche gegen Wohnraum-/Teeküche)
entscheidet über Volumenstrom und Kostenspanne, wird aber an der Bestückung gemessen; die
Einstufung steht meist bereits in der Baueingabe und ist dort zu holen statt neu zu behaupten;
Pflichtinhalt eines Betriebskonzepts Küchenbetrieb, dessen Engpass die beim Nutzer zu erhebenden
Betriebsdaten sind, nicht die Technik. Kein Wiki-Artikel angelegt (Promotion erst nach dem
zweiten Fall, KB-Regel).

## 2026-08-05 (Nachtschicht Mac Mini) — Truninger-DS3 als dritte Quelle geprüft: Fokus «Bauen im Betrieb» weiterhin ohne Kandidat

- Kein neuer Fall, kein neuer Wiki-Artikel. Gemäss Empfehlung vom 04.08. den Projektraum auf
  ds3.data-share.ch nach Etappierung/Baulogistik-Material durchsucht (`connectors/
  truninger-ds3.mjs`, read-only): Volltextsuche «Etappierung» liefert genau einen Treffer
  (Etappierungszonen-Planwerk, keine Story), `01.01.14 Baulogistik` und `01.01.04
  Sondersitzungen` ohne Betriebs-/Etappenthema. Nicht geöffnet aus Budgetgründen: `01.01.24
  Baujournale Bauleitung` (Nord/Süd, Jahresordner 2018-2024) — voraussichtlich der ergiebigste
  verbleibende Ort, aber zu gross für diesen geteilten Nachtschicht-Zyklus.
- Damit sind alle drei in `training/PROGRAMM.md` benannten Quellen (Projektordner, Mail, DS3)
  für die naheliegenden Pfade ohne Treffer. Empfehlung in `wiki/QUESTIONS.md` präzisiert: ein
  künftiger Lauf sollte die Baujournale als dedizierten, vollbudgetierten Einzellauf angehen
  (jahrweise, gezielt nach Nachtarbeit/Lärm/Etappenwechsel), statt weiter in die Breite zu
  suchen. Kein Versand/Publikation/Buchung. Budget dieses Blocks ca. 1.3 USD.

## 2026-08-04 (Wissens-Chef Run 25, Cross-KB) — Thalwil 2414: Zeiger ins Baurecht gesetzt

- **`wiki/sbb-naeherbaurecht-thalwil-2414-vordach.md`** — der Artikel zum laufenden Fall 2414
  Thalwil trug keinen Link ins Baurecht; die dortige Arbeitsanweisung fuer Thalwiler Eingaben
  erreichte ihn nicht. Neu: Frontmatter `links:` (war leer) und ein kurzer Abschnitt «Querbezug»
  auf `wissen/baurecht/wiki/negative-vorwirkung-und-bzo-revision.md` Ziff. 6 — der Fall laeuft in
  einer Gemeinde mit haengiger BZO-Revision.
- ⚠ **Bewusst nur ein Zeiger, kein Rechtsinhalt.** Diese KB fuehrt keine generischen Kennwerte und
  keine Rechtsaussagen; der Stand der Vorwirkung aendert sich mit Genehmigung und Inkrafttreten
  und wird deshalb ausdruecklich **nicht** hier wiedergegeben, sondern nur verlinkt. Fuehrend ist
  `baurecht`.

## 2026-08-04 (Nachtschicht Mac Mini) — Fokus-Bereich «Bauen im Betrieb»: erweiterter Nullbefund

- Kein neuer Fall. Nach dem Logbuch-Nullbefund vom 03.08. diesmal direkt den KISPI-
  Projektordner (OneDrive) und Mail durchsucht (Etappierung/Provisorium/Nachtarbeit/Laerm) —
  nur technische Dokumentation ohne Entscheid-Story gefunden (Etappierungszonen-Sprinkler-
  plaene, Bauprovisorium-Baustromprotokolle). Naeheste Sachnaehe ist der generische,
  bereits bestehende Artikel `auflagebereinigung/wiki/gvz-einreichung-bma-sprinkler.md`
  (Ausserbetriebsetzungs-Pflicht Brandmelde-/Sprinkleranlagen) — kein eigenstaendiger
  KISPI-Lesson-Kandidat, daher nicht uebernommen. Befund + Empfehlung (Truninger-DS3 als
  naechste Quelle) in `wiki/QUESTIONS.md` dokumentiert, damit kuenftige Laeufe den bereits
  durchsuchten Dateibaum nicht wiederholen.

## 2026-08-03 (Wissenscheck, Sammellauf Phase 1) — A0 · B1 · C0 · D0 · E0 · F1 · G1

- Health-Check-Report abgelegt: `outputs/2026-08-03_health-check.md`. Ein B-Befund: toter Backlink `[[[sbb-naeherbaurecht-thalwil-2414-vordach]]` (Klammer-Tippfehler) in `wiki/kispi-behoerden-zustaendigkeitswechsel-1171-26.md` — derselbe Fehlertyp wie in auflagebereinigung. Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf.

## 2026-08-03 (Nachtschicht Mac Mini, Versuchs-Slot 13:30) — RE-00087 nachgeführt: Duplikat-Flag als zweiter Blocker, offene QUESTIONS-Frage teilbeantwortet

- Priorität 3 (Fristen-Radar) und Priorität 4 (Trainings-KB) geprüft: fristen.md zeigt 58
  `offen`-Einträge, alle innert der letzten Woche aktiv bearbeitet (nichts Überfälliges/
  Vergessenes über die bestehende Cockpit-Praxis 31.07. hinaus) — kein Entwurf nötig.
  `projekt-lessons` ist die am längsten unberührte freie Trainings-KB (Wiki zuletzt 31.07.,
  vor `bauprodukte`/`grobkosten` 01.08.). Gesuchter Kandidat für den fehlenden Fokus-Bereich
  «Bauen im Betrieb» im Logbuch-Journal nicht gefunden (Nullbefund, siehe `wiki/QUESTIONS.md`
  — bleibt offen für einen Lauf mit Zugriff auf die gesperrte Projektordner-Pipeline).
- Stattdessen frisches, hochrelevantes Material zur bestehenden Lesson
  [[kispi-fehlende-auftragsbestaetigung-mahnkaskade-re00087]] entdeckt: ein Mail-Thread vom
  03.08.2026 (rj@raphaeljans.ch ↔ Michael Spörri, KISPI HLKKS) zeigt, dass RE-00087 zwischen-
  zeitlich bereits Mahnstufe 3 erreicht hatte (09.07., vom bisherigen KB-Stand nicht erfasst)
  und dass der Direktkontakt zu einem benannten technischen Ansprechpartner zwei der drei
  offenen Rechnungen (RE-00098/99) binnen einer Stunde löste. RE-00087 selbst zeigt einen
  neuen, konkreteren Blocker: KISPIs Buchhaltungsprogramm führt sie als Duplikat einer
  Rechnung «BC304304495»; Auflösung steht aus (Cornelia Schäfer). Raphael hat parallel eine
  Zahlungsnachforschung über die UBS eröffnet.
- Neues Destillat `raw/260803-kispi-re00087-zahlungsnachforschung.md` (Stufe A, 4 belegte
  Aussagen, Spannung zur bestehenden Auftragsbestätigungs-These offen benannt statt
  aufgelöst). Bestehender Artikel um Abschnitt «Update 03.08.2026» ergänzt (status bleibt
  `emerging` — neue Ursache ist noch nicht verifiziert), `sources` im Frontmatter ergänzt.
  `wiki/QUESTIONS.md` nachgeführt: alte Frage teilbeantwortet, neue offene Frage (Duplikat
  BC304304495 real oder Fehleintrag?) gesetzt — bexio-Gegenprüfung auf dieser Station mangels
  `~/.bexio.env` nicht möglich.
- Quelle bewusst der Live-Mail-Thread (verifizierbare Primärquelle über `mdfind`/OneDrive),
  nicht die gesperrte KISPI-Projektordner-Pipeline (`training/PROGRAMM.md`, Abschnitt
  «Freigabe» — weiterhin unangetastet). OneDrive-Pfade mit `–`-Sonderzeichen über Symlink
  `/tmp/onedrive-jans` gelesen (Rule `osascript-apple-apps.md`); `.eml`-Dateien liessen sich
  wegen Unicode-Normalisierung (NFC/NFD) nur über `os.listdir`-Glob öffnen, nicht über
  getippte Pfade — für künftige Läufe gegen dieselbe OneDrive-Struktur relevant.
  Kein Versand/Publikation/Buchung. Zyklus ~3.9 von 5 USD, via `nas-commit-now.sh` committet.

## 2026-08-01 (Wissenscheck, Sammellauf Phase 1) — A0 · B1 · C0 · D1 · E0 · F11 · G0

- Health-Check-Report abgelegt: `outputs/2026-08-01_health-check.md`. Dreifach-Klammer-Tippfehler in `kispi-behoerden-zustaendigkeitswechsel-1171-26. Phase 2 (Aktionen) nicht ausgefuehrt — unbeaufsichtigter Lauf.

## 2026-07-31 (Wissens-Chef Run 22, Cross-KB) — Erst-Verlinkung zu bauprodukte: der KISPI-Fall loest eine blockierte Frage

- **[erst-pruefung] Das Paar `bauprodukte ↔ projekt-lessons` stand seit Run 21 mit der Notiz
  «Abgrenzung ungeklaert» auf der Rotationsliste. Die Notiz war falsch:** die Abgrenzung ist
  dreifach gesetzt (zwei Matrix-Zeilen plus `bauprodukte/CLAUDE.md`). Beide gemeldeten
  Doppelspur-Befunde wurden in der Verifikation **widerlegt** — diese KB fuehrt kein unzulaessiges
  generisches Produktwissen; der KISPI-Fall ist eine belegte Einzelfall-Beweiskette, und genau das
  ist ihre Rolle.
- **[querverlinkung] Der echte Mangel war teurer als die vermutete Doppelspur.** Auf Artikelebene
  existierte in **keiner Richtung** eine Verbindung zu `bauprodukte`. Das ist deshalb bitter, weil
  jene KB ihren Artikel zu Trockenbau/Bekleidungen (QUESTIONS Punkt 9) **mangels Quellmaterial
  blockiert** hat — die Korpus-Ordner `214 Montagebau in Holz` und `271 Gipserarbeiten` enthalten
  null Dateien —, waehrend `kispi-lbw-rohdichte-800.md` den einzigen belegten Praxisfall des Hubs
  zu genau diesem Gegenstand fuehrt. Die blockierte KB und ihre Loesung standen unverbunden
  nebeneinander.
- **Gesetzt:** neuer Abschnitt «Abnehmer in anderen KBs» in `wiki/kispi-lbw-rohdichte-800.md` mit
  der Rollenabgrenzung (Einzelfall hier · Norm-Kennwerte `normen` · generisches Produkt-/Systemwissen
  `bauprodukte`); Gegenrichtung als Teil-Antwort in `bauprodukte/wiki/QUESTIONS.md` Punkt 9. Das
  Frontmatter-Feld `links` blieb **unveraendert** — es zeigt nach Schema auf Artikel, nicht auf
  QUESTIONS-Listen; der Eintrag folgt, sobald der `bauprodukte`-Artikel existiert.

## 2026-07-31 (Nachtschicht-Zyklus Mac Mini) — Fuenfter Lesson-Artikel: fehlende Auftragsbestaetigung als verdeckte Mahnkaskaden-Ursache (KISPI RE-00087)
- Neues Destillat `raw/260731-kispi-fehlende-auftragsbestaetigung-mahnkaskade.md` (Stufe A,
  5 belegte Aussagen aus `logbuch/LOGBUCH.md` + `logbuch/fristen.md`, Zeitraum 16.06.-31.07.2026).
  Quelle bewusst das bereits verifizierte Logbuch-Journal, NICHT die KISPI-Projektordner-Pipeline
  (die haengt weiterhin auf Freigabe Raphael, siehe `training/PROGRAMM.md` Abschnitt «Freigabe»).
- Neuer Artikel [[kispi-fehlende-auftragsbestaetigung-mahnkaskade-re00087]] (Fokus-Bereich
  Kosten & Termine, bisher leer, damit 4 von 5 Fokus-Bereichen belegt): RE-00087 (KISPI,
  CHF 15'000, faellig 16.04.) stand ueber drei Monate auf Mahnstufe 2, ohne dass der
  Mahnwesen-Automatismus je die Ursache diagnostizierte (nur Tage-Zaehler + Whitelist-Grenze
  A1); erst Raphaels eigene gebuendelte Mail am 21.07. benannte die fehlende
  Auftragsbestaetigung als Kern. Zwei unabhaengige Nebenbelege im selben Mandat (Gruner AG:
  kein Vertrag mit JANS; TeKoSi: Auftragsbestaetigung Tuerfachplanung offen) stuetzen
  `status: emerging`. Lesson: bei Verzug ueber eine Mahnstufe hinaus die Auftragsgrundlage
  aktiv pruefen statt nur Tage zu zaehlen — als Ampel-Zusatzfeld im Fristen-Register, keine
  neue autonome Aktion.
- Stufe C (Gegenpruefung, selbst durchgefuehrt): alle 5 Zitate gegen `LOGBUCH.md`/`fristen.md`
  wortgetreu verifiziert (Zeilen 1226, 1491, 1833, 1949/1835/1684/1674/1535, 2871; fristen.md:14+26)
  — keine Widerlegung, keine Korrektur noetig.
- `wiki/INDEX.md` (4→5 Artikel, Statistik-Datum), `wiki/QUESTIONS.md` (Bootstrap-Fortschritt
  5/5, offene Nachpruef-Frage: wurde die Auftragsbestaetigung inzwischen nachgereicht),
  `training/PROGRAMM.md` (Tracker-Zeile Lauf 2) nachgefuehrt. Kein Fan-out, kein Versand,
  kein Eingriff in die gesperrte KISPI-Projektordner-Pipeline. Budget ca. 2.4 von 5 USD.

## 2026-07-29 (Nachlauf Run 20, Freigabe Raphael) — Titel und H1 geschaerft
- **[Entscheid C1]** `kispi-behoerden-zustaendigkeitswechsel-1171-26`: Titel neu «KISPI 1171/26:
  Zustaendigkeiten bei Behoerden aendern sich **ohne proaktive Mitteilung** — am zuletzt bekannten
  Kontakt festhalten kostet Zeit» (vorher «unangekuendigt»), H1 neu «… wechselt mitten im Verfahren,
  **und man erfaehrt es nur auf Nachfrage**». Grund: «unangekuendigt» ist fuer die Ursachenebene
  richtig, fuer die AfB aber verkuerzt — dort kam auf Nachfrage doch eine Amtsmitteilung. Der Titel
  ist zugleich der Ort, den ein Folgelauf zuerst liest.
- **Dateiname/Slug unveraendert**, damit die Verweise aus `sbb-naeherbaurecht-thalwil-2414-vordach`
  und aus `auflagebereinigung/wiki/aemter-stadt-zuerich.md` nicht brechen.


## 2026-07-29 (Wissens-Chef Run 20, Cross-KB) — Chronologie des neuen Lesson-Artikels korrigiert, Anschluss an die fuehrenden KBs gesetzt
- **[korrektur, materiell, mit belegter Gegenquelle] `kispi-behoerden-zustaendigkeitswechsel-1171-26`
  schrieb, der AfB-Wechsel sei erst am 27.07. sichtbar geworden und «nicht durch eine Mitteilung des
  Amts».** Belegt ist das Gegenteil aus dem **twin-Korpus**: am **24.07.** adressierte RJ «Guten Tag
  Herr Furrer (AfB)», eingefuehrt als neue Ansprechperson fuer Team 5 durch Hottinger (AfB) selbst
  (`twin/wiki/beziehungsregister.md:386-395`). Datum und Halbsatz korrigiert, zweite Quelle in die
  Frontmatter-`sources` aufgenommen.
- **[nicht entschaerft, bewusst]** Die verallgemeinernde Zeile «Beides geschieht ohne proaktive
  Mitteilung — man erfaehrt es erst reaktiv» bleibt **unangetastet**. Der Verifikations-Agent hat
  belegt, dass sie auch fuer die AfB korrekt ist: die Information kam nur, weil RJ bei der inzwischen
  falschen Stelle die Kontaktstellenliste nachfragte. Das ist die tragende Lesson und haette durch
  eine Entschaerfung Schaden genommen.
- **[verlinkung, materiell] Die neuen Amts-/Kontaktfakten hatten die fuehrende KB
  `auflagebereinigung` nicht erreicht** — dort ist die Kontaktstellen-Luecke seit dem **04.06.** offen
  ausgewiesen, und beide betroffenen Adressaten (AfB, UGZ) stehen ohne Kenntnis des Wechsels.
  Bidirektional verlinkt, mit der Praezisierung, dass die Namen dort nur als **datierter, gebiets-/
  fallbezogener Stand** erscheinen — sonst tauscht die KB eine veraltete Personenangabe gegen die
  naechste. Ausdruecklich **nicht** geschrieben, A. Hottinger sei «nicht mehr zustaendig»: der Wechsel
  ist gebietsbezogen, und die Rule `anrede-kontakte` fuehrt sie weiter als Kreisarchitektin AfB.
- **[begriffsanschluss] Fristbegriff harmonisiert, nicht ersetzt:** «vor Baufreigabe» ist nicht falsch,
  nur unnormiert — normseitig eine auf den **Baubeginn** gestellte Nebenbestimmung nach **§ 326 lit. a
  PBG**, wobei die schriftliche Baufreigabe diesen Zustand bestaetigt. Ein blosses Ersetzen haette die
  operative Tatsache geloescht, dass das AfB real eine Baufreigabe verlangt. **Derselbe Anschluss im
  Schwester-Artikel `sbb-naeherbaurecht-thalwil-2414-vordach` nachgezogen**, damit die KB im
  Fristbegriff nicht in sich auseinanderlaeuft. § 318 PBG wurde ausdruecklich **nicht** als
  Rechtsgrundlage der Gebiets-/Teamzuteilung ausgegeben — er regelt, welches Organ Baubehoerde ist.
- **[widerlegt]** Zwei weitere Vorwuerfe hielten der Gegenpruefung nicht stand: ein
  UGZ-Zeitstempel-Widerspruch und die Behauptung, die generische Prozessregel entstehe hier statt im
  fuehrenden Prozess-Artikel.
- Geaendert: `wiki/kispi-behoerden-zustaendigkeitswechsel-1171-26.md`,
  `wiki/sbb-naeherbaurecht-thalwil-2414-vordach.md`.


## 2026-07-29 (interaktive Session, nach zwei gescheiterten Remote-Dispatch-Versuchen) — Ingest-Programm Lauf 1: Wurzelpfad verifiziert, erstes Destillat
- **Wurzelpfad 2619 KISPI korrigiert:** der in `training/PROGRAMM.md` genannte NAS-Kandidat
  `/Volumes/daten/04_Buero/02_Projekte/2619_KINDERSPITAL/` existiert nicht (dort liegt ein
  anderes, älteres Archiv, Projektnummern 10xx–16xx). Tatsächlicher Wurzelpfad ist SharePoint/
  OneDrive: `.../OneDrive-FreigegebeneBibliotheken–JANS/AR - 01 Projekte/2619_KINDERSPITAL/`
  (Ebene «Projekt» gemäss Rule `projekt-ablage-stand`, nicht NAS). Im PROGRAMM nachgetragen.
- **`training/quellen-inventar.md` neu angelegt** (36 Zeilen): Sichtung von
  `02_Korrespondenz` (Schwerpunkt Gruners GT Planer/Brandschutzexperte Ziegel, Behörden),
  eines LOS aus `03_BKP` (Röthlisberger), Ausschnitten aus `09_Dokumente` sowie der
  Truninger-DS3-Sammlungsstruktur (Tiefe 1, Login ohne Rückfrage möglich). Zwei Zeilen als
  `[-]` markiert (bereits verarbeitetes bzw. nicht einschlägiges Material), der Rest offen für
  Folgeläufe. Mail (rj@/kispi@) in diesem Lauf nicht gesichtet — offen vermerkt.
- **Erstes Destillat (Stufe A):** `raw/260729-kispi-rueckweisung-installationsplan-lueftung.md`
  — QS-Brandschutzexperte weist den Lüftungs-Installationsplan des HLK-Fachplaners zurück
  (beide Gruner AG, unterschiedliche Teams), mit wörtlichen Zitaten aus Mailthread und der
  Stellungnahme Brandschutz vom 23.07.2026 (S. 9). `raw/_INGESTED.md` nachgeführt.
- **Bewusst NICHT ausgeführt:** Stufe B (Kompilat) und Stufe C (adversarische Verifikation) —
  Lauf 1 endet regelkonform nach dem einen Destillat, das Raphael von Hand gegen das Original
  liest (Rule `wissens-bibliothekar`, PROGRAMM.md Abschnitt «Freigabe»). Tracker in
  `training/PROGRAMM.md` (Zeile Lauf 1) nachgeführt, inkl. Hinweis auf die zwei gescheiterten
  Remote-Dispatch-Vorversuche.

## 2026-07-29 (Nachtschicht-Zyklus Mac Mini, 13:30-Versuchsslot) — Vierter Lesson-Artikel: Behörden-Zuständigkeitswechsel KISPI 1171/26
- Neuer Artikel [[kispi-behoerden-zustaendigkeitswechsel-1171-26]] (Fokus-Bereich
  Koordination & Kommunikation, bisher leer): UGZ-Zuständigkeit lag wegen der Grösse der
  Einrichtung nicht bei R. Zuercher, sondern bei Hr. Hansen/Stellvertreter Shyam Zala;
  AFB-Kreisarchitektur wechselte von A. Hottinger zu L. Furrer (Team 5, Gebiet Weinegg) —
  beide Wechsel wurden erst reaktiv sichtbar, nicht durch Mitteilung des Amts. Quelle:
  Logbuch-Journal 24./25./27.07.2026 (`logbuch/fristen.md`). INDEX.md (Statistik 3→4
  Artikel) und QUESTIONS.md (Bootstrap-Fortschritt, verbleibender Kandidat «Kosten &
  Termine»: fehlende Auftragsbestätigung KISPI↔JANS als Ursache der RE-00087-Mahnkaskade)
  nachgeführt. Kein Raw-Material nötig — direkt aus dem bereits verifizierten
  Logbuch-Journal kompiliert.

## 2026-07-28 — Wissens-Chef Run 19 (Cross-KB): BKP-Feld praezisiert, Haupt-Vorwurf WIDERLEGT
- **[korrektur] `wiki/roethlisberger-geraetepreis-pruefung-273-35.md`, Frontmatter `bkp`.** Das Feld
  trug «273.35» — einen Code, den die **BKP-2017-Liste nicht kennt** (dort existiert nur 273.3
  «Allgemeine Schreinerarbeiten»). Kuechen-/Gastroeinrichtungen sind **BKP 258 Kuecheneinrichtungen**;
  «273.35» ist die **projektinterne Los-Nummer** KISPI. Feld entsprechend praezisiert (Rule
  `bkp-2017-referenz`). Titel und Fliesstext bleiben unveraendert — dort ist «Los 273.35» korrekt.
- **[WIDERLEGT, mit deutlichem Abstand]** Der Vorwurf, `sbb-naeherbaurecht-thalwil-2414-vordach.md`
  erhebe den Einzelfall zur ausnahmslosen Regel und uebergehe die von `baurecht` gefuehrte
  Unterscheidung projektbezogenes/generelles Naeherbaurecht, kippt an vier unabhaengigen Gruenden:
  die Lesson erhebt **gar keine Rechtsbehauptung**, sie dokumentiert einen belegten Projektverlauf
  (03.-20.07.2026), und die zitierte Gegenstelle sagt das Behauptete nicht. **Der Vorschlag haette
  Schaden angerichtet:** er wollte ein «Vorsprungsprivileg § 260 Abs. 3 PBG» in die Lesson schreiben,
  das im geltenden Hauptteil des PBG einen anderen Gegenstand hat. Artikel bleibt unveraendert.
- Die beim Gegenlesen gefundenen zwei echten Maengel liegen in `baurecht`, nicht hier — dort gemeldet.
- Bericht: `koordination/outputs/2026-07-28_wissens-chef-run19.md`.

Format: `- [aktion] Beschreibung (Artikel/Datei)`

## 2026-07-28 — Bootstrap fortgesetzt: zwei neue Lesson-Artikel (Nachtschicht Mac Mini)
- **[neu] `wiki/roethlisberger-geraetepreis-pruefung-273-35.md`** (status established).
  KISPI Los 273.35 Therapieküche: Geräte-Nachtrag verdoppelt die Offertsumme
  (36'461 → 82'378 CHF exkl. MwSt); Lesson: Mehrumfang und Preisaufschlag pro Gerät
  getrennt gegen echte Marktpreise (mindestens zwei Quellen) prüfen, nie den ganzen
  Sprung pauschal als Mehrumfang akzeptieren. Quelle: Konversations-Destillat 260718
  (Abschnitt Roethlisberger Therapieküche) + Logbuch-Journal 09./17./21.07.2026.
- **[neu] `wiki/sbb-naeherbaurecht-thalwil-2414-vordach.md`** (status established).
  Projekt 2414 Thalwil: ein 12.76 m² Vordach im SBB-Näherbaurechtsperimeter löst eine
  eigene, erweiternde Vereinbarung mit der SBB aus, die zur JANS-Bringschuld in der
  Auflagebereinigung wird; Lesson: bei jeder Projektänderung im Näherbaurechtsperimeter
  frühzeitig aktiv die SBB-Vereinbarung erweitern lassen. Quelle: Logbuch-Journal
  03./09./10./20.07.2026 (Abschnitte Thalwil 2414 Näherbaurecht).
- **[INDEX]** Beide Artikel unter «Bauleitung / Ausführung» bzw. «Behörden & Bewilligungen»
  registriert; Statistik auf 3 Artikel aktualisiert.
- **[QUESTIONS]** Bootstrap-Pendenz als teilweise erledigt vermerkt (3 von 3-5
  Ziel-Faellen); «Kosten & Termine» und «Koordination & Kommunikation» bleiben leere
  Fokus-Bereiche, naechster Kandidat offen.
- Damit sind die beiden im Logbuch (Eintraege 22.07./25.07.) namentlich vorgeschlagenen
  Bootstrap-Kandidaten (Roethlisberger-Preischeck Los 273.35, SBB-Naeherbaurecht Thalwil
  2414) abgearbeitet — keine Doppelarbeit mit anderen Loops (dieser Lauf ist der erste
  echte Bootstrap-Beitrag, vorherige Health-Checks haben die Pendenz nur wiederholt).

## 2026-07-26 — Wissens-Chef Run 16 (Cross-KB, ERST-PRUEFUNG dieser KB)
- **[korrektur] KB-eigene Schreibregel war im einzigen Artikel nicht umgesetzt.** `CLAUDE.md` verlangt, jede Lesson mit Gewerk/BKP, SIA-Phase und den betroffenen Skills zu taggen — genau der Mechanismus, ueber den Erkenntnisse in die Skills zurueckfliessen. `wiki/kispi-lbw-rohdichte-800.md` fuehrte `links: []`, keine SIA-Phase, keinen Skill-Tag; der Health-Check vom 25.07. hat das Frontmatter dennoch als «korrekt» abgenommen. → Frontmatter nachgezogen (Gewerk BRA/ARC, BKP 271.10/271.13, SIA-Phase 5, Skills brandschutz/unternehmerkontrolle/ausschreibung, links auf beide Cross-KB-Ziele).
- **[verlinkung, Erst-Verlinkung] Lesson und `auflagebereinigung` dokumentierten denselben Vorgang, ohne voneinander zu wissen** — die Auflage **II.19** «Detailplaene brandschutzrel. Innenwaende (Material/Aufbau)» am selben Projekt 2619 KISPI. → bidirektional verlinkt mit Rollentrennung: `auflagebereinigung` fuehrt Auflagen-Ziffer/Amt/Frist, `projekt-lessons` die Beweiskette der Material-Substanz.
- **[kennzeichnung] Generische VKF-/Produktwerte im Fazit** (Typ-A-GKB 776 kg/m3 / VKF 18151, Duraline Vario 1'003 / VKF 22636) stehen identisch im fuehrenden `wissen/normen/wiki/en-520-gipsplattentypen.md`. Nicht geloescht (sie tragen die Fallargumentation), aber als **abgeleitet** gekennzeichnet, damit eine spaetere Korrektur in `normen` nicht an dieser Lesson vorbeilaeuft.
- **[matrix]** Neue Zeile im Koordinations-Register: `projekt-lessons` fuehrt die **Beweiskette des Einzelfalls**, nie generische Kennwerte oder Normfundstellen.
- **[offen]** Pruefung F des Health-Checks um die Tagging-Regel erweitern (`links: []` bei belegten Cross-KB-Bezuegen ist kein korrektes Frontmatter) — Aenderung am Pruefprogramm, gehoert nicht in einen Cross-Lauf.
- Bericht: `wissen/koordination/outputs/2026-07-26_wissens-chef-run16.md`.

## 2026-07-25
- [health-check] Wissens-Health-Check Phase 1 (Nachtschicht Mac Mini): A0·B0·C0·D0·E0·F1·G1
  — erster Inhalt seit Anlage (kispi-lbw-rohdichte-800, established), sauber belegt.
  Funde: State-Files (INDEX-Statistik, QUESTIONS-Kopfzeile) waren seit dem Artikel-Neuzugang
  veraltet, hier nachgefuehrt; Artikelstruktur weicht als "Verifikation" statt "Fehlerfall"
  leicht vom CLAUDE.md-Schema ab (Beobachtung, kein Fix bei n=1). Bootstrap-Pendenz aus
  logbuch/fristen.md bleibt offen. Report: outputs/2026-07-25_health-check.md
- [fix] `wiki/INDEX.md` Statistik-Fusszeile nachgefuehrt (1 Artikel statt 0, Stand 25.07.).
- [fix] `wiki/QUESTIONS.md` Kopfzeile "Offene Wissenslücken" nachgefuehrt (nicht mehr
  "frisch angelegt, kein Material"), Schema-Frage aus Health-Check ergaenzt.

## 2026-07-23
- [neu] Erster Lesson-Artikel `kispi-lbw-rohdichte-800` angelegt (Herkunftsklärung der
  Ziegel-Vorgabe Rohdichte 800 kg/m³, Beweiskette über Truninger-DS3: Bestands-LV 271.13
  Typ DFIR → EN 520 Typ D → Materialdeklaration Duraline/Habito) und im INDEX unter
  Bauleitung/Ausführung registriert. Report: outputs/2026-07-23_kispi-rohdichte-800-herkunft.md.
  Norm-Grundlage als Schwester-Artikel in wissen/normen (en-520-gipsplattentypen).

## 2026-07-22
- [health-check] Wissens-Health-Check Phase 1 (Nachtschicht Mac Mini): A0·B0·C0·D0·E0·F0·G0 — Delta-Null seit 01.07., KB weiterhin leer (0 Artikel, raw/ leer). Neu: konkrete Bootstrap-Quellenhinweise (Logbuch-Faelle KISPI Los 273.35 Roethlisberger, SBB-Naeherbaurecht Thalwil 2414) als Pendenz in logbuch/fristen.md gemeldet, da Befund zweimal folgenlos blieb. Report: outputs/2026-07-22_health-check.md

## 2026-07-01
- [health-check] Wissens-Health-Check Phase 1: A0·B0·C0·D0·E0·F0·G0 — KB weiterhin leer (0 Artikel), kerngesund, Handlungsbedarf nur Befüllung (Material in raw/). Report: outputs/2026-07-01_health-check.md

## 2026-06-02
- [setup] KB Projekt-Lessons angelegt (raw/ wiki/ outputs/, CLAUDE.md, State-Files). Noch leer — bereit zur Befüllung.
