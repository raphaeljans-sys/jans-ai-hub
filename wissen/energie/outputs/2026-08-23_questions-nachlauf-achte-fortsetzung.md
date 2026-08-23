# Questions-Nachlauf, achte Fortsetzung (Run 153) — 23.08.2026

## Auftrag

Offene Fragen aus `wissen/energie/wiki/QUESTIONS.md` weiter abarbeiten, belegt mit Quelle und
Datenstand, Ergebnis in die Wiki-Artikel einarbeiten. Zuerst CHANGELOG und den letzten
Laufbericht lesen, dort weitermachen, wo er aufgehört hat.

## Ausgangslage

Der letzte Lauf (Run 152, siebte interaktive Fortsetzung desselben Tages) hatte den
`QUESTIONS.md`-Bestand vollständig durchgesehen und geschlossen: **jeder verbleibende P1-P4-Punkt
hängt an einer Entscheidung Raphaels, an einer Dateifreigabe ausserhalb der Session oder ist am
Quelldokument selbst nicht auflösbar dokumentiert — kein neuer Recherche- oder Edit-Auftrag
verfügbar.**

Diese Session hat den Bestand unabhängig nachgelesen (nicht nur den Laufbericht übernommen,
sondern die tatsächlichen `[ ]`/`[~]`-Einträge in `QUESTIONS.md` einzeln geprüft). Dabei fiel
auf, dass **E-R140-1** (Gebäudekategorie-Einstufung Healthcare) als «hängt an E-R148-1 (Normkauf
SIA 380/1)» geführt war — eine Verkettung, die sich beim Cross-Check gegen die KB `normen` und
den eigenen Bestand als zu pauschal herausstellte.

## Vorgehen und Fund

1. **Cross-Check KB `normen`:** Das dortige Destillat `wissen/normen/destillate/sia-380-1-2016.md`
   trägt seit dem 17.07.2026 (Wissens-Chef Run 7) eine Randnotiz «Querbezug KB `energie` —
   Interims-Wertquelle»: die Grenz-/U-Werte seien im Hub bereits operativ verfügbar, über
   `wissen/energie/destillate/enfk-en-102-waermeschutz-2018.md` (`established`, am Original
   gegengeprüft). Diese Randnotiz hatten die Runs 148/149/150 beim Formulieren und Bestätigen
   von E-R148-1 nicht aufgegriffen — der P1-Blocker galt dort weiterhin pauschal für «U-Wert-/
   Q_H,li-Werte UND die Gebäudekategorien-Einstufung».
2. **Gezielte Suche nach der Kategorien-DEFINITION** (nicht nur den Zahlenwerten) im eigenen
   Bestand: `grep` über `wissen/energie/destillate/` nach «Pflegeheim»/«Gebäudekategorie» förderte
   `sia-2024-nutzungsrandbedingungen-gesundheitsbau.md` zutage — seit dem 26.07.2026 im Bestand
   (`last_updated`, `emerging`), also **drei Wochen vor** E-R140-1 (17.08.2026, Run 140).
3. **Am Destillat selbst gelesen:** Es zitiert wörtlich aus dem SIA-Statusbericht «Harmonisierung
   SIA-Standardwerte und Gebäudekategorien» (2019, von der SIA-Kommission 2024 selbst verfasst,
   Grundlage der späteren SIA-2024:2021-Revision): «Die Gebäudekategorie VIII Spital wird
   unterteilt in VIII.1 Spital (Akutspital, Universitätsspital, Klinik) und VIII.2 Pflege
   (**Pflegeheim, Altersheim**, Rehabilitation, psychiatrische Klinik).» Ergänzt durch die
   GWR-Zuordnung (VIII.2 → GWR-Bauwerktyp 6254/6255 «psychiatrische Kliniken, Krankenheime,
   Altersheime, Rehabilitationszentren»).
4. **Zweite, unabhängige Quelle im selben Statusbericht** (ebenfalls im Destillat
   `wissen/energie/destillate/sia-harmonisierung-standardwerte-gebaeudekategorien-2019.md`
   dokumentiert, gelesen Run 109, 25.07.2026): die amtliche SIA-380/1-Gebäudekategorien-Tabelle
   selbst (Ziff. 1.1.1, Tabelle 1) wird dort wörtlich reproduziert. Kat. I «Wohnen MFH» nennt
   ausdrücklich nur «Alterssiedlungen/-wohnungen» (Beispiele ohne Pflege/Betreuung); Kat. VIII
   «Spital» nennt «Altersheime» namentlich. Beide Quellen stimmen überein.

## Ergebnis

**Ein Pflegeheim/Altersheim mit Betreuung/Pflege gehört zu SIA-380/1-Gebäudekategorie VIII
Spitäler — Grenzwert gewichteter Energiebedarf 70 kWh/m² nach § 47a BBV I, nicht 35 kWh/m² wie
bei Kategorie I Wohnen MFH.** Für JANS-Projekte praktisch abgrenzbar: reines **Betreutes Wohnen
ohne Pflegeleistung** (Bewohner führen einen eigenen Haushalt) fällt eher unter Kat. I; ein
Betrieb mit dominierendem Bettenzimmer-Anteil (laut Statusbericht Tab. 5: 50 % Flächenanteil bei
VIII.2 gegenüber 35 % bei VIII.1 Akutspital) eindeutig unter Kat. VIII.

**Einschränkung, die den Punkt nicht wieder öffnet:** Die Quelle ist ein von der SIA-Kommission
2024 selbst verfasster, aber **nicht-normativer** Statusbericht (Diskussionsgrundlage, kein
verabschiedeter Normtext), der die geltende SIA-380/1-Tabelle zitiert — keine eigene Lektüre des
Normtexts SIA 380/1:2016 Anhang A selbst. Für die formell **zitierfähige** Fundstelle (Rule
`normen-referenz`, Ziff. 1b: nur `established` ohne Gegenlesen zitierfähig) bleibt der Normkauf
weiterhin nötig — dieser Teil von E-R148-1 ist unverändert offen. Die **Sachfrage** selbst gilt
aber als geklärt und ist für die interne JANS-Beratungspraxis nutzbar.

## Register-Änderungen

- `wissen/energie/wiki/QUESTIONS.md`: E-R140-1 geschlossen (`[x]`, Beleg + Abgrenzung), Original-
  Wortlaut zur Nachvollziehbarkeit stehen gelassen (`[~]`); neuer Abschnitt «Run 153» mit dem
  Fund und einer präzisierten Fassung des E-R148-1-Frameworks (praktische Werte + Kategorien-
  Zuordnung sind bereits gelöst, nur die Primärnorm-Fundstelle bleibt offen).
- `wissen/energie/destillate/energ-bbv1-waermebedarf-rechtsgrundlagen-zh.md`: «Offene Punkte» —
  der Gebäudekategorie-Einstufungspunkt aufgelöst und durch die Erklärung ersetzt, `[[Backlink]]`
  auf `sia-2024-nutzungsrandbedingungen-gesundheitsbau` gesetzt.
- `wissen/energie/destillate/sia-2024-nutzungsrandbedingungen-gesundheitsbau.md`: Backlink auf
  `energ-bbv1-waermebedarf-rechtsgrundlagen-zh` ergänzt (Kompoundieren, nicht duplizieren).
- `wissen/energie/CHANGELOG.md`: neuer Eintrag, additiv.
- Nach jedem Schreibvorgang `git diff --numstat` geprüft: alle Änderungen additiv bis auf die
  gezielt ersetzten Textblöcke (Checkbox-Status, aufgelöste Offene-Punkte-Absätze) — keine
  unerwarteten Löschungen.

## Einordnung: warum dieser Fund trotz «Bestand erschöpft» möglich war

Run 152 hat den Bestand korrekt gegen den **Recherche**-Massstab geprüft (gibt es noch eine Quelle
zu lesen, ein PDF zu holen, eine Web-Suche zu fahren?) und zu Recht verneint. Dieser Fund ist
keine neue Recherche, sondern eine **Registerpflege-Lücke** derselben Familie wie die in Run 149
(F250-Selbstkorrektur) und Run 150 («Falle Nr. 12») bereits dokumentierten Fälle: eine Frage
wurde als offen geführt, ohne zuvor systematisch geprüft zu haben, ob der eigene Bestand sie
schon beantwortet. Für Folgeläufe bestätigt das den in Run 150 formulierten Merksatz: **vor dem
Öffnen eines neuen Punktes den eigenen Bestand (`grep` über `destillate/`, nicht nur
`destillate/INDEX.md`-Volltextsuche) gezielt nach dem Sachthema durchsuchen — auch wenn ein
Vorgänger-Lauf denselben Punkt bereits als „hängt an X" verkettet hat.**

## Nächster Schritt

Kein weiterer reiner Rechercheauftrag im Bestand verfügbar (Run 151/152 bestätigt, durch diesen
Fund nicht widerlegt). Die verbleibenden Punkte mit dem grössten Hebel sind unverändert
Entscheidungen Raphaels: E-R148-1 (Normkauf, jetzt kleiner beziffert — nur noch die
Primärquellen-Fundstelle), E-R148-2 (Takt-Entscheid fragengetrieben statt dateilistengetrieben)
und E-R149-4 (Freigabe für den Edit an `~/.claude/scheduled-tasks/energie-training/SKILL.md`).
