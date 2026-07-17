# Wissens-Chef — Run 7 (2026-07-17)

Gedrosselter Cross-KB-Lauf (Rule 260714). Geprueft wurde der seit Run 6 (gestern) neu
gewachsene, ueberschneidungsgefaehrdete Stoff: **baurecht** Buch-Run 48 (WWG/HWSchV → WsG/WsV,
LSV/GSchV/USG-Volltexte), **energie** Run 76 (MuKEn-2025-U-Werte, SIA-380/1-Aktualitaets-Check,
PV-Abregelung), **normen** Run 15 (SIA-Vertragsnormen, SIA-380/1-Auszug). Fan-out: 3 Lese-Agenten;
Verifikation der substanziellen Befunde inline an den Primaerquellen (der Verifier-Agent brach mit
einem 529-Serverfehler ab, die Gegenpruefung lief danach direkt an den Zitatstellen + der amtlichen
baurecht-raw-Quelle).

## Zusammenfassung

- **3 Paare geprueft, 1 Bring-Schuld geschlossen, 0 neue Entscheide fuer Raphael.**
- Der Kernbefund ist erfreulich: die **offene Bring-Schuld aus Run 5** (WWG→WsG-§-Mapping) ist
  einloesbar geworden, weil baurecht heute die amtliche Konkordanztabelle beschafft hat. Der
  Cross-KB-Lauf hat sie genutzt, um drei nachhinkende planungsgrundlagen-Artikel nachzuziehen.
- Die Eigen-Verifikation hat **keine Ueberkorrektur** produziert: baurecht ist auf der
  amtlich-belegten Seite, planungsgrundlagen war der veraltete Stand.

---

## Befund-Cluster A — WWG/HWSchV → WsG/WsV (baurecht ↔ planungsgrundlagen ↔ energie)

**Ausgangslage:** Das ZH-**Wasserwirtschaftsgesetz (WWG, 1991)** und die kantonale
**Hochwasserschutzverordnung (HWSchV, 1992)** sind **per 1.6.2026 aufgehoben** (OS 81, 144) und
durch das **Wassergesetz (WsG, LS 724.1)** + die **Wasserverordnung (WsV, LS 724.11)** ersetzt.
baurecht hat das heute mit Volltext + Konkordanztabelle belegt (`baurecht/raw/260717_amtlich_zh_hwschv.md`).

Vier Befunde, alle **CONFIRMED**:

| # | Artikel (planungsgrundlagen) | Fehler | Amtlich richtig (baurecht) |
|---|---|---|---|
| 1 | `kartenportale-naturgefahren-objektschutz` Z.340/349 | «§ 22 WWG unveraendert in Kraft» | WWG per 1.6.2026 aufgehoben (§ 126 WsG) |
| 2 | `recht-norm-abstandsvorschriften-wald-gewaesser` Z.103/122 | «§ 15d Abs. 3 HWSchV», HWSchV/WWG ohne Flag, eingedolt «≥ 11 m» als ZH-Mass | § 15k (Nachtrag 95, 2017); Mass **entfallen** → § 24 WsV (nur Verringerung); 11 m allein aus Art. 41a Abs. 2 lit. a GSchV |
| 3 | dito Z.132 | 15 m stehender Gewaesser an «> 0,5 ha» geknuepft | 0,5 ha ist **Verzichtsgrund** (Art. 41b Abs. 4 lit. b), kein Formel-Kriterium |
| 4 | `recht-norm-regenwasser-gewaesserraum-zh` Z.92/108/120 | WWG geflaggt (Run 5), HWSchV/«HWV» ungeflaggt | HWSchV ebenfalls aufgehoben; § 15h → § 183 lit. b WsV |

**Ausgefuehrte Aktionen (autonom):** Aufhebungs-Flags in allen drei Artikeln; §-Nummer 15d→15k;
eingedolt-Sachlage korrigiert; 0,5-ha-Korrektur (an baurecht angeglichen); «HWV»→«HWSchV»;
Verfahren 2/3 als «bis 31.5.2026» markiert; Verweise auf baurecht als fuehrend gesetzt.

**Offen (nicht autonom):**
- **(a)** Der konkrete **WsG-/WsV-Nachfolge-§ fuer § 22 WWG** (Gefahrenbereiche der Gemeinden) ist
  in der baurecht-raw-Quelle nicht abgedeckt (dort nur die HWSchV-§§). Am WsG/WsV-Volltext klaeren,
  bevor ein Ersatz-§ geschrieben wird — bis dahin als Bring-Schuld geflaggt.
- **(b)** **Doppelspur GSchV-Bemessungstabelle:** dieselbe Art.-41a/41b-Tabelle wird in baurecht
  `abstaende-und-hoehen` und planungsgrundlagen `abstandsvorschriften` materiell doppelt gepflegt —
  genau an dieser Naht ist sie auseinandergelaufen (Befunde 2+3). Trim der planungsgrundlagen-Fassung
  auf einen reinen Verweis = Inhaltsloeschung/Umstrukturierung → Rueckfrage noetig.

---

## Befund-Cluster B — SIA 380/1:2016 (normen ↔ energie)

**0 Zahlen-Widerspruch.** Die Werte, die beide KBs fuehren (Revisionsdaten 2016 vs. 2009, U-Werte,
Q_H,li), sind konsistent. Die Probleme sind strukturell:

- **Fuehrungs-Anomalie:** normen (laut Register fuehrend fuer Norm-Fundstellen) legte heute das
  Destillat `sia-380-1-2016` an — aber nur als **Vorschau/Auszug (6 von 60 Seiten, `speculative`)** und
  fuehrt die Grenz-/U-Werte als **P1-Blocker «komplett unerschlossen»**. Dieselben Werte traegt
  `energie` laengst **established** ueber die Vollzugshilfe **EnFK EN-102** (am Original gegengeprueft).
- **energie beantwortet normens offene Frage:** `sia-380-1-aktualitaets-check-2026` bestaetigt
  2016 + C1/2019 als aktuell — normen fuehrte das als «zu pruefen».
- **Beidseitig fehlende Querlinks.**
- **Nebenbefund:** der von energie gemeldete Transkriptionsfehler in `enfk-en-102` Tab. 5 war
  **bereits behoben** (17.07., am Original gegengeprueft), wurde aber im `muken`-Destillat noch als
  «offen / naechster Wartungslauf» gefuehrt.

**Ausgefuehrte Aktionen (autonom):**
- «Querbezug»-Bloecke gesetzt: energie-Aktualitaets-Check → normen als Fundstelle; normen-Destillat →
  energie/EnFK-EN-102 als Interims-Wertquelle. Der **P1-Blocker wurde NICHT gestrichen**, sondern auf
  die *zitierfaehige Norm-Fundstelle* (Ziffer/Wortlaut am Volltext) relativiert — die belegbaren Werte
  liegen via EN-102 vor (Vollzugsebene, nicht Normtext). Kein Status-Wechsel, kein Wert erfunden.
- Stale-Hinweis im `muken`-Destillat auf «ERLEDIGT 17.07.» umgeschrieben.

**Offen (Bring-Schuld):** SIA-380/1:2016-Volltext (SIA-Abo) fuer die zitierfaehige Fundstelle;
Korrigenda C1:2019-Inhalt am Volltext lesen.

---

## Befund-Cluster C — SIA-Vertrags-/Honorarnormen (normen ↔ baurecht, rotierend/leicht)

**Legitimes Null-Ergebnis.** Die heute in normen destillierte SIA-Vertrags-/Honorarfamilie
(SIA 102/103/105/108, 118, 1001-*, 1023, 100, KBOB-Honorar) hat in baurecht **null Praesenz**
(gezielte greps: 0 Treffer fuer «SIA 2009», «Honorarempfehlung», «KBOB», «16-15», «SIA 102/118»).
Die zwei normen-Richtigstellungen (Honorarempfehlung 2009 = KBOB, nicht SIA; VKF-BRL 16-15 =
Ausgabe 2015/Fassung 2017) koennen baurecht nicht widersprechen. Einzige Beruehrung: **SIA 416**
(Flaechendefinition), sauber getrennt (baurecht = PBG-Mass, normen = SIA-416-Flaeche).

**Kuer (offen, niedrig):** ein fehlender SIA-416-Querlink in `baurecht/wiki/abstaende-und-hoehen.md`
Z.338 (Klein-/Anbaute «nur SIA-416-Nebennutzflaechen»).

---

## Muster-Beobachtung (fuer den Synergie-Orchestrator)

planungsgrundlagen schreibt **kantonales Erlassrecht** (HWSchV/WWG) materiell fort, ohne es aus der
fuehrenden KB `baurecht` zu ziehen. Das ist dasselbe Struktur-Muster wie die wiederkehrende
`normen-referenz`-Luecke (VKF-Wortlaut in planungsgrundlagen statt aus normen), hier fuer
Gesetzesrecht: die Fuehrungs-Rolle greift beim **Schreiben** nicht, sondern wird erst im Cross-KB-Lauf
nachtraeglich durchgesetzt.

---

## Offene Entscheide fuer Raphael

- **Keine NEUEN.**
- **Weiter offen (aus Run 6):** Dublette in `normen` — `vkf-merkblatt-2001-15-solaranlagen` und
  `vkf-brm-2001-15-solaranlagen` destillieren dieselbe PDF. Merge/Loeschung ist destruktiv → braucht
  eine kurze Freigabe.

## Loop-Bring-Schulden (nicht Raphael)

1. WsG-/WsV-Nachfolge-§ fuer § 22 WWG am Volltext (baurecht/energie-Loop).
2. GSchV-Bemessungstabelle-Doppelspur trimmen (nach Klaerung der Fuehrung).
3. SIA-380/1:2016-Volltext + Korrigenda C1:2019 (normen-Loop, SIA-Abo).
