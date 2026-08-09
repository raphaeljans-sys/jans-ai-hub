# Aktions-Whitelist — Autonomie Stufe 4

> Governance-Dokument der Kontroll-Schicht. Definiert abschliessend, welche Aktionen der Hub
> (v.a. der Skill `hub-chef` und die Loops) OHNE Rueckfrage ausfuehren darf. Alles andere wird
> als Entwurf vorgelegt. Jede ausgefuehrte Aktion wird im `LOGBUCH.md` protokolliert
> (Was / Ausloeser / erfuellte Guards / Ergebnis).
>
> Version: **v2** · Autorisiert: Raphael Jans, 09.08.2026 (Auftrag «du sollst Arbeit abnehmen
> und Routinen ohne mich erledigen koennen», Vollmachtsausweitung im Planmodus bestaetigt)
> · Vorgaenger: v1 vom 02.07.2026 (A1 bis A5, unveraendert in Kraft).

## Warum v2

Anlass ist der KISPI-Vorfall vom 08./09.08.2026. Der Gastzugriff von sieben Projektbeteiligten
lief ab, obwohl dreimal vorgewarnt worden war, und die Verlaengerung scheiterte an zwei
Dingen: der Weg wurde nicht gefunden (dazu `connectors/WEGE.md`), und die Verlaengerung waere
unter «Infrastruktur-/Config-Aenderungen» gefallen, also unter das pauschale Verbot in v1.

v2 loest den zweiten Teil. Die Leitidee: **umkehrbare Arbeit wird getan, nicht vorgelegt.**
Vorgelegt wird, was nach aussen wirkt und nicht zurueckholbar ist — und auch das nur so, dass
Raphael in einer halben Minute entscheiden kann, statt anwesend sein zu muessen.

## ERLAUBT (autonom, mit Logbuch-Protokoll)

| Nr | Aktion | Guards (ALLE muessen erfuellt sein) |
|---|---|---|
| A1 | **Zahlungserinnerung (Mahnstufe 1)** in bexio erzeugen (`kb_reminder`) und per Apple Mail versenden | Verzug >= 5 Tage · Rechnung im Tages-`zahlungsabgleich` als echt-offen verifiziert (kein Phantom-/Duplikat-Verdacht) · bestehender Debitor mit bekannter Mail-Adresse · QS via `korrektur` + `twin` · Ablage nach Konvention |
| A2 | **Kalendereintraege erstellen** fuer Termine, die in Mails eindeutig bestaetigt sind (Datum+Zeit+Teilnehmer klar) | Quelle (Mail, Datum) im Notizfeld · nur eigener Kalender · Aenderung/Absage bestehender Termine nur als Vorschlag |
| A3 | **Ablage/Ordnung**: Dokumente nach `dateinamen-konvention` in Projekt-/SharePoint-/Output-Ordner ablegen (Kopie) | Nie loeschen, nie ueberschreiben · bei Zweifel am Zielordner → Entwurf/Frage im Briefing |
| A4 | **Fristen-Register + Logbuch pflegen** (Eintraege ergaenzen, Status nachfuehren, Erledigtes archivieren) | Append-only-Prinzip · nichts kuerzen |
| A5 | **Mail-Entwuerfe bereitstellen** (Antworten, Nachfassen, Begleitschreiben) als Draft im Postfach | QS via `korrektur` + `twin` |
| **A6** | **Technische Verwaltung, umkehrbar.** SharePoint-Berechtigungen verlaengern und Gaeste wieder berechtigen · Sites, Bibliotheken und Ordner konfigurieren · Werkzeuge installieren und reparieren (`wege-doctor.sh`) · Dateirechte von Secret-Dateien haerten | Die Aenderung ist **umkehrbar**, und der Rueckbaubefehl steht im Protokoll · **keine Rechteausweitung ueber den Soll-Zustand hinaus** (wer ueber eine Gruppe Members-Rechte haben soll, bekommt Members, nicht Owner) · keine Rechteausweitung fuer Claude selbst · nichts loeschen · Betroffene und Umfang im Logbuch |
| **A7** | **Mailversand an bekannte Projektbeteiligte** (Antworten, Nachfassen, Terminbestaetigungen, fachliche Rueckfragen) | Bestehende Korrespondenz mit dieser Person **belegt** (Thread im Postfach) · QS via `korrektur` + `twin` bestanden · Anrede nach `anrede-kontakte` · **Widerrufsfenster 30 Minuten** · Erstkontakt bleibt Entwurf |
| **A8** | **Versand von Erzeugnissen mit Vertragswirkung** (Offerten, Honorarangebote, LV, Werkvertraege, Submissionsunterlagen) | Alle Identifikatoren nach Rule `identifikatoren-verifizieren` aus kanonischer Quelle belegt · Betraege und Termine gegengerechnet · QS via `korrektur` + `twin` · **Widerrufsfenster 60 Minuten** · Empfaenger bereits im Projekt bekannt |
| **A9** | **bexio-Buchungen und Mahnstufe 2+** | Trockenlauf zuerst, Buchungsliste vollstaendig ins Protokoll · Buchung ist stornierbar · **Widerrufsfenster 60 Minuten** · bei Zweifel an Betrag, Konto oder Duplikat: Entwurf statt Buchung |

## VERBOTEN (immer, ohne Ausnahme)

- **Zahlungen ausloesen, Bankauftraege, Vermoegenstransfers.** Diese Grenze ist am 09.08.2026
  ausdruecklich bestaetigt worden und steht bewusst auch dann, wenn Raphael sie im Einzelfall
  aufheben moechte: ein Fehler ist nicht rueckholbar und trifft fremdes Geld. Der Zahlungslauf
  wird stattdessen fertig vorbereitet vorgelegt und mit einer Zeile freigegeben.
- Erstkontakt zu neuen Empfaengern (Akquise-Mails) ohne Freigabe.
- Dateien, Mails oder Kalendereintraege **loeschen**.
- Rechteausweitung fuer Claude selbst; Aenderungen an den Schutzmechanismen
  (`sync-task-guard.sh`, Lauf-Gate, dieser Whitelist).
- Alles, was nicht ausdruecklich in der ERLAUBT-Tabelle steht → Entwurf + Briefing.

## Das Widerrufsfenster (A7 bis A9)

Statt vorher zu fragen, wird nachher ein Fenster offen gelassen:

1. Erzeugnis fertigstellen, QS laufen lassen, als Draft ablegen.
2. Eine Zeile an Raphael: was, an wen, wann es rausgeht, Veto per Antwort «STOP \<id\>».
3. Nach Ablauf des Fensters automatisch ausfuehren, ausser es kam ein Veto.
4. Beides ins Logbuch.

Damit laeuft der Normalfall ohne ihn, und er kann trotzdem eingreifen, solange es noch etwas
zu greifen gibt. Mechanik: `scripts/widerruf-queue.sh`.

## Was ausserhalb dieser Whitelist blockiert

Zwei Schichten liegen **ueber** dieser Whitelist und lassen sich hier nicht oeffnen:

- **Der Auto-Mode-Klassifikator** von Claude Code. Er greift auch bei `Bash(*)` in der
  Allowlist und hat am 09.08.2026 unter anderem `m365 spo group member add`, das Anlegen
  ausfuehrbarer Dateien und `openssl pkcs12 -export` blockiert. Er wird **nicht umgangen**;
  wer dort haengenbleibt, legt den fertigen Befehl vor. Laufende Liste in `connectors/WEGE.md`.
- **Die Sync-Task-Freigabe-Schwelle** (`scripts/sync-task-guard.sh`). Sie bleibt unveraendert
  scharf und bekommt nur einen Rueckkanal, damit Zurueckgehaltenes nicht liegenbleibt.

## Aenderungsprozess

Erweiterungen nur durch Raphael (Ansage im Chat oder Vermerk im Briefing-Reply); der Hub
schlaegt Kandidaten vor, aktiviert sie aber nie selbst. Jede Versionsaenderung wird hier mit
Datum vermerkt und im Logbuch protokolliert.

| Version | Datum | Aenderung |
|---|---|---|
| v1 | 02.07.2026 | Erstfassung, A1 bis A5 (Spec Hub-Chef-Harness, Stufe 3) |
| v2 | 09.08.2026 | A6 bis A9 ergaenzt, Widerrufsfenster eingefuehrt, Zahlungsgrenze praezisiert, Verweis auf Klassifikator und Wege-Register |
