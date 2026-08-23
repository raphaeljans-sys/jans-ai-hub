---
title: Interaktive Session (sechste Fortsetzung) — E-R147-1 und E-R134-4 geschlossen
datum: 2026-08-23
station: Mac Mini / Claude Code (interaktiver Auftrag, sechste Fortsetzung desselben Tages)
---

# Auftrag

Weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, belegt mit Quelle und Datenstand, danach
in die Wiki-Artikel einarbeiten. Fortsetzung der fünf vorangehenden Interaktiv-Sessions desselben
Tages — dort weitermachen, wo der letzte Lauf aufgehört hat.

# Vorgehen

CHANGELOG und den letzten Output-Report (vierte Fortsetzung) gelesen, danach den vollständigen
Bestand offener `- [ ]`/`- [~]`-Punkte in `QUESTIONS.md` durchgesehen (die fünfte Fortsetzung
hatte in der Zwischenzeit bereits drei stale Checkboxen bereinigt und E-R129-2/-4, E-R143-2
bearbeitet — nicht in meinem Kontext sichtbar, aber am Dateistand ablesbar). Anders als die vierte
Fortsetzung war in dieser Session Node (`/opt/homebrew/bin/node`, nicht im PATH, aber vorhanden)
und die M365-CLI mit aktiver Zertifikats-Auth verfügbar — damit waren die beiden zuletzt
priorisierten PL-02-Rechercheposten erreichbar.

# Bearbeitet

## E-R147-1 (P3) — geschlossen

Frage: Warum weicht die Wärmepumpen-Tumbler-Ersparnis zwischen der Stadt-Zürich/ewz-Ausgabe
November 2004 (5'300 CHF) und der Ausgabe Januar 2008 (3'900 CHF) ab? Die Strompreis-Hypothese
war bereits in einem früheren Lauf widerlegt (beide 20 Rp./kWh); die eigentliche
Verbrauchsannahme (kWh/kg Wäsche) der 2004er-Ausgabe war aus der bisherigen Textextraktion nicht
herauslesbar.

**Ergebnis:** Datei `2.33.C HaushaltgerÑte_Professionelle_Beschaffung.pdf` erneut über die
M365-CLI beschafft (`m365 spo file get`, Site `/sites/PL`, Server-relative URL
`/sites/PL/PL  Immobilienpreise/04_Merkblätter/eco/Nachhaltiges Bauen/02 Checklisten/...`) und mit
`pdftotext -layout` neu extrahiert. Die frühere Extraktion hatte die Grafiklegende nicht sauber
vom überlagernden Balkendiagramm getrennt; im neuen Durchlauf steht der Satz vollständig im
Fliesstext: «Wärmepumpen-Tumbler in einem Mehrfamilienhaus. Annahmen: 30 % Rabatt auf
Listenpreis, 5'000 kg Wäsche pro Jahr (ca. 20 Waschgänge pro Woche), **0,32 kWh respektive
0,67 kWh pro kg Wäsche**, 20 Rp. pro kWh Strom.»

Nachgerechnet: 5'000 kg × (0,67 − 0,32) kWh/kg × 0,20 CHF/kWh × 15 Jahre = **5'250 CHF** — deckt
sich mit der im Flyer gerundeten Angabe «rund 5'300 Franken». Die 2008er-Ausgabe rechnet mit
0,34/0,60 kWh/kg (Differenz 0,26 statt 0,35). Die Ursache der Divergenz ist damit abschliessend
geklärt: **unterschiedliche Verbrauchsannahme, nicht Strompreis, kein Redaktionsfehler in keiner
der beiden Ausgaben.**

Eingearbeitet: `destillate/haushaltgeraete-professionelle-beschaffung-2004-erstausgabe.md`
(Abschnitt Wärmepumpen-Tumbler, Offene Punkte, Frontmatter `last_updated`),
`wiki/BAUHERREN-FAQ.md` F210, `wiki/QUESTIONS.md`.

Quelle: Stadt Zürich AHB / ewz, «Professionelle Beschaffung: Haushaltgeräte», Zürich, November
2004, 4 S. vollständig gelesen (SharePoint PL-02, via M365-CLI, 23.08.2026).

## E-R134-4 (P4) — geschlossen (Negativbefund)

Frage: Existiert eine MFH- oder Zweckbau-Fassung des EFH-Bauteilvergleichs Minergie ↔
Minergie-P (`ME-ME-P-Haus.pdf`, Fussnote «gültig für Neubauten Gebäudekategorie Wohnen
Einfamilienhaus»)?

**Ergebnis:** Der Herkunftsordner `06_Richtlinien/Minergie/Vergleich` enthält neben
`ME-ME-P-Haus.pdf` nur `Qh+Qww-Haus-Abbildung.pdf` und `Unterschied ME 2010-MUKEN.pdf` — keine
dritte Datei. Eine vollständige, rekursive Namensliste des gesamten Minergie-Ordners (79 Dateien,
`m365 spo file list --recursive`) enthält ebenfalls keinen Treffer, der auf eine MFH- oder
Zweckbau-Fassung dieses konkreten Bauteilvergleichs hindeutet. `MFH.pdf` im selben Baum ist ein
unverwandtes Dokument («Heizungsersatz in grösseren Mehrfamilienhäusern und bei
Stockwerkeigentum», bereits als `[[heizungsersatz-groessere-mfh-stweg]]` destilliert).

**Bewertung:** kein primärquellenbelegtes Positivergebnis möglich, aber ein belastbarer
Negativbefund innerhalb des durchsuchten Bestands. Bleibt offen, ob eine solche Fassung
ausserhalb des Minergie-Ordners liegt (nicht durchsucht) oder nie erstellt wurde — bei P4 kein
weiterer Aufwand gerechtfertigt.

Eingearbeitet: `destillate/minergie-me-vs-me-p-vergleich.md` (Offene Punkte, Frontmatter
`last_updated`), `wiki/QUESTIONS.md`.

## E-R138-2 (P3) — Umfang präzisiert, nicht geschlossen

Skriptgestützter Abgleich aller `[-]`-Dateinamen aus `training/pdf-inventar.md` (76 gefunden)
gegen den Volltext von `raw/_INGESTED.md`: **64 ohne String-Treffer**, deutlich mehr als die
zuvor vermuteten «mindestens 5». Der Wert ist eine Obergrenze, kein bereinigter Wert — ein Teil
dürfte an Schreibvarianten desselben Dateinamens liegen, die ein reiner String-Match nicht
erkennt. Für einen Nebenschritt dieser Session zu gross; als präzisierter Befund in
`wiki/QUESTIONS.md` festgehalten, damit der nächste Lauf mit der richtigen Grössenordnung
startet statt mit «mindestens 5».

## E-R149-4 (P2, Betrieb) — Fix erneut versucht, erneut blockiert

Derselbe, bereits zweifach vetteste Ersatzwortlaut für die Voraussetzungszeile der Task wurde auf
`~/.claude/scheduled-tasks/energie-training/SKILL.md` angewendet. Die Datei ist als sensible
Systemdatei geschützt und verlangt eine Freigabe ausserhalb der Tool-Berechtigungen dieser
Session (Edit-Aufruf wurde vom Harness abgelehnt). Bereits die fünfte Fortsetzung war am selben
Punkt gescheitert. Bleibt offen für Raphael selbst oder eine explizite Freigabe dieser Datei.

# Bewertung des KB-Zustands nach diesem Lauf

Mit E-R147-1 und E-R134-4 sind die beiden letzten reinen PL-02-Rechercheposten des Tages
geschlossen. Alle verbleibenden offenen P1-P3-Punkte hängen entweder an einer
Beschaffungsentscheidung Raphaels (E-R148-1 Normkauf SIA 380/1:2016, E-R148-2 Takt-Entscheid),
sind bereits bewusst als nicht abschliessend auflösbar dokumentiert (E-R134-3, E-R143-2
Bring-Schuld bei KB `normen`, E-R150-3, E-R132-4), oder sind reine Registerpflege ohne fachlichen
Erkenntnisgewinn (E-R138-2, E-WC32-1). Für einen weiteren reinen Rechercheauftrag ist der Korpus
damit tatsächlich erschöpft — der von Run 148/149 vorgeschlagene Takt-Entscheid (fragengetrieben
statt dateilistengetrieben) ist der naheliegendste nächste Schritt.

# Registerpflege

`wiki/QUESTIONS.md` (zwei `[x]`, ein präzisierter Befund E-R138-2, neuer Run-151-Abschnitt),
`CHANGELOG.md` (neuer Eintrag), zwei Destillate ergänzt, FAQ F210 nachgeführt. Nach jedem
Schreibvorgang `git diff --numstat` geprüft — CHANGELOG rein additiv (68/0), QUESTIONS.md
additiv mit kleinen, erwarteten Ersetzungen (61/6, keine unerwarteten Löschungen), beide
Destillate additiv (7/13 bzw. 11/4, jeweils gezielte Absatz-Ersetzungen an der erwarteten
Stelle).
