---
titel: "Normen-Training Run 17 (MacBook Pro) — SIA/VKF: Inventar bestaetigt komplett, 2 Vertiefungsluecken (Stufe a) geschlossen"
datum: 2026-07-21
station: "MacBook Pro"
familien: "SIA, VKF (Stations-Split; DIN/VSS/RAL gehoeren dem Mac Mini, nicht angefasst)"
---

# Normen-Training Run 17 — MacBook Pro (SIA/VKF)

## Ergebnis in Kuerze

- **0 offene `[ ]`-Grunddestillations-Positionen** im gesamten `norm-inventar.md` bestaetigt.
  Ein Batch von 30-40 Positionen (Auftragsvorgabe VOLLGAS) ist damit **gegenstandslos** — es
  gibt in SIA/VKF nichts mehr grundzudestillieren. Run 16 (19.07.) hatte die SIA/VKF-
  Grunddestillation bereits als abgeschlossen gemeldet; dieser Lauf bestaetigt das.
- Statt kuenstlicher Leerlast wurden **2 echte, im Bestand schliessbare Vertiefungsluecken
  (Stufe a) geschlossen** — die zwei energetisch wichtigsten offenen Teil-Destillate:
  - **SIA 382/1:2014** (Lueftungs-/Klimaanlagen) — Anhaenge A-G (S. 64-82) ergaenzt → **established VOLLSTAENDIG**.
  - **SIA 384/201:2017** (Heizlast, SN EN 12831-1) — vereinfachte Verfahren Kap. 7/8 +
    Uebereinstimmungspruefung Kap. 9 + Anhang A (normativ) / B (informativ) ergaenzt →
    bleibt **teil-destillat** (informative Anhaenge C-G noch offen).
- **2 veraltete QUESTIONS-Eintraege am Bestand widerlegt und bereinigt** (VKF Verz 40-15,
  VKF-BRL 15-15 — siehe unten).
- Workflow: 4 Agenten (2 Destillier auf Sonnet + 2 Verifikation auf Hauptmodell), 0 Ausfaelle,
  ~14 Min, ~695k Subagent-Tokens.

## Zugriffs-Check (Pflicht)

- NAS `/Volumes/daten` gemountet: **OK**.
- OneDrive-Zugriff auf Test-PDF via Read (`.../02_Normen/SIA_Norm/SIA_Normen/alle/382 1-2014.pdf`,
  S. 1): **OK** — Titelblatt SIA 382/1:2014 (82 S.) lesbar, **keine TCC-Blockade** heute. Kein
  M365-Fallback noetig.

## Was destilliert + verifiziert wurde (Verdikte)

| Destillat | Ergaenzt | geprueft | Verdikt | Befunde | Status final |
|---|---|---|---|---|---|
| `sia-382-1-2014.md` | Anh. A-G (S. 64-82) | 44 | beanstandet | 2 | **established** (vollstaendig) |
| `sia-384-201-2017.md` | Kap. 7/8/9 + Anh. A/B (S. 52-90) | 42 | beanstandet | 3 | teil-destillat (C-G offen) |

Beide Verdikte «beanstandet» = die adversariale Widerlegungspruefung hat gegriffen; alle
5 Befunde direkt im Destillat korrigiert. Es blieb kein unbelegter Punkt.

### SIA 382/1 — die 2 Befunde

1. **Sachfehler (Anhang D.3.2):** Das Destillat hatte die 2,5-fache Volumenstrom-Potenz
   faelschlich dem Wirkungsgrad η_V zugeordnet. Korrekt bezieht sie sich auf die **spezifische
   elektrische Leistung P_V** (η_V ist proportional zur Wurzel aus P_V; Volumenstromregler
   1,5-fache Potenz). Korrigiert.
2. **Fundstelle (Anhang C):** Verschmutzungswert 0 m²K/W + Eurovent-Toleranzen stehen
   vollstaendig in **C.5**, nicht C.4; der eigenstaendige C.4-Inhalt (Verfluessigungstemperatur
   in Teillast senken) fehlte und wurde ergaenzt. Korrigiert.

Punkt fuer Punkt am PDF bestaetigt wurden u.a.: Tab.-27-Toleranzen (Anh. F.4), Lebensdauer-
Beispiele Tab. 25 (Anh. B), ESEER-Formel (10) + f_el,th-Zielwerte 28/85/65 (Anh. C.6),
Simulations-Randbedingungen (Anh. E), Figur-10-15-Ablesewerte (Anh. A), Checklisten-Punktzahlen
G.1-G.4 (15/15/10/9). Keine wortnahen Tabellenkopien (Urheberrecht gewahrt).

### SIA 384/201 — die 3 Befunde

1. **Sachfehler (Tab. B.15):** Holzrahmen/Einfachverglasung 5,0 W/(m²·K) gilt nur bis
   Baujahrsklasse 1983 (ab 1984 nicht mehr aufgefuehrt), nicht «durchgaengig bis 1994».
   Geltungsbereich um eine Klasse ueberdehnt → korrigiert.
2. **Fundstelle (Tab. 9/10):** Tab. 9 (Ziff. 7.1) ist die Ausgangsgroesse (Φ_HL,i), die
   Eingangsgroessen-Symbolliste stammt aus Tab. 10 (Ziff. 7.2) → getrennt.
3. **Fundstelle (Anh. B.2.12):** Auslegungs-Druckdifferenz 4 Pa steht als Text nach Gl. (B.3),
   nicht in der Gleichung selbst → praezisiert.

Korrekt belegt wurden u.a.: alle Gleichungsnummern der vereinfachten Verfahren (Gl. 50-56),
saemtliche EN-Anhaltswerte (ΔU_TB, f_θann, f_GW, c_eff, q_env,50, f_fac,z, f_x, 12 Norm-
Innentemperaturen Tab. B.14) und besonders die kritische Abweichungswarnung Tab. B.13 (EN)
gegen die CH-Tab. NA.10. Modale Treue gewahrt (9.2/9.3 «sollte», 6.3.4 «muss» nur fuer die
Ausweisungspflicht im Bericht).

## Register-Nachfuehrung

- `training/norm-inventar.md`: beide SIA-Zeilen auf `[x] 260721` mit Vertiefungs-Vermerk gesetzt
  (382/1 = established vollstaendig; 384/201 = teil-destillat, C-G offen).
- `wiki/QUESTIONS.md`: Eintrag «Teil-Destillate mit offenen Anhaengen» auf `[~]` gesetzt
  (382/1 erledigt, 384/201 nur noch C-G); zwei veraltete Eintraege auf `[x]` (siehe unten).
- Destillat-Frontmatter beider Dateien: `gelesen:` + `status:` + `last_updated: 2026-07-21`
  durch die Verifikations-Agenten gesetzt.

## Zwei am Bestand widerlegte, veraltete QUESTIONS-Eintraege

1. **VKF-Verzeichnis 40-15 «Weitere Bestimmungen»** war als Teil-Destillat gefuehrt (Notat
   13.07., Ziff. 3.7-3.9 + Abkuerzungsverzeichnis angeblich offen). Am Bestand belegt: das
   Destillat ist vollstaendig (`gelesen: S. 1-22 komplett … gesamtes Dokument`, established
   verifiziert 260714). Notat war veraltet → `[x]`.
2. **VKF-BRL 15-15 (Brandschutzabstaende Tragwerke)** war (aus DIN/VSS/RAL-Sicht des Mac Mini,
   Mini-Run 30) als «noch nicht destilliert» notiert. Das Destillat
   `vkf-brl-15-15-brandschutzabstaende-tragwerke.md` existiert (260714) → `[x]`.

## Taktung / Endbedingung — Empfehlung an Raphael (dritte MacBook-Bestaetigung)

Der Auftragstext dieses Scheduled Task schreibt weiterhin **VOLLGAS-ENDLOS / TOKEN-VOLLGAS**
(Rules 260712b/260712c) vor. Diese Vorgabe ist durch die **Drosselung vom 14.07.2026 (Rule
260714)** aufgehoben: Endlos-Runner gestoppt, STOP-Dateien gesetzt, Trainings hoechstens 1x
taeglich im Nachtfenster. Der vorliegende Lauf wurde dennoch vollstaendig ausgefuehrt, weil er
**reale Vertiefungsluecken schliesst** (echtes Compounding), nicht Dauerlast erzeugt.

**Stand jetzt fuer SIA/VKF:**
- Grunddestillation (a-Basis): **0 offene Positionen** — komplett (bestaetigt Run 15/16/17).
- Vertiefung Stufe a (Anhaenge): 382/1 erledigt, 384/201 zu ~80 % (nur informative Anh. C-G
  offen). Weitere offene Anhang-Luecken: SIA 196 (A1-A4), SIA 2056/592, SIA 343.051 (D/E),
  SIA 405, SIA 193.111 (A-G) — alle mit established/verifiziertem normativem Kern.
- Stufen b/c/d (Retro-Verifikation, Q&A, Querschnitts-Synthesen): fuer die P1-Kernnormen seit
  Run 13/14 abgeschlossen.

**Empfehlung:** Den Task `normen-training-nacht` **auf einen gedrosselten, luecken-getriebenen
Takt umstellen** statt VOLLGAS-Endlos: nur laufen, solange konkrete Vertiefungsluecken (Anhaenge
der genannten Teil-Destillate) oder neue Dateien in `02_Normen/` bestehen. Bei ~1 verbleibendem
Vertiefungslauf pro Nacht sind die restlichen 5-6 Anhang-Luecken in wenigen Naechten geschlossen;
danach wie beim Mac-Mini-Task (`normen-training-mini`, seit 17.07. stillgelegt) auf einen
Datei-Aenderungs-Trigger umstellen. Der VOLLGAS-Absatz im Auftragstext sollte entfernt werden,
sonst zieht er bei jedem Lauf die aufgehobene Vorgabe wieder herein (bereits in Run 16 gemeldet).

## Commit-Lage (offen, kein Fehler)

Beim Lauf war das NAS-`.git` ueber den SMB-Mount durch den **nativen Synology-Selfcommit-Cron**
gesperrt (`.git/index.lock`, 02:03). Git ueber den Mount wurde **nicht erzwungen** (Rule
`sync-kanonische-quelle`: index.lock-Kollisionen). Alle Edits dieses Laufs liegen auf der
NAS-ext4-Platte; der native Cron (alle 15 Min) committet und pusht sie automatisch. Falls beim
naechsten interaktiven Lauf noch nicht gesichert: `git add wissen/normen && git commit && git
push github main` auf einer Station mit freiem Index.

## Naechster Lauf (falls Task weiterlaeuft)

Restliche Anhang-Vertiefungen Stufe a: SIA 196 (Anh. A1-A4), SIA 2056/592 (Detailkataloge),
SIA 343.051 (Anh. D/E), SIA 405 (Datenkataloge), SIA 193.111 (Anh. A-G), SIA 384/201 (Anh. C-G).
Je 1-2 pro Nacht, Destillier+Verify-Pipeline, kein kuenstlicher Mengenzwang.
