# Tenant-Speicher-Hygiene: Report 17.09.2026

Tenant: raphaeljans.onmicrosoft.com
Lauf: Scheduled Task `tenant-hygiene-weekly`, Phase 1, Messzeitpunkt 20:08 CEST, Station MacBook Pro
Connector: M365 App-only/Zertifikat (headless), erreichbar
Takt: täglich · heute Donnerstag, keine Wochenpflicht

## Big Points

1. **826.72 GB belegt.** Auslastung **79.19 %** am heute erstmals gemessenen Speicherkontingent
   (1044.00 GB), freier Puffer 217.28 GB. Siehe Ziffer 3: die Reihe rechnete bisher mit einem zu
   grossen Limit.
2. **Der Tenant ist über 24 h um 0.02 GB geschrumpft** (Vorreport 16.09. 20:10: 846'588 MB, heute
   846'563 MB). Erster Tag ohne Zuwachs seit Beginn der Messreihe.
3. **Die offene Frage aus dem Vorreport ist beantwortet, und zwar app-only.** Die
   Versions-Richtlinie greift: die Site erbt vom Tenant, und der Tenant steht auf
   Auto-Expiration. Der delegierte Login von Raphael ist dafür **nicht** nötig. Details unten.
4. **Korrektur am Speicherlimit: 1044.00 GB statt der bisher unterstellten 1054 GB.** Die ganze
   Reportreihe hat die Auslastung um rund 0.75 Prozentpunkte zu niedrig ausgewiesen.
5. **Versionszuwachs praktisch null: +0.01 GB** (gestern +0.98 GB). Ein Tag trägt den Schluss
   nicht allein, passt aber zu Ziffer 3.
6. **Restlaufzeit 92 bis 354 Tage**, je nach unterstelltem Tempo. Auto-Bereinigung: keine, 0 GB.

## Die Versions-Richtlinie greift: Beleg statt Vermutung

Der Vorreport hielt fest, dass alle zehn versionierten Bibliotheken von JANS.PROJEKTE weiterhin
auf `MajorVersionLimit: 500` stehen, obwohl die Richtlinie am 15.09. um 17:28 gesetzt wurde, und
nannte als nächsten Schritt die delegierte Abfrage `Get-PnPSiteVersionPolicyStatus` über Raphaels
interaktive Anmeldung. **Dieser Schritt ist nicht nötig.** Zwei app-only lesbare Befehle
beantworten die Frage:

`m365 spo site versionpolicy get --siteUrl .../sites/JANS.PROJEKTE`:

```
{"defaultTrimMode":"inheritTenant","defaultExpireAfterDays":null,"majorVersionLimit":-1}
```

`m365 spo tenant settings list` (relevante Felder):

```
EnableAutoExpirationVersionTrim: true
ExpireVersionsAfterDays: 30
MajorVersionLimit: 500
StorageQuota: 1069056   (MB)
```

**Was das belegt.** Die Site JANS.PROJEKTE führt keine eigene Versionsrichtlinie
(`majorVersionLimit: -1`), sondern erbt die des Tenants (`inheritTenant`). Auf Tenant-Ebene ist
die automatische Ablauf-Trimmung **aktiv** (`EnableAutoExpirationVersionTrim: true`) mit einer
Aufbewahrung von 30 Tagen. Damit ist auch erklärt, warum das Feld `MajorVersionLimit` der
einzelnen Bibliotheken unverändert auf 500 steht und weiter stehen bleiben wird: die
Auto-Expiration arbeitet über die **Ablaufzeit**, nicht über die Anzahlgrenze, und überschreibt
das Feld nicht. Die Bibliotheks-Grenze war die ganze Zeit der falsche Zeiger — genau die
Hypothese, die der Vorreport als nicht entscheidbar offenliess.

**Was das nicht belegt.** Ob `EnableAutoExpirationVersionTrim` durch Raphaels Set-Befehl vom
15.09. auf `true` kam oder schon vorher so stand, ist aus diesen Werten nicht ablesbar. Für den
Betrieb ist das ohne Belang: der Zustand ist der gewünschte. Ebenso wenig ist aus einem einzelnen
Tag mit +0.01 GB Versionszuwachs bewiesen, dass die Trimmung laufend greift; das zeigen die
nächsten Läufe.

**Der eigentliche Befund ist ein Wege-Befund.** `spo site versionpolicy get` stand seit dem
14.09. im Wege-Register `connectors/WEGE.md` — als Randnotiz in der Zeile über die fehlenden
Set-Befehle. Der Weg war vorhanden und wurde zwei Läufe lang nicht benutzt, während der Report
den delegierten Login als einzigen Ausweg führte. Das ist wörtlich der Fall aus Rule
`wege-und-vollmachten`: ein vorhandener Weg, den niemand findet, ist so gut wie keiner. Nachtrag
im Register gesetzt.

## Korrektur: das Speicherkontingent ist 1044 GB, nicht 1054 GB

`StorageQuota` aus `spo tenant settings list` beträgt **1'069'056 MB = 1044.00 GB**. Die
Reportreihe hat bisher mit 1054 GB gerechnet, einem Wert aus der Skill-Beschreibung («Limit
~1054 GB / 1.03 TB»), der nie am Tenant gemessen wurde.

| Grösse | mit gemessenem Quota | mit bisher unterstelltem Quota |
|---|---|---|
| Auslastung | **79.19 %** | 78.44 % |
| Freier Puffer | **217.28 GB** | 227.28 GB |
| 88-%-Marke | 918.72 GB, 92.00 GB entfernt | 927.52 GB, 100.77 GB entfernt |
| 90-%-Marke | 939.60 GB, 112.88 GB entfernt | 948.60 GB, 121.85 GB entfernt |

Die Abweichung ist klein und ändert am heutigen Sende-Entscheid nichts, aber sie geht in die
falsche Richtung: der Puffer ist 10 GB kleiner als berichtet und die 88-%-Schwelle 8.77 GB näher.
**Ab diesem Report gilt der gemessene Wert.** Die Prozentwerte älterer Reports bleiben stehen wie
geschrieben; sie sind um rund 0.75 Prozentpunkte zu niedrig zu lesen. Gleiche Familie wie Rule
`auto-verbesserungen` 260807: ein Wert, der plausibel aussieht und nie gemessen wurde.

## Wachstum: Beleg und Plausibilität getrennt

Beleg:

- Tenant-Summe `sum([].StorageUsage)`: **846'563 MB** heute gegen 846'588 MB am 16.09. 20:10,
  Zeitraum **genau ein Tag** (23 h 58). Delta **−25 MB = −0.02 GB**. Summe über die Einzelwerte
  nachgerechnet, identisch.
- Seit dem Trim vom 15.09. (845'305 MB, 20:10): **+1'258 MB über zwei Tage = +0.61 GB/Tag**.
- JANS.PROJEKTE 548.42 → **548.37 GB** (−0.05 GB), `VersionSize` 53.75 → **53.76 GB** (+0.01 GB).
  Die Bibliothek «01 Projekte» wuchs dabei von 30'735 auf **30'772 Elemente** (+37), es gab also
  Schreibaktivität.
- Zweite Bewegungen: kispi +0.03 GB, SE −0.02 GB. Alle übrigen Sites unverändert (Abweichung
  unter 0.01 GB).
- Papierkorb erste Stufe tenantweit **691 Objekte / 1.93 GB** gegen 689 / 1.93 GB gestern.

Plausibilität (nicht bewiesen): dass an einem Tag mit 37 neuen Dateien in der grössten Bibliothek
der Versionsverlauf nur um 0.01 GB wächst, während er tags zuvor um 0.98 GB und vor dem Trim um
2 bis 2.5 GB pro Tag wuchs, passt zur aktiven Auto-Expiration. Ein einzelner Tag ist dafür kein
Beweis; erst eine Woche auf diesem Niveau ist einer.

Restlaufzeit, Puffer 217.28 GB: Nach-Trim-Schnitt 0.61 GB/Tag → **354 Tage**; 14-Tage-Schnitt
1.75 GB/Tag → 124 Tage; Vortrim-Tempo 2.36 GB/Tag → **92 Tage**. Das heutige Delta ist negativ und
taugt für sich allein nicht zur Hochrechnung. Der 14-Tage-Schnitt bleibt unbrauchbar, solange der
Trim vom 15.09. mit −92.18 GB darin liegt.

## Sites mit Belegung

| Site | Belegung | Delta 24 h | Versionen | Anteil | Papierkorb 1. Stufe | 2. Stufe | Letzte Änderung (UTC) |
|---|---|---|---|---|---|---|---|
| /sites/JANS.PROJEKTE | 548.37 GB | −0.05 GB | 53.76 GB | 9.8 % | 431 Obj / 1.30 GB | leer | 17.09.2026 17:26 |
| /sites/SE | 108.08 GB | −0.02 GB | 1.24 GB | 1.1 % | leer | leer | 10.09.2026 22:04 |
| /sites/AD | 51.84 GB | 0.00 GB | 3.37 GB | 6.5 % | 36 Obj / 0.01 GB | leer | 17.09.2026 08:39 |
| /sites/PL | 40.15 GB | 0.00 GB | 3.50 GB | 8.7 % | leer | leer | 14.09.2026 22:00 |
| /sites/kispi | 34.28 GB | +0.03 GB | 0.34 GB | 1.0 % | 209 Obj / 0.57 GB | leer | 17.09.2026 15:45 |
| /sites/BI | 18.25 GB | 0.00 GB | ~0 GB | 0.0 % | leer | leer | 10.09.2026 22:05 |
| /sites/WE | 9.08 GB | 0.00 GB | 0.42 GB | 4.6 % | leer | leer | 10.09.2026 22:05 |
| /sites/MO | 6.95 GB | 0.00 GB | 0 GB | 0.0 % | leer | leer | 07.08.2026 01:10 |
| /sites/WO | 5.33 GB | 0.00 GB | 0.31 GB | 5.8 % | leer | leer | 07.08.2026 01:10 |
| /sites/IMMO | 4.14 GB | 0.00 GB | 1.56 GB | 37.7 % | 5 Obj / 0.00 GB | leer | 17.09.2026 07:38 |
| /sites/JANSDATENAUSTAUSCH | 0.25 GB | 0.00 GB | ~0 GB | 0.0 % | 10 Obj / 0.05 GB | leer | 05.09.2026 17:04 |

Zeitstempel roh in UTC (Monat nullbasiert umgerechnet), Lokalzeit UTC+2. Neun Sites unter
100 MB ohne Papierkorb-Erhebung: PA, Test, zwei AllCompany-Restsites, /search, beide
Root-Sites, WBHafenarealSZ, HLEBWEB. Insgesamt 20 Sites.

Versionsverlauf tenantweit **64.50 GB** (7.8 % der Belegung), davon 83.3 % auf JANS.PROJEKTE.

## Klassifizierung

- **Versions-Bloat:** JANS.PROJEKTE 53.76 GB, formal über der 20-GB-Schwelle. Das ist der Sockel
  nach dem Trim auf fünf Versionen plus zwei Tage; bei aktiver Auto-Expiration kein hebbares
  Potenzial. IMMO 37.7 % relativ, absolut 1.56 GB ohne Bedeutung.
- **Papierkörbe:** alle elf zweiten Stufen leer, **vollständig im Hauptkontext gemessen** (siehe
  Werkzeug-Notiz). Erste Stufen 691 Objekte / 1.93 GB.
- **Tote/leere Sites:** unverändert WBHafenarealSZ (0 MB, letzte Änderung 06.10.2025), Test, zwei
  AllCompany-Restsites; keine über 18 Monate.

## Durchgeführte Auto-Bereinigung

**Keine, 0 GB.** Kein `clear` abgesetzt, keine zweite Stufe hatte Inhalt — das ist der fünfte
gleichförmige Befund in Folge (13.07., 27.07., 03.08., 13.08. und seither durchgehend). Erste
Stufen unangetastet.

## Werkzeug-Notiz: Fehlbefund des Subagenten

Die Papierkorb-Erhebung ging nach der Modell-Politik an einen Haiku-Subagenten. Dieser meldete
nach 34 Werkzeugaufrufen, **der M365-Connector sei defekt** («CLI nicht installiert», Empfehlung
`npm install -g @pnp/cli-microsoft365`, Vorschlag, die Befehle auf dem Mac Mini von Hand zu
fahren). Der Befund ist falsch: derselbe Connector hat im Hauptkontext unmittelbar davor und
danach jeden Befehl korrekt beantwortet. Der Agent hat die Befehle offenbar ohne das
`m365`-Präfix beziehungsweise als Shell-Kommando abgesetzt.

Nach Rule `auto-verbesserungen` 260729b werden Agenten-Befunde, die eine Quelle als defekt
melden, nicht ohne eigene Gegenprüfung übernommen. Die vollständige Erhebung (11 Sites, zweite
und erste Stufe) wurde daraufhin im Hauptkontext nachgeholt; alle Werte dieses Reports sind
selbst gemessen. Kein Blocker im Sinn der Sende-Schwelle, da die Messung vollständig gelang.

## Offene Phase-2-Empfehlungen

1. **Versions-Richtlinie: erledigt, keine Aktion nötig.** Die zuletzt geforderte delegierte
   Statusabfrage über Raphaels interaktiven Login entfällt, der Zustand ist app-only belegt
   (Auto-Expiration aktiv, 30 Tage, Site erbt vom Tenant). Zu beobachten bleibt allein, ob der
   Versionszuwachs auf dem heutigen Niveau bleibt.
2. **Versions-Trim: keine Wiederholung.** Sockel 53.76 GB. Ein neuer Trim lohnt erst, wenn der
   Versionsverlauf wieder deutlich anwächst.
3. Erste Papierkorb-Stufe (1.93 GB): Undo-Netz, kein Handlungsbedarf.
4. Tote Sites (zusammen 2 MB): nur aus Ordnungsgründen.
5. **Quota im Skill nachziehen:** die Skill-Beschreibung nennt «Limit ~1054 GB». Der gemessene
   Wert ist 1044.00 GB und steht in `StorageQuota`. Der Wert sollte bei jedem Lauf mitgemessen
   statt angenommen werden, da er sich mit Lizenzen ändert.

## Register

Datierter Nachtrag an der bestehenden Zeile in `logbuch/fristen.md` (Speicherpool/Versions-Trim):
die seit 13.07.2026 offene Versions-Frage ist geschlossen, die delegierte Statusabfrage entfällt.
Nachtrag in `connectors/WEGE.md`: `spo site versionpolicy get` und `spo tenant settings list`
beantworten die Versions-Richtlinien-Frage app-only.

## Sende-Entscheid

**Still beendet.** Kein Sendegrund gerissen: 79.19 % (unter 88 %), Delta −0.02 GB/Tag (unter
3 GB/Tag), Restlaufzeit 92 bis 354 Tage (über 60), 0 GB auto-bereinigt, kein Blocker (Connector,
NAS und alle Sites antworteten; der Subagent-Fehlbefund wurde im Hauptkontext geheilt),
Donnerstag. Die drei Befunde dieses Laufs — gelöste Versions-Frage, korrigiertes Quota,
Subagent-Fehlbefund — sind Hub-Interna ohne Aussenwirkung und nach Rule `auto-verbesserungen`
260803 ausdrücklich kein Sendegrund. Sie stehen hier und im Register, dort liest sie der Hub-Chef.
