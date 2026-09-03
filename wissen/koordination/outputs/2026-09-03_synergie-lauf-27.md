# Synergie-Lauf 27 — 03.09.2026 (Tagestakt)

**Delta-Basis** 02.09.2026 17:10 · **Fenster** 23,8 h · **112 Commits** ·
**HEAD** `a2767315e` (03.09. 17:00:01)

## Schritt 0 — Uhr und NAS

NAS gemountet. Stationsuhr `2026-09-03 17:10 CEST` gegen den nativen
Synology-Selfcommit-Log (`selfcommit-202609.log`, letzter Eintrag `2026-09-03T17:00:05 push OK`):
Abweichung im Minutenbereich, **kein Uhr-Befund**. Der Log wurde mit `tail` gelesen, nicht mit
`grep` (die Datei ist nicht UTF-8).

## Schritt 1 — Delta mit Gegenprobe

| Messung | Ergebnis |
|---|---|
| Commits im Fenster | 112 |
| Aeltester im Fenster | `8b3ed1897` 02.09. 17:15:01 |
| Commit unmittelbar davor | `905f2e1cf` 02.09. 17:00:01 |
| Juengster im Fenster | `a2767315e` 03.09. 17:00:01 = HEAD |

Gegenprobe bestanden: das Fenster schliesst lueckenlos an die Delta-Basis an, der juengste
Treffer ist der HEAD selbst. Der SSD-Klon war zum Messzeitpunkt auf demselben Stand wie der
Synology-Log — der Pull-Zyklus hat in diesem Fenster getragen (anders als in den Laeufen 23-26,
vgl. SYN-66/SYN-68).

**Strukturelles Delta:** 0 neue Bausteine (`--diff-filter=A` ueber `skills/ agents/ rules/
connectors/ services/ commands/` liefert nichts), **3 geaenderte Rules**:

| Datei | Bilanz | Commit |
|---|---|---|
| `rules/anrede-kontakte.md` | 1/1 | `cc4367efe` (twin-fidelity-review 03.09. 06:11) |
| `rules/jans-dna-facetten.md` | 13/13 | `cc4367efe` |
| `rules/auto-verbesserungen.md` | 15/0 | `48adc3c0f` (vollgas-radar 03.09. 13:02) |

Der Frueh-Ausstieg nach Schritt 2 griff daher nicht.

**KB-Aktivitaet (gemessen, nicht aufgerollt):** `twin` 21, `energie` 18, `normen` 8,
`koordination` 6 (Eigenrauschen Lauf 26), `wettbewerbs-dna` 3, `architektur-fachwissen` 3,
`spec` 1, `baurecht` 1.

## Schritt 3 — Befunde

### SYN-70 — das Wege-Register kennt kein Ende seiner Sackgassen

Der neue Eintrag in Rule `auto-verbesserungen` 260807 (Spiegelfall, `48adc3c0f`) nennt
`wege-und-vollmachten` ausdruecklich als «gleiche Familie». Die Richtungsprobe zeigt die
klassische einseitige Kante: `connectors/WEGE.md` hat **0 Treffer** auf
`erneut pruef|wiedervorlage|gegenmess|periodisch`, und `rules/wege-und-vollmachten.md` nennt
260807 nur wegen Punkt 5.

Tiefer als die fehlende Rueckkante liegt der Sachbefund: Abschnitt 3 des Registers ueberschreibt
seine Tabelle mit «Wer hier steht, muss nicht nochmals probiert werden» und mischt darunter zwei
Klassen, die sich unterschiedlich verhalten.

| Klasse | Belegzeilen im Register | Verhalten |
|---|---|---|
| **strukturell** | SPO-Shell Windows-only · `git` ueber SMB · Logdatei nicht UTF-8 · zsh-Arithmetik | endgueltig, zu Recht «nicht erneut» |
| **zustandsabhaengig** | «existiert nicht **in v11.5.0**» · «Zustand ‹unknown indexing state›» · «auf **frisch** synchronisierten Nachrichten» · Graph `403` mangels Berechtigung · «Mini **seit drei Tagen** offline» (Z. 653) | vergaenglich, steht trotzdem unter derselben Ueberschrift |

Die letzte Zeile ist der Prototyp: der Mac Mini ist seit dem 24.08. wieder im Tailnet (Vorfall
260824c behoben), die Sackgasse steht unveraendert als «nicht erneut laufen».

**Gesetzt:** ⚠-Absatz in `connectors/WEGE.md` Abschnitt 3 (+25/0), der beide Klassen mit ihren
Belegzeilen benennt, 260807 zitiert und **Grundsatz 3 ausdruecklich bestaetigt** — die
Gegenmessung ist die billige Probe von Sekunden, nicht der zweite volle Anlauf.

**Nicht getan:** die veralteten Einzelzeilen selbst gegenmessen und umschreiben. Das ist
Sachpflege am Register, braucht eine Messung je Zeile und gehoert nicht in einen Aufsichtslauf.

### SYN-71 — die Klausel und ihre Widerlegung stehen in derselben Datei

Commit `cc4367efe` trug beide Rule-Aenderungen des Fensters. Die importierte Klausel «Gewicht des
Anliegens schlaegt den Routine-Default» (Freigabe Raphael 29.07.2026) ist am **Du-Kontakt und am
Vornamen** formuliert; alle drei Belege sind Du-Kontakte.

Dass diese Formulierung als **Ausschluss** fuer das Sie-Register gelesen wurde, ist belegt:
`jans-dna-facetten.md` hielt bis heute unter Berufung auf diese Rule fest, das Gewicht hebe die
Stufe «bei Du-Kontakten und Behoerden, **nicht** bei der Privatkundin im warmen Sie». Genau diese
Zeile ist im Diff ersetzt worden — die Privatbauherrin traegt alle drei Sie-Stufen, es hebt das
Gewicht des Inhalts.

Der Beleg dafuer steht seit demselben Commit **in der Rule selbst**: die neue Hofer-Zeile zeigt
dieselbe Person ueber drei Sie-Stufen zwischen 01.12.2025 und 08.01.2026, alle aus eigener Hand.

**Gesetzt:** ⚠-Vermerk unter der Klausel (+16/0), der die belegte Fehllesart benennt, die
Widerlegung datiert und die praktische Folge nennt. **Der Klauselwortlaut bleibt unangetastet** —
er traegt eine Einzelfreigabe Raphaels, die Aufnahme der Erweiterung ist sein Entscheid
(Praezedenz SYN-67, SYN-43).

## Was dieser Lauf ueber den Tagestakt zeigt

Beide Befunde entstanden aus den beiden geaenderten importierten Rules, und **beide Aenderungen
sind fuer sich genommen Verbesserungen**. Die Luecke entsteht jeweils erst im Verhaeltnis zu einem
Baustein, den der erzeugende Lauf nicht angefasst hat: der Fidelity-Review korrigierte die
Facetten-Datei und nicht die Rule, der Radar-Lauf schrieb die Lehre und nicht das Register, in dem
sie wirkt. Das ist genau der Zuschnitt, fuer den der Tagestakt eingerichtet wurde.

## Selbstbeleg zu SYN-67

Der Schreibvorgang wurde mit **relativen** Pfaden formuliert, waehrend das Arbeitsverzeichnis auf
dem NAS stand — die Konstellation, deren stillen Ausfallmodus SYN-67 (Lauf 25) beschreibt. Sie
ging gut aus; entscheidend ist, dass **absolut nachgemessen** wurde: NAS 1035/133 Zeilen,
SSD-Klon unveraendert 1010/117, `git status --porcelain` leer. Ohne diese Gegenprobe waere ein
Fehlschlag nicht sichtbar gewesen.

## Schreib-Kontrolle

Anker vor jedem Schreiben auf Zeilennummer UND Textinhalt assertiert (Python-`assert`), kein
globales Suchen-und-Ersetzen, Sicherungskopien im Scratchpad, Umfang absolut gemessen (kein `git`
ueber SMB).

| Datei | vorher | nachher | entfernte Zeilen |
|---|---|---|---|
| `SYNERGIE-REGISTER.md` | 1350 (69 SYN-Zeilen) | 1403 (71) | 0 |
| `connectors/WEGE.md` | 1010 | 1035 | 0 |
| `rules/anrede-kontakte.md` | 117 | 133 | 0 |

Keine Mail (Loop still by default, Rule `auto-verbesserungen` 260803); kein P1-Blocker.
