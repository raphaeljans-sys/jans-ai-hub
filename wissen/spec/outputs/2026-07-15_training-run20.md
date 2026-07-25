# Spec-Training — Lauf 20 (2026-07-15)

Typ: **Auswertungslauf** (erste neue reale Spec-Anwendung seit Lauf 7, 12.07.).
Station: MacBook Pro · Scheduled Task `spec-training`.

## Ausgangslage
Laeufe 8–19 waren durchweg Verifikationslaeufe (keine neue reale Spec seit dem Wettbewerbs-Layer
12.07.). Zwischen Lauf 19 (00:54) und diesem Lauf ist ein **neues** Artefakt in `outputs/`
erschienen: `2026-07-15_syn-02-typologischer-entwurfsprozess-spec-interview/` (erstellt 00:57–00:59
durch den Schwester-Task `syn02-spec-anstoss`). Lauf 19 meldete deshalb korrekt «keine neue Spec» —
das Artefakt entstand erst nach seinem Abschluss. Dieser Lauf wertet es aus.

## Was ausgewertet wurde
Das Artefakt SYN-02 ist **nicht** eine entschiedene Spec, sondern eine **Interview-Vorbereitung**
(Schritt 1 der Spec-Methode): Vorentwurf «wahres Ziel», Faktenbasis-Scan (Register, Parameter-Schema,
vorhandene Sets, Generator-Schnittstelle, Spannungen zu den Rules 260624/260627/260627b), 9
Schluesselfragen E1–E9 mit je vorgefundener Faktenlage + Default-Vorschlag, Vorschlag Bewertungs-
kriterien + Verifier, «Start auf Zuruf». Klare Grenze: «Dies ist NICHT die Spec / kein Bau vor
bestaetigter Spec».

## Gelernt / geaendert (belegt, additiv, KB-intern)

1. **Neuer Deliverable-Typ: die «Interview-Vorbereitung» beim autonomen Gate-Trigger.**
   Triggert das Gate, waehrend Raphael abwesend ist (Scheduled Task), ist der korrekte Output nicht,
   die Schluesselentscheide zu erfinden und loszubauen, sondern **Schritt 1 vorzubereiten**: die
   E-Fragen mit je Frage recherchierter Faktenlage + Default-Vorschlag, ausdruecklich als «NICHT die
   Spec» markiert. Saubere Aufloesung der Spannung «Spec verlangt bestaetigte Entscheide» ↔ «autonomer
   Lauf ohne Benutzer». → `wiki/anwendung-jans.md` Schritt 1 (neuer Absatz) + `QUESTIONS.md` F2.

2. **F1 — siebter realer Gate-Trigger, weiterhin kein Ueberdehnungs-Beleg.** Hoch-einsatzig
   (ganze Entwurfs-/Wettbewerbs-Produktionskette, GM2/GM3), mehr-Scope (E1–E9), greenfield. Gate
   korrekt+nuetzlich. → `QUESTIONS.md` F1 Stand 2026-07-15.

3. **F2 — Interview-Laenge:** die Interview-Vorbereitung verkuerzt das Live-Interview, weil die teure
   Recherche (Register/Schema/Generator scannen, Rule-Spannungen benennen, Default je Frage herleiten)
   **vor** das Gespraech wandert; E1–E9 werden zu «bestaetigen/schaerfen» statt «von null erarbeiten».
   → `QUESTIONS.md` F2 Praezisierung 15.07.

4. **F3 — vorgeschlagene neue Verifier-Domaene «Entwurfsprozess / generative Geometrie-Pipeline»**
   (noch NICHT bestaetigt, E5 offen): zweite Instanz `flaechen-nachweis` SIA 416 gegen Parameter-Set-Soll
   + Baurecht-Max `machbarkeit`; externes Signal `wissen/grobkosten`-Kennwertband + geometrische
   Exaktheit; autoritative Instanz-Kandidat = der **Architekt am Parti-Human-Gate** (vierte Auspraegung
   «autoritative Instanz muss keine Behoerde sein»: Behoerde · Bauleitung · Jury · bueroeigener Entwerfer).
   Als **Pending-Notiz** unter der `verifier.md`-Tabelle gefuehrt; Promotion zur vollen Zeile erst nach
   bestaetigtem E5. → `verifier.md` + `QUESTIONS.md` F3.

## Bewusst NICHT getan
- Kein voller Environment-5-Gap-Sweep (Lauf 13 fuhr einen frischen; kein neuer Anlass).
- Der von SYN-02 aufgedeckte technische Kern-Gap (`skills/volumenstudie/tools/volumen_generator.py`
  liest das Parameter-Set-JSON nicht und baut nur einen einfachen Extrusionsquader → verletzt 260627b
  im Ergebnisbild) ist **ausserhalb des `wissen/spec`-Mandats** — nur als Cross-Harness-Befund notiert,
  nicht autonom repariert (gehoert zu SYN-02/`volumenstudie`, nicht zur Spec-KB).
- Keine Aenderung an Rule/Skill (Verhalten aller Stationen) — die neuen Punkte sind KB-interne,
  belegte Praezisierungen; die Rule bleibt unveraendert.
- Keine erfundene F3-Zeile aus einem nur vorgeschlagenen Verifier (E5 unbestaetigt → Pending).
- F4/F5 vollstaendig eingeloest → keine Quellen-Schuld abzubauen.

## Prozess-Beobachtung (ausserhalb KB-Mandat)
Erneut ein Same-Day-Lauf (nach Lauf 19 um 00:54). Anders als Laeufe 14–19 ist dieser durch **echtes
neues Material** gerechtfertigt (Auswertungslauf), nicht redundant. Die Drossel-Rule 260714 (1x/Tag
Nachtfenster) bleibt fuer Leer-Wiederholungen relevant; hier lag ein legitimer Anlass vor.

## Offen / naechster Schritt
- SYN-02: Interview auf Zuruf («Spec SYN-02 starten»); nach bestaetigtem E5 die Verifier-Pending-Zeile
  zur vollen `verifier.md`-Tabellenzeile promovieren.
- F1: mittelgrosser Ueberdehnungs-Gegentest (genervter Mittelfall) fehlt weiter.
- F3: Marketing/Text bleibt als eigene belegte Zeile offen.
- AG-Gruendung inhaltlich in `logbuch`-Hand (UBS-Formular + Notariats-Antwort ausstehend).
