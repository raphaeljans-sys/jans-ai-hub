# Aktions-Whitelist — Autonomie Stufe 3

> Governance-Dokument der Kontroll-Schicht. Definiert abschliessend, welche Aktionen der Hub
> (v.a. der Skill `hub-chef` und die Loops) OHNE Rueckfrage ausfuehren darf. Alles andere wird
> als Entwurf vorgelegt. Jede ausgefuehrte Aktion wird im `LOGBUCH.md` protokolliert
> (Was / Ausloeser / erfuellte Guards / Ergebnis).
>
> Version: v1 · Autorisiert: Raphael Jans, 02.07.2026 (Spec Hub-Chef-Harness, Stufe 3
> ausdruecklich gewaehlt) · Review: im ersten Hub-Chef-Briefing bestaetigen oder anpassen.

## ERLAUBT (autonom, mit Logbuch-Protokoll)

| Nr | Aktion | Guards (ALLE muessen erfuellt sein) |
|---|---|---|
| A1 | **Zahlungserinnerung (Mahnstufe 1)** in bexio erzeugen (`kb_reminder`) und per Apple Mail versenden | Verzug >= 5 Tage · Rechnung im Tages-`zahlungsabgleich` als echt-offen verifiziert (kein Phantom-/Duplikat-Verdacht) · bestehender Debitor mit bekannter Mail-Adresse · QS via `korrektur` + `twin` · Ablage nach Konvention. Mahnstufe 2+ IMMER nur als Entwurf |
| A2 | **Kalendereintraege erstellen** fuer Termine, die in Mails eindeutig bestaetigt sind (Datum+Zeit+Teilnehmer klar) | Quelle (Mail, Datum) im Notizfeld · nur eigener Kalender · Aenderung/Absage bestehender Termine nur als Vorschlag |
| A3 | **Ablage/Ordnung**: Dokumente nach `dateinamen-konvention` in Projekt-/SharePoint-/Output-Ordner ablegen (Kopie) | Nie loeschen, nie ueberschreiben · bei Zweifel am Zielordner → Entwurf/Frage im Briefing |
| A4 | **Fristen-Register + Logbuch pflegen** (Eintraege ergaenzen, Status nachfuehren, Erledigtes archivieren) | Append-only-Prinzip · nichts kuerzen |
| A5 | **Mail-Entwuerfe bereitstellen** (Antworten, Nachfassen, Begleitschreiben) als Draft im Postfach | Versand NIE autonom (einzige Ausnahme A1) · QS via `korrektur` + `twin` |

## VERBOTEN (immer, ohne Ausnahme)

- Zahlungen ausloesen, Bankauftraege, bexio buchen/reconcilen/loeschen (Doppelbuchungs-Gefahr).
- Vertraege, Offerten, Honorarangebote, LVs versenden — nur Entwurf.
- Erstkontakt zu neuen Empfaengern (Akquise-Mails) ohne Freigabe.
- Dateien/Mails/Kalendereintraege loeschen; Infrastruktur-/Config-Aenderungen.
- Alles, was nicht ausdruecklich in der ERLAUBT-Tabelle steht → Entwurf + Briefing.

## Aenderungsprozess

Erweiterungen nur durch Raphael (Ansage im Chat oder Vermerk im Briefing-Reply); der Hub
schlaegt Kandidaten vor (z.B. «A2 auch fuer Terminverschiebungen»), aktiviert sie aber nie selbst.
Jede Versionsaenderung wird hier mit Datum vermerkt und im Logbuch protokolliert.
