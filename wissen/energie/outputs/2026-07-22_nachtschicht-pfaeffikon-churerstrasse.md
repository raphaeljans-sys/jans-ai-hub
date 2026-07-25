# Nachtschicht Mac Mini 22.07.2026 (~02:30) — Sonderfall Pfäffikon SZ Churerstrasse 100/104 geklärt

## Auftrag

Nachtschicht-Zyklus Mac Mini, Priorität 5 (offene QUESTIONS.md einer KB recherchieren). Nach
Prüfung von Priorität 1–4 (Queues leer, Synobsis gesättigt seit 10 leeren Batch-Läufen,
Kern-KBs bereits heute Nacht trainiert) blieb aus den fünf offenen Punkten in
`wissen/energie/wiki/QUESTIONS.md` nur ein Punkt bounded genug für das 5-USD-Nachtschicht-Budget:
der seit Run 82/83 als «ungeklärter Sonderfall» offene Fall Pfäffikon SZ Churerstrasse 100/104
(Live-Richtpreisrechner Energie Ausserschwyz zeigte weder Preis noch «nicht verfügbar»). Die
übrigen vier Punkte (E-S1 Meta-Entscheid Skill `energie`, E84 ZH-Solarpflicht-Beratungstermin,
E103 Pflegeplatz-Kennwert, E94 Innendämmung-Primärquelle) brauchen entweder eine Entscheidung von
Raphael oder sind als Negativbefund bereits ausgeschöpft — kein neuer Rechercheansatz sinnvoll.

## Vorgehen

1. Objekt-IDs der beiden Adressen über die Adress-Suchroute ermittelt:
   `curl -H "HX-Request: true" ".../heating/?q=Churerstrasse%20100"` → ID 245489 (Churerstrasse 100),
   ID 245496 (Churerstrasse 104).
2. Pricing-Route `?id=<ID>` zunächst **mit** `HX-Request: true` abgefragt (wie in den Vorläufen für
   die Suchroute nötig) → nur ein 2-Byte-Leerrumpf (`content-length: 2`), HTTP 200.
3. Kontrollabfrage einer bekannt funktionierenden Adresse (Etzelstrasse 10, ID 245084) mit
   identischem Header → ebenfalls 2-Byte-Leerrumpf. Ohne Header dagegen 37 kB volle Seite mit
   Preisindikation. **Root Cause gefunden:** die `?id=`-Route braucht den Header nicht — im
   Gegenteil, mit ihm liefert die Django-Anwendung nur das (hier leere) htmx-Fragment statt der
   vollen Seite.
4. Beide Zieladressen ohne Header erneut abgefragt: beide zeigen im Verfügbarkeits-Block
   **«Fernwärmeanschluss möglich»** + **«Fernwärmeanschluss ab 2024 geplant»** — der Rechner kennt
   einen dritten Status («geplant», ohne Preisberechnung) zwischen «verfügbar mit Preis» und
   «nicht verfügbar».

## Ergebnis

- Sonderfall vollständig aufgeklärt, kein Tool-Defekt. Dokumentiert in
  `destillate/fernwaerme-anschlusskosten-zh.md` (Abschnitt 3) und `wiki/QUESTIONS.md`.
- Neuer technischer Merksatz für künftige Ausserschwyz-Läufe: `?q=` braucht `HX-Request: true`,
  `?id=` braucht ihn **nicht** (sonst leere Antwort trotz HTTP 200 — leicht mit einem echten
  Serverfehler zu verwechseln).
- Keine Whitelist-relevante Aktion, kein Versand, keine Buchung, keine Löschung. Kosten dieses
  Zyklus ca. 3 USD von 5 USD Budget.
