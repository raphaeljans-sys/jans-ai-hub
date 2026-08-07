---
name: tenant-hygiene-weekly
description: Woechentliche Speicher-Hygiene des M365-Tenants: erkennt Altlasten, leert sicher die 2. Papierkorb-Stufe, schreibt Report, flaggt Versions-Trim.
---

Fuehre die TENANT-SPEICHER-HYGIENE Phase 1 fuer den Microsoft-365/SharePoint-Tenant raphaeljans aus. Vollstaendiges Verfahren + Sicherheits-Doktrin: /Volumes/daten/jans-ai-hub/skills/tenant-hygiene/SKILL.md (zuerst lesen, falls NAS gemountet). Hintergrund-Memory: project_m365_speicher_cleanup.

Nutze ausschliesslich den M365-Connector (mcp__microsoft-365__m365_run_command, App-only/Zertifikat, headless). Falls der Connector oder das NAS (/Volumes/daten) nicht verfuegbar ist: keine Aktion, nur kurz melden.

SICHERHEITS-DOKTRIN (zwingend): Phase 1 ist read-only ERKENNUNG + REPORT + NUR EINE sichere Auto-Bereinigung (zweite Papierkorb-Stufe leeren). KEINE anderen Loeschungen. Nie echte Dateien/Sites loeschen, nie die erste Papierkorb-Stufe, nie einen Versions-Trim automatisch. Im Zweifel melden statt loeschen.

SCHRITTE:
1) Speicher-Ueberblick: `m365 spo site list --output json`. Je Site Url, StorageUsage (MB), VersionSize (bytes), LastContentModifiedDate erfassen. Tenant-Summe via `m365 spo site list --query "sum([].StorageUsage)" --output json` (MB; /1024 = GB; Limit ~1054 GB / 1.03 TB).
2) Je Site mit Belegung die Papierkoerbe beziffern: `m365 spo site recyclebinitem list --siteUrl <url> --query "sum([].to_number(Size))"` (1. Stufe) und mit `--secondary` (2. Stufe); plus `length(@)`.
3) Klassifizieren: Papierkorb-GB (1./2. Stufe) je Site; Versions-Bloat (VersionSize > 20 GB ODER > 25% der Site); tote/leere Sites (StorageUsage ~0 ODER LastContentModified > 18 Monate).
4) SICHERE Auto-Bereinigung: fuer jede Site mit Inhalt in der ZWEITEN Stufe `m365 spo site recyclebinitem clear --siteUrl <url> --secondary --force` ausfuehren. Anzahl/GB je Site protokollieren. (Grosse Stufen koennen den clear-Befehl per Timeout abbrechen — dann den clear fuer dieselbe Site 1-2x wiederholen, bis length(@) der 2. Stufe = 0.) Erste Stufe NICHT anfassen.
5) Report schreiben nach `/Volumes/daten/jans-ai-hub/tenant-hygiene/reports/JJJJMMTT-hygiene.md` (heutiges Datum sechsstellig im Dateinamen): Tenant-Summe GB + %, Tabelle je Site (Belegung/VersionGB/Papierkorb 1.+2. Stufe), durchgefuehrte Auto-Bereinigung, und die offenen Phase-2-Empfehlungen mit beziffertem Potenzial (v.a. Versions-Trim je Site — dieser braucht spaeter Raphaels interaktiven Login: Connect-PnPOnline -Interactive + New-PnPSiteFileVersionBatchDeleteJob -MajorVersionLimit 5 -MajorWithMinorVersionsLimit 5 -Force; NICHT -DeviceLogin).
6) Zum Schluss eine KURZE deutsche Zusammenfassung ausgeben (wird Raphaels Benachrichtigung): aktueller Tenant-Speicher (GB + % vom Limit), Delta-Hinweis, was automatisch bereinigt wurde (GB), und der groesste offene Hebel (meist Versions-Trim JANS.PROJEKTE) inkl. Hinweis 'sag „Versions-Trim starten" fuer die interaktive Bereinigung'. Halte es konkret und knapp; keine Markdown-Tabellen in der Chat-Zusammenfassung.
## Modell-Politik (Minimum Viable Model, 19.07.2026)
Dieser Lauf ist mechanisch/script-getrieben: die eigentliche Arbeit (Scripts ausfuehren,
Outputs zusammenfassen, Report formatieren) an einen Subagenten mit model: haiku delegieren
(bei textlastiger Zusammenfassung model: sonnet); der Hauptkontext orchestriert nur und
prueft das Ergebnis. Gleiches Ergebnis-Format wie bisher.
