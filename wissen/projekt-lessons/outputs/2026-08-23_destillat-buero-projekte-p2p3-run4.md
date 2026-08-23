# Wissens-Destillat `buero-projekte` — Phase 2, vierter Lauf (P2/P3-Abschluss) — 2026-08-23

Ziel-KB: `wissen/projekt-lessons` · Korpus-Spec: `skills/wissens-destillat/specs/buero-projekte-spec.md`
Vorlauf: interaktive Session `projekt-triage2` (Triage Phase 1 + Destillat-Läufe 1-3, siehe
CHANGELOG-Einträge 2026-08-23 davor). Dieser Lauf schliesst die verbliebenen 72 `[t]`-Zeilen
(46 P2 + 26 P3) ab.

## Ausgangslage

Nach Run 3 (P2-Start) waren 46 P2-Zeilen (`00_Allgemein` 17+3 P3, `1318_Lorraine_Kueche` 28,
`1527 EH Europe GmbH` 3+2 P3) und 26 P3-Zeilen (davon 19 `1012_Ardez`) offen — verteilt auf
vier Projektcluster.

## Vorgehen

Vier parallele Lese-Agenten (General-Purpose, ausschliesslich lesend, kein Schreibzugriff auf
Wiki/Inventar), je ein Cluster:
- `00_Allgemein` (20 Dateien, Nerves-Binz-Sammlung)
- `1012_Ardez` (19 Dateien, Schwerpunkt Unterordner `05_Plandokumentation/beispiel`)
- `1318_Lorraine_Kueche` (28 Dateien, Rest-Cluster)
- `1527 EH Europe GmbH` (5 Dateien)

Jeder Agent bewertete gegen die Spec-Kriterien (konkrete Situation mit Datum, operativ
anwendbare Regel, kein reines Produktdatenblatt ohne Entscheidungskontext) und meldete pro
Datei einen Befund. Die Orchestrator-Session hat daraus die Wiki-Artikel geschrieben und das
Inventar sequenziell angewendet (ein Schreiber, Python-Skript mit Unicode-NFC-Normalisierung
gegen die NFD-kodierten Dateinamen im Inventar — ohne die Normalisierung schlug der erste
Abgleich bei 14 Zeilen mit Umlauten fehl, siehe Reparaturschritt unten).

## Ergebnis

**Drei neue Wiki-Artikel** (alle `status: emerging`):
- [[nerves-2015-pentagon-systemwahl-streuung]] — drei Unternehmer offerierten für denselben
  freistehenden Besprechungsraum «Pentagon» drei fundamental unterschiedliche
  Konstruktionssysteme (Vollholz-Ständerbau CHF 40'747, Trockenbau CHF 19'235.47,
  Leichtbau-Vorfertigung EUR 16'987), Preisspanne über Faktor 2.
- [[lorraine-kueche-1318-kuehlschrank-beschaffungsrisiko]] — Bildbemusterung wechselt binnen
  drei Tagen (01.→04.08.2015) von freistehendem SMEG-Retro-Kühlschrank zu
  Electrolux-Einbaumodell; die dokumentierte Vorsichtsmassnahme (Rückgabeoption,
  Kartonmodell-Prüfung) verschwindet mit dem Wechsel.
- [[eh-europe-1527-mahnkaskade-unbezahlter-zusatzauftrag]] — ein gelobter
  Möbel-Preisvergleich (CHF 1'500.-) blieb nach Verschiebung des Hauptprojekts unbezahlt,
  drei Mahnstufen bis zur Betreibungsandrohung binnen fünfeinhalb Monaten.

**Zwei Nachträge an bestehenden Artikeln:**
- [[nerves-2015-kv-nebengewerke-unterschaetzt]]: Baubeschrieb, Mietvertrag und
  Schnittstellenbeschrieb belegen, dass die Mietfläche als reiner Rohbau übergeben wurde —
  strukturelle Teilursache, warum die «kleinen» Nebengewerke tatsächlich ein vollständiger
  MEP-Erstausbau waren.
- [[lorraine-kueche-maria-1318-kv-nebengewerke-abweichung]]: der eigene JANS-Werkplan vom
  03.12.2015 spezifiziert für BKP 285 bereits Kalkputz statt einfachem Neuanstrich — erklärt
  die extreme Malerarbeiten-Abweichung teilweise aus der eigenen Ausführungsplanung.

**Zwei offene Fragen** (in `wiki/QUESTIONS.md` vermerkt, nicht spekulativ aufgelöst):
1. Der im Nerves-Artikel zitierte Vertragswert BKP 214.1 (CHF 18'596.90) passt preislich
   nicht zur Pentagon-Vollofferte von Köfler Holzbau (CHF 40'747.00).
2. Eine Elektro-Offerte Alpiq (CHF 31'591.65) widerspricht dem dort zitierten Vertragswert
   (CHF 14'040.40) um mehr als das Doppelte.

**Nullbefunde, mit Begründung:**
- `1012_Ardez/.../05_Plandokumentation/beispiel/`: vollständig fremdes Referenzmaterial
  (Baueingabeplansatz Seehaldenstrasse 49 Thalwil, Büro Christian Kerez ETH/SIA, 10.01.2010,
  dort gezeichnet von Raphael Jans als Mitarbeiter) — kein Ardez-eigener Inhalt, reine
  Planzeichnungen ohne Lehre.
- Zahlreiche Herstelleranleitungen/Online-Shop-Ausdrucke/generische Referenzseiten (Gasrohr,
  OSRAM, Heizmatte, Rippenrohr) ohne Entscheidungskontext.
- Datenhygiene-Fund (keine Lesson): `1318_Lorraine_Kueche/.../2015-05-05_Bildbemusterung.pdf`
  gehört inhaltlich zu einem fremden Projekt (Villa Groth, München).

## Zwischenfall und Reparatur (kein Datenverlust)

Der erste Anwendungslauf des Python-Update-Skripts verglich Dateinamen mit vorkomponierten
Umlauten (NFC, z.B. `ö` als U+00F6), während die Inventar-Datei auf diesem NAS-Dateisystem
dekomponierte Umlaute (NFD, `o` + kombinierendes Trema U+0308) enthält — Ergebnis: 14 von 72
Zeilen wurden beim ersten Durchlauf nicht gefunden. Nach Ergänzung einer
Unicode-NFC-Normalisierung ausschliesslich für den Vergleich (nicht für den geschriebenen
Text) wurden alle 72 Zeilen korrekt zugeordnet. Gegengeprüft: `grep -c '^| \[t\]'` liefert 0,
Status-Summe 757 `[-]` + 56 `[x]` = 813 Zeilen (unverändert gegenüber dem Bestand vor diesem
Lauf), `git diff --numstat` zeigt für die Inventar-Datei ausschliesslich 72/72 geänderte
Zeilen (kein Kollateralschaden an anderen Zeilen).

## Ergebnis Inventar

**Der Korpus `buero-projekte` ist damit inventarseitig vollständig abgearbeitet: 0 `[ ]`
offen, 0 `[t]` offen.** Von den insgesamt 813 Zeilen sind 757 bewusst übersprungen (`[-]`)
und 56 destilliert (`[x]`, davon 2 aus dem allerersten Lauf vom 17.08.2026).

## Nächster Schritt

Gemäss Spec-Plan verbleiben zwei offene Punkte: der Pflicht-Zusatzauftrag
`bevorzugte-systeme-jans.md` (Cross-KB-Output nach `wissen/bauprodukte`, Entscheid Raphael
31.07.2026) und die Kurator-Stufe (Opus) über den gesamten Destillat-Bestand dieses Korpus.
