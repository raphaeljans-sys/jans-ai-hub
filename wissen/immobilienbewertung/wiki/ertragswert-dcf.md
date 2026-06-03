---
title: Ertragswert / DCF — Kapitalisierung und Diskontierung
status: emerging
last_updated: 2026-06-03
sources: [Wuest-Kurs "Immobilien entwickeln" 06.2023 (Modul 1/3), IMMO-03 Abzinsung/Disskontierung, IMMO-03 Residualwert]
links: [[residualwertmethode]], [[bewertungsverfahren-ueberblick]], [[investorenmarkt-makro]], [[vergleichswert-hedonisch]]
---

# Ertragswert / DCF — Kapitalisierung und Diskontierung

Fuer **Renditeliegenschaften** (Wohn-/Geschaeftsobjekte, die als Kapitalanlage gehalten
werden) ist der Wert die Summe der **diskontierten zukuenftigen Geldfluesse**. Die
Mieteinnahmen bilden die Verzinsung des investierten Kapitals (Wuest-Kurs S. 11).

## Zwei Spielarten

### 1. Einfache Kapitalisierung (Ewige Rente)
```
Ertragswert  =  Nettomietertrag p.a.  /  Kapitalisierungssatz
```
- Schnell, fuer stabile Objekte. Der **Kapitalisierungssatz** buendelt Verzinsung +
  Risiko + Bewirtschaftung. Bandbreite je Objekt/Lage typisch ~2.5-5 %; exakte
  Herleitung im JANS-Kontext noch undokumentiert → `wiki/wissensluecken.md`.

### 2. DCF (Discounted Cash Flow)
```
Ertragswert  =  Σ  CF_t / (1+i)^t   +   Terminalwert / (1+i)^T
              t=1..T
```
- **CF_t** = Mietertrag − Bewirtschaftung − Unterhalt/Instandsetzung − nicht umlagefaehige
  Kosten, Jahr fuer Jahr ueber den Betrachtungshorizont T (oft 10 J. explizit, dann
  Terminalwert; in der Schaetzungspraxis teils ueber den ganzen Lebenszyklus ~40+ J.).
- **i** = Diskontsatz (realer/nominaler Satz; Real- vs. Nominalrechnung sauber trennen).
- **Terminalwert** = kapitalisierter CF nach Periode T (Exit-/Endwert).

## Diskontsatz — die heikelste Annahme

Der Diskontsatz ist der groesste Werthebel und im vorliegenden Material **nicht als Regel
dokumentiert** (Expert-Judgement). Uebliche Bausteine: risikofreier Satz + Immobilien-
Risikopraemie + objektspezifische Zu-/Abschlaege (Lage, Mieterbonitaet, Drittverwendbarkeit,
Zustand). Real- vs. Nominalsatz und Wachstumsannahme (Mietsteigerung) muessen konsistent
sein. → Eine **JANS-Diskontsatz-Herleitungstabelle** (je Nutzung/Lage/Risiko) ist eine
Kern-Wissensluecke; im Training zu erarbeiten.

## Verknuepfung

- Speist den **Endwert** in der [[residualwertmethode]] (Renditeobjekt).
- Mietniveau und Zins-/Anlagedruck-Kontext: [[investorenmarkt-makro]].
- Mietzins-Quantile zur Plausibilisierung: [[vergleichswert-hedonisch]].

## Offen / zu vertiefen

- Diskont-/Kapitalisierungssatz-Herleitung (Regeltabelle).
- Bewirtschaftungs-/Unterhaltsquoten (% des Mietertrags) je Objekttyp.
- Mietsteigerungs-/Leerstandsannahmen; Terminalwert-Multiplikator-Praxis.
- IMMO-03 Abzinsung/Disskontierung-Material und Kursnotizen vollstaendig einarbeiten.
