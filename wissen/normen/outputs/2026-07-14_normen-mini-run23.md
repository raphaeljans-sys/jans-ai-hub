# Normen-Training Mini (Mac Mini) — Run 23, 14.07.2026

## Auftrag

Fortsetzung Vertiefungsstufe (c) Q&A-Selbstbefragung für die DIN/VSS/RAL-Familie
(Stations-Split Mac Mini), gemäss Plan aus Run 22: sechs neue Kandidaten priorisiert nach
Fach-Skill-Relevanz, parallel über sechs Sub-Agenten.

Vorprüfung: `norm-inventar.md` zeigt für DIN/VSS/RAL **0 offene `[ ]`-Positionen** —
Grunddestillation bleibt vollständig (Status unverändert seit Run 19). Der Lauf setzt daher
direkt bei der Vertiefungsstufe (c) an, wie in Run 22 vorgesehen.

## Durchgeführt — Q&A-Selbstbefragung (6 Normen, parallel via Sub-Agenten)

Je Norm 12-20 Prüfungsfragen formuliert und jede unabhängig durch Volltextlektüre des
Original-PDF beantwortet (nicht aus dem Destillat abgeschrieben), dann gegen das bestehende
Destillat abgeglichen:

1. **DIN 4102-2:1977** (Brandverhalten, Bauteile) — 7/20 Fragen ohne Lücke bestanden, 0
   Sachfehler, aber 13 Ergänzungen — darunter ein bislang **komplett fehlender Abschnitt**
   (Abschnitt 7 "Normkonstruktionen für nichthinterlüftete Bekleidungen", U/F-Werte für
   Stahlstützen/-träger) sowie Durchbiegungsgeschwindigkeits-Formel (Ziff. 5.2.6),
   Stahltemperatur-Grenze 500 °C (Ziff. 5.2.7), ETK-Toleranzen und Probekörper-Mindestmasse.
   Grösste Ergänzungsdichte aller sechs Normen — das Destillat war zwar fehlerfrei, aber im
   Kapitelumfang deutlich lückenhafter als angenommen.

2. **DIN 1946-6:2009** (Wohnungslüftung, 125 Seiten) — 20/20 bestanden, 0 Fehler, 3
   Ergänzungen (Extrapolationsregel Nutzungseinheiten > 210 m², Tabelle-8-Korrekturfaktor
   f_wirk,Komp, Keimwachstum-Vermeidung > 90 % Luftfeuchte). Offener Punkt aus Mini-Run 12/13
   (Seitenumfang Anhang H Winddaten) abschliessend verifiziert (S. 109-114); der
   Original-interne Widerspruch bei der Windstark/-schwach-Definition bleibt bestehen (steht
   so im Original, keine KB-Korrektur möglich).

3. **DIN 5034-1:1999** (Tageslicht, Fenstermasse) — 15/17 bestanden, 0 Fehler, 2 Ergänzungen:
   fehlende kumulative Brüstungs-/Fensterunterkanten-Anforderung für Standard-Wohnräume
   (Ziff. 4.2.2) und Klarstellung, dass Oberlichter unter 2'000 m² Fenster nicht ersetzen
   (Anhang A.2) — relevant für `wettbewerb` bei Sheddach-/Oberlicht-Konzepten.

4. **DIN 5034-3:2007** (Tageslicht, Berechnung) — 20/20 bestanden, 0 Fehler, 5 Ergänzungen
   (Formel AR, Default-Reflexionsgrad ρV = 0,2, Formeln fo/fu/f(α), Praxis-Hinweis
   Nachbarparzellen-Verbauung, MEZ-vs-WOZ-Unterscheidung). Kuriosum vermerkt: Norm referenziert
   selbst einen nirgends definierten Faktor "k4" (Redaktionsrelikt im Original).

5. **VSS 700.5:1987** (Zugangsnormalien Kt. ZH) — 16/16 bestanden, 0 Fehler, 2 Ergänzungen
   (Differenzierung Kehrmöglichkeit PW/PW vs. Kehrplatz LW/LW; Unschärfe beim
   "+"-Zusatz Zufahrtsradius als offene Normtext-Lücke vermerkt).

6. **VSS 722.15:1983** (Verkehrssicherheitsverordnung) — 16/16 bestanden, 0 Fehler, 4
   Ergänzungen (§7 Kriterium stark belastete Ausfahrten, §17 Geländeänderungen — relevant für
   `massgebendes-terrain`, §18 unterirdische Bauten/Erdanker — Tiefgaragen-Rückverankerung,
   Anhang-1-Neigungswerte für Rampendimensionierung).

**Befund:** über alle 6 Normen und 108 Prüfungsfragen **kein einziger falscher Zahlenwert**
in einer bereits vorhandenen Kernaussage. DIN 4102-2 zeigt jedoch, dass "Volltextabgleich
bestanden" (frühere Retro-Verifikation) nicht dasselbe ist wie "Kapitelumfang vollständig" —
ein ganzer Abschnitt kann fehlerfrei sein und trotzdem einen ganzen Abschnitt auslassen. Diese
Unterscheidung ist der wichtigste Einzelbefund dieses Laufs für die Methodik der übrigen
Vertiefungsläufe.

## Ergebnis

- 6 zusätzliche DIN/VSS/RAL-Destillate Q&A-selbstbefragt: 94/109 Fragen sofort bestanden
  (86 %), 0 falsche Zahlenwerte, 29 Ergänzungen.
- Insgesamt sind damit 20 von ~95 DIN/VSS/RAL-Destillaten explizit Q&A-selbstbefragt.
- Kein neuer offener Punkt in `wiki/QUESTIONS.md`; der Anhang-H-Punkt aus Mini-Run 12/13 ist
  geschlossen.
- Alle sechs Destillate + der Frage-Anhang zu DIN 1946-6 wurden committet (teils direkt durch
  die Sub-Agenten, teils via `nas-selfcommit`).

## Nächster Schritt (Run 24)

Vertiefungsstufe (c) fortsetzen mit weiteren Kandidaten ohne bisherige Q&A-Selbstbefragung,
priorisiert nach Fach-Skill-Relevanz: DIN 18232-2 (Rauch-/Wärmeabzug NRA, Ergänzung zur
bereits geprüften DIN EN 12101-2), DIN 4844-2 (Sicherheitskennzeichnung), SIA-Pendant-Check
für DIN 5034-1/-3 gegen `sia-380-1`/Tageslichtnachweis-Anforderungen (analog zum
SIA-500-vs-DIN-18040-Cross-Check aus Run 22 — git pull vor Recherche, da SIA/VKF auf dem
MacBook Pro läuft), sowie VSS 640 050/060 als weitere ältere, noch nicht Q&A-geprüfte
VSS-Positionen.

INVENTAR-STATUS DIN/VSS/RAL: unverändert **Grunddestillation + Retro-Verifikation KOMPLETT**
(seit Run 19). Vertiefungsstufen (c)/(d) laufen weiter, kein «Task beenden»-Vorschlag nötig
(VOLLGAS-Programm: nach Familienabschluss automatisch Wechsel in die Vertiefung, kein
Leerlauf).
