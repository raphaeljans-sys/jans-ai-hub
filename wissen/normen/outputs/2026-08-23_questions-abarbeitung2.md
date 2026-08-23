# QUESTIONS-Abarbeitung, zweiter Lauf (23.08.2026)

**Auftrag Raphael:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je
Aussage (Norm, Ausgabe, Ziffer), Verifikationsstatus des Destillats vor Zitat lesen. Vorlauf
gelesen: `CHANGELOG.md` (Kopfeintrag «SIA-Sweep, vierte Fortsetzung») und der letzte
Tages-Report `outputs/2026-08-23_questions-abarbeitung.md`.

## Ausgangslage

Der Vorlauf hatte am selben Tag bereits drei Fragen geschlossen (E_vm-Divergenz SIA 2056/
387-4, BRL 17-15 Teil 2 «Technikraum», VKF 40-15 Kap. 2.17) und einen neuen SharePoint-
Zugangsweg über `connectors/m365-graph.mjs` erschlossen. Ein Blick über die verbleibenden
`##`-Abschnitte von `QUESTIONS.md` zeigte: die meisten historischen Run-Abschnitte (Run 22
bis Run 60) sind bereits abgearbeitet oder als Cross-KB-Bring-Schulden markiert; die drei
N-SIASWEEP-Fragen sind am selben Tag bereits dreifach von Vorläufer-Sessionen vertieft
worden (nicht erneut angefasst, um Doppelarbeit zu vermeiden). Zwei explizit als
«Entscheid/Freigabe Raphael nötig» markierte Punkte (N60-1 Doppel-Destillat AFC-Synopse,
N60-2 Methodik-Pflicht-14-Vorschlag) wurden bewusst nicht selbständig entschieden — Rule
`wissens-bibliothekar`: Pause vor Destruktivem/grösserer Umstrukturierung.

## 1. VKF BRL 17-15 «Naechster Schritt» (Eintrag 260823) — GESCHLOSSEN

Der offene Rest-Punkt («`vkf-brl-10-15-fassung-2019-delta.md` und
`vkf-brl-17-15-fassung-2017-delta.md` gegenseitig verlinken und prüfen, ob die
2019er-Begriffsdefinition rückwirkend auf die 2017er-Tabelle anwendbar ist») war beim
genauen Lesen bereits **inhaltlich vollständig erledigt** — nur nicht in `QUESTIONS.md`
nachgezogen:

- **Verlinkung:** `vkf-brl-17-15-fassung-2017-delta.md` verlinkte in Frontmatter und im
  Abschnitt «Offene Punkte» bereits auf `vkf-brl-10-15-fassung-2019-delta.md` (mit
  Seitenangabe S. 35). Der Rückweg fehlte — `vkf-brl-10-15-fassung-2019-delta.md`
  Frontmatter `links:` ergänzt um `[[vkf-brl-17-15-fassung-2017-delta]]`.
- **Rückwirkungsfrage:** stellt sich nicht. «Verkaufsräume» ist kein 2019er-Begriff,
  sondern gehört zu den zehn Begriffen des IOTH-Beschlusses vom **22.09.2016** (Fassung
  **01.01.2017**) — demselben Beschluss, der die BRL-17-15-Tabellenänderung trägt. Beide
  Änderungen sind am selben Tag beschlossen; die Tabellenverschiebung ist Vollzug der
  Definition, keine zeitversetzte Anwendung. Beleg: `vkf-brl-10-15-fassung-2019-delta.md`
  Zeile 22-24 («der IOTH-Beschluss vom 22.09.2016 hat zehn Begriffe neu gefasst … darunter
  Verkaufsräume»).
- Zusätzlich ein erklärender Querverweis-Absatz in `vkf-brl-10-15-fassung-2019-delta.md`
  nach der Sechs-Begriffe-Tabelle ergänzt («Praktischer Anschluss Verkaufsräume»), damit
  die praktische Konsequenz auch von der Begriffsseite aus auffindbar ist.
- `QUESTIONS.md` Eintrag 260823 (BRL 17-15) mit einer Schliessungsbox ergänzt, die beide
  Teilschritte dokumentiert, ohne den bestehenden TEIL-1/TEIL-2-Schliessungstext zu
  löschen (rein additiv).

## 2. NIN-Frage (Eintrag 260731, «eigener Stromkreis für Geschirrspüler») — weiterhin OFFEN, zweiter Recherche-Anlauf dokumentiert

Vier gezielte `WebSearch`-Anfragen (Kombinationen aus NIN/SN 411000 + Geschirrspüler/
Küchengeräte/eigener Stromkreis/«NIN-Know-how») und zwei `WebFetch`-Versuche auf konkret
gefundene Kandidatenquellen:

- `elektrotechnik.ch/.../nin_kh_53.pdf` (NIN-Know-how-Ausgabe 53, als Suchtreffer gelistet)
  → HTTP 404, Datei nicht mehr unter diesem Pfad erreichbar.
- `mueller-pe.ch/nin_fragen.php` (freie NIN-FAQ-Sammlung von Paul-Émile Müller) →
  vollständig durchsucht, keine Frage zu Küchengeräten/Endstromkreisen enthalten.

**Befund:** echte Sackgasse, kein Werkzeugfehler. Der massgebliche Normtext (SN 411000 /
NIN-Arbeitsblätter im Volltext) liegt hinter der kostenpflichtigen Anmeldung bei
`ninonline.electrosuisse.ch`; die frei zugänglichen Sekundärquellen (FAQ-Seiten,
öffentliche Auszüge) behandeln diese Detailfrage nicht. `QUESTIONS.md` um den
dokumentierten zweiten Anlauf ergänzt (Rule `wege-und-vollmachten`: jede gelaufene
Sackgasse wird eingetragen, damit sie nicht doppelt gelaufen wird). Nächster Schritt
unverändert: NIN-Zugang (kostenpflichtig, Bring-Schuld Raphael) oder Rückfrage
Elektroplaner.

## 3. BRL 13-15 Duplikat (Eintrag 260823) — geprüft, NICHT selbständig konsolidiert

Der Inline-Delta-Abschnitt in `vkf-brl-13-15-baustoffe-bauteile.md` (Run 23, `established`,
adversarial verifiziert) und die neue Datei `vkf-brl-13-15-fassung-2017-delta.md` (Run 60,
`speculative`, ausführlicher, inkl. Zusatzauftrag N59-1 zur Bedeutung von «(cr)») wurden
gelesen und verglichen — inhaltlich deckungsgleich, kein Widerspruch. Eine Konsolidierung
(Inline-Abschnitt auf Verweiszeile kürzen, oder die neue Datei wieder entfernen) wäre eine
Kürzung eines bereits `established`-verifizierten Abschnitts bzw. das Entfernen eines neu
erstellten Artikels — beides fällt unter «grössere Umstrukturierung» nach Rule
`wissens-bibliothekar` und wurde bewusst **nicht** selbständig entschieden, analog zu
N60-1 (identisches Muster, dort bereits ausdrücklich als Entscheid-Punkt an Raphael
vorgelegt). Kein Edit an diesem Punkt.

## Verifikation

Nach jedem Schreibvorgang `git diff --numstat` geprüft: alle Änderungen additiv (keine
gelöschten Fremdzeilen). `git diff --numstat wissen/normen/`:
`wiki/QUESTIONS.md` +16/-2 (zwei separate Ergänzungen, BRL-17-15-Schliessungsbox und
NIN-Sackgassen-Nachtrag), `destillate/vkf-brl-10-15-fassung-2019-delta.md` +6/-1
(Frontmatter-Link + Querverweis-Absatz). Commit über `nas-commit-now.sh` (nativ auf der
Synology), nicht per direktem `git` über den SMB-Mount.

## Nicht geleistet / offene Bring-Schulden

- Die drei N-SIASWEEP-Fragen (SIA 422, SIA 2025/2021, GEO405-Familie) nicht erneut
  bearbeitet — am selben Tag bereits dreifach vertieft.
- N60-1 (Doppel-Destillat AFC-Synopse 2017) und die BRL-13-15-Duplikat-Frage (260823)
  bleiben ausdrücklich Entscheid-Punkte für Raphael.
- N60-2 (Vorschlag Methodik-Pflicht 14) bleibt Freigabe-Punkt, nicht selbständig
  umgesetzt.
- NIN-Frage (260731) bleibt offen, jetzt mit zwei dokumentierten Recherche-Anläufen;
  Beschaffung liegt bei Raphael (kostenpflichtiger Zugang) oder einer Elektroplaner-
  Rückfrage.
