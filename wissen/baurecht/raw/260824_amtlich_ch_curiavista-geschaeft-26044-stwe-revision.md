---
titel: "Geschäft 26.044 — Stockwerkeigentumsrecht (Art. 712a ff. ZGB), Änderung — amtlicher Verfahrensstand"
kuerzel: "26.044"
quelle: "Bundesversammlung, offizieller OData-Webservice der Geschäftsdatenbank Curia Vista"
url: "https://ws.parlament.ch/odata.svc/Business?%24filter=BusinessShortNumber%20eq%20%2726.044%27%20and%20Language%20eq%20%27DE%27&%24format=json"
format: "OData/JSON"
beschafft-am: "2026-08-24"
beschafft-fuer: "wissen/baurecht/wiki/stockwerkeigentum-teilungsplan-und-begruendung.md — Offener Punkt 1 (Beratungsstadium Art. 712ebis E-ZGB), Wachposten-Methodik analog dem Baulinien-Wachposten (Buch-Run 136, KR-Geschäft 6000)"
methode: "Die HTML-Seite der Curia-Vista-Suche (parlament.ch/de/ratsbetrieb/suche-curia-vista) ist clientseitig gerendert und liefert per WebFetch nur HTTP 403 — dieselbe Fehlerfamilie wie kantonsrat.zh.ch (Buch-Run 135). Die Bundesversammlung betreibt jedoch einen offiziellen OData-Webservice (ws.parlament.ch/odata.svc), direkt per curl abrufbar, keine Anmeldung nötig. Metadatenabgleich (\\$metadata) ergab das Feld 'BusinessShortNumber'; Filterabfrage auf '26.044' (Geschäftsnummer laut Sekundärquelle centrepatronal.ch) traf genau einen Datensatz."
status: "amtlich, direkt abgerufen (kein Aggregator)"
---

# Geschäft 26.044 — Stockwerkeigentumsrecht (Art. 712a ff. ZGB), Änderung (amtlicher Auszug)

Wörtliche Wiedergabe der relevanten Felder aus der JSON-Antwort des offiziellen Curia-Vista-
Webservice.

```json
"ID": 20260044,
"BusinessShortNumber": "26.044",
"BusinessType": 1,
"BusinessTypeName": "Geschäft des Bundesrates",
"BusinessTypeAbbreviation": "BRG",
"Title": "Stockwerkeigentumsrecht (Art. 712a ff. ZGB). Änderung",
"Description": "Botschaft vom 13. Mai 2026 zur Revision des Zivilgesetzbuches (Stockwerkeigentum)",
"BusinessStatus": 202,
"BusinessStatusText": "Eingereicht",
"BusinessStatusDate": "2026-05-13T13:42:44",
"SubmissionDate": "2026-05-13T00:00:00",
"ResponsibleDepartment": 5,
"ResponsibleDepartmentName": "Justiz- und Polizeidepartement",
"ResponsibleDepartmentAbbreviation": "EJPD",
"FirstCouncil1Name": "Nationalrat",
"FirstCouncil1Abbreviation": "NR",
"SubmissionSession": 5214,
"SubmissionLegislativePeriod": 52,
"TagNames": "Raumplanung und Wohnungswesen",
"Modified": "2026-08-21T11:44:31"
```

Feld `InitialSituation` (Medienmitteilung Bundesrat 13.05.2026, Auszug, wörtlich):

> «Der Bundesrat will mit punktuellen Neuerungen das Stockwerkeigentumsrecht besser den
> Bedürfnissen der Stockwerkeigentümerinnen und Stockwerkeigentümer anpassen. So sollen namentlich
> die Begründung von Stockwerkeigentum bei noch nicht gebauten Liegenschaften explizit geregelt und
> ein Klagerecht für die Errichtung eines Erneuerungsfonds eingeführt werden. An seiner Sitzung vom
> 13. Mai 2026 hat der Bundesrat die Ergebnisse der Vernehmlassung zur Kenntnis genommen und die
> Botschaft zu einer Änderung des Zivilgesetzbuches (ZGB) zuhanden des Parlaments verabschiedet.»
>
> «Um den Bedürfnissen der Stockwerkeigentümerinnen und Stockwerkeigentümer noch besser Rechnung
> zu tragen, hat der Bundesrat im Auftrag des Parlaments (Motion 19.3410 Caroni) punktuelle
> Änderungsvorschläge in die Vernehmlassung gegeben.»

Zum Aufteilungsplan (Art. 712ebis E-ZGB) selbst enthält die Medienmitteilung im abgerufenen Feld
keinen eigenen Absatz (Schwerpunkt der Mitteilung: Stockwerkeigentum an ungebauten Liegenschaften
+ Klagerecht Erneuerungsfonds + Sondernutzungsrechte) — der Teilungsplan bleibt gemäss der bereits
im Wiki-Artikel verarbeiteten Botschaft (`bj.admin.ch`) Teil derselben Vorlage 26.044.

## Ablaufstand (amtlich, Stand Abruf 24.08.2026)

- **Ursprung:** Motion 19.3410 Caroni (Auftrag ans Parlament, in der Vorlage selbst als Herkunft
  genannt).
- **Botschaft:** 13.05.2026 (Bundesrat, EJPD/Bundesamt für Justiz).
- **Formaler Status im Webservice:** `202 — Eingereicht`, Statusdatum 13.05.2026 — der Datensatz
  zeigt (Stand dieses Abrufs) **keinen** späteren Statuswechsel (z. B. Kommissionsantrag,
  1. Lesung), obwohl das Feld `Modified` mit 21.08.2026 jünger ist als das Botschaftsdatum.
- **Erstrat:** Nationalrat (`FirstCouncil1Name`).
- **Zuständiges Departement:** EJPD.
- **Session der Einreichung:** Session-ID 5214, 52. Legislaturperiode.

## Abgleich mit der Sekundärquelle

`centrepatronal.ch` (Fachartikel, nicht amtlich) nennt zusätzlich, dass die Kommission für
Rechtsfragen des Nationalrats (RK-N) am 20./21.08.2026 eine erste Prüfung vornehme — dieser
Detailschritt (Kommissionszuweisung/-sitzung) ist im hier abgerufenen `Business`-Hauptdatensatz
**nicht sichtbar** (dafür wäre der verlinkte `Preconsultations`-Teildatensatz nötig, in diesem Lauf
nicht abgerufen). Der zeitliche Zusammenhang (Modified 21.08.2026 = letzter Tag des behaupteten
Prüfdatums) ist plausibel, aber **nicht amtlich bestätigt** — als offene Präzisierung vermerkt,
nicht als amtlich verifizierte Aussage übernommen (Rule `identifikatoren-verifizieren`).
