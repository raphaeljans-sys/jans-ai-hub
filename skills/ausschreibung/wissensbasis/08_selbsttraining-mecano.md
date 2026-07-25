# Selbsttrainings-Mechanismus (Mecano)

Ziel: Das Bauleitungs-Harness wird mit jeder Anfrage besser. Dieser Mechanismus
beschreibt, wie ich (das LLM) Wissenslücken **erkenne → protokolliere → schliesse
→ integriere**. Er macht das Harness selbstlernend.

## Das Prinzip in einem Satz

> Jede Unsicherheit während einer Bauleitungs-Aufgabe ist ein Lernsignal —
> sie wird festgehalten, recherchiert oder erfragt, und das Ergebnis fliesst
> dauerhaft in die Wissensbasis zurück.

## Der 5-Schritte-Zyklus

### 1. ERKENNEN — Lücken-Signale während der Arbeit

Ich behandle folgende Situationen als Wissenslücke (nicht überspielen!):
- Ich rate eine BKP-/NPK-Nummer statt sie zu belegen.
- Für ein Gewerk fehlt ein Goldstandard-LV in `referenzen/goldstandard-lv/`.
- Ein Fachbegriff/Wert ist mir unklar (Glossar deckt ihn nicht ab).
- Ich kenne den marktüblichen Richtpreis/Bandbreite nicht.
- Eine Vorlage fehlt (Werkvertrag, Abnahmeprotokoll, Garantieschein …).
- Ich bin unsicher über eine Norm/Vorschrift (SIA 118, VKF, IVöB/BöB, MWST-Satz).
- Eine JANS-Konvention (Stil, Ablage, Konditionen) ist nicht dokumentiert.

### 2. PROTOKOLLIEREN — in die Lücken-Registry eintragen

Jede erkannte Lücke wird in [wissensluecken.md](wissensluecken.md) eingetragen:
`| Datum | Kategorie | Lücke | Quelle der Frage | Status | Schliessungsweg |`
Status: `offen → in Klärung → geschlossen`. Doppelte Einträge konsolidieren.

### 3. SCHLIESSEN — in dieser Reihenfolge

1. **Archiv durchsuchen** — `08_Bauleitung` (Projekte, BBase, Knowhow) nach Vorlage/Beispiel.
2. **Bestehende Wissensbasis** — Glossar, Goldstandards, Referenzen.
3. **Offizielle Quelle** — NPK-Wegleitung 2020, BKP-2017, SIA-Normen, VKF.
4. **Web-Recherche** — nur für allgemeingültige Normen/Marktdaten.
5. **Den Benutzer fragen** — wenn es JANS-internes Wissen, eine Stilentscheidung
   oder einen projektspezifischen Wert betrifft. **Konkret und gebündelt fragen**
   (nicht jede Kleinigkeit einzeln), mit Vorschlag/Default zur Auswahl.

### 4. INTEGRIEREN — Ergebnis dauerhaft sichern

- Neues Gewerk-LV → als `.md` in `referenzen/goldstandard-lv/`.
- Neuer Fachbegriff/Wert → ins `06_glossar.md`.
- Neue Vorlage → in `templates/` + Verweis in der passenden Wissensdatei.
- Neue JANS-Regel/Konvention → als Memory (`type: feedback`) UND in der Wissensbasis.
- Lücke in `wissensluecken.md` auf `geschlossen` setzen, mit Pfad zum Ergebnis.

### 5. MESSEN — Reifegrad prüfen

`python3 tools/reifegrad.py` zeigt die Abdeckung (welche Gewerke haben einen
Goldstandard, welche fehlen) und zählt offene Lücken. Vor jeder grösseren
Bauleitungs-Session kurz laufen lassen → zeigt, wo nachzuziehen ist.

## Frage-Disziplin (wichtig)

- **Bündeln**: offene Punkte sammeln und am Ende einer Aufgabe gemeinsam fragen.
- **Mit Default**: immer einen begründeten Vorschlag mitliefern, den der Benutzer nur bestätigen muss.
- **Belegen statt raten**: lieber eine Lücke ausweisen als eine falsche BKP-/NPK-Nummer erfinden.
- **Nichts Sensibles publizieren**: bei Web-Recherche keine Projekt-/Bauherrendaten preisgeben.

## Auslöser

Dieser Mecano wird ausgeführt:
- automatisch begleitend bei jeder Ausschreibungs-/Bauleitungs-Aufgabe (Schritt 1–2),
- aktiv bei der wöchentlichen Pflege (siehe [wochenplan-bauleitung.md](wochenplan-bauleitung.md)),
- auf Zuruf: «Wissenslücken prüfen» / «Harness trainieren».
