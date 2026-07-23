---
titel: "Normen-Training Run 18 (MacBook Pro) — SIA/VKF Vertiefung Stufe a: 4 Anhang-Luecken geschlossen"
datum: 2026-07-23
station: "MacBook Pro"
familien: "SIA (Stations-Split; DIN/VSS/RAL gehoeren dem Mac Mini, nicht angefasst; VKF unveraendert komplett)"
---

# Normen-Training Run 18 — MacBook Pro (SIA)

## Ergebnis in Kuerze

- **0 offene `[ ]`-Grunddestillations-Positionen** im gesamten `norm-inventar.md` erneut bestaetigt
  (SIA/VKF-Grunddestillation seit Run 15/16/17 komplett). Ein 30-40-Positionen-Batch waere
  gegenstandslos; der Lauf blieb wie in Run 17 empfohlen **luecken-getrieben** (Vertiefungsstufe a).
- **4 offene Anhang-Luecken (Stufe a) geschlossen**, je Destillier-Agent (Sonnet) → unabhaengiger
  Verifikations-Agent (Hauptmodell, adversarial am Original-PDF):

| Destillat | ergaenzt | geprueft | Verdikt | Befunde | Status final |
|---|---|---|---|---|---|
| `sia-193-111-1999.md` | Anh. A-G (S.47-89) | 30 | beanstandet | 1 | **established vollstaendig** |
| `sia-384-201-2017.md` | Anh. C-G (S.81-99) | 38 | beanstandet | 1 | **established vollstaendig** |
| `sia-196-1998.md` | Anh. A1-A4 (S.38-64) | 55 | bestanden | 0 (1 Metadaten) | **established vollstaendig** |
| `sia-343-051-2018.md` | Anh. D+E (S.38-40) | 16 | bestanden | 0 | **established vollstaendig** |

- Workflow: 8 Agenten (4 Destillier Sonnet + 4 Verifikation Hauptmodell), 0 Ausfaelle, ~72 Min,
  ~1,31 Mio. Subagent-Tokens.

## Zugriffs-Check (Pflicht)

- NAS `/Volumes/daten` gemountet: **OK**.
- OneDrive-Content-Read via Read (`.../alle/193.111_1999_d.pdf`, S. 1): **OK** — Titelblatt
  SN EN 12063:1999 lesbar (2 national + 87 EN Seiten), **keine TCC-Blockade** heute. Kein M365-Fallback.

## Die zwei korrigierten Sachbefunde (Verifier-Prinzip hat gegriffen)

1. **SIA 193.111, Anhang B (Schweissen), Tab. B.3 Vorwaermtemperatur:** Der Destillier-Entwurf
   behauptete, die niedrigfeste Stahlgruppe sei ueber den ganzen Bereich S240-S355GP durchwegs 5 °C.
   Am Original (EN-S. 69) belegt: nur die **unterste Gruppe** (S240/270GP, S235JRC/S275JRC) ist
   durchwegs 5 °C; die mittlere Gruppe S320/S355GP steigt bei 15 kJ/cm ab 18 mm bis 130 °C (30 mm),
   die hoehere Gruppe frueher. Drei Gruppen sauber getrennt, Anstiegs-Schwellen belegt. Korrigiert.
2. **SIA 384/201, Literaturhinweise (S.98-99):** EN ISO 6946 war faelschlich als Eintrag der 25er-
   Literaturliste [1]-[25] gefuehrt. Am PDF belegt: 6946 ist nur normativer Textverweis (Anh. C/E),
   steht nicht in der Literaturliste. Entfernt, Liste praezise nachgezogen.

Punkt fuer Punkt am PDF **bestaetigt** (Auswahl): SIA 193.111 Anh. E Leckwasser-Formel
q_z=ρ·p_z/γ_w samt Rechenbeispiel (≈ 12 l/h, EN-S. 76-78), Anh. D Spuelparameter, Anh. F
Holzspundbohlen (Fallhoehe ≤ 2,5 m); SIA 196 alle ζ-Werte Anh. A2 (Fig. 19-29d) + 4 Rechenbeispiele
A3; SIA 343.051 Anh. D Bild D.1/D.2 Mass-Definitionen A/B/C + Anh. E 5-Punkte-Checkliste. Keine
wortnahen Tabellenkopien (Urheberrecht gewahrt).

## Qualitaets-Nachkontrolle (Umlaut-Bug)

Der am 22.07. bestaetigte ASCII-Ersatz-Bug in Sonnet-Subagenten-Outputs trat auf und wurde nach
dem Lauf gezielt korrigiert: `sia-384-201-2017.md` (Frontmatter „Anhaenge"/„fuer" → „Anhänge"/„für"),
`sia-196-1998.md` (Ueberschrift „sinngemaess" → „sinngemäss"). Die beiden anderen Destillate waren
sauber. Der Body-Text aller vier ist umlaut-korrekt (echte ä/ö/ü, ss statt ß). Empfehlung bleibt:
die Umlaut-Regel in die Subagenten-Prompt-Bausteine der Minimum-Viable-Model-Delegation aufnehmen
(siehe `wissen/baurecht/outputs/2026-07-22_umlaut-bug-verifikation-nachtschicht.md`).

## Register-Nachfuehrung

- `training/norm-inventar.md`: die vier SIA-Zeilen auf `[x] 260723`, Status «established
  VOLLSTAENDIG» mit Vertiefungs-Vermerk und Befund-Notiz.
- `wiki/QUESTIONS.md`: der `[~]`-Vertiefungseintrag nachgefuehrt — 193.111/384-201/196/343.051
  durchgestrichen (erledigt), nur noch **2 offene Positionen**: SIA 2056/592, SIA 405.
- `CHANGELOG.md`: Eintrag ganz oben.
- Destillat-Frontmatter aller vier: `gelesen:` vollstaendig, `status: established`, `last_updated: 2026-07-23`.

## Stand SIA/VKF-Vertiefung (Stufe a) nach diesem Lauf

- Grunddestillation (a-Basis): 0 offene Positionen — komplett.
- Anhang-Vertiefung Stufe a: SIA 382/1 (Run 17), 384/201, 196, 343.051, 193.111 **erledigt**.
  **Verbleibend: 2 Positionen** — SIA 2056/592 (Detailkataloge Kap. 3.2-3.9/4/6.3+, 130-S.-PDF),
  SIA 405 (medienspez. Datenkataloge, 52-S.-PDF). Normativer Kern beider established/verifiziert.
- Stufen b/c/d (Retro-Verifikation, Q&A, Querschnitts-Synthesen): fuer die P1-Kernnormen seit
  Run 13/14 abgeschlossen.

## Commit-Lage

Beim Lauf war das NAS-`.git` ueber den SMB-Mount durch den nativen Synology-Selfcommit-Cron
(und einen parallelen spec-training-Lauf) gesperrt; ein `git pull` ueber den Mount lief in den
Timeout. Alle Edits liegen auf der NAS-ext4-Platte; der native Cron (alle 15 Min) committet und
pusht sie automatisch (Rule sync-kanonische-quelle: keine index.lock-Kollision erzwingen). Falls
beim naechsten interaktiven Lauf noch nicht gesichert: auf einer Station mit freiem Index
`git add wissen/normen && git commit && git push github main`.

## Empfehlung an Raphael (vierte MacBook-Bestaetigung in Folge)

Der VOLLGAS-ENDLOS/TOKEN-VOLLGAS-Absatz im Auftragstext ist durch die Drosselung 260714 aufgehoben.
Nach diesem Lauf sind nur noch **2 konkrete Vertiefungs-Luecken** offen (SIA 2056/592, SIA 405).
Vorschlag: den Task `normen-training-nacht` auf einen **luecken-/datei-getriebenen Takt** umstellen —
1 Vertiefungslauf pro Nacht schliesst die restlichen 2 Positionen in 1-2 Naechten; danach wie beim
stillgelegten `normen-training-mini` auf einen Datei-Aenderungs-Trigger (neue Dateien in
`02_Normen/`) umstellen. Der VOLLGAS-Absatz sollte aus dem Auftragstext entfernt werden, sonst zieht
er die aufgehobene Vorgabe bei jedem Lauf wieder herein.

## Naechster Lauf (falls Task weiterlaeuft)

Die 2 verbleibenden Anhang-/Katalog-Luecken: SIA 2056/592 (elektr. Energiebedarf, Detailkataloge)
und SIA 405 (Leitungskataster GIS, medienspez. Datenkataloge). Je 1 Position pro Lauf,
Destillier+Verify-Pipeline, kein Mengenzwang. Danach ist SIA/VKF auf allen vier Vertiefungsstufen
komplett — dann «SIA/VKF KOMPLETT» melden und Task-Ende vorschlagen.
