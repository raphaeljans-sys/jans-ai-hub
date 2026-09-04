# Synergie-Lauf 28 (Tagestakt) — 04.09.2026

Delta-Basis 03.09.2026 17:10 (Lauf 27) · Fenster 23,9 h · **119 Commits** · HEAD `dde7fa010`

## Schritt 0 — Uhr und NAS

NAS gemountet. Stationsuhr **2026-09-04 17:10 CEST** gegen den nativen
Synology-Selfcommit-Log (`sync-tasks/log/selfcommit-202609.log`, letzter Eintrag
`2026-09-04T17:00:06 push OK`) — Abweichung im Minutenbereich, kein Uhr-Befund. Der Log wurde
mit `tail` gelesen, nicht mit `grep` (die Datei ist nicht UTF-8).

## Schritt 1 — Delta mit Gegenprobe

Gemessen im SSD-Klon gegen `origin/main`, **nicht per `git` ueber den SMB-Mount** (Rule
`sync-kanonische-quelle`: auch lesende git-Befehle haengen dort). Der Klon stand auf demselben
Commit wie der letzte native Push, ein `fetch` brachte nichts Neues.

Gegenprobe bestanden: aeltester Commit im Fenster `a022a52d0` (03.09. 17:15), unmittelbar davor
`a2767315e` (03.09. 17:00) — das ist der HEAD von Lauf 27. Lueckenloser Anschluss, kein
Werkzeug-Artefakt.

**Strukturelles Delta:** 0 neue Skills/Agenten/Connectoren/Commands/Services/Rules.
6 geaenderte Contract-relevante Dateien:

| Datei | Bilanz | Commit | Herkunft |
|---|---|---|---|
| `skills/grobkosten-onepager/SKILL.md` | 11/0 | `3e6f1cc76` | Wissens-Chef Lauf 52, 03.09. 23:30 |
| `agents/grobkosten-rechner.md` | 7/2 | `3e6f1cc76` | derselbe Lauf |
| `skills/machbarkeit-studio/SKILL.md` | 6/0 | `3e6f1cc76` | derselbe Lauf |
| `rules/jans-dna-facetten.md` | 11/12 | `d93bd95f1` | 04.09. 06:00 |
| `rules/betrieb-chronik.md` | 30/0 | `6385350d5` | Vollgas-Fruehwarnung 04.09. |
| `rules/anrede-kontakte.md` | 16/0 | `530673c0c` | **Eigenrauschen Lauf 27** |

Frueh-Ausstieg griff nicht.

## Schritt 3 — Rueckkanten und Pruef-Fragen

Der Kern des Tagestakts war hier die **Verdrahtungspruefung eines Vorgangs, der drei Bausteine
am selben Tag angefasst hat**. Wissens-Chef Lauf 52 hat den SIA-416-Kernbefund Run 78 in fuenf
Bausteine gesetzt (drei KB-Artikel, drei Bausteine der Grobkosten-Linie) und die Kante in
`QUERBEZUEGE.md` dokumentiert — die Verdrahtung selbst ist also **vorbildlich** gemacht.

Zwei Befunde entstehen erst im Verhaeltnis zu Bausteinen, die dieser Lauf nicht angefasst hat.

### SYN-72 (neu) — die Abhilfe nennt eine Bezugsgroesse, die sie nicht tragen kann

Der Vorbehalt ist richtig; die mitgelieferte Abhilfe («zusaetzlich ueber CHF/m2 fuehren») ist es
zur Haelfte nicht. Die CHF/m²-Bezugsgroessen des Hub sind **NF, HNF und GF** — alle
Innen-Kategorien der GF-Familie (Ziff. 1-2). Die AGF mit ANF/AVF liegt nach **Ziff. 3**
ausserhalb der umschlossenen GF und ist in keiner von ihnen enthalten. Ein CHF/m²-Vergleich auf
diesen Groessen ist gegenueber Balkonen **genauso blind** wie der CHF/m³-Vergleich.

Schaerfster Fall: `wissen/immobilienbewertung/wiki/realwert-sachwert.md` Z. 517 empfiehlt fuer
Zimmerloggien und Dachterrassen «zusaetzlich ueber CHF/m2 **GF** pruefen» — ueber genau die
Kategorie, ausserhalb derer dieselbe Norm die Loggia verortet.

Tragfaehig bleibt der **separate ANF/AVF-Ausweis**; von den fuenf Bausteinen formuliert ihn nur
`agents/grobkosten-rechner.md` Z. 30-32 vollstaendig.

**Adversariale Gegenpruefung.** (a) *Spricht etwas dagegen?* Ja, teilweise: fuer eine
**Marktflaeche**, die Balkone anteilig einrechnet, trifft der Satz zu. Das ist Bewertungspraxis,
aber keine SIA-416-Groesse — die Frage ist eine der Benennung, nicht des Grundgedankens. (b)
*Ist der Kennwert nicht ohnehin an Bauten mit Balkonen kalibriert?* Doch — und das gilt fuer
CHF/m³ genauso. Der blinde Fleck wirkt in **beiden** Kennwerten nur bei ungleichem
Aussenflaechenanteil; genau die von Lauf 52 selbst gesetzte ±25-%-Daempfung bleibt gueltig. (c)
*Existiert der Befund schon?* Nein — hub-weit 0 Treffer.

### SYN-01 (aufgerollt, Beteiligter bewegt) — erste konkrete Sachfolge

SYN-01 ist seit Lauf 03 halb geschlossen; offen blieben `agents/realwert-rechner.md` und
`agents/wirtschaftlichkeit-rechner.md` mit je 0 Treffern auf `wissen/grobkosten`. **In diesem
Lauf nachgemessen: weiterhin 0/0.**

Neu ist die Sachfolge: Lauf 52 hat den Vorbehalt in **den Wissensartikel gesetzt, den der
Bewertungsagent bedient** — den Agenten selbst nicht. Er ist der direkteste Betroffene
(Z. 33 «Volumen (GV, m3) x Kostenkennwert») und ausgerechnet fuer diese Frage sensibilisiert
(Z. 41 «Bezugsflaeche immer angeben … SIA 416»). Die abstrakte Doppelrechnungs-Diagnose hat damit
erstmals einen belegten Schaden: nicht divergente Zahlen, sondern ein Vorbehalt, der die
Bewertungslinie nicht erreicht, **weil sie nicht an der Kennwerte-Linie haengt**.

### Zeilenbilanzen mit Loeschungen — geprueft, harmlos (sechster Lauf in Folge)

- `agents/grobkosten-rechner.md` 7/2: Umnummerierung 4.→5., 5.→6. beim Einschub des neuen
  Schritts 4. Kein Substanzverlust.
- `rules/jans-dna-facetten.md` 11/12, zweigeteilt, **beides Fortschritt**: (i) der
  Service-Satz-Block ersetzt eine als trennscharf behauptete Gattungsregel durch die ehrliche
  Feststellung, dass drei Linien gefallen sind, und legt den Widerspruch offen, dass dieselbe
  Statusmail-Gattung den Satz einmal traegt und einmal nicht. (ii) Die Honorar-Zeile im
  Denken-Block wurde auf einen `[[haltung]]`-Verweis verdichtet — **Rueckkante am Objekt
  geprueft**: die Substanz («direkt und ohne Polster», «nie weichspuelen/kleinreden») steht in
  derselben Rule Z. 129/143 und vierfach in `wissen/twin/wiki/haltung.md`. Doppelfuehrung, jetzt
  einmal mit Zeiger.
- `rules/betrieb-chronik.md` 30/0 und `rules/anrede-kontakte.md` 16/0: rein additiv.

## Schritt 4 — was gesetzt wurde (active-with-flagging)

1. **SYN-72** neu im Register; **SYN-01** um den Nachtrag erweitert; Lauf-28-Fussnote.
2. **⚠-Vermerk** additiv in `wissen/immobilienbewertung/wiki/realwert-sachwert.md` nach dem
   Vorbehalt-Block — der Wortlaut darueber ist unangetastet.
3. **Cross-KB-Bringschuld** in `wissen/normen/wiki/QUESTIONS.md` (Rule `wissens-bibliothekar`,
   Praezedenz N63-3): der Sachentscheid ueber den Ursprungssatz gehoert der KB `normen`.

**Bewusst NICHT gesetzt:** der Vorbehalt wurde **nicht** in `agents/realwert-rechner.md`
nachgetragen, obwohl das die naheliegende Reparatur waere. Einen zur Haelfte unbelegten Satz in
einen sechsten Baustein zu kopieren, haette den Befund vergroessert statt behoben. Das ist die
adversariale Konsequenz des eigenen Hauptbefunds.

Keine Mail (still by default, Rule `auto-verbesserungen` 260803 — Hub-Interna ohne
Aussenwirkung). Kein Service in `services/KATALOG.md` angefasst.

## Nicht aufgerollt

**Compounding, kein Beteiligter bewegt:** SYN-02 bis SYN-71.

**Reine KB-Inhaltsarbeit (gemessen, nicht aufgerollt):** `normen` (20), `twin` (19), `energie`
(13), `planungsgrundlagen` (9), `koordination` (6, Eigenrauschen Lauf 27), `baurecht` (6),
`bauprodukte` (5), `immobilienbewertung` (3), `grobkosten` (2), `kunde-bopp` (2),
`architektur-fachwissen` (2).
