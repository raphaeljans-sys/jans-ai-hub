# QUESTIONS — offene Fragen, Lücken und Spannungen im KB `bauprodukte`

## Entschieden (Raphael, 31.07.2026) — verbindlich für jeden Folgelauf

1. **Aktualität des Archivs — ERLEDIGT.** Alles aufnehmen, jede Angabe mit dem Stand des
   Quelldokuments. Unterlagen **älter als zehn Jahre nur dann**, wenn sie ein **System oder
   ein Prinzip** beschreiben — nicht ein konkretes Produkt. Konstruktionslehre bleibt also
   erhalten, tote Produktdaten wandern nicht in eine Ausschreibung. Lässt sich das Alter
   nicht datieren, gilt die Angabe als nicht aufnahmefähig (Datumsstempel-Pflicht,
   `../CLAUDE.md` Schreibregel 1).
2. **Bevorzugte Systeme — ERLEDIGT im Grundsatz, offen in der Ausführung.** Die Bürohaltung
   wird **nicht** abgefragt, sondern **aus den eigenen Projekten abgeleitet**: beim Korpus
   `buero-projekte` (Queue-Position 2) ermittelt der Loop, welche Systeme je Gewerk faktisch
   wiederkehrend verbaut wurden, und legt das Ergebnis als Entwurf-Artikel
   `bevorzugte-systeme-jans.md` zur Bestätigung vor — **nicht** selbst als `established`
   setzen. Bis dahin bleiben die Destillate herstellerneutral (Schreibregel 5).
   → Arbeitspunkt für Korpus 2, nicht für `bauprodukte`.

## Offen aus dem Material

**Bearbeitungsreihenfolge (Entscheid Raphael, 31.07.2026):** zuerst die
**ausschreibungsrelevanten** Punkte — das sind **4 (ERCO Lichttechnik), 9 (Holzbau und
Bekleidungen) und 10 (VKF-Fassungsfrage)**. Sie fliessen direkt in ein LV und die
Normgrundlage liegt jeweils schon destilliert vor. Alle übrigen Punkte bleiben stehen und
werden **ereignisgetrieben** abgearbeitet, sobald ein reales Projekt das Gewerk berührt.
Punkte, die eine Hersteller-Rückfrage verlangen (5, 11, teilweise 7), kann der Loop
grundsätzlich nicht schliessen — er hält sie als Prüfauftrag für den Projektfall.

3. **Aktuelle Marktübersicht Dachbegrünung fehlt:** [[dachbegruenung-systeme]] belegt
   nur eine 2002er-Momentaufnahme (3 CH-Anbieter, unverifiziert). Für Ausschreibungen
   BKP 224 braucht es eine eigene, aktuelle Recherche — nicht Teil eines
   unbeaufsichtigten Nachtlaufs (Web-Recherche über mehrere Quellen).
4. **ERCO Ratgeber nur zu 40/435 Seiten destilliert (Fortschritt Mac Mini Nachtschicht,
   31.07.2026: 20 → 40):** [[erco-lichtplanung-grundlagen]] deckt jetzt das Kapitel
   «Grundlagen» vollständig (Geschichte, Sehen/Wahrnehmen inkl. Konstanz/
   Gestaltwahrnehmung) sowie den Beginn von «Gestalten mit Licht» (Architekturbeleuchtung
   Innenräume, Räume verbinden bis Innenraum-Aussenraum). Die praxisrelevanteren
   Kapitel «Lichttechnik» (Kennwerte lm/W, Ra, Farbtemperatur), «Aussenraumbeleuchtung»,
   «Lichtsteuerung», «Simulation und Berechnung» sowie das Glossar sind weiterhin offen —
   mehrere Folgeläufe nötig (Lesefortschritt im Frontmatter `gelesen:` des Artikels).
5. **AS-Aufzüge-Dokumente ohne Datum im Dokument selbst:** [[bkp-261-aufzuege]] stützt
   die Datierung von `100426_AS_Aufzuege.pdf` und `21005312.pdf` nur auf den
   Dateinamen (JANS-Konvention YYMMDD). Vor Verwendung in einer aktuellen
   Ausschreibung beim Hersteller neu abklären, ob die Baureihe Winner noch aktuell ist.
6. **EN 81-70 nicht im Volltext geprüft:** [[bkp-261-aufzuege]] übernimmt die
   Normfundstelle für rollstuhlgerechte Aufzugskabinen nur aus dem Schmitt+Sohn-
   Datenblatt. Eine Ziffern-Detailprüfung gegen `wissen/normen/` steht aus, falls ein
   konkretes Projekt die genauen Kabinenmasse aus der Norm selbst braucht.
7. **Arbeitsplatten-Verbinder nur ein Händler-Sortiment (2011):**
   [[arbeitsplatten-verbinder-schreinerei]] vergleicht drei Systeme ausschliesslich
   nach OPO-Oeschger-Katalogdaten von 2011. Kein Abgleich mit alternativen
   Verbindersystemen (z.B. Lamello, Domino) und keine geprüften Zugkraftwerte —
   nur Marketing-Aussagen der Quelle. Vor Ausschreibung BKP 273.3 aktuelle
   Bezugsquelle/Preise neu abklären.
8. **Terrazzo/Kunststein ohne Rutschfestigkeits-/Reinigungsangaben — teilweise
   geschlossen 30.07.2026 (Wissens-Chef Run 21):** Die normative Einordnung liegt in
   `wissen/normen/`: führend SIA 244:2006 Ziff. 6.7 «Gleitfestigkeit» (Destillat
   `normen/destillate/sia-244-2006.md`, `established`), das bis zum Inkrafttreten einer
   EN auf die Skalen EMPA/bfu verweist; die Raum-Zuordnung der Klassen GS1–GS4
   (bfu-Prüfreglement R 9729) bzw. R9–R13 / A–C (DIN 51130/51097) steht in
   `normen/destillate/bfu-bodenbelaege.md` (bfu 2.032:2012 / 2.027:2011, Status dort
   noch `speculative`; bfu ist Auslegungshilfe, im Streitfall gilt die Norm).
   **Offen bleiben zwei Punkte:** (i) die produktbezogen erreichte Klasse für
   geschliffenen Terrazzo/Kunststein und (ii) das Reinigungs-/Pflegeverhalten — 2.027
   Kap. VI (Materialeigenschaften) und Kap. IX (Reinigung) sind bisher nur über das
   Inhaltsverzeichnis erfasst.
9. **Kein Artikel zu Holzbau und Bekleidungen — Prämisse korrigiert, GEBLOCKT mangels
   Quellmaterial (geprüft Mac Mini Nachtschicht, 31.07.2026):** Die Behauptung «das
   Quellarchiv führt die Sektionen 214, 225 und 271» ist nur zur Hälfte richtig: die
   Ordner `/Volumes/daten/03 Bauprodukte_BKP/214 Montagebau in Holz` und
   `/271 Gipserarbeiten` sind **komplett leer** (0 Dateien, Ordner unverändert seit
   09/2003 bzw. 08/2020 — verifiziert per `find`/`ls -la`). `225 Spezielle Dichtungen
   und Daemmungen` enthält nur ein Doku-Fallbeispiel zu einer PU-Aussenisolation
   (Beschichtung/Fotos eines Musters), keine Holzbau-/Bekleidungs-Unterlagen. Ein
   Artikel zu BKP 214.1/214.3 + 271.1 + 225.4 lässt sich aus diesem Korpus **nicht**
   destillieren — die Normgrundlage (`lignum-4-2-anschluesse-feuerwiderstand.md`
   `established`, `lignum-4-1-decken-waende-bekleidungen-feuerwiderstand.md`
   `speculative`, `lignum-lignatec-brandschutz.md` **VERALTET, nicht heranziehen**)
   liegt zwar bereits in `wissen/normen/destillate/`, aber ohne produktseitiges
   Gegenstück bliebe der Artikel reine Normwiedergabe ohne Bauprodukte-Mehrwert.
   **Weg nach vorne:** entweder eigene Projektunterlagen (Korpus 2 `buero-projekte`,
   sobald an der Reihe) liefern reale Holzbau-Ausführungsbeispiele, oder Raphael
   markiert das Gewerk als «kein Material vorhanden, überspringen». Kein weiterer
   Nachtlauf soll dieses Quellarchiv erneut danach durchsuchen, ohne dass sich der
   Bestand geändert hat.
10. **Teilrevision 2017 der VKF-BRL 23-15 auf Aufzugsrelevanz geprüft — GESCHLOSSEN
    (Mac Mini Nachtschicht, 31.07.2026).** Ergebnis: **materiell betroffen.** Ziff. 3.6
    Abs. 2 (neu 2017): Aufzugsschachttüren dürfen bei einer Anlage, die nur EIN
    Untergeschoss bedient, direkt in eine Nutzungseinheit führen, sofern der
    Feuerwiderstand nach Ziff. 3.4 Abs. 2 eingehalten ist (2015 nicht vorgesehen).
    Ziff. 5.1 (Fahrtreppen) nur kosmetisch (RF3 → RF3 (cr)). Beide Ziffern in
    `normen/destillate/vkf-brl-23-15-befoerderungsanlagen.md` nachgetragen, [[bkp-261-aufzuege]]
    entsprechend ergänzt. Quelle des Delta ist eine Drittanbieter-Schulungsunterlage
    (AFC Basel), nicht der amtliche 2017er-VKF-Text — für ein rechtsverbindliches Zitat
    der Ziff.-3.6-Ausnahme bei Bedarf am Original verifizieren.
11. **AS-Kabinenbreite 1050 mm beim Hersteller verifizieren (aufgenommen Wissens-Chef
    Run 21, 30.07.2026):** Nach der Korrektur des Kabinenmasses in
    [[bkp-261-aufzuege]] verfehlt die Kabine sowohl die SIA-500-Standardbreite
    (1.10 m) als auch die AS-eigene Kategoriebreite (1100 mm) um je 50 mm. Die
    Herstellereinstufung «bedingt rollstuhlgängig» ist damit plausibel, der
    Breitenwert selbst stammt aber allein aus der Masskizze «Swisslift» — vor jeder
    Bemessung beim Hersteller verifizieren, ebenso, ob Winner und Swisslift dieselbe
    Kabine haben.
