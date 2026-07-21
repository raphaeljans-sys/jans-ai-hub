# Training Run 56 — Planungsgrundlagen (2026-07-22)

**Vorgabe:** Intensiv-Lauf gemaess `training/PROGRAMM.md` (Verifikations-Stufe, Intensivphase,
Token-Vollgas: 2 Domaenen, 10-16 Fragen). Rotation nach Run 54 (2026-07-20, Brandschutz +
Kartenportale) → **Kartenportale (PL-01)** und **Energie (PL-04)**, wie dort vorgemerkt.

## Vorbemerkung: reduzierter Umfang, mit Begruendung

Dieser Lauf bleibt unter dem Token-Vollgas-Zielkorridor (10-16 Fragen). Zwei Gruende, beide
dokumentiert statt verschwiegen:

1. **Delegation an Fach-Agenten fehlgeschlagen.** Die geplante Parallelisierung ueber die Agenten
   `geodaten-beschaffer` (Kartenportale) und `energie-berater` (Energie) brach beide Male nach dem
   ersten `Read`-Aufruf ab (0 protokollierte Tool-Aufrufe, Abbruch nach 3-37 Sekunden trotz erneutem
   Anstossen). Ursache nicht abschliessend geklaert — vermutlich ein Sandbox-/Berechtigungsproblem
   fuer Hintergrund-Subagenten beim Zugriff auf den OneDrive-Pfad. Der Lauf wurde daraufhin direkt
   in der Hauptsession durchgefuehrt (kein Fan-out), was das erreichbare Volumen begrenzt.
2. **Ein grosser Teil der Kartenportale-Domaene war bereits erledigt, aber nicht registriert**
   (siehe unten) — echte Delta-Fragen wurden dadurch seltener, als die Ordnerstruktur vermuten liess.

Auch der geplante Workflow-Orchestrierungs-Ansatz (von Raphael fuer diesen Loop freigegeben,
PROGRAMM.md) liess sich nicht nutzen: der Workflow-Aufruf wurde vom Harness mit «Review dynamic
workflow before running» blockiert und liess sich nicht durch Wiederholung ausloesen.

---

## Kartenportale (PL-01) — Registrierungs-Luecke geschlossen, kein neuer Fund

Beim Vorbereiten des SZ-Naturgefahren-Endpunkts (seit Run 22 als hoechste Prioritaet vermerkt)
zeigte sich: **er war bereits geloest.** Der Wiki-Artikel `kartenportale-naturgefahren-
objektschutz.md` §8c und der Connector `geo-sz.mjs` enthalten einen vollstaendigen, live
verifizierten Fund mit dem Datei-internen Vermerk **«Run 55, 2026-07-21»**:

- Endpunkt gefunden ueber die **opendata.swiss CKAN-API** (`package_show?id=gefahrenkarte1`) →
  fuehrt zu `map.geo.sz.ch/mapserv_proxy`, **WFS 1.1.0** (nicht 2.0.0/GeoJSON wie beim ZH-Pendant).
- Drei Layer: `ch.sz.a012b.naturgefahrenkarte.gefahrenflaechen.ueberlagert` (Perimeter A,
  parzellenscharf), `.hinweisflaechen.ueberlagert` (Perimeter B), `.erhebungsgebiet`
  (Kartierungsstand).
- Live verifiziert: **Reckholdernstrasse 20, Willerzell** — 11 Gefahrenflaechen, gemischte
  Rutsch-Gefaehrdungsstufen auf derselben Parzelle (deckt sich mit dem dort bereits dokumentierten
  Objektschutzkonzept 26.09.2023). Negativkontrolle **Wangen SZ Seeufer** — 0 Treffer, schema-valide.
- Connector-Flag `geo-sz.mjs --produkt naturgefahren` gebaut und getestet.

**Das Problem: nichts davon war registriert.** Weder `curriculum.md` noch `wiki/QUESTIONS.md`
noch `CHANGELOG.md` noch ein `outputs/`-Report erwaehnten diesen Fund — er stand einzig im
Wiki-Artikel und im Connector-Kommentar selbst. Dieser Lauf hat das nachgeholt:

- **NEU K45 in `curriculum.md`** (Kartenportale-Domaene) mit vollem Beleg und dem Hinweis, dass
  es sich um eine retroaktive Registrierung handelt, nicht um einen Fund dieses Laufs.
- **CHANGELOG-Eintrag** fuer heute ergaenzt (der urspruengliche Fund selbst hat dort weiterhin
  keinen eigenen historischen Eintrag vom 21.07. — das laesst sich nachtraeglich nicht sauber
  rekonstruieren, ohne ein falsches Datum vorzutaeuschen; der Verweis im heutigen Eintrag macht
  die Lehre transparent).

**Weiterer Delta-Scan** (Werkleitungskataster-Subordner, Baumkataster, `cadastre.ch`,
`bfs.admin.ch`-Statistikdefinitionen) fand **keine weiteren unerschlossenen Themen** — alles
bereits mit Backlinks in bestehenden Artikeln verankert. Die Kartenportale-Domaene ist nach
55 Vorlaeufen faktisch ausgeschoepft; echte neue Deltas werden seltener und kleinteiliger.

**Lehre fuer kuenftige Laeufe:** vor jedem Connector-/Wiki-Fund pruefen, ob ein
Curriculum-/CHANGELOG-Eintrag existiert — nicht nur den Wiki-Artikel selbst als Beleg nehmen.
Ein Fund ohne Registrierung ist aus Sicht des naechsten Laufs unsichtbar und wird sonst leicht
ein zweites Mal "gesucht".

---

## Energie (PL-04) — D9 bestaetigt offen, ein Delta nachgetragen (nach Selbstkorrektur)

### D9 (aelteste offene Energie-Frage) — kein neuer Fund, Luecke bestaetigt

`_Betriebsenergie` vollstaendig neu gelesen (alle 15 Bild-Dateien derselben Praesentation:
EFH Baujahr 1957/120 m², PV 14 kWp + 11.5 kWh Batterie + WP-Boiler + Daemmung, Amortisation
7 Jahre bei 36'000 CHF Investition / 21'000 CHF netto nach Foerderung). Dieser Fall war
**bereits vollstaendig dokumentiert** (`energie-betriebsenergie-pv-wirtschaftlichkeit.md` §2).
Ein **MFH-/ZEV-Fall** (Eigenverbrauchsgemeinschaft, die eigentliche D9-Frage) ist im Ordner
**nicht vorhanden** — die Luecke bleibt in `wiki/QUESTIONS.md` bestaetigt offen, mit Refresh-Vermerk.

### CLT/Brettsperrholz-U-Wert — Selbstkorrektur statt Doppelspur

Der Ordner `U Wert berechnung/clt` + `U Wert berechnung/Grassen Biwak` wurde als vermeintlich
unerschlossen identifiziert und ein neuer Artikel angelegt. Beim Nachtragen der Backlinks fiel
auf: **dieselbe Quelle** ("CLT by Stora Enso — Technische Dokumentation Bauphysik") war bereits
in **Run 25 (E13/E14, 2026-07-13)** ausgewertet und in `energie-uebersicht.md` §U-Wert dokumentiert
— inklusive Waermeleitfaehigkeit (λ_CLT = 0.12 W/mK, EN ISO 10456), Beispielrechnungen und dem
Fallbeispiel Biwak Grassen. Der neu angelegte Artikel wurde deshalb **wieder geloescht**.

**Genuiner Delta-Wert, nachgetragen im bestehenden Artikel statt in einem neuen:**
- Die **vollstaendige Vergleichstabelle S.10-11** derselben Stora-Enso-Doku (CLT 100 mm 3s +
  Mineralwolle 40-240 mm, U-Werte 0.47→0.13 W/m²K, plus Gipskarton-Variante) war noch nicht
  erfasst — jetzt in `energie-uebersicht.md` §U-Wert ergaenzt, inkl. Vorprojekt-Faustregel
  (~140-160 mm Zusatzdaemmung fuer Minergie-taugliche CLT-Aussenwand).
- **Beleg-Delta markiert:** der Fall Biwak Grassen (KI-gestuetzte, unbelegte Berechnung) rechnet
  mit λ = 0.13 statt dem herstellerbelegten 0.12 W/mK — ~8 % Differenz, ohne Praxisrelevanz fuer
  das Ergebnis, aber jetzt als Beleg-Bruch im Artikel vermerkt statt stillschweigend übernommen.

**Lehre (in curriculum.md E41 festgehalten):** vor einer Artikel-Neuanlage curriculum.md nach
Themenstichwort durchsuchen, nicht nur nach Artikel-Dateinamen — ein Ordnername ("noch nie
gesehen") ist kein verlaesslicher Indikator dafuer, dass der **Inhalt** noch nie ausgewertet wurde.

**Weiterer Delta-Scan** (endk.ch-Unterordner, `forumenergie.ch`, `wissen.minergie.ch/
Kursunterlagen_230926`, Solaranlage-Unterordner `solarapp.ch/Willerzell`, `Dachausstiege`,
`solar-home.ch/Sunskin`) fand **ebenfalls keine weiteren unerschlossenen Themen** — durchgehend
bereits mit Quellenbeleg in bestehenden Artikeln verankert.

---

## Verifikations-Stufe

Beide inhaltlichen Ergaenzungen dieses Laufs (CLT-Vergleichstabelle, D9-Refresh) sind **Ergaenzung
bereits belegter Artikel** mit Herstellerquelle (Stora Enso) bzw. Negativbefund (kein neuer
Endpunkt/Kennwert behauptet) — beide bleiben auf Status `emerging`/`established` wie zuvor, keine
neue Status-Hebung auf `established`, die eine Widerlegungspruefung ausgeloest haette. Die
retroaktiv registrierte K45 (SZ-Naturgefahren) war in Run 55 bereits **live verifiziert**
(Positiv-/Negativkontrolle) — keine zusaetzliche Pruefung noetig, nur die Registrierung nachgeholt.

---

## Register nachgefuehrt
- `training/curriculum.md`: K45 (retroaktiv) + D9-Refresh + E41 (Selbstkorrektur-Eintrag).
- `wiki/QUESTIONS.md`: D9-Eintrag um Run-56-Refresh ergaenzt (weiterhin offen).
- `wiki/energie-uebersicht.md`: §U-Wert um Vergleichstabelle + Beleg-Delta ergaenzt,
  `last_updated` auf 2026-07-22 gesetzt.
- `wiki/energie-betriebsenergie-pv-wirtschaftlichkeit.md`: Refresh-Vermerk D9 ergaenzt.
- `CHANGELOG.md`: heutiger Eintrag inkl. Infrastruktur-Befunde.
- `wiki/INDEX.md`: keine Aenderung noetig (kein neuer Artikel — der versehentlich angelegte wurde
  vor Registrierung wieder entfernt).

## Naechster Lauf
- **Rotation:** Recht/Norm (PL-02) + Brandschutz (PL-03), wie im Standard-Rhythmus vorgesehen.
- **Vor dem naechsten Kartenportale-/Energie-Lauf:** pruefen, ob die beiden Infrastruktur-Probleme
  (Agent-Delegation bricht ab; `git status` haengt auf dem SMB-Mount) inzwischen behoben sind —
  beide begrenzen den erreichbaren Umfang pro Lauf erheblich.
- **Kartenportale/Energie sind beide nahe der Ausschoepfung** nach 55+ Laeufen. Kuenftige Runden
  in diesen zwei Domaenen sollten kuenftig eher **Register-Audits** (verwaiste Funde wie K45 finden)
  als reine Neu-Recherche priorisieren, bevor neue Ordner gesucht werden.
