# E-R163-1 fortgesetzt — Primärbeleg ewz-Fernwärmetarif 2027

**Datum:** 2026-08-26, Nachtschicht-Fenster · **Station:** Mac Mini · **Art:** automatischer
Nachtschicht-Lauf (Prioritaet 4, Fortsetzung des von Run 163 vorgegebenen naechsten Schritts).

## Auftrag

Run 163 (25.08.2026, Scheduled Task `energie-training` auf dem MacBook Pro) hinterliess als
einzigen offenen Punkt mit Termin- und Zahlenwirkung **E-R163-1**: der von watson.ch behauptete
Stadtratsbeschluss vom 26.11.2025 zum neuen ewz-Fernwärmetarif 2027 (Arbeitspreis 65→35 CHF/MWh,
Leistungspreis 42→145 CHF/kW) war nicht am amtlichen Text nachgewiesen — nur die Richtung
(Medienmitteilung 05.11.2025) war belegt, die Zahlen standen nur in einem Sekundärbericht.

## Vorgehen

WebSearch/WebFetch auf `stadt-zuerich.ch` und `gemeinderat-zuerich.ch`:
1. Medienmitteilung vom 05.11.2025 direkt gegengelesen — bestätigt: keine Zahlen, kein
   Beschlussdatum, nur die qualitative Richtung.
2. Über strom.ch (VSE-Pressespiegel) das Geschäft **2025/525** identifiziert: Weisung des
   Stadtrats vom 12.11.2025, Departement der Industriellen Betriebe, «Wärmeversorgungsverordnung,
   Teilrevision» + Abschreibung der Motion GR Nr. 2022/441.
3. Über eine gezielte Suche nach der watson-zitierten Beschlussnummer «STZH_STRB_2025_3879» den
   amtlichen Eintrag gefunden: **STRB Nr. 3879/2025**, Titel «Elektrizitätswerk, Revision
   Fernwärmetarif», auf `stadt-zuerich.ch/.../stadtratsbeschluesse/2025/11/stzh-strb-2025-3879.html`.
4. Seite abgerufen: nur eine Kurzübersicht (Titel + Nummer), kein Volltext/PDF mit den
   Tarifzahlen. Das Geschäftsverwaltungssystem des Gemeinderats (`gemeinderat-zuerich.ch/geschaefte`)
   ist eine dynamische Suchmaske ohne stabile Direkt-URL zum Geschäft 2025/525 — mit WebFetch
   (statischer HTML-Abruf) nicht weiter auflösbar.

## Ergebnis

Der Beschluss **existiert amtlich und ist exakt identifiziert** (Nummer + Titel + Zeitraum
`/2025/11/`, deckungsgleich mit dem watson-Datum 26.11.2025) — das ist ein echter Fortschritt
gegenüber «nur ein Medienbericht behauptet das». Die **vier konkreten Zahlen** sind aber weiterhin
**nicht am Amtstext selbst gegengelesen**, weil die amtliche Kurzübersichtsseite keinen Volltext
zeigt und die dynamische Geschäftsdatenbank sich per WebFetch nicht bedienen lässt.

**Status gehoben:** von «unbelegt, nur Medienbericht» auf «Beschluss amtlich nachgewiesen (Nummer
+ Titel + Zeitraum), Zahlen weiterhin sekundär (watson) bis zum Volltext-Zugriff».

**Weiterhin gilt:** die Zahlen bis zum Volltext nicht gegenüber einer Bauherrschaft als amtlich
belegt verwenden — nur die Richtung (Wechsel indexbasiert → kostenbasiert, Fixanteil steigt) ist
amtlich gesichert.

## Offener Rest

Volltext/PDF von STRB Nr. 3879/2025 bzw. der Weisung 2025/525 beschaffen — entweder über eine
gezielte Suche im Geschäftsverwaltungssystem mit Browser-Interaktion (nicht mit WebFetch lösbar)
oder per direkter Anfrage bei ewz-Medienstelle. Braucht einen dedizierten Lauf, nicht erneut in
der Nachtschicht versuchen, solange kein neuer Zugangsweg gefunden ist.

## Geänderte Dateien

- `destillate/fernwaerme-anschlusskosten-zh.md` — markierter Nachtrag (+13 Zeilen)
- `wiki/QUESTIONS.md` — E-R163-1 Status gehoben, Beschlussnummer ergänzt
- `CHANGELOG.md` — dieser Eintrag
