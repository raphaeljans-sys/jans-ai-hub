# Training Run 67 — Kartenportale + Energie (Token-Vollgas)

**Datum:** 2026-07-25 · **Rotation:** Kartenportale (PL-01) + Energie (PL-04) — nach Run 66
(Recht/Norm + Brandschutz), gemaess Rotation Kartenportale → Energie → Recht/Norm → Brandschutz.

## Ablauf

1. Stand gelesen: `curriculum.md` (67 Kartenportale- + 45+ Energie-Lektionen, alle `[x]`, nur
   die periodischen Refresh-Punkte E5/E9 noch `[~]`), `wiki/QUESTIONS.md`, letzter Report
   (Run 66). Kein offener Curriculum-Punkt fuer Kartenportale/Energie.
2. Da beide Domaenen laut den letzten drei Kartenportale/Energie-Laeufen (63/64/65) als «extrem
   ausgeschoepft» gelten, folgte dieser Lauf der in Run 65 dokumentierten Lehre: statt
   begriffsbasiertem Grep gegen `_INGESTED.md` ein **Dateinamens-/Ordnernamens-Diff** — alle
   Verzeichnisnamen unter `PL - 01 Kartenportale/` und `PL - 04 Energie/` gegen die vollstaendige
   `_INGESTED.md` gespiegelt, dann die groessten/auffaelligsten bisher unerwaehnten Dateien
   einzeln geprueft.

## Funde (Kartenportale, K59)

- **K59 — geoglatt.ch Zonenplan Gemeinde Maur (Gestaltungsplan-Register):** die bisher nie
  gelesene 37-MB-Rasterdatei `KtZH Zuerich/geoglatt.ch/Maur/Zonenplan.pdf` (cloud-only, `mdls`
  lieferte `(null)`, materialisiert via `cp` + gerendert mit `pdftoppm`) ist der amtliche
  Zonenplan-Uebersichtsplan der Gemeinde Maur 1:5'000 («Teilrevision Nutzungsplanung», von der
  Gemeindeversammlung festgesetzt 7./8.06.2010, von der Baudirektion genehmigt **27.02.2012**,
  BDV Nr. 30/2012, Herausgeber Gossweiler Ingenieure AG). Er traegt eine eigene
  **Gestaltungsplan-Legende** mit acht namentlich benannten, datierten Sondernutzungsplan-
  Perimetern (Binz/Maur/Ebmatingen, z.B. «Buegenegg» 1986/1987, «Herr zur Mühle» 2009/2010,
  «Ober-Zürichstrasse» 2006/2007). Das konkretisiert den seit K2 offenen Hinweis im Artikel
  [[kartenportale-zonenplan-zh]] («0156-Grundnutzung zeigt nur die Rahmennutzung, Gestaltungs-
  plaene sind eigene Festlegungen») erstmals mit einem realen ZH-Registerbeispiel — analog zum
  bereits dokumentierten SZ-Fall Reckholdern/Einsiedeln ([[recht-norm-baurechtsanalysen-
  benchmarks]]), wo ein Gestaltungsplan den Waldabstand reduzierte. Zusaetzlicher Format-Delta zu
  K8: geoglatt.ch liefert (anders als der login-freie ZH-OGD-WFS) nur ein **statisches
  Raster-Poster-PDF**, kein maschinenlesbares Format → NEU Abschnitt [[kartenportale-zonenplan-
  zh]], Status **emerging** (⚠ Datenstand 2012, vor Verwendung in einem realen Maur-Projekt gegen
  die aktuelle Gemeinde-BZO/das Amtsblatt gegenzupruefen).
- **Kein weiterer Kartenportale-Fund:** der vollstaendige Ordnerdiff (387 PL-01-Verzeichnisse)
  ergab ausser K59 nur binaere Geodaten-Lieferartefakte (DWG/GDB/DXF-Importdateien fuer
  ArchiCAD/QGIS/CloudCompare aus realen JANS-Projekten Muenchenwiler/Grassen/Pfaeffikon/
  Willerzell/Wald ZH/Thalwil), die bereits methodisch durch K3/K9 (swissALTI3D/swissBUILDINGS3D-
  Bezug) abgedeckt sind — kein inhaltlicher Delta, keine weitere Bearbeitung.

## Funde (Energie) — keine

- Derselbe Dateinamens-/Ordnerdiff auf PL-04 (46 Verzeichnisse) ergab **keinen neuen Fund**.
  Ein vermeintlicher Kandidat (die drei in Run 53 als «blockiert EDEADLK» gefuehrten Dateien
  `https.docx` ×2, `Bauvorschriften Versickerung.docx`, `Auf dem.docx`) erwies sich beim Lesen
  als **Duplikat von Run 61 (E42), das noch am selben Tag lief** — dort bereits korrekt als
  bareURL-Links bzw. fragmentarische, abgebrochene JANS-Notiz ohne Delta abgeschlossen. Register
  war bereits korrekt, kein erneuter Wiki-Eintrag noetig (nur Bestaetigung in `_INGESTED.md`).
  Die fuenf PV-Typ-Ordner (`Solaranlage/A–E …`) und `_Energienachweise/` erwiesen sich als bereits
  vollstaendig ueber Dateipfad-Zitate in [[energie-pv-eignung-typenwahl]] abgedeckt — kein
  Ordner-Delta, nur Bestaetigung der bestehenden Pfadverweise.
- Energie bleibt nach 45+ Curriculum-Lektionen ohne offenen Backlog-Punkt (bis auf die zwei
  periodischen MuKEn-2025-ZH-Refresh-Punkte E5/E9, zuletzt am 2026-07-25 selbst per WebSearch
  unveraendert bestaetigt — kein erneuter Refresh in diesem Lauf sinnvoll, da kein Tagesabstand).

## Verifikations-Stufe (Rule auto-verbesserungen 260712)

Keine Status-Hebung auf `established` ohne direkte Primaerquellen-Lektuere. K59 bleibt bewusst
auf **emerging** (Einzelquelle, historischer 2012er-Planexport ohne eigenen WFS-Layer, RRB-
Genehmigungsdaten aus der Planlegende abgelesen statt amtlich zweitverifiziert) — kein
Adversarial-Verify noetig, da keine strittige Rechtsfrage, sondern reine Kartenlektuere mit
offen ausgewiesenem Alters-Caveat.

## Methodische Bestaetigung

Der dateinamens-/groessenbasierte statt begriffsbasierte Scout (Lehre aus Run 65) funktioniert:
die 37-MB-Datei war unter jedem plausiblen Suchbegriff (Zonenplan, Gestaltungsplan, Maur) nicht
aufgefallen, weil sie schlicht nie einzeln gepruef wurde — der Ordnerdiff gegen `_INGESTED.md`
(Verzeichnisname literal gesucht) deckte sie sofort auf. Gleichzeitig zeigte die Energie-
Gegenprobe die Kehrseite: ein Diff kann einen bereits am selben Tag durch einen anderen Lauf
(Run 61) geschlossenen Punkt erneut als "offen" erscheinen lassen, wenn das Stand-Lesen nicht
bis zum aktuellsten Report vordringt — hier rechtzeitig durch direkten Dateiinhalt-Abgleich
erkannt, bevor ein Doppel-Eintrag entstand.

## Token-Vollgas-Bilanz

Ein grosser, gut belegter Fund (K59) plus eine sauber dokumentierte Nicht-Fund-Gegenprobe (beide
Domaenen) — deutlich unter dem Zielkorridor 10-16, aber konsistent mit der Bilanz der letzten
drei Kartenportale/Energie-Laeufe (63/64/65: je 4-6 Funde). Nach 67 Kartenportale- und 45+
Energie-Curriculum-Lektionen ist der dateinamensbasierte Scout die einzige noch ergiebige
Methode; ein weiterer Durchgang mit derselben Technik duerfte kaum noch etwas liefern, da beide
Ordnerbaeume jetzt vollstaendig gegen das Register gespiegelt sind. Bewusst keine kuenstlichen
Zusatzfragen erzeugt (Rule wissens-bibliothekar: nichts erfinden, keine Pseudo-Tiefe).

## Naechster Schritt

Fuer den naechsten Recht/Norm+Brandschutz-Turnus (Run 68 laut Rotation): kein bekannter
Backlog-Punkt mehr (Run 66 schloss den letzten offenen SWKI-Punkt). Fuer den uebernaechsten
Kartenportale/Energie-Turnus: der Dateinamens-/Ordnerdiff ist jetzt fuer beide Baeume einmal
vollstaendig gelaufen — ein erneuter Durchgang lohnt sich erst wieder, wenn neue Dateien auf
SharePoint dazukommen (z.B. aus einem neuen Maur- oder anderen Projekt) oder wenn ein reales
Projekt eine der offenen Randfragen (z.B. D9/Skill-Entscheid-Historie) aktiviert.
