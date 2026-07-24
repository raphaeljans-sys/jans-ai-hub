---
titel: "Normen-Training Run 19 (MacBook Pro) — SIA/VKF Vertiefung Stufe a abgeschlossen: die letzten 2 Katalog-/Anhang-Lücken geschlossen"
datum: 2026-07-24
station: "MacBook Pro"
familien: "SIA (Stations-Split; DIN/VSS/RAL gehören dem Mac Mini, nicht angefasst; VKF unverändert komplett)"
meilenstein: "SIA/VKF KOMPLETT (alle vier Vertiefungsstufen a-d)"
---

# Normen-Training Run 19 — MacBook Pro (SIA)

## Ergebnis in Kürze

- **0 offene `[ ]`-Grunddestillations-Positionen** im gesamten `norm-inventar.md` erneut bestätigt
  (SIA/VKF-Grunddestillation seit Run 15/16/17 komplett). Der Lauf blieb lücken-getrieben
  (Vertiefungsstufe a), wie in Run 17/18 empfohlen — kein 30-40-Batch, da gegenstandslos.
- **Die letzten 2 offenen Vertiefungsstufe-a-Positionen geschlossen** (je Destillier-Agent Sonnet →
  unabhängiger Verifikations-Agent Hauptmodell, adversarial am Original-PDF):

| Destillat | ergänzt | geprüft | Verdikt | Befunde | Status final |
|---|---|---|---|---|---|
| `sia-405-1998.md` | Medien-Datenkataloge Ziff. 3.33-3.39 (S.19-26) + Anh. A3/A4/A6 | 44 | beanstandet | 3 | **established** (Rest-Bring-Schuld Tab.1) |
| `sia-592-056.md` (SIA 2056:2019) | GK-Kataloge Kap. 3.2-3.9/4/6.3-6.26/8 + Anh. A-H | ~50 | beanstandet | 3 | **established** (Rest-Bring-Schuld Figuren/GK-Tab.) |

- Workflow: 4 Agenten (2 Destillier Sonnet + 2 Verifikation Hauptmodell), 0 Ausfälle,
  ~12 Min Wall-clock, ~854'480 Subagent-Tokens, 60 Tool-Uses.

## Zugriffs-Check (Pflicht)

- NAS `/Volumes/daten` gemountet: **OK**.
- OneDrive-Content-Read via Read (`.../alle/405_1998_d.pdf`, S. 19 = Medium Gas Ziff. 3.33 lesbar):
  **OK** — keine TCC-Blockade heute. Kein M365-Fallback nötig. SIA 2056 (130 S.) ebenfalls
  vollständig zugänglich (Agent las S.23-37, 45-75, 86-130).
- Kollisions-Check (`ps`): keine zweite normen-Instanz auf dem Host aktiv (Rule 260724).

## Die sechs korrigierten Sachbefunde (Verifier-Prinzip hat gegriffen)

### SIA 405 (3 Befunde)
1. **Katalog-Zählung (Ziff. 3.33-3.38):** Der Destillier-Entwurf sprach von «durchgängig in allen
   sieben Katalogen Gas bis Kabelkommunikation». Von Gas (3.33) bis Kabelkommunikation (3.38) sind es
   **sechs** Kataloge. Korrigiert; zusätzlich präzisiert, dass Status/Baujahr bei den reinen
   Punktobjekten (Leitungspunkt/Trassepunkt) fehlen (S.19-26).
2. **Fernwärme-Trassepunkt (Ziff. 3.35, S.23):** Formulierung liess offen, dass Reduktion R /
   T-Stück T Unterarten von Formstück F sind, Verankerung V und Schacht S dagegen eigenständig.
   Präzisiert.
3. **Kolophon-Datum (Frontmatter `ausgabe`):** unpräzis «gültig ab 12/1998». Kolophon belegt
   **Genehmigung 12.06.1998 (Ittigen) / Inkrafttreten 01.03.1999**. Feld korrigiert.
   - Nebenbefund geklärt (kein Fehler): Die gedruckte Fusszeilen-Zählung springt nach den A6-Faltplänen
     von S.51 auf S.56; das PDF hat physisch 52 Blätter. Im `gelesen:`-Feld dokumentiert.
   - Adversarial bestätigt (kein Fehler): Elektrizität-Katalog hat KEIN Attribut «Spannungsebene»
     (3.36); Kürzel-Kollision «K» = Leitung_unbekannt UND Kanal bei Telecom (3.37);
     Kabelkommunikation gibt Trassebreite in **cm** statt mm (3.38); A3.34 redundanzfreie Datenhaltung.

### SIA 2056 (3 Befunde)
1. **Falscher Kennwert (Hotel-Betriebsenergie, Tab. 32, S.32):** «200 kWh bei Klasse Mittel / 220
   Nutzungstage». Tab. 32 liefert bei Klasse Mittel/220 Tagen **150 kWh**; 200 kWh gilt erst bei
   290 Tagen. Korrigiert.
2. **Ungenauer Wertebereich (Fig. 12, S.70):** spez. Wärmeverluste als «15-180 Wh/d·m» — die Kurven
   ΔT 30/35/40 K laufen tatsächlich **ca. 65-185 Wh/d·m** (Untergrenze deutlich höher). Als
   genäherter Graphenwert korrigiert.
3. **Falsche Anzahl (A.7, S.95):** «fünf» Online-Tools, obwohl **sechs** aufgezählt sind
   (polysunonline, eigenverbrauchsrechner, solar-toolbox, minergie/pvopti, energieschweiz/solarrechner,
   swissolar/solardachrechner). Korrigiert.
   - Adversarial bestätigt (Auswahl, kein Fehler): Tab. 4 Jahresgleichzeitigkeit 0,7/0,8 (S.23);
     3'000 kWh/m Kühlmöbel (4.1.2); MuKEn-Verbot Dachrinnen-/Freiheizungen (6.8.1/6.10.1); 490 W/m +
     46-W-Beispiel C.1.3; 13'140 kWh/kVA Netzersatz (Tab. 77); Aufzug-Bereitschaft 650 kWh (Tab. 79);
     f_HRE 0,85; Haushalt 5'300/3'500/2'000 kWh (A.6.1.1); k_cor 0,8 nur auf Leistung (23,0→18,4 kW,
     Energie 64'058 kWh, Anhang D Tab.108/109); E.2/E.3-Werte (Verwaltung 20,56 / Spital 10,79 /
     Restaurant 10,48 / Lager 2,06 kWh/m²); Genehmigung 05.06.2019, gültig ab 01.08.2019, ersetzt
     SIA 380/4:2006. Keine wortnahen Tabellenkopien (Urheberrecht gewahrt).

## Umlaut-Nachkontrolle (Sonnet-ASCII-Bug)

Beide neuen Abschnitte + Frontmatter von den Verifikations-Agenten grep-gegengeprüft: echte ä/ö/ü,
ss statt ß, kein ASCII-Ersatz. Die einzigen ASCII-Formen sind bewusste 1:1-Wiedergaben normeigener
LIST-Kürzel/Enum-Identifikatoren (SIA 405, z.B. «Uebernahmestation» als Katalogwert) bzw. ein
Skill-Identifikator — konventionskonform (Code-/Enum-Werte bleiben wie in der Quelle bzw. ASCII).

## Register-Nachführung

- `training/norm-inventar.md`: beide Zeilen (405, 592/2056) auf `[x] 260724`, «established VOLLSTAENDIG»
  mit Vertiefungs-Vermerk und Befund-Notiz.
- `destillate/INDEX.md`: beide Zeilen auf «established VOLLSTAENDIG (Run 19)».
- `wiki/QUESTIONS.md`: das Stufe-a-Sammelitem geschlossen (`[x]`) → **0 offene Stufe-a-Positionen**.
- `CHANGELOG.md`: Eintrag ganz oben.
- Destillat-Frontmatter beider: `status: established (verifiziert 260724, Vertiefung Stufe a)`,
  `gelesen:` ergänzt, `last_updated: 2026-07-24`.
- `wiki/REGISTER.md`: keine Änderung — die Gültigkeit beider Ausgaben (SIA 405:1998, SIA 2056:2019)
  ist unverändert; dieser Lauf vertiefte nur, ohne Ausgaben-Wechsel.

## SIA/VKF KOMPLETT — alle vier Vertiefungsstufen abgeschlossen

Mit diesem Lauf ist die SIA/VKF-Familie auf allen vier Vertiefungsstufen des PROGRAMM.md abgearbeitet:

- **(a) Grunddestillation + Anhänge:** 0 offene Positionen. Alle Kernnormen inkl. informativer
  Anhänge/Detailkataloge destilliert (die scanlastigen/grossen zuletzt: SIA 382/1 Run 17, SIA 384/201,
  196, 343.051, 193.111 Run 18, SIA 405 + SIA 2056 Run 19).
- **(b) Retro-Verifikation:** für die P1-Kernnormen seit Run 13 abgeschlossen (adversariale
  Widerlegung an der Quelle).
- **(c) Q&A-Selbstbefragung:** P1-Kernnormen abgesichert (Run 14, 205 Fragen, 0 Fehler;
  `destillate/qa/INDEX.md`).
- **(d) Querschnitts-Synthesen** für die Fach-Skills: vorhanden (werkvertrag/honorar/brandschutz/
  flächen-nachweis; DIN/VSS/RAL-Synthese Mac Mini).

## Empfehlung an Raphael (Endbedingung PROGRAMM.md erreicht)

Nach Run 19 gibt es **keine offene SIA/VKF-Vertiefungslücke mehr**. Gemäss PROGRAMM.md-Endbedingung:

1. **Task `normen-training-nacht` auf Datei-Änderungs-Trigger umstellen oder pausieren** — analog
   zum bereits stillgelegten `normen-training-mini` (DIN/VSS/RAL komplett seit Mini-Run 32). Neue
   Läufe erst, wenn neue Dateien in `PL - 02_Recht_Norm/02_Normen/SIA_Norm` oder `VKF_Norm` auftauchen.
2. **Den VOLLGAS-ENDLOS/TOKEN-VOLLGAS-Passus aus dem Auftragstext des Scheduled Task entfernen** — er
   ist durch die Drosselung 260714 aufgehoben, zieht aber bei jedem Lauf die widerrufene Vorgabe wieder
   herein (vierte MacBook-Bestätigung in Folge, jetzt fünfte).

Verbleibende, aus dem SIA/VKF-Scope NICHT autonom schliessbare Rest-Bring-Schulden (brauchen
Beschaffung/Freigabe, kein Loop-Fall):
- **SIA 380/1:2016** (`[~]`, P1): im JANS-Bestand nur 6-Seiten-Vorschau; der normative Teil (Q_H-Grenzwerte,
  U-Werte, Gebäudekategorien) fehlt. **Volltext beschaffen (SIA-Abo/Kauf)** — erst dann `established`.
- Kleinere Cross-Link-Lücke: `sia-en-13200-1-2019.md` verweist auf SIA 500 (prüfen, ob `500_2009.pdf`
  bereits als eigenes Destillat vorliegt) — additiv, kein Blocker.

## Commit-Lage

Alle Edits liegen auf der NAS-ext4-Platte. `git pull`/Commit über den SMB-Mount wird — falls der native
Synology-Selfcommit-Cron (alle 15 Min) oder ein paralleler Loop den Index sperrt — NICHT erzwungen
(Rule sync-kanonische-quelle / 260724, kein index.lock-Race); der native Cron übernimmt die additiven
Edits kollisionsfrei. Andernfalls direkt `git add wissen/normen && git commit && git push github main`.
