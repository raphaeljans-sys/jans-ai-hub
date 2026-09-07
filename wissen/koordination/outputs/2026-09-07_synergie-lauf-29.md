# Synergie-Lauf 29 — 07.09.2026 (Tagestakt)

**Delta-Basis** 04.09.2026 17:10 (HEAD von Lauf 28, `dde7fa010`) · **Fenster 63,3 h** ·
**271 Commits** · HEAD bei Laufbeginn `1e87bc4f1` (07.09. 08:30).

Das Fenster ist rund dreimal so lang wie im Tagestakt vorgesehen, weil die Laeufe des 05. und
06.09. nicht stattgefunden haben: die Station war aus (Boot 07.09. 07:53, belegt im
vollgas-radar-Commit `c53c79a6e`), der Mac Mini trug die Nachtarbeit allein. Es ist kein
Ersatzlauf, sondern ein Tageslauf mit verlaengerter Basis.

## Schritt 0 — Uhr und NAS

Stationsuhr 08:43 CEST gegen den nativen Synology-Selfcommit-Log (letzter Eintrag 08:30:05,
15-Minuten-Takt): Abweichung im Minutenbereich, **bestanden**. NAS zu Laufbeginn gemountet und
lesbar — die Startwarnung des Session-Hooks war zu diesem Zeitpunkt bereits ueberholt.

## Schritt 1 — Delta mit Gegenprobe

Anschluss-Gegenprobe **bestanden**: aeltester Commit im Fenster `1ba1533cc` (04.09. 17:15)
schliesst lueckenlos an die Delta-Basis an; der Commit unmittelbar davor ist `dde7fa010`
(04.09. 17:00) — der HEAD von Lauf 28. Gemessen im SSD-Klon gegen `origin/main`, **nicht** per
`git` ueber den SMB-Mount (Rule `sync-kanonische-quelle`).

Strukturelles Delta: **0 neue** Skills/Agenten/Connectoren/Commands/Services/Rules.
**3 geaenderte** Contract-relevante Dateien, alle aus **einem** Commit (`c53c79a6e`, 07.09.
08:26, Wissens-Chef Lauf 53): `skills/offertenpruefung/SKILL.md` (1/1),
`skills/werkvertrag/SKILL.md` (1/1), `skills/unternehmerkontrolle/SKILL.md` (12/1).
Frueh-Ausstieg griff daher nicht.

## Schritt 3 — Befunde

Lauf 53 hat zwei Dinge getan: ein **Statuslabel** nachgezogen (`sia-118-1991.md` von
`established` auf `speculative`, Herabstufung Run 62) und einen **Sachbefund gehoben**
(60-Tage-Ruegefrist der Korrigenda SIA 118-C1:2026 vom Template in den Skill-Kopf von
`unternehmerkontrolle`). Beide Vorgaenge sind fuer sich richtig. Geprueft wurde, wie
vollstaendig sie ankommen — das ist der Kern des Tagestakts.

**SYN-73 — der Statuslabel-Nachzug erreichte vier von fuenf Zitierstellen.**
`skills/kostenkontrolle/SKILL.md` fuehrt dasselbe Destillat an drei Stellen (Z. 36, 41, 90) und
blieb aussen vor, obwohl der Router `skills/normen/SKILL.md` Z. 51-53 ihm die «dichteste
SIA-118-Strecke aller Fach-Skills» attestiert. Er ist der groesste Abnehmer der herabgestuften
Quelle und war der einzige ohne Statusvermerk. Die Asymmetrie steht im selben Dokument: fuer
`sia-416-2003.md` traegt derselbe Skill den speculative-Vorbehalt zweimal (Z. 37, Z. 122).

**SYN-74 — ein Destillat nennt fuenf Abnehmer, angekommen ist es bei einem.**
`sia-118-c1-2026.md` fuehrt einen Abschnitt «JANS-Praxis-Transfer» mit fuenf namentlich
genannten Bausteinen (Z. 54-58). Bedient ist `unternehmerkontrolle` (Z. 55). Null Treffer auf
`C1:2026`/`60 Tage` haben: `werkvertrag`, `honorarberechnung-sia102`, `ankaufspruefung`,
`immobilienbewertung`, `kostenkontrolle`. Schaerfster Fall ist `werkvertrag` — das Destillat
nennt ihn **an erster Stelle**, sein eigenes Template traegt den Befund seit Run 32
(14.08.2026), Ablaufschritt 5 fuehrt exakt die einschlaegigen Fristen, und **Lauf 53 hatte die
Datei in derselben Minute in der Hand**. Zweitschaerfster Fall ist `honorarberechnung-sia102`:
Art. 367 Abs. 1bis lit. b OR erstreckt die 60-Tage-Ordnung auf Planerwerke und betrifft damit
die Haftung von JANS selbst; der Skill haengt an der Normen-KB nur ueber SIA 102 (Z. 83, Z. 156)
und wuerde die Korrigenda nicht finden.

**SYN-75 — Zeilennummer-Anker in wachsende Zielorte verfallen still.**
Hub-weit gibt es nur sechs `Z. NNN`-Verweise in `skills/` und `agents/`, drei davon auf fremde
Dateien. Zwei davon zeigten ins Leere: `kostenkontrolle` Z. 41 auf `sia-118-1991.md` Z. 148
(dort steht heute eine Kapitelueberschrift; die Nennung ist nach Z. 244 gewandert, weil Run 62
84 Kernluecken einarbeitete) und `normen` Z. 59 auf `QUERBEZUEGE.md` Z. 348 (gemeint ist
Z. 2249-2250 in der auf 5000 Zeilen gewachsenen Datei). Der dritte Anker (`hub-chef` →
`wissen/twin/wiki/arbeitsweise.md` Z. 3481-3483) trifft und ist jung (26.08.2026). Die Regel
dahinter: der Anker altert nicht mit der eigenen Datei, sondern mit dem Wachstum der fremden.

## Nebenbefund (gemeldet, nicht repariert)

`wissen/koordination/QUERBEZUEGE.md` Z. 2249-2250 fuehrt als offen, `skills/kostenkontrolle`
habe «keine einzige Verbindung in die Normen-KB (0 Treffer)» und der Router nenne ihn nicht.
Beide Haelften sind erledigt (Run 33 bzw. Synergie-Lauf 10/SYN-33) und dort nie nachgefuehrt
worden. **Bewusst nicht repariert:** die Datei ist das Wissens-Chef-Protokoll der KB
`koordination`; ein Synergie-Lauf schreibt dort keine Historie um.

## Gesetzt (active-with-flagging)

1. `skills/kostenkontrolle/SKILL.md` Z. 36 — Statusvermerk, wortgleich zu den drei
   Schwesterskills; Z. 42 — Anker Z. 148 → Z. 244 mit Textanker.
2. `skills/werkvertrag/SKILL.md` Schritt 5 — 11 Zeilen additiv: 60-Tage-Frist plus
   Vertragsbestandteil-Liste «SIA 118:2013 inkl. Korrigenda C1:2026», mit Rueckkante auf das
   Destillat. Kein neuer Sachentscheid: der Wortlaut ist established (Refuter Run 47) und stand
   seit Run 32 im eigenen Template — gehoben vom Dokument in den Ablaufschritt, genau wie Lauf 53
   es bei `unternehmerkontrolle` getan hat.
3. `skills/normen/SKILL.md` Z. 59 — Anker Z. 348 → Z. 2249-2250.

## Nicht gesetzt

**SYN-74 (b), Raphael vorzulegen:** die Planerhaftung in `honorarberechnung-sia102`. Die
Reichweite von Art. 367 Abs. 1bis lit. b OR fuer JANS-eigene Planerwerke ist ein Sachentscheid,
kein Querverweis (Praezedenz SYN-54, SYN-72). SYN-74 (c) — `ankaufspruefung`/
`immobilienbewertung` (Art. 219a OR) und `kostenkontrolle` (ZGB 839 Abs. 3) — beim naechsten
Anlass des jeweiligen Skills.

## Nicht aufgerollt

**Compounding, kein Beteiligter bewegt:** SYN-02 bis SYN-72 mit Ausnahme der in SYN-73/74
beteiligten Bausteine. SYN-01 wurde in Lauf 28 aufgerollt und ist unveraendert.

**Gemessen, aber nicht aufgerollt (reine KB-Inhaltsarbeit):** `energie` (68), `normen` (11),
`twin` (10), `bauprodukte` (4), `planungsgrundlagen` (3), `koordination` (3, Eigenrauschen
Lauf 28), `auflagebereinigung` (3), `projekt-lessons` (2), `grobkosten` (2), `spec` (1),
`immobilienbewertung` (1). Die KB `normen` ist ueber SYN-73/74/75 erfasst, nicht ueber ihre
Inhaltsarbeit.

## Schreib-Kontrolle

Jeder Anker vor dem Schreiben auf Zeilennummer UND Textinhalt assertiert (Python-`assert`,
kein globales Suchen-und-Ersetzen, Rule `auto-verbesserungen` 260811). Sicherungskopien
angelegt. Umfang gemessen: `kostenkontrolle` 137 → 137 (2 In-place-Ersetzungen, 0 Verlust),
`werkvertrag` 90 → 101 (11 additiv, 0 entfernt), `normen` 62 → 62 (1 In-place).

## Laufunterbrechung

Um **08:52**, nach den drei Skill-Reparaturen und vor dem Registerschritt, fiel das NAS aus:
`diskstation918` war weder ueber LAN (192.168.1.10) noch ueber Tailscale erreichbar
(«offline, last seen 4m ago»), waehrend die Station selbst im LAN blieb (Gateway 192.168.1.1
ueber en15). `ensure-nas-mounted.sh` gab korrekt rc 1. Register, Laufbericht und CHANGELOG
wurden daher nachtraeglich eingespielt (`~/jans-nachtraege/synergie-lauf-29/`); die drei
Skill-Reparaturen wurden dabei erneut verifiziert.
