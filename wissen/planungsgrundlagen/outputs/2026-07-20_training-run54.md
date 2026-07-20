# Training Run 54 — Planungsgrundlagen (2026-07-20)

**Vorgabe:** Intensiv-Lauf gemaess `training/PROGRAMM.md` (Intensivphase + Token-Vollgas:
2 Domaenen, 10-16 Fragen). Rotation nach Run 53 (Recht/Norm + Energie) → **Brandschutz (PL-03)**
und **Kartenportale (PL-01)**.

## Vorbemerkung: der Blocker aus Run 53 ist weg

Run 53 war durch einen **systemischen OneDrive-Ausfall** (`EDEADLK: Resource deadlock avoided`)
lahmgelegt — auch zuvor problemlos gelesene Referenzdateien waren betroffen. Erste Handlung dieses
Laufs war deshalb der von Run 53 empfohlene Lesbarkeits-Test ueber alle vier PL-Ordner:
**alle wieder normal lesbar.** Damit liessen sich die seit Run 50/52 aufgestauten, rein technisch
blockierten Kandidaten in einem Zug abarbeiten — statt wie geplant auf Web-Ausweicharbeit
auszuweichen.

Praxis-Lehre (bestaetigt zum dritten Mal, K41-K44 → C36): `EDEADLK` auf dem OneDrive-Mount ist
**kein** Recherche-Befund und **kein** dauerhafter Ausfall, sondern ein Sync-Timing-Problem, das
sich innert Tagen von selbst loest. Richtige Reaktion: als blockiert vermerken, im naechsten Lauf
erneut versuchen — nicht die Datei als «nicht verfuegbar» abschreiben.

---

## Domaene Brandschutz (PL-03) — 2 offene Kandidaten geschlossen

### B42/C36 — Feuerwehrplan-Zusatzvariante «Stoerfall ABC-Objekt» (8 PDF)

Vollstaendig ausgewertet (alle 8 Dateien: Titelblatt, Objektdatenblatt, Lagerliste, Anfahrts-,
Situations-, Detailplan EG + UG, Oekologieplan). Anonymisierter Musterbetrieb «Muster
Spezialfarben AG», Stand 30.05.2018.

Der Kern ist der **Delta gegenueber einem normalen Feuerwehrplansatz** — neun Zusatzelemente,
darunter die eigenstaendige **Lagerliste gefaehrlicher Gueter** (UN-/CAS-Nummer, Menge, Behaelter,
Lagerort je Stoff), die **Gefahrentafel-/Ex-Zonen-Symbolik** in den Detailplaenen, ein eigener
**Oekologieplan** mit Abwassertrennung, Notabsperr-Schiebern und ARA-Fliesszeiten, sowie die
**Loeschwasserrueckhaltung** als eigenes Planthema (Beckenvolumina je Lagerraum, Sumpf unter
Gitterrost, Emulsionsspaltanlage).

**Der eigentliche JANS-Wert liegt nicht in der Plansymbolik, sondern im Volumenbedarf:** drei der
neun Elemente (Loeschwasserrueckhalt, Abwassertrennung, Spaltanlage) sind **bauliche** Anlagen mit
Flaechen-/Volumenbedarf im Untergeschoss. Wer die StFV-Unterstellung erst in der
Ausfuehrungsplanung entdeckt, hat dort kein Volumen mehr dafuer. Die Frage «faellt der Betrieb
unter die Stoerfallverordnung?» gehoert damit in die **Grundlagenphase** jeder Machbarkeits-/
Volumenstudie fuer Produktions- und Lagernutzungen — das ist neu und im Wegweiser so vermerkt.

→ NEU §5ao [[brandschutz-pl03-wegweiser]]

### B43/C36 — `z_Administration/` (VKF-Lieferschein + Bestellung 2015)

Gelesen und **als planungsirrelevant verifiziert** — reine kaufmaennische Belege ohne Normenliste,
VKF-Nummern oder Gliederung. Die Vermutung aus Run 52 ist damit bestaetigt statt weiter
mitgeschleppt; der Ordner braucht keine Beachtung mehr.

Ein verwertbarer Nebenbefund: die gedruckten BSV wurden im Kt. ZH ueber den **Vorschriftenversand
der Kantonalen Feuerpolizei/GVZ** bezogen, inkl. **Aktualisierungs-Abonnement** fuer den
ZH-Zusatzteil (Rechtsgrundlagen + Vollzugsbestimmungen). Das erklaert, warum die ZH-Vollzugs-
bestimmungen in §1 als eigener Dokumentstrang neben der VKF-Norm gefuehrt werden.
⚠ Preis-/Kontaktangaben von 2014/2015 sind nicht mehr belastbar.

Die Belege stammen aus der Vorgaenger-Ablage eines fremden Architekturbueros und enthalten
Personendaten Dritter — **bewusst nicht** in die KB uebernommen (gleiche Praxis wie K31/K33).

→ NEU §5ap [[brandschutz-pl03-wegweiser]]

---

## Domaene Kartenportale (PL-01) — zwei Endpunkt-Fragen geschlossen

### K35 — ZH-Naturgefahren-Endpunkt GEFUNDEN (seit Run 22 offen, fuenf erfolglose Anlaeufe)

**Der Fund.** Die ZH-Gefahrenkarte liegt im laengst bekannten `maps.zh.ch/wfs/OGDZHWFS` — kein
neuer Dienst, kein Login. Sie blieb nur deshalb unauffindbar, weil alle bisherigen Suchen nach
*naturgefahr* / *gefahr* / *hazard* im Layer-**Namen** filterten. Der Kanton fuehrt sie unter der
**AWEL-Themengruppe 44 «Gewaesser/Wasserbau»**, weil Hochwasser der dominante Prozess ist. Ein
Volltext-Grep ueber das gesamte GetCapabilities (801 KB, 516 Layer) statt einer Stichwortsuche
legte sie frei.

| Zweck | Typname |
|---|---|
| Synoptische Gefahrenkarte (Standard) | `ms:ogd-0044_giszhpub_wb_syn_gk_f` |
| Hochwasser | `ms:ogd-0044_giszhpub_wb_hw_gk_f` |
| Massenbewegungen/Rutschung | `ms:ogd-0044_giszhpub_wb_mb_gk_f` |
| Kartierungsstand je Gemeinde | `ms:ogd-0044_giszhpub_wb_gk_projektuebersicht_f` |

Attribute `gefstufe` 1-4 + `gefstufe_txt`, prozessgetrennt `gefstufe_hw` / `gefstufe_mb`. Skala
deckt sich exakt mit der CH-Systematik (Restgefaehrdung gelb-weiss / gering gelb / mittel blau /
erheblich rot).

**Eigenstaendig nachverifiziert** (nicht nur Layer-Existenz uebernommen): GetFeature ueber ein
10×10-km-Fenster lieferte 200 Flaechen mit vollstaendiger Stufenverteilung (80/94/25/1) — der
Layer ist also gefuellt und differenziert, nicht bloss vorhanden.

**Zwei Fallen, im Connector und im Artikel explizit vermerkt:** (1) kein Treffer heisst «hier keine
Gefahrenflaeche», **nicht** «Gemeinde nicht kartiert» — wer das verwechselt, haelt eine unkartierte
Parzelle faelschlich fuer sicher; der Kartierungsstand ist ein eigener Layer. (2) Sturz/Steinschlag
fuehrt der ZH-WFS nicht (kein alpiner Sturzkanton); im Kt. SZ ist Sturz dagegen Teil der Karte.

→ NEU §8a [[kartenportale-naturgefahren-objektschutz]]

### K36 — ZH-Grundwasserschutzzonen: Positiv-Benchmark nachgeholt, Status established

Seit Run 33 war der Endpunkt bekannt, aber **nur mit 0-Treffer-Abfragen** belegt. Das ist ein
schwacher Beweis: eine leere `FeatureCollection` unterscheidet nicht zwischen «arbeitet korrekt,
hier liegt keine Zone» und «liefert stumm nichts». Genau diese Luecke schliesst der Lauf.

Codeliste jetzt empirisch belegt (300er-Stichprobe): **S1** Fassungsbereich (127) · **S2/S2a/S2b/S2c**
Engere Schutzzone (71/13/7/1) · **S3/S3a** Weitere Schutzzone (79/1) · **Spezialzone** (1). Das
Areal-Layer 0149 fuehrt kuenftige Zonen als `ZukuenftigeZoneS1/S2`. ⚠ Dabei eine Inkonsistenz der
Quelldaten beobachtet: bei `ZukuenftigeZoneS1` steht als Klartext «zukuenftige *engere*
Schutzzone», obwohl S1 sonst Fassungsbereich ist — im Zweifel den Code auswerten, nicht den Text.

Benchmarks: **positiv** Hardau 24, 8408 Winterthur (EGRID `CH827726200895`, S3 «Hard, Klaeranlage»)
und Punkt-in-Polygon Rotzibuech Rorbas (S2); **negativ** Giebelweg 12 Langnau. Damit sind die
frueheren 0-Treffer als echte Negativbefunde bestaetigt. Status **emerging → established**.

→ NEU §8b [[kartenportale-naturgefahren-objektschutz]]

---

## Connector-Arbeit (`skills/planungsgrundlagen/connectors/geo-zh.mjs`)

Zwei neue Produkte, beide **vor** der Dokumentation live getestet:

- **`--produkt naturgefahren`** — fragt alle drei Gefahrenbereich-Layer ab, meldet die **hoechste**
  Stufe als planungsbestimmend, gibt ab Stufe 3 den Objektschutz-Hinweis (§ 20/17 PBG, SIA 261/261-1)
  aus und formuliert den Negativbefund so, dass er nicht mit «nicht kartiert» verwechselt wird.
- **`--produkt grundwasser`** — Schutzzonen + Schutzareale, Ausgabe **zonengerecht**: S1 faktisches
  Bauverbot · S2 UG/Aushub/Sonden i.d.R. unzulaessig · S3 auflagenbehaftet. Eine erste Fassung gab
  pauschal den S1/S2-Hinweis auch bei einem S3-Treffer aus — das war irrefuehrend und wurde
  korrigiert, bevor es in die KB ging.

Beide mit Default-Radius ±5 m (anders als Baulinien entscheidet die Punktlage), Ablage via `--out`,
Header-Doku ergaenzt.

**Testmatrix:**

| Fall | Ergebnis |
|---|---|
| Hardau 24 Winterthur — `grundwasser` | S3 «Hard, Klaeranlage», inKraft, GW-Recht i 01-0028 ✓ |
| Buchserstrasse 9 Daellikon — `naturgefahren` | Stufe 3 mittlere Gefaehrdung (HW), Objektschutz-Hinweis ✓ |
| Giebelweg 12 Langnau — beide | sauberer Negativbefund ✓ |
| **Regression** Giebelweg 12 — `zonenplan,baulinien` | W/1.5 · BMZ 1.5 · GH 4.5 · ES_II; 7 Baulinien 116.2 m / Waldgrenze 105.6 m — unveraendert ✓ |
| **Regression** Kirchgasse 2 Seuzach — `baulinien` | 10 Baulinien, naechste 29.8 m — unveraendert ✓ |

---

## Was das fuer die Praxis aendert

Die Grundlagen-Checkliste «neue Parzelle» hat zwei neue Querschnitt-Pruefungen, beide
automatisiert. Die Grundwasserschutzzone ist dabei die wirtschaftlich schaerfere: sie entscheidet
ueber das **Untergeschoss**, und zwar bevor gezeichnet wird. Eine S2-Lage kann ein geplantes UG
komplett kippen — in einer Machbarkeitsstudie ist das ein Kostentreiber erster Ordnung, der
bisher nur ueber den OEREB-PDF und damit nur bei aufmerksamer Lektuere sichtbar war.

## Naechster Lauf

- **Rotation:** naechste zwei Domaenen = **Kartenportale + Energie** (die beiden Prioritaets-
  Domaenen; Recht/Norm und Brandschutz liefen zuletzt).
- **Offen in Kartenportale:** SZ-Naturgefahren als REST-/`identify`-Endpunkt (bisher nur manueller
  WebGIS-Link) — jetzt mit der ZH-Lehre im Ruecken: nicht nach dem Fach-Stichwort suchen, sondern
  das Capabilities volltextlich scannen und die kantonale Zustaendigkeitslogik mitdenken.
- **Offen in Energie:** D9 (realer MFH-/ZEV-Betriebskostenfall) ist die aelteste offene Frage der
  Domaene.
- **Curriculum-Stand:** nach diesem Lauf sind **keine** `[ ]`-Lektionen mehr offen — kuenftige
  Laeufe muessen ihre Fragen aus QUESTIONS.md und aus neuen Delta-Scans der PL-Ordner ziehen.
  Das ist ein Signal, das Curriculum mit einer neuen Staffel zu fuellen.
