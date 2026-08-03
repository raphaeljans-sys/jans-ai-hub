# Grundkontext-Diät Runde 2 — Umsetzungsbericht

Stand: 03.08.2026. Auftrag Raphael, Plan freigegeben am selben Tag.
Vorläufer: `docs/konzepte/260719-Kontext-Diaet-Token-Reduktion/`.

## Ausgangslage (gemessen)

Das Wochenkontingent war am 01.08. um 14:21 leer, Reset erst am 03.08. um 12:00:
**47 Stunden Stillstand, 11 blockierte Läufe, am 02.08. null substanzielle Commits**
(`logbuch/vollgas/RADAR.md`, Eintrag 03.08. 22:07). Verbrauch kombiniert «teuer»
(Mio Token): 27.07. 26.5 · 30.07. 16.1 · 31.07. 6.1 · 02.08. 0.0 · 03.08. 4.1.

Grundkontext, den **jede** Session lädt: **117'238 B ≈ 29'300 Tokens**
(CLAUDE.md Projekt 17.9 kB + User 3.3 kB + 21 importierte Rules 96.0 kB).
Am 03.08. waren das allein auf dem MacBook Pro **111 Sessions**.

## Was umgesetzt wurde

### 1. Wachstums-Riegel in `skills/twin/tools/build_dna.py`

Der Auto-Block der DNA wuchs **ohne jede Obergrenze**: von 15.4 kB (19.07.) auf
28.5 kB, weil `twin-fidelity-review` täglich läuft und jedes Facetten-Wachstum
ungefiltert in den Grundkontext kompiliert wurde.

Neu: `WARN_AUTO_BYTES = 24000` und `MAX_AUTO_BYTES = 30000`. Bei Überschreitung
**bricht das Script ab (rc=3), schreibt nichts** und listet die Grösse je Facette als
Entscheidungsgrundlage. Beide Pfade nachgemessen: Warnung greift beim heutigen Stand
(29'455 B, 545 B Reserve), Abbruch getestet mit künstlich gesenkter Grenze.

**Bewusst kein automatisches Kürzen.** Siehe Befund unten.

### 2. Betriebs-Kurzregeln aus dem Grundkontext ausgelagert

Der Block «Betrieb — Kurzregeln» (5.2 kB) ist aus `rules/auto-verbesserungen.md` nach
`rules/betrieb-chronik.md` (nicht importiert) gewandert; zurück blieb ein Zeiger.
Er regelt Lauf-Gate, Speichermessung, Loop-Deaktivierung, SMB-/Symlink-Fallen,
Takt-Entzerrung, Rollentrennung, Arbeits-Weiche und Sync-Task-Freigabe — Material für
automatische Läufe und Infrastrukturarbeit, nicht für jede Session. Das folgt der
eigenen Regel 260719: «Belege, Messwerte und Vorfallschroniken sind nie Grundkontext.»

Zehn Stichproben (Lauf-Gate, XSym, vm_stat, EXCLUDE_RE, LIEFER-DELTA,
Zweitinstanz-Check, arbeits-weiche, multi-claude, trust-check, sync-task-guard)
gegengeprüft: **alle in der Chronik, keine Regel verloren.**

### 3. Regime-Entscheid festgehalten

`logbuch/vollgas/RADAR.md` trägt neu den stehenden Entscheid **«Verbrauch gleichmässig
über die Woche»**. Der Radar legt die Frage nicht erneut als P1 vor. Ein
Tagesdeckel-Mechanismus ist bewusst noch nicht gebaut.

## Ergebnis

| | vorher | nachher |
|---|---|---|
| Grundkontext | 117'238 B ≈ 29'309 Tokens | **114'459 B ≈ 28'614 Tokens** |
| Einsparung je Session | | **2'779 B ≈ 694 Tokens** |

Bei ~111 Sessions am Tag entspricht das rund **77'000 teuren Tokens pro Tag**.

## Der Befund, der den Plan korrigiert hat

Der Plan rechnete mit **20 kB** aus der DNA, gestützt auf die Annahme, der kompilierte
Block bestehe zu grossen Teilen aus datierten Einzelbelegen und Fallzitaten.

**Diese Annahme ist falsch, und das ist am Text belegt.** Eine Regex über alle sechs
Facetten-Blöcke, die Beleg-Parenthesen entfernt, spart **1'274 B von 29'307 B —
4.3 %**. Der Rest ist dichte, operative Regel: Gruss nach Mail-Typ, Anrede-Skala,
Aufzählungszeichen je Register, die Weiche Mail ↔ Eigendokument, Fachsignatur-Vokabular.
Ein Zeichen-Budget von 1'200 pro Facette hätte den `stimme`-Block von 7'735 B auf
1'200 B gekürzt und dabei **echte Stilregeln stillschweigend entfernt** — genau das,
was die Fidelity-Abnahme im Plan hätte auffangen sollen, nur teurer.

**Deshalb wurde nicht gekürzt, sondern nur der Riegel gebaut.** Der Riegel verhindert
die Wiederholung: die Datei kann nicht mehr still von 15 auf 32 kB wachsen.

## Empfehlung für den nächsten Schritt (Entscheid Raphael)

Die 28.5 kB sind weiterhin der grösste Einzelposten. Der richtige Hebel ist **nicht
kürzen, sondern verschieben**:

Der handgeschriebene Kern-Fingerabdruck (2.6 kB) bleibt immer aktiv — er trägt Register,
Gruss, Du-Grossschreibung, Tausender-Apostroph, Echo-Schutz. Der kompilierte
Facetten-Block (28.5 kB) beschreibt Feinheiten, die **nur beim Erzeugen von Text**
greifen. Er könnte aus dem `@`-Import in `CLAUDE.md` herausgenommen und stattdessen vom
Skill `twin` und den Agenten `korrektur`/`email`/`dokument` geladen werden.

**Belegte Machbarkeit:** Alle **8 von 8** `twin-*`-Agenten lesen die Facetten-Artikel
unter `wissen/twin/wiki/` ohnehin **direkt** (dort liegen 900 kB Detail, `stimme.md`
allein 264 kB). Der Twin-Gate läuft nach Rule `jans-dna` vor jedem ausgehenden Erzeugnis
ohnehin.

**Ersparnis: rund 28 kB je Session — das Zehnfache dessen, was Runde 2 gebracht hat.**
**Risiko:** eine Session, die Text erzeugt, ohne `korrektur`/`twin` zu durchlaufen,
verlöre die Feinregeln. Das ist der Grund, warum dieser Schritt eine ausdrückliche
Freigabe braucht und nicht nebenbei umgesetzt wurde.
