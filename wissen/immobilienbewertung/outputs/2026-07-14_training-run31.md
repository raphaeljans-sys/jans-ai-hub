# Training-Run 31 — KB Immobilienbewertung (2026-07-14)

## Ausgangslage

Die KB befindet sich seit Run 18 im Verifikations-/Beobachtungsmodus: der Wuest-Kurs und alle
E-Quellen sind vollstaendig eingearbeitet, die letzten Laeufe (28-30) waren reine Delta-Checks
ohne neuen Ingest. Rule `auto-verbesserungen` 260713 hat diesen Loop auf 1x taeglich gedrosselt
(Token-Fokus liegt auf dem Wettbewerbs-DNA-Harness). Dieser Lauf sollte pruefen, ob trotzdem noch
auto-schliessbare Rueckstaende existieren — insbesondere die seit Run 18 offene Luecke **D11**.

## Ergebnis: D11 geschlossen

Per Web-Recherche wurde die amtliche Quelle gefunden, die in den fruehen Laeufen (Run 18, 22)
als "im Original-Dokument nicht ueber 2004 hinaus vorhanden" markiert war:

**Zuercher Index der Wohnbaupreise (ZIW)**, herausgegeben von Statistik Stadt Zuerich, Basis
01.06.1939 = 100, Publikationsstand 01.01.2026 (Reproduktion via `hev-sz.ch/fileadmin/Files/
Dokumente/Statistiken/1.5.pdf`, Original-Quelle `stadt-zuerich.ch/.../zuercher-index-der-
wohnbaupreise/indexreihen.html`).

Relevante Werte (1939er-Basis):
- 01.04.2003 = 899.2 (der Stand, auf dem die Schaetzungsanleitungs-Tab. 2 beruht)
- 01.04.2025 = 1210.4 (juengste publizierte Halbjahresreihe)

**Index-Faktor 2003→2025 = 1210.4 / 899.2 = 1.346 (+34.6 %)**

Damit sind die volumenbasierten Neuwert-Richtwerte (Bauklasse I-VI, EFH/MFH, CHF/m3 umbauter
Raum) erstmals auf 2025 hochgerechnet und in [[realwert-sachwert]] als neue Tabelle hinterlegt
(z.B. Bauklasse III MFH 450-525 → 606-707 CHF/m3 2025). Naechster ZIW-Publikationstermin
~04-06/2026 sollte nachgezogen werden, sobald verfuegbar.

Eingearbeitet in: `wiki/realwert-sachwert.md` (Sektion "Neuwert-Richtwerte CHF/m3", Sources,
History), `wiki/wissensluecken.md` (D11 → erledigt), `raw/_INGESTED.md` (neue Quelle),
`training/curriculum.md` (Stand Run 31).

## Weitere Pruefungen (kein Ingest, Bestaetigungen)

- **Bewertungsordner** (`IMMO - 01 Projekte/01 BEWERTUNG PROJEKTE`) erneut gelistet: weiterhin
  nur die 4 bekannten Faelle (Thalwil 9568, Ebmatingen 3932, Wangen 8855, Langnau 3338/Giebelweg
  12). Kein neuer JANS-Bewertungsfall.
- **Langnau-BZO-Revision** (letzter D6-Restposten) per Web erneut geprueft: kantonale Vorpruefung
  und oeffentliche Auflage sind fuer Fruehjahr 2026 geplant, die Festsetzung der neuen BZO erst
  fuer Fruehjahr 2027 — weiterhin nicht rechtskraeftig. Keine Aenderung an [[az-gfz-kennwerte]]
  noetig, Status bestaetigt unveraendert.
- Marktpuls (E7) nicht erneut per Web geprueft — bereits dreifach am 2026-07-14 (Runs 28-30)
  bestaetigt unveraendert (SNB 0.00 %, Referenzzins 1.25 %, Durchschnittszinssatz 1.31 %); ein
  vierter Check am selben Tag haette keinen Grenznutzen.

## Offener Punkt — vierte Meldung an Raphael

Rule `auto-verbesserungen` 260624 nennt fuer Oberrieden W2 «9.0 m traufseitig» als Beispiel.
Amtlich belegt (Run 27, BZO Oberrieden Stand 26.01.2026) sind es **8.5 m traufseitig** (9.0 m ist
die Flachdach-Fassadenhoehe). Dieser Befund wurde in den Runs 27/28/30 bereits protokolliert und
ist weiterhin nicht korrigiert. Da dies eine Rule-Datei betrifft, die ausserhalb des Mandats
dieses Lern-Loops liegt (Wissens-Layer editiert nur `wissen/`, nicht `rules/`), kann der Loop die
Korrektur nicht selbst vornehmen — sie bedarf einer kurzen manuellen Bestaetigung/Korrektur durch
Raphael in `rules/auto-verbesserungen.md`, Eintrag 260624.

## Naechste Schritte

- D5 (Margen-/Finanzierungspraxis) und D2 (Bodenpreise) bleiben Bring-Schulden Raphael — nicht
  web-recherchierbar, da buerointerne Praxiswerte.
- Sobald der ZIW-Wert per 04/06-2026 publiziert ist: Faktor 2003→2026 nachziehen (kleine Korrektur,
  aktuell nur ~0.5-1 Pp Differenz erwartbar angesichts der juengsten Halbjahresschritte).
- Ohne neuen JANS-Bewertungsfall oder neues Rohmaterial (D1/D2/D5/D7/D9/D10) hat die KB nach
  diesem Lauf erneut keine offene, selbststaendig schliessbare Aufgabe — Ruecktaktung ins
  Nachtfenster bleibt sinnvoll (bereits mehrfach empfohlen, aktuell durch Rule 260713 ohnehin auf
  1x taeglich gedrosselt).
