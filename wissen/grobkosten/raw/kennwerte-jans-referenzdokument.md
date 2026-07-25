# Roh-Beleg: "Kennwerte Jans" — JANS-eigenes Referenzdokument (SharePoint IMMO - 06 Kennwerte)

Quelle: SharePoint `IMMO - 06 Kennwerte/_Kennwerte Jans.docx` (Raphael Jans, Stand 25.03.2025).
Neue Quelle Run 5 (26.07.2026) — erstmals ausserhalb der Projektordner `AR - 01`/`AR - 07`
geprüft, siehe `training/quellen-inventar.md` Run 5. Kein Einzelprojekt-Kostendokument,
sondern ein von Raphael selbst geführtes, buero-uebergreifendes Referenzblatt mit
Umrechnungsfaktoren und einem indexierten Erstellungskosten-Benchmark.

## Inhalt des Dokuments (vollständig, wörtlich übernommen)

### Flächenfaktor aGF → bGF

| Baukategorie | Verhältnis | Faktor |
|---|---|---|
| Altbau | aGF zu bGF | 0.8 |
| Neubau | aGF zu bGF | 0.9 |

Kein Kosten-Kennwert, aber Provenienz-Hinweis für künftige aGF/bGF-Umrechnungen (Querbezug
`immobilienbewertung/wiki/flaechendefinitionen-sia`).

### Erstellungskosten-Benchmark "Wohnen Individuell" (Ein-/Zweifamilienhäuser)

Ausgangslage laut Dokument: "Gattung Wohnen Individuell, Ein- und Zweifamilienhäuser, Kosten
BKP2, Medianwert, 2020" — **CHF 2'900.-/m² GF** (Quelle im Dokument nicht explizit benannt,
Kontext/Nachbardokument `_Kennwerte_Links.docx` verweist auf Wüest-Reports/Immo-Monitoring
als übliche JANS-Quelle für solche Medianwerte — nicht in diesem Lauf gegengeprüft).

Indexierung durch Raphael Jans (Herleitung im Dokument nicht mit Indexquelle belegt):

| Jahr | Index | CHF/m² GF (BKP 2) |
|---|---|---|
| 2020 | 100 | 2'900.- |
| 2025 | 116 | 3'365.- |

Hochrechnung BKP 2 → BKP 1-5 (Anteil BKP 2 am Total laut Dokument: 75 %):

| BKP-Gruppe | Anteil | CHF/m² GF |
|---|---|---|
| BKP 2 | 75 % | 3'365.- |
| **BKP 1-5** | **100 %** | **4'485.-** |

**Bezugsgrösse: CHF/m² GF (nicht CHF/m³ GV)** — abweichend von der in `wiki/kennwerte.md`
geführten m³-GV-Tabelle. Standard/Ausbauniveau im Dokument nicht spezifiziert ("Medianwert").

### Angewandtes Rechenbeispiel: "Thalwil Bohlweg 1"

Im Dokument direkt an den Benchmark angeschlossen — vermutlich zur Illustration der Methode
an einem eigenen Projekt gerechnet:

- GF inkl. Keller, ohne Tiefgarage: 950 m²
- Preis: 950 m² × CHF 4'485.-/m² GF BKP 1-5 = **CHF 4'262'000.-** (BKP 1-5 inkl. Keller)
- Tiefgarage: 8 Sparplätze × CHF 42'000.- = CHF 335'000.-
- **Total: CHF 4'598'000.-** (im Dokument gerundet ">>> 4.6 Mio")
- HNF-Kennwert (Gegenprobe): CHF 4'262'000.- / 580 m² HNF = **CHF 7'350.-/HNF (BKP 1-5)**

**Wichtiger Vorbehalt zur Projekt-Identität:** Die Adresse "Thalwil Bohlweg 1" ähnelt dem
bereits in dieser KB geführten Projekt "2414 THALWIL, Bohlweg 3" (`raw/2414-thalwil.md`,
Bauherrschaft Stefan Tschopp) — dabei handelt es sich aber um ein reines EFH-Umbau-/
Aufstockungsprojekt mit Teilvolumen von 90-160 m³ (Gesamtkosten CHF 526'300 bzw. 482'000),
nicht um einen Neubau mit 950 m² GF und 8-Platz-Tiefgarage. Hausnummer weicht ab (1 vs. 3),
Grössenordnung passt nicht zusammen (Faktor ~10 in den Gesamtkosten). **Hier NICHT als
dasselbe Projekt gleichgesetzt** — entweder ein anderes/benachbartes Projekt (nicht in
dieser KB inventarisiert) oder ein früherer/verworfener Planungsstand desselben Grundstücks
mit grösserem Volumen. Offene Frage, siehe `wiki/QUESTIONS.md`.

## Einordnung für die Kennwerte-KB (Reife-Entscheid Run 5)

- **Nicht direkt in die CHF/m³-GV-Tabelle übernommen.** Die Bezugsgrösse ist m² GF, nicht
  m³ GV — eine Umrechnung würde den in `wiki/kennwerte.md` bereits als "needs-decision"
  geführten, ungeklärten GV/GF-Faktor erfordern (Wissens-Chef Run 15, 25.07.2026). Gemäss
  Leitplanke "fehlende Bezugsgrössen nie rechnerisch ergänzen" wird hier **nicht** selbst
  umgerechnet.
- **Als eigenständiger m²-GF-Benchmark dokumentiert** (neue Sektion in `wiki/kennwerte.md`,
  parallel zur m³-Tabelle geführt) — Nutzung "Wohnen Individuell EFH/ZFH", Provenienz JANS-
  eigenes Referenzblatt, Herleitungs-/Indexquelle selbst nicht weiter belegt (Reife bleibt
  entsprechend vorsichtig: "JANS-Referenzwert, Index-Herleitung nicht rückverfolgt").
- **Das Rechenbeispiel "Thalwil Bohlweg 1" wird NICHT als eigener Kennwert-Beleg geführt**
  (es ist eine Anwendung des obigen Benchmarks auf ein mutmasslich reales Projekt, kein
  unabhängiger Realwert/keine Schlussabrechnung) — dient nur als Kontroll-/Beispielrechnung
  und zur Illustration der 8-Platz-TG-Pauschale (CHF 42'000.-/Parkplatz BKP 1-5).
- **TG-Kennwert CHF 42'000.-/Parkplatz** als separate Notiz aufgenommen (Zuschlagsposition,
  nicht im m³-GV-Kennwert der Haupt-Nutzungsart enthalten, sofern die TG separat ausgewiesen
  wird) — Provenienz identisch (JANS-Referenzblatt, kein unabhängiger Beleg).

## Weitere Dokumente in dieser Quelle (SharePoint `IMMO - 06 Kennwerte`), geprüft und NICHT verwertet

- `_Kennwerte_Links.docx` (29.12.2023): reine Link-Sammlung zu externen Benchmark-Quellen
  (ZH Wohnbaupreisindex, werk-material.online/CRB, keevalue.ch, BFS Baupreise, Wüest Reports,
  Immo-Monitoring) — keine eigenen Zahlenwerte, als "weiterführende Quellen" vermerkt, nicht
  als Kennwert übernommen.
- `pms/5.34_BR_Grobkosten.pdf`: Benutzerhandbuch der Drittsoftware "BBase Grobkosten" (PMS
  Informatik AG, Stand 28.11.2012) — generische Methodik-/Werbeliteratur eines Drittanbieters,
  KEIN JANS-Projektdatum, keine JANS-eigenen Zahlen. Nicht als Kennwert-Beleg verwendet
  (ausserhalb Scope: kein realer Kostenfall).
- `BUERO/` (4 Screenshots + `hbre Analyse Zürich Büromarkt 082024.pdf`): Büro-**Marktmiet**-
  Analyse (hbre), keine Erstellungskosten — ausserhalb Scope dieser KB.
- `WOHNEN Ausnützungsziffer/`, `_Archiv/`: leere Ordner, keine Dateien.
- `Healthcare/` (inkl. `HEIM/Kennwerte von Alters und Pflegeheime`, `Archiset Wirtschaftlichkeit`,
  Umbaukosten-Dokumente): **bewusst nicht geprüft/verwertet** — gehört gemäss `PROGRAMM.md`
  ("Healthcare gehört nicht hierher") in den Skill `kostenschaetzung`, nicht in `grobkosten`.
  Empfehlung an den `kostenschaetzung`-Loop weitergeben (siehe `wiki/QUESTIONS.md`).
- `WOHNEN Baumasse/Flächenkonzeption Wohnen.docx`+`.pdf`: bereits bekannt und in der KB
  `immobilienbewertung` verarbeitet (`wiki/flaechendefinitionen-sia`, Stand 20.10.2024) —
  keine Dublette angelegt.

Abrufdatum: 2026-07-26.
