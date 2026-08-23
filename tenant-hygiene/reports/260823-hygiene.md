# Tenant-Speicher-Hygiene — Report 23.08.2026

Tenant: raphaeljans.onmicrosoft.com
Lauf: Scheduled Task `tenant-hygiene-weekly`, Phase 1, Messzeitpunkt 20:10 CEST
Connector: M365 App-only/Zertifikat (headless), erreichbar
Takt: täglich (seit 13.08.2026)

## Kernbefund: erster Rückgang seit dem Trim, zweiter Tag ohne eine einzige neue Version

Der Tenant **schrumpft** heute um **5 MB**. Das ist kein Wachstum nahe null wie gestern,
sondern ein Vorzeichenwechsel, und es ist der erste negative Tageswert seit dem 16.08.
Der Versionsverlauf steht den **zweiten Tag in Folge objektgenau still**.

- JANS.PROJEKTE Versionsverlauf: 92.857 → **92.857 GB**, Versionsanzahl **3'777 → 3'777**
- Versionsverlauf tenantweit: 103.42 → **103.42 GB**, unverändert
- JANS.PROJEKTE Belegung: 601'152 → **601'146 MB** (-6 MB)
- SE (110'735 MB) und PL (41'152 MB) auf das Megabyte unverändert

Damit gilt der seit einer Woche gemessene Zusammenhang unverändert: das Wachstum dieses
Tenants stammt zu praktisch 100 % aus dem Versionsverlauf einer einzigen Site, und ohne
Arbeit an dieser Site wächst er nicht. Das Wochenende hat den Befund nun zweimal von der
Gegenseite bestätigt.

**Der Rückgang ist keine Bereinigung.** Es wurde nichts gelöscht — die zweiten
Papierkorb-Stufen waren leer, die ersten sind objektgenau unangetastet geblieben. 5 MB
auf 883 GB liegen zudem innerhalb der Messunschärfe von `StorageUsage`; belastbar ist
nicht das Vorzeichen, sondern die unveränderte Versionsanzahl. Und die Konfiguration ist
dieselbe wie am ersten Tag: tenantweit und auf allen elf belegten Sites weiterhin
`InheritVersionPolicyFromTenant: true`, `MajorVersionLimit: 0`,
`EnableAutoExpirationVersionTrim: false`. Es begrenzt nach wie vor nichts.

Die vier gemessenen Wochenendtage im Vergleich: 15.08. (Sa) -0.02 GB, 16.08. (So)
-0.09 GB, 22.08. (Sa) +0.05 GB, heute 23.08. (So) -0.005 GB. Das Muster ist stabil.
**Am Montag ist mit dem Werktagsniveau zu rechnen**, und der morgige Lauf trägt zusätzlich
die Wochenpflicht.

## Tenant-Summe

- Belegt: **862.54 GB** (883'244 MB) über 20 Sites
- Limit: ~1'054 GB (1.03 TB)
- Auslastung: **81.83 %**, freier Puffer **191.46 GB**
- Delta zum Vorreport (22.08.2026, 20:10, 883'249 MB): **-5 MB in 24.0 Stunden**,
  also **-0.005 GB/Tag**
- Reihe der letzten acht Tage: -0.09 (16.08. So), +3.27 (17.08. Mo), +5.02 (18.08. Di),
  +13.29 (19.08. Mi), +13.93 (20.08. Do), +4.01 (21.08. Fr), +0.05 (22.08. Sa),
  **-0.005 GB/Tag (23.08. So)**

Die Summe stammt aus zwei unabhängigen Abfragen (Einzelwerte der elf belegten Sites
aufaddiert: 883'236 MB plus 9 MB Kleinstsites = 883'245 MB, sowie `sum([].StorageUsage)`:
883'244 MB), beide decken sich im Rahmen der Rundung.

Einschränkung, wie in jedem Lauf: `StorageUsage` ist zeitverzögert (Stunden bis 24 h).
Bei einem Tageswert dieser Grössenordnung ist die Unsicherheit grösser als der Messwert
selbst. Der Rückgang ist deshalb als «kein Wachstum» zu lesen, nicht als Gewinn.

## Restlaufzeit-Hochrechnung

Auf den heutigen Puffer von 191.46 GB gerechnet:

- **Beim heute gemessenen Tempo** (negativ): rechnerisch unbegrenzt. Der Wert ist für
  eine Hochrechnung **unbrauchbar** und wird nur der Vollständigkeit halber genannt. Ein
  arbeitsfreier Sonntag darf nicht fortgeschrieben werden.
- Beim Wochenschnitt der letzten sieben Tage (5.65 GB/Tag): rund **34 Tage**, also etwa
  **26. September 2026**. **Das ist der massgebliche Wert.**
- Beim Werktagsschnitt der Woche (7.90 GB/Tag): rund **24 Tage**, also etwa
  **16. September 2026**.

Die Restlaufzeit liegt den sechsten Tag in Folge unter der 60-Tage-Schwelle. Sie hat sich
gegenüber gestern rechnerisch nicht verbessert: der Wochenschnitt steht weiterhin bei
34 Tagen. Die beiden Nullwerte des Wochenendes haben den Zeitpunkt des vollen Pools nicht
nach hinten verschoben, sie haben ihn nur nicht näher gebracht.

Näher liegen die Warnmarken:

- **88-%-Marke (927.5 GB): 64.98 GB entfernt** — beim Wochenschnitt rund 12 Tage
  (etwa 4. September), beim Werktagsschnitt rund 8 Tage (etwa 31. August).
- 90-%-Marke (948.6 GB): 86.06 GB entfernt, 15 bzw. 11 Tage.

Der Trim vom 13.08. hat 106 GB freigeräumt. In zehn Tagen, davon fünf Werktage, sind
davon **39.36 GB zurückgekehrt** — 37 %.

## Sites mit Belegung (nach Grösse)

| Site | Belegung | Versionen | Ver.-Anzahl | Papierkorb 1. Stufe | Papierkorb 2. Stufe | Letzte Aenderung |
|---|---|---|---|---|---|---|
| /sites/JANS.PROJEKTE | 587.06 GB | 92.86 GB | 3'777 | 333 Obj / 1.23 GB | leer | 22.08.2026 |
| /sites/SE | 108.14 GB | 1.24 GB | 290 | leer | leer | 23.08.2026 |
| /sites/AD | 51.92 GB | 3.37 GB | 4'694 | 29 Obj / 0.01 GB | leer | 23.08.2026 |
| /sites/PL | 40.19 GB | 3.50 GB | 245 | leer | leer | 23.08.2026 |
| /sites/kispi | 31.35 GB | 0.19 GB | 151 | 107 Obj / 0.21 GB | leer | 22.08.2026 |
| /sites/BI | 18.25 GB | ~0 GB | 42 | leer | leer | 22.08.2026 |
| /sites/WE | 9.09 GB | 0.42 GB | 402 | leer | leer | 22.08.2026 |
| /sites/MO | 6.95 GB | 0 GB | 13 | leer | leer | 07.08.2026 |
| /sites/WO | 5.33 GB | 0.31 GB | 264 | leer | leer | 07.08.2026 |
| /sites/IMMO | 4.02 GB | 1.53 GB | 188 | 2 Obj / 0.00 GB | leer | 22.08.2026 |
| /sites/JANSDATENAUSTAUSCH | 0.25 GB | ~0 GB | 18 | 10 Obj / 0.05 GB | leer | 09.08.2026 |

Neun Sites liegen unter der 100-MB-Schwelle und werden ohne Papierkorb-Erhebung geführt:
PA (2 MB), Test (1 MB), zwei AllCompany-Restsites (je 1 MB), /search, beide Root-Sites,
WBHafenarealSZ (0 MB), HLEBWEB (0 MB).

Summe Versionsverlauf tenantweit: **103.42 GB** (12.0 % der Belegung), exakt wie an den
beiden Vortagen, gegenüber 100.45 GB am 20.08., 86.83 GB am 19.08., 73.56 GB am 18.08.,
68.70 GB am 17.08. und 64.10 GB an den drei Tagen davor. **Zweiter Lauf in Folge ohne
Versionszuwachs seit dem Trim vom 13.08.**

Bewegung heute: **keine Site verändert ihre Belegung um mehr als eine Rundungsstelle**.
JANS.PROJEKTE gibt 6 MB ab, alle übrigen liegen im Bereich von wenigen Megabyte um den
Vortageswert. SE steht damit den siebten, PL den sechsten Tag unverändert. SE, AD und PL
tragen zwar den 23.08. als letztes Aenderungsdatum, ohne dass sich ihre Belegung bewegt —
dort wurde gelesen oder eine Kleinständerung geschrieben, aber nichts von Umfang.

## Klassifizierung

### Versions-Bloat

- **JANS.PROJEKTE: 92.86 GB** Versionen auf 587.06 GB Site (**15.8 %**). Reisst die
  absolute 20-GB-Schwelle um mehr als das Vierfache. Trägt **89.8 %** des gesamten
  Versionsverlaufs im Tenant. Der Anteil steht den zweiten Tag still: 9.7 % nach dem
  Trim, 10.6 % (17.08.), 11.3 % (18.08.), 13.4 % (19.08.), 15.4 % (20.08.), 15.8 %
  (21.08.), 15.8 % (22.08.), **15.8 % heute** — Stillstand, keine Umkehr.
- **Der Befund der Woche bleibt gültig und ist am Wochenende zweimal negativ bestätigt:**
  die zuletzt hinzugekommenen Versionen lagen bei rund 58 MB je Stück gegenüber einem
  Site-Schnitt von 24.6 MB und einem AD-Schnitt von 0.7 MB. Es sind wenige, sehr grosse,
  wiederholt überschriebene Dateien. An zwei arbeitsfreien Tagen entstand keine einzige
  neue Version. Der Verursacher ist damit belastbar **an eine konkrete Arbeitstätigkeit
  gekoppelt**, nicht an einen Hintergrundprozess — ein Dauer-Sync-Zyklus scheidet als
  Erklärung aus.
- IMMO: 1.53 GB auf 4.02 GB, **38.2 %**. Reisst die relative Schwelle weiterhin, absolut
  ohne Bedeutung. Kein Handlungsbedarf, seit dem Trim unverändert.
- Uebrige unauffällig: PL 8.7 %, AD 6.5 %, WO 5.7 %, WE 4.6 %, SE 1.1 %, kispi 0.6 %.

### Papierkörbe

- Alle **zweiten Stufen tenantweit leer**, 11 Sites über 100 MB geprüft, 0 Objekte.
- **Fünfzehnter Lauf in Folge** mit diesem Befund: 13.07., 27.07., 03.08., 13.08.
  (Testlauf), 13.08. (Nachlauf), 14.08. bis 23.08.
- Messweg wie an den beiden Vortagen: die gesamte Papierkorb-Erhebung lief **im
  Hauptkontext**, elf Einzelabfragen der zweiten Stufe und elf der ersten, dazu vier
  Grössenabfragen für die nicht leeren ersten Stufen. Kein Subagent beteiligt, jede Zahl
  ist ein eigener Aufruf. Grund bleibt der Subagenten-Befund vom 20.08. (gemeldete
  Prüfung von elf Sites bei nur acht Werkzeugaufrufen).
- Erste Stufen (Undo-Netz, bleibt unangetastet): **481 Objekte / 1.50 GB** tenantweit,
  objektgenau wie an den beiden Vortagen. JANS.PROJEKTE 333 / 1.23 GB, kispi 107 /
  0.21 GB, AD 29 / 0.01 GB, JANSDATENAUSTAUSCH 10 / 0.05 GB, IMMO 2 / 0.00 GB. Kein
  einziges Objekt hinzugekommen oder entfernt.

### Tote/leere Sites (Hinweis, Phase 2)

Unverändert: WBHafenarealSZ (0 MB, letzte Aenderung 06.10.2025, rund 10.5 Monate), Test
(1 MB, 14.05.2026), zwei AllCompany-Restsites (je 1 MB, 04.07.2026). Keine Site
überschreitet die 18-Monats-Schwelle.

## Durchgeführte Auto-Bereinigung (Phase 1)

**Keine, 0 GB.** Alle zweiten Papierkorb-Stufen waren bereits leer, es wurde kein einziger
`clear`-Befehl abgesetzt. Die ersten Stufen bleiben als Undo-Netz unangetastet.

## Offene Phase-2-Empfehlungen (brauchen Raphaels interaktiven Login)

### 1. Tenant-Versionslimit auf «Automatisch» stellen — zuerst, vor dem Trim

Unverändert und weiterhin der einzige Punkt, der die Ursache behebt. Die Konfiguration
zeigt auf allen elf belegten Sites `MajorVersionLimit: 0`,
`EnableAutoExpirationVersionTrim: false`, `InheritVersionPolicyFromTenant: true` — es gibt
keine Begrenzung, die greifen könnte.

Die beiden ruhigen Wochenendtage ändern daran nichts, sie verdecken es nur. Beim
Wochenschnitt von 5.65 GB/Tag kauft ein Trim von rund 78 GB knapp **14 Tage** zusätzliche
Restlaufzeit, beim Werktagsschnitt rund zehn. Danach ist der Zustand derselbe wie heute.
Ein Trim ohne vorherige Limit-Umstellung bleibt eine Verzögerung, keine Lösung.

Weg: Admin Center → Einstellungen → Versionsverlauf-Limits → «Automatisch».

Seit dem 13.07.2026 offen, also heute seit **41 Tagen**.

### 2. Versions-Trim JANS.PROJEKTE, Potenzial rund 78 GB, dringend — nach Schritt 1

92.86 GB Versionsverlauf auf einer Site; ein Trim auf fünf Major-Versionen gab am 13.08.
tenantweit 106 GB frei. Auf dem heutigen Stand ist mit rund 78 GB zu rechnen, was den
Puffer auf gut 269 GB und die Auslastung auf rund 74.5 % senkt.

```
Connect-PnPOnline -Url https://raphaeljans.sharepoint.com/sites/JANS.PROJEKTE `
  -ClientId 80c24101-4597-48db-8388-c6e8bdc75f5f `
  -Tenant raphaeljans.onmicrosoft.com -Interactive
New-PnPSiteFileVersionBatchDeleteJob -MajorVersionLimit 5 -MajorWithMinorVersionsLimit 5 -Force
```

Nicht `-DeviceLogin` verwenden (auf PnP 3.1.0 defekt).

**Der heutige Sonntagabend ist das letzte günstige Zeitfenster dieser Woche.** Der Trim
läuft als Job über die Site; heute wird an ihr nachweislich nicht gearbeitet, es entstehen
also keine neuen Versionen, die parallel zum Job dazukommen. Ab Montagmorgen gilt das
nicht mehr.

### 3. Grosse, wiederholt überschriebene Dateien auf JANS.PROJEKTE identifizieren

Der zweite stillstehende Tag in Folge grenzt den Ansatzpunkt weiter ein: der Verursacher
ist an aktive Arbeit gekoppelt und läuft nicht im Hintergrund weiter. Wahrscheinlich ist
wiederholtes Speichern grosser Dateien während der Arbeitszeit (CAD, Renderings,
Punktwolken, Archive). Lohnend ist die Prüfung, welche Bibliothek diese Versionen erzeugt.
Ergibt sich eine einzelne, kann diese zusätzlich vom Versionieren ausgenommen werden.

Das ist eine Diagnose, keine Bereinigung, und ersetzt die Limit-Umstellung nicht.

### 4. Tote Sites (nachrangig, rund 0 GB)

WBHafenarealSZ und die drei Kleinstsites belegen zusammen praktisch nichts. Löschen lohnt
sich nur der Ordnung halber, nicht für den Speicher.

## Sende-Schwelle

Gemeldet wird, ausgelöst durch **Grund c) Restlaufzeit unter 60 Tagen**: der
Wochenschnitt ergibt 34 Tage. Ausdrücklich nicht ausgelöst hat ihn der heutige
Tageswert — er ist negativ und würde rechnerisch eine unbegrenzte Restlaufzeit ergeben,
was ein Artefakt eines arbeitsfreien Sonntags ist und nicht fortgeschrieben werden darf.

Nicht gegriffen haben: a) Auslastung 81.83 % (Schwelle 88 %), b) Delta -0.005 GB/Tag
(Schwelle 3), d) keine Auto-Bereinigung, e) kein Blocker, f) heute ist Sonntag, nicht
Montag — die Wochenpflicht trägt der morgige Lauf.
