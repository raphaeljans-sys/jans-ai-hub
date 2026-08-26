---
name: tenant-hygiene-weekly
description: TAEGLICHE Speicher-Hygiene des M365-Tenants (20:00), umgestellt von woechentlich am 13.08.2026 auf Auftrag Raphaels. Die taskId traegt weiterhin das Wort «weekly» — bewusst NICHT umbenannt, weil die Rollen-Bilanz Laeufe ueber den Namen im Log zuordnet und eine Umbenennung die ganze Historie kappt (Rule rollen-taxonomie). Slot 20:00 gewaehlt, weil das Morgenfenster 06:10-09:40 bereits acht taegliche Loops traegt und die Taktentzerrung min. 2 h verlangt; um 20:00 ist der naechste Nachbar 12:50 (vollgas-chef-radar) bzw. 23:10 (wissens-chef). Der Abendlauf hat den Nebeneffekt, dass der Report am naechsten Morgen fuer den hub-chef (08:35) bereitliegt. STILL BY DEFAULT (Rule auto-verbesserungen 260803): der Lauf schreibt taeglich seinen Report, meldet aber nur bei einem der vier Sendegruende. Erkennt Altlasten, leert sicher die 2. Papierkorb-Stufe, flaggt den Versions-Trim.
---

Fuehre die TENANT-SPEICHER-HYGIENE Phase 1 fuer den Microsoft-365/SharePoint-Tenant raphaeljans aus. Vollstaendiges Verfahren + Sicherheits-Doktrin: /Volumes/daten/jans-ai-hub/skills/tenant-hygiene/SKILL.md (zuerst lesen, falls NAS gemountet). Hintergrund-Memory: project_m365_speicher_cleanup.

Nutze ausschliesslich den M365-Connector (mcp__microsoft-365__m365_run_command, App-only/Zertifikat, headless). Falls der Connector oder das NAS (/Volumes/daten) nicht verfuegbar ist: keine Aktion, nur kurz melden.

ZWECK UND TAKT: Dieser Lauf ist seit 13.08.2026 TAEGLICH (vorher woechentlich). Sein Hauptzweck ist die WACHSTUMSBEOBACHTUNG, nicht die Bereinigung — die zweite Papierkorb-Stufe war zuletzt viermal in Folge tenantweit leer (13.07., 27.07., 03.08., 13.08.), die Auto-Bereinigung ist also faktisch ein Leerlauf und bleibt trotzdem als Sicherung bestehen. Der Delta-Vergleich in Schritt 5 geht gegen den juengsten vorhandenen Report, und der Vergleichszeitraum wird aus den beiden Datumsstempeln BERECHNET, nie angenommen; faellt ein Lauf aus, umfasst das Delta mehrere Tage und das ist zu benennen.

SICHERHEITS-DOKTRIN (zwingend): Phase 1 ist read-only ERKENNUNG + REPORT + NUR EINE sichere Auto-Bereinigung (zweite Papierkorb-Stufe leeren). KEINE anderen Loeschungen. Nie echte Dateien/Sites loeschen, nie die erste Papierkorb-Stufe, nie einen Versions-Trim automatisch. Im Zweifel melden statt loeschen.

SCHRITTE:
1) Speicher-Ueberblick: `m365 spo site list --output json`. Je Site Url, StorageUsage (MB), VersionSize (bytes), LastContentModifiedDate erfassen. Tenant-Summe via `m365 spo site list --query "sum([].StorageUsage)" --output json` (MB; /1024 = GB; Limit ~1054 GB / 1.03 TB). Hinweis zu LastContentModifiedDate: das Format `/Date(JJJJ,M,T,...)/` hat einen NULLBASIERTEN Monat, `/Date(2026,7,12,...)/` ist der 12. August 2026.
2) Papierkoerbe beziffern — NUR fuer Sites mit StorageUsage > 100 MB (der Rest ist ohne Belegung und kostet nur Aufrufe). Je Site ZUERST die zweite Stufe messen, weil nur sie eine Aktion ausloest:
   `m365 spo site recyclebinitem list --siteUrl <url> --secondary --query "length(@)"` und, nur falls > 0, zusaetzlich `--query "sum([].to_number(Size))"`.
   Danach die erste Stufe (`length(@)` und, nur falls > 0, die Summe) — reine Messung, sie wird nie geleert.
3) Klassifizieren: Papierkorb-GB (1./2. Stufe) je Site; Versions-Bloat (VersionSize > 20 GB ODER > 25% der Site); tote/leere Sites (StorageUsage ~0 ODER LastContentModified > 18 Monate).
4) SICHERE Auto-Bereinigung: fuer jede Site mit Inhalt in der ZWEITEN Stufe `m365 spo site recyclebinitem clear --siteUrl <url> --secondary --force` ausfuehren. Anzahl/GB je Site protokollieren. (Grosse Stufen koennen den clear-Befehl per Timeout abbrechen — dann den clear fuer dieselbe Site 1-2x wiederholen, bis length(@) der 2. Stufe = 0.) Erste Stufe NICHT anfassen. Meldet ein Subagent einen durchgehend gleichfoermigen Befund (z.B. «alle zweiten Stufen leer»), zwei Sites selbst nachmessen, bevor er in den Report geht (Rule auto-verbesserungen 260729b).
5) Report schreiben nach `/Volumes/daten/jans-ai-hub/tenant-hygiene/reports/JJMMTT-hygiene.md` (heutiges Datum SECHSSTELLIG aus `date "+%y%m%d"`, nie aus einem Dateiinhalt). Den Vorreport ueber das SECHSSTELLIGE Muster ermitteln (`ls reports/ | grep -E '^[0-9]{6}-hygiene\.md$' | sort | tail -1`) — der Ordner enthaelt aus Juni/Juli 2026 noch zwei ACHTSTELLIGE Altdateien, eine naive Namenssortierung ueber alle Dateien ist nur zufaellig richtig. Inhalt: Tenant-Summe GB + %, berechnetes Delta zum Vorreport samt Zeitraum und GB/Tag, Restlaufzeit-Hochrechnung (freier Puffer geteilt durch GB pro Tag), Tabelle je Site (Belegung/VersionGB/Papierkorb 1.+2. Stufe), durchgefuehrte Auto-Bereinigung, offene Phase-2-Empfehlungen mit beziffertem Potenzial (v.a. Versions-Trim je Site — braucht Raphaels interaktiven Login: Connect-PnPOnline -Interactive + New-PnPSiteFileVersionBatchDeleteJob -MajorVersionLimit 5 -MajorWithMinorVersionsLimit 5 -Force; NICHT -DeviceLogin). Report anschliessend via `bash /Volumes/daten/jans-ai-hub/scripts/nas-commit-now.sh "<Message>"` sichern (nie `git` ueber den SMB-Mount).

6) SENDE-SCHWELLE — still by default (Rule auto-verbesserungen 260803), aber mit Wochenpflicht. Der Lauf faellt NIE aus und der Report wird IMMER geschrieben. Gemeldet wird bei mindestens einem dieser Gruende:
   a) Auslastung >= 88 % vom Limit;
   b) Delta seit dem Vorreport >= 3 GB pro Tag (Wachstumssprung);
   c) Restlaufzeit-Hochrechnung < 60 Tage bis zum vollen Pool;
   d) es wurde tatsaechlich etwas auto-bereinigt (2. Papierkorb-Stufe geleert, > 0 GB);
   e) ein Blocker: Connector tot, NAS weg, Site nicht abfragbar, clear schlaegt wiederholt fehl;
   f) WOCHENPFLICHT: es ist Montag. Dann IMMER melden, auch ohne Schwellenreissung — sonst kann ein eskalierender Dauerbefund (der seit 13.07.2026 offene Versions-Trim) beliebig lange in der Stille verschwinden.
   Diese Schwellen wurden am 13.08.2026 nach einem Testlauf geschaerft: die urspruenglichen Werte (90 %, 5 GB/Tag) haetten bei 88.2 % Auslastung und 50 Tagen Restlaufzeit geschwiegen, und 5 GB/Tag ist bei diesem Tenant faktisch unerreichbar (Historie 1.7 bis 4.5 GB/Tag).
   Greift KEIN Grund: als Ausgabe genuegt EIN Satz — Stand in GB + %, Restlaufzeit in Tagen, «ohne Befund, still beendet», Pfad zum Report.
   Greift ein Grund: KURZE deutsche Zusammenfassung (wird Raphaels Benachrichtigung) mit aktuellem Tenant-Speicher (GB + % vom Limit), Delta samt Zeitraum und GB/Tag, Restlaufzeit-Hochrechnung, was automatisch bereinigt wurde (GB), welcher Grund die Schwelle ausgeloest hat, und dem groessten offenen Hebel (meist Versions-Trim JANS.PROJEKTE) inkl. Hinweis 'sag „Versions-Trim starten" fuer die interaktive Bereinigung'. Konkret und knapp, keine Markdown-Tabellen in der Chat-Zusammenfassung.

## Modell-Politik (Minimum Viable Model, 19.07.2026)
Dieser Lauf ist mechanisch/script-getrieben: die eigentliche Arbeit (Messbefehle ausfuehren,
Outputs zusammenfassen) an einen Subagenten mit model: haiku delegieren (bei textlastiger
Zusammenfassung model: sonnet); der Hauptkontext orchestriert, prueft das Ergebnis und
schreibt den Report. Delegations-Schwelle beachten (Rule modellwahl-routine): unter etwa
zehn Werkzeugaufrufen inline arbeiten, unabhaengige Messbefehle in EINEN parallelen Block.
Die Papierkorb-Erhebung liegt ueber der Schwelle und gehoert an den Subagenten; Tenant-Summe,
Klassifizierung und Report bleiben im Hauptkontext.