---
quelle: "https://services2.vkf.ch/rest/public/georg/bs/publikation/documents/BSPUB-1394520214-3746.pdf/content (VKF/VKG-Publikationsplattform, öffentlich zugänglich; nicht im Hausbestand PL-03)"
herausgeber: "VKF/AEAI/AICAA (Vereinigung Kantonaler Feuerversicherungen)"
ausgabe: "VKF-Brandschutzmerkblatt 2006-15de, gültig ab 01.03.2022 (genehmigt Technische Kommission Brandschutz VKF 08.12.2021)"
ersetzt: "keine frühere Ausgabe bekannt (Merkblatt zur BSE 108-15, Fassung 01.01.2020, per Erstlektüre-Prüfung des Nummernkreises)"
gelesen: "23.08.2026, Volltext S. 1-33 komplett (curl + pdftotext -layout), Anhang A1-A9 (S. 34-54) nur Titel/Struktur aus Inhaltsverzeichnis, nicht Bild-/Planinhalt"
datenstand: "2022"
status: established
last_updated: 2026-08-23
verifiziert: "23.08.2026 — Original-PDF direkt vom VKG-Publikationsportal (services2.vkf.ch) bezogen, HTTP 200, 54 Seiten, vollständiger Fliesstext von S. 1-33 gelesen. Anlass: Klärung der in QUESTIONS.md N58-4 offen gelassenen Frage, ob 2006-15 ein eigenständiges Dokument oder nur ein Alias von BSE 108-15 ist"
links: [[REGISTER]], [[vkf-brl-108-15-betriebsbereitschaft-bfs]], [[vkf-brl-108-15-fassung-2020-delta]]
---

# VKF-Brandschutzmerkblatt 2006-15de — Gewährleistung der Betriebsbereitschaft von Brandfallsteuerungen (BFS), gültig ab 01.03.2022

## Einordnung — kein Duplikat von BSE 108-15

**Klärt N58-4 (Nebenbefund QUESTIONS-Abarbeitung 13, 23.08.2026) abschliessend.** 2006-15
trägt zwar denselben Sachtitel wie die Brandschutzerläuterung [[vkf-brl-108-15-betriebsbereitschaft-bfs]]
(«Gewährleistung der Betriebsbereitschaft von Brandfallsteuerungen (BFS)»), ist aber ein
**eigenständiges, umfangreicheres Dokument**: Titelblatt bezeichnet es ausdrücklich als
«BRANDSCHUTZMERKBLATT … Ergänzung zur gleichnamigen Brandschutzerläuterung 108-15»
(Titelblatt, S. 1). Die Einleitung (S. 5) bestätigt den Zweck: «Mit diesem Merkblatt werden
die Anforderungen aus der Brandschutzerläuterung … 01.01.2020 zur besseren Verständlichkeit
erklärt und präzisiert.» Jede Ziffer verweist im Titel explizit auf die zugehörige BSE-108-15-
Ziffer der **Fassung 01.01.2020** («zu BSE108-15 Ziffer …»), z.B. Ziff. 3.2 «Projektierung
(SIA-Phase 3) (zu BSE108-15 Ziffer 6.2)» (Inhaltsverzeichnis S. 3). Mit 54 Seiten (davon
21 Seiten Anhang mit Prozess-Diagrammen, Zonenplan-Beispielen, RACI-Verantwortungsmatrizen
und Muster-Testkonzept) ist das Merkblatt deutlich umfangreicher als die 29-seitige
Erläuterung selbst und behandelt Stoffe, die dort nicht stehen (SIA-Phasen-Zuordnung,
Verantwortungsmatrix je Gewerk, Linientest-Empfehlung).

**Rechtscharakter wie die übrigen VKF-Merkblätter der 2000er-Reihe** (gleiche Klausel wie
bei [[vkf-merkblatt-2005-15-lithium-ionen-batterien]]): Anhang-Präambel (S. 34) bezeichnet
den Anhang ausdrücklich als «Beispiele für mögliche Lösungsansätze … Umfang sowie die
definitive Darstellung bzw. die Bezeichnungen sind konzeptabhängig und können frei gewählt
werden» — Erläuterung/Interpretationshilfe, nicht bindende Zusatznorm. Der Haupttext (Ziff.
1-4) formuliert dagegen überwiegend mit «muss»/Pflichtsprache und bezieht sich direkt auf
BSE-108-15-Ziffern — dort ist die Bindungswirkung dieselbe wie in der referenzierten
Erläuterungsziffer selbst.

## Das Wichtigste in 3 Sätzen

Das Merkblatt präzisiert die BFS-Erläuterung 108-15 (Fassung 01.01.2020) mit Begründungen,
Beispielen und einer verbindlichen SIA-Phasen-Zuordnung: Konzept über die Brandfallsteuerungen
bereits in Phase 3, RACI-Verantwortungsmatrix je Phase 3/4/5 mit einem zwingenden
Gesamtverantwortlichen BFS (Ziff. 1.9, 3.2-3.4). Es führt in der Realisierungsphase eine
dreistufige Test-Kaskade ein: Einzeltest (Ziff. 3.4.3.2, Pflicht) → Linientest (Ziff. 3.4.3.3,
optional, aber empfohlen zur Vermeidung von Verzögerungen bei den integralen Tests) →
integraler Test inkl. Blackout-Test (Ziff. 3.4.3.4, Pflicht). Für die manuelle Aktivierung
gilt ein Funktionserhalt E30 der Übertragungswege (Ziff. 1.5.6) und die Bedienstelle muss bei
mindestens einem Feuerwehrzugang liegen (Ziff. 1.5.7); Ausschaltungen der BMA über 24 Stunden
sind der Brandschutzbehörde/Feuerwehr mit dem VKF-Formular «BMA Ausser- und Inbetriebsetzung»
möglichst drei Tage im Voraus zu melden (Ziff. 4.7).

## Kernziffern (mit Fundstelle)

### 1. Grundlagen (Ziff. 1, S. 6-11)

- **Stand der Technik unvollständig** (Ziff. 1.1, S. 6): Elemente aus der Gebäudeautomation/
  Steuer- und Regeltechnik sind für den Brandfall meist ungeprüft (keine Prüfnormen für die
  Anwendung im Brandfall); softwarebasierende Steuerungen erreichen nicht den Sicherheitsstandard
  von nach EN 54 geprüften Brandmeldeanlagen. Standardkonzept der Erläuterung ist deshalb die
  **konventionelle Relaissteuerung mit potentialfreien Kontakten** zwischen den Teilbereichen
  (Ziff. 1.2, S. 6).
- **Manuelle Aktivierung, Begründung** (Ziff. 1.5, S. 8-9): eingeführt mit BSE 108-15 per
  01.01.2015. Ohne sie bleibt bei Teilausschaltung einer Meldergruppe (z.B. wegen Staub-/
  Rauch-/Dampfarbeiten) im ausgeschalteten Bereich ein Brandereignis vollständig ohne
  automatische Alarmierung und BFS-Aktivierung (Ziff. 1.5.2). Mit manueller Aktivierung kann
  die Brandwache die BFS auch bei Ausschaltung der Meldergruppe/Zentrale gleichwertig auslösen
  (Ziff. 1.5.3).
- **Übertragungswege manuelle Aktivierung: Funktionserhalt E30** (Ziff. 1.5.6, S. 9) — anders
  als die BMA selbst (grundsätzlich ohne Funktionserhalt, da die Detektion rasch erfolgt),
  braucht die manuelle Aktivierung wegen der zeitlichen Verzögerung durch die Brandwache einen
  Funktionserhalt von E30 auf den Übertragungswegen.
- **Bedienstelle bei mindestens einem Feuerwehrzugang** (Ziff. 1.5.7, S. 9): Begründung
  Mobilfunkempfang (Spezialverglasungen dämpfen), Einweisung der Feuerwehr, gebündelte
  Bedienstellen für MRWA/RDA/Evakuationsanlagen. Manuelle Aktivierung ist **nicht** für die
  Feuerwehr vorgesehen — die Selbstrettung muss vor deren Eintreffen abgeschlossen sein.
- **Eintreffzeit Feuerwehr, Referenzwerte** (Ziff. 1.7, S. 10, Abb. 2): rund **20 Minuten
  (Stadt) / 25 Minuten (Land)** ab Brandausbruch bei BMZ-Betriebsart «Anwesend»; bei
  «Abwesend» verkürzt sich die Frist um maximal 8 Minuten. Deshalb muss die automatische
  Aktivierung der angesteuerten Einrichtungen bereits bei Alarm 1 (BMZ) erfolgen.
- **Zuständigkeiten** (Ziff. 1.9, S. 11): zwingend ein **Gesamtverantwortlicher BFS**
  (Projektleiter) über alle Projektphasen bis zum Bezug; nach Bezug ein
  **Anlageverantwortlicher** samt Stellvertreter für die Betriebsphase.

### 2. SIA-Phasen-Zuordnung mit Verantwortungsmatrix (Ziff. 3, S. 17-24)

- **Phase 3 (Projektierung)** (Ziff. 3.2, S. 17-19, Tabelle 2): Konzept über die BFS beginnt
  zwingend in SIA-Phase 3 (frühzeitige Machbarkeitsprüfung, Planungs-/Kosten-/Terminsicherheit).
  RACI-Matrix weist die **Verantwortung (V)** für die Konzepterstellung dem
  **Gesamtverantwortlichen BFS** zu (nicht dem Bauherrn/GP/GU/TU, die nur mitwirken/M);
  Plausibilitätsprüfung (PB) liegt beim QS-Verantwortlichen Brandschutz.
- **Phase 4 (Ausschreibung)** (Ziff. 3.3, S. 19, Tabelle 3): Prüfung der Ausschreibungen auf
  Gleichwertigkeit gegenüber dem Konzept BFS liegt in **gemeinsamer Verantwortung der
  Fachplaner/Fachbauleiter** (Elektro, detektierende/angesteuerte Einrichtungen, manuelle
  Aktivierung); der Gesamtverantwortliche BFS führt die koordinative Überwachung (KÜ).
- **Phase 5 (Realisierung)** (Ziff. 3.4, S. 20-29): Terminplanung mit verbindlichen
  Meilensteinen (Fertigstellung je Einrichtung, Inbetriebnahme, Einzel-/Linientests,
  Mängelbehebung, Zeitfenster integraler Test) bereits frühzeitig festlegen.

### 3. Test-Kaskade in Phase 51/52/53 (Ziff. 3.4.1-3.4.3.6, S. 21-29)

- **Inbetriebnahme (IBN)** (Ziff. 3.4.3.1, S. 25): jede technische Brandschutzeinrichtung wird
  einzeln vom Anlagenerrichter in Betrieb genommen/einreguliert; Fertigmeldung (Installations-
  Attest, Messprotokoll, IBN-Protokoll) an die Fachbauleitung.
- **Einzeltest, Pflicht** (Ziff. 3.4.3.2, S. 25, zu BSE108-15 Ziff. 6.4.1): prüft je
  Teilbereich Ausführung inkl. Übertragungswege und Funktion unter betriebsähnlichen
  Bedingungen; Resultat protokollpflichtig.
- **Linientest, optional aber empfohlen** (Ziff. 3.4.3.3, S. 25-26): prüft die
  anlagenübergreifende Funktion vom Ausgangskontakt der detektierenden bis zum Eingangskontakt
  der angesteuerten Einrichtung. Begründung: Verdrahtungs-/Programmierfehler werden in der
  Praxis oft erst beim integralen Test entdeckt, was zu erheblichen Verzögerungen führt.
- **Integraler Test, Pflicht** (Ziff. 3.4.3.4, S. 26, zu BSE108-15 Ziff. 6.4.2): anlagen-
  übergreifende Funktionskontrolle über alle Teilbereiche gemäss BFS-Konzept, inkl.
  Blackout-Test; nur bei garantiert ungestörtem Testbetrieb durchführbar; Anlageverantwortliche
  der Eigentümerschaft sind einzubinden (Know-how-Aufbau). Erfolgsfaktoren (Ziff. 3.4.3.4,
  a-e): früher Planungseinstieg, Abschluss aller Vorarbeiten, Testbereitschaft, straffe
  Vorbereitung, striktes Mängelmanagement.
- **Dokumentation/Instruktion** (Ziff. 3.4.3.5, S. 26-28): Bedienungsanleitungen getrennt für
  Feuerwehr (Kurzanleitung mit Situationsplan) und Eigentümerschaft/Anlageverantwortliche
  (Funktionsweise, Instandhaltung, periodische Kontrollen); Datenhoheit über die Dokumentation
  sollte vertraglich bei der Eigentümerschaft verankert werden; Instruktion der Anlage-
  verantwortlichen vor Bezug mit ausreichender Vorlaufzeit.
- **Abnahmekontrollen** (Ziff. 3.4.3.6, S. 29): Bedarf/Umfang der einzureichenden Unterlagen
  (Atteste, Messprotokolle, Test-Protokolle) und einer Abnahmekontrolle frühzeitig mit der
  Brandschutzbehörde abstimmen.

### 4. Betrieb, Wartung, Ausserbetriebsetzung (Ziff. 4, S. 29-33)

- **Eigenverantwortung der Eigentümerschaft** (Ziff. 4.1, S. 29): Werkseigentümerhaftung
  (Art. 58 OR) plus Unterhalts-, QS-, Dokumentations- und Sorgfaltspflicht über den
  Lebenszyklus; Lebensdauer der meisten Einrichtungen 10-20 Jahre, Ersatz frühzeitig planen
  und budgetieren (Verfügbarkeit von Ersatzteilen ist limitierender Faktor).
- **Meldepflicht bei Ausserbetriebsetzung BMA > 24 h** (Ziff. 4.7, S. 32-33): der
  Anlageverantwortliche meldet der Brandschutzbehörde und Feuerwehr **möglichst drei Tage im
  Voraus** mit dem VKF-Formular «BMA Ausser- und Inbetriebsetzung»; Wiederinbetriebnahme ist
  derselben Stelle umgehend zu melden, danach Probealarm. Weitere Pflichten während der
  Ausschaltung: betroffene Personen schriftlich informieren, nicht mehrere Einrichtungen
  gleichzeitig ausser Betrieb nehmen. Für andere Einrichtungen (Sprinkler, RWA, RDA,
  Feuerwehraufzüge) gilt das Vorgehen sinngemäss.

### 5. Gültigkeit (Ziff. 5, S. 33)

Gilt ab **1. März 2022**; genehmigt durch die Technische Kommission Brandschutz VKF am
8. Dezember 2021.

### Anhang (S. 34-54, nicht inhaltlich ausgewertet)

Struktur laut Inhaltsverzeichnis: A1 Prozess BFS, A2 Bestimmung der Kategorie, A3 Anlagen-
Prinzipschema, A4 Zonenpläne (automatisch/manuell), A5 durchgerechnetes Hochhaus-Beispiel
«Selektive Aktivierung» (Gebäudeschnitt, Geschosspläne, Brandmelder-Gruppenpläne), A6 Matrix
für BFS, A7 BFS-Elemente-Pläne, A8 Muster-Testkonzept, A9 Checkliste integrale Tests. Wie beim
Haupttext ausdrücklich als «Beispiele für mögliche Lösungsansätze», nicht normativ (S. 34).
Nicht gelesen — reine Bild-/Planinhalte, für eine Fundstellen-Aussage ungeeignet.

## JANS-Praxis-Transfer

- **Skill `brandschutz`**: Ergänzt [[vkf-brl-108-15-betriebsbereitschaft-bfs]] um die konkrete
  SIA-Phasen-Zuordnung — bei Prüfung/Erstellung eines Brandschutzkonzepts mit BFS-Bezug ist die
  Konzepterstellung ausdrücklich **Sache des Gesamtverantwortlichen BFS in Phase 3**, nicht
  Nebenprodukt der Elektroplanung.
  ⚠ **Fassungshinweis:** dieses Merkblatt referenziert BSE-108-15 in der Fassung **01.01.2020**
  (Einleitung S. 5); die inhaltlichen Ziffernverweise («zu BSE108-15 Ziffer …») sind gegen jene
  Fassung zu lesen, nicht gegen die hier im Haus liegende 2015er-Fassung — siehe
  [[vkf-brl-108-15-fassung-2020-delta]] für das Delta.
- **Skill `ausschreibung`/`werkvertrag`**: Der Linientest (Ziff. 3.4.3.3) ist zwar «optional»,
  aber als Werkzeug gegen Terminverzug bei den (pflichtigen) integralen Tests empfohlen — bei
  BFS-relevanten Devisen als eigene Optionsposition mit anbieten lassen.
- **Skill `unternehmerkontrolle`/`kostenkontrolle`**: Test-Kaskade Einzeltest → Linientest
  (optional) → integraler Test ist die Abnahme-Referenz für BFS-relevante Gewerke (BMA, Lüftung,
  Aufzüge, Türen/Tore); Protokolle aller drei Stufen bei Schlussabnahme einfordern.
- **Skill `auflagebereinigung`**: Meldepflicht bei BMA-Ausschaltung > 24 h (VKF-Formular «BMA
  Ausser- und Inbetriebsetzung», 3 Tage Vorlauf) als eigene Auflage/Pflicht in Bauleitungs-
  Prozessen mit bestehender BMA berücksichtigen (z.B. Umbauten im Betrieb).

## Offene Punkte

- Anhang A1-A9 (S. 34-54) ist nicht inhaltlich gelesen — reine Beispiel-/Planinhalte ohne
  Fliesstext, für Fundstellen-Zwecke nicht zitierfähig, aber bei Bedarf (z.B. konkrete
  Matrix-Vorlage) am Original nachzuschlagen.
- Kein Abgleich gegen den VKF-Publikationsindex, ob 01.03.2022 die aktuell gültige Fassung ist
  (gleiche offene Bring-Schuld N27-1 wie bei den übrigen 2000er-Merkblättern).
