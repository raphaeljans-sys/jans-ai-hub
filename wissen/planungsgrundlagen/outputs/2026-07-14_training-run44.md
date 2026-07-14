# Trainingslauf 44 — Kartenportale (PL-01) + Energie (PL-04), Token-Vollgas

**Datum:** 2026-07-14 · **Methodik:** Rotation zurueck zu Kartenportale + Energie (nach Run 43
Recht/Norm + Brandschutz). Kandidat aus Run 42 «Naechste Schritte»: `Grundstueckkataster/`-
Regionalordner (Maur/Niederhasli/Langnau/Thalwil/Regensdorf/Zuerich/Wald ZH) auf Delta-Inhalte
pruefen. Zusaetzlich vollstaendiger Saettigungs-Check der Energie-Domaene.

## Domaene 1 — Kartenportale (PL-01)

**K40 — NEU, wichtigster Fund des Laufs: ÖREB-Kataster-Weisung Kt. ZH.** Der Ordner
`Grundstueckkataster/` diente seit K1 wiederholt als Quelle fuer DXF-/OEREB-Bezugsbenchmarks
(Giebelweg 12, Regensdorf, Wald ZH, Maur 7950, …), aber die Datei
`Grundstueckkataster/Allgemein/oereb_weisung_v3.pdf` — die amtliche «Weisung ÖREB-Kataster
Betrieb und Nachführung der Daten» V3 (Kt. ZH, Baudirektion, Amt für Raumentwicklung, Abteilung
Geoinformation, 1. Dezember 2022, 73 Seiten) — wurde nie ausgewertet. Seiten 1-19 vollstaendig
gelesen, drei Kernfunde:

1. **Amtliches ID-/Legenden-Register** fuer saemtliche ÖREB-Geobasisdaten Kt. ZH — jede im
   Connector `geo-zh.mjs` verwendete `ogd-0xxx`-Layer-ID (73A/73B/76/116/130/131/132/145/157/
   159/160/190/45-52-ZH/56-ZH/59-ZH) hat hier ihre amtliche Rechtsgrundlage und zustaendige
   Stelle (ARE/AWEL/ALN/AFM/Gemeinden) dokumentiert. Bisher waren diese IDs nur implizit aus
   Connector-Antworten bekannt.
2. **Vorwirkung-Mechanik** — der eigentliche Fund: positive Vorwirkung eines noch nicht
   rechtskraeftigen Rechts ist grundsaetzlich unzulaessig, negative Vorwirkung ausnahmsweise
   zulaessig bei ausdruecklicher gesetzlicher Grundlage. Das erklaert erstmals die **rechtliche
   Sperrwirkung** hinter dem bereits bestehenden `revision_laeuft`-Flag des Connectors
   ([[kartenportale-zonenplan-zh]] §A6, Benchmark Seuzach Kat. 2304): eine laufende BZO-Revision
   kann ein Bauvorhaben blockieren, obwohl sie noch nicht in Kraft ist — direkt relevant fuer
   Skill `machbarkeit` (Studientyp A).
3. **ÖREB-DMT-Systemarchitektur + Betriebsorganisation** — generischer 4-Phasen-Nachführungs-
   prozess (Vorprüfung→Öffentliche Auflage→Festsetzung/Genehmigung→Rechtsmittel→In Kraft),
   drei Datenbanken (Rechts-DB/Projekt-DB/Protokoll-DB), Rollen (Katasterleitung ARE, KBO,
   kantonale Fachstellen, Gemeinden, Fachspezialisten).

→ NEU [[kartenportale-oereb-kataster-system-zh]], Status `established` (amtliche Primaerquelle
ohne konkurrierende Zweitquelle). Verlinkt aus [[kartenportale-zonenplan-zh]],
[[kartenportale-geoportale-uebersicht]], [[kartenportale-oereb-egrid-bezug]]. **Offen:** Seiten
20-73 (Detailprozesse §5.3-5.12 je Thema, insb. Waldgrenzen §5.9 + Grundwasserschutzzonen/
-areale §5.10/5.11 — direkt anschlussfaehig an bereits dokumentierte Connector-Layer 157/130/131)
fuer den naechsten Kartenportale-Turnus.

**Bestaetigte Nicht-Funde:** drei chronologisch gestaffelte persoenliche Vorgehens-Notizen im
selben Ordner (`241122_`/`251122_Vorgehen Datenbezug Amtliche Vermesserdaten.docx`, Mai 2024/
Maerz 2026; `Bezugsorte Amtliche Vermessung Grundstueckkataster.docx`, Okt 2024) beschreiben
alle denselben, bereits in [[kartenportale-geoportale-uebersicht]] (A4/K4) dokumentierten
Geoshop-/geodienste.ch-Bezugsweg ohne neuen Inhalt — ehrlich als Delta-frei dokumentiert statt
uebergangen.

## Domaene 2 — Energie (PL-04)

Systematischer Saettigungs-Check aller verbleibenden PL-04-Unterordner gegen das
Ingestions-Register (`raw/_INGESTED.md`): `Solaranlage/solar-home.ch`, `megasol.ch`,
`energieheld.ch`, `prefa.solar`, `sonnenverlauf.de`, `solarapp.ch`, `uvek-gis.admin.ch`,
`energieschweiz.ch`, `pv sol premium`, `pronovo.ch` (leer), `wissen.minergie.ch/_Login` (leer),
`_Energienachweise`, `_Private Kontrolle` — **alle bereits vollstaendig eingearbeitet** (E1-E38
aus 29 Vorlaeufen). Einzige neue Pruefung: `forumenergie.ch/230710_Kurse.docx` (bisher nicht
einzeln extrahiert) — enthaelt nur einen bareURL-Link zur bereits dokumentierten Kursseite,
**bestaetigter Nicht-Fund** (Delta zu E17/E19).

**Befund:** die Energie-Domaene ist nach 29 Vorlaeufen strukturell erschoepft — kein einziges
PL-04-Dokument mehr unerschlossen. Das ist ein gutes Reifesignal fuer die KB, nicht ein
Leerlauf-Problem des Laufs.

## Verifikations-Stufe

Der K40-Fund stammt aus einer vollstaendig gelesenen amtlichen Primaerquelle (Kt. ZH ARE, keine
konkurrierende Zweitquelle noetig) — Status `established`. Die drei Nicht-Funde (2×Kartenportale-
docx, 1×Energie-docx) sind ehrlich dokumentierte Delta-Pruefungen ohne neuen Inhalt, nicht
uebergangen.

## Register nachgefuehrt

- `training/curriculum.md` — neue Lektion K40 (Kartenportale) + E-Check-Eintrag (Energie)
- `wiki/QUESTIONS.md` — K40-Eintrag Abschnitt A
- `raw/_INGESTED.md` — zwei neue Zeilen (oereb_weisung_v3.pdf + Begleit-docx; forumenergie
  230710_Kurse.docx)
- `wiki/INDEX.md` — neuer Artikel-Eintrag [[kartenportale-oereb-kataster-system-zh]]
- Backlinks ergaenzt in [[kartenportale-zonenplan-zh]], [[kartenportale-geoportale-uebersicht]],
  [[kartenportale-oereb-egrid-bezug]]

## Naechste Schritte

- Rotation: naechster Turnus zurueck zu Recht/Norm (PL-02) + Brandschutz (PL-03) — Backlog aus
  Run 43: 18-Nachhaltiges-Bauen-Einzelchecklisten (26 Dateien), 14-Energie-TGA-Rest (GT_RL1-9),
  Feuerungsanlagen-Erlaeuterungen (Cheminees/Spaene/Schnitzel/Pellets).
- Kartenportale-Backlog: `oereb_weisung_v3.pdf` Seiten 20-73 (Detailprozesse je Thema, insb.
  Waldgrenzen §5.9 + Grundwasserschutz §5.10/5.11) fuer den uebernaechsten Kartenportale-Turnus
  vormerken — direkter Anschluss an bestehende Connector-Layer.
- Energie-Domaene: strukturell erschoepft (29 Laeufe, keine unerschlossenen PL-04-Dokumente
  mehr); naechster sinnvoller Energie-Turnus ist ein reiner Web-Refresh-Check (MuKEn-2025-
  ZH-Ueberfuehrung, zuletzt Run 38 bestaetigt unveraendert) statt weiterer Dokumenten-Mining.
