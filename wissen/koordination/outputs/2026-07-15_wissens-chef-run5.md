# Wissens-Chef — Run 5 (2026-07-15)

**Modus:** gedrosselter Inline-Lauf (kein Workflow-Fan-out), konform Rule `auto-verbesserungen`
Eintrag 260714 (Tempo drosseln, Wochenlimit schonen) — analog Run 4 und dem Synergie-Lauf 01.
**Basis:** seit Run 4 (14.07.) neu gewachsener Stoff — energie Run 72 (Grundwasserwaerme, PV,
Netto-Null), planungsgrundlagen Run 49 (GreenPV-Fassaden-PV, Mehrwertrevers, ZSV-Schutzraeume),
baurecht Run 46 (LSV Laermschutz ES I-IV, Rechtsschutz), normen Mini-Run 30, spec Run 20, twin.

## Geprueft (2 ueberschneidungsgefaehrdete Nahtstellen)

### 1 — energie ↔ planungsgrundlagen: PV-Einmalverguetung (Doppelspur)
**Befund (bestaetigt):** Beide KBs fuehren die Pronovo-EIV-Foerdersystematik.
- `wissen/energie` → `pv-einmalverguetung-bund-bfe` (status **established**, BFE-Faktenblatt +
  Pronovo/CKW-Saetze, last_updated 2026-06-29): 4 Foerderpfade, KLEIV-Saetze 360/300/400 CHF/kWp,
  Boni-Tabelle, Aktualitaets-Check — die **autoritative** Quelle.
- `wissen/planungsgrundlagen` → `energie-betriebsenergie-pv-wirtschaftlichkeit` (status emerging,
  last_updated 2026-07-14) §1: leitet dieselbe Systematik (KLEIV/GREIV/HEIV, Grund-/Leistungsbeitrag,
  Neigungs-/Parkflaechenbonus, Tarifsenkung 01.04.2025) **ohne Cross-Link** nochmals her.

**Adversariale Verifikation:** Kein Sachwiderspruch — die Saetze sind deckungsgleich (integriert 400 /
angebaut 200 CHF/kW seit 1.1.2025; Deckel 30 %). §2/§3 der planungsgrundlagen-Datei (realer EFH-
Amortisationsfall, Eigenverbrauch-vs.-Einspeisung-Hebel) sind **komplementaer** und in energie nicht
vorhanden — die bleiben zu Recht in planungsgrundlagen. Reine **Doppelspur der §1-Systematik**, keine
Fuehrung in der falschen KB im Kern (Wirtschaftlichkeit ist planungsgrundlagen-legitim), aber die
Foerdersaetze/Systematik gehoeren laut Fuehrungs-Matrix zu energie (PV-Technologie/Foerderung).

**Aktion (ausgefuehrt):**
- planungsgrundlagen `energie-betriebsenergie-pv-wirtschaftlichkeit`: «Querbezug KB energie (fuehrend)»-
  Block vor §1 gesetzt; §1 als Doppelspur zum Verschlanken markiert.
- energie `pv-einmalverguetung-bund-bfe`: reziproker «Querbezug KB planungsgrundlagen»-Block (die
  angewandte Wirtschaftlichkeits-/Amortisationsseite lebt dort).

**Offen (nicht autonom):** §1-Trim in planungsgrundlagen (Umstrukturierung → Rueckfrage/Loop).

### 2 — baurecht / planungsgrundlagen ↔ energie: WWG → WsG (Aktualitaet)
**Befund (bestaetigt):** baurecht (`baureife-und-erschliessung`, § 27 WWG Wasserversorgung) und
planungsgrundlagen (`recht-norm-regenwasser-gewaesserraum-zh` § 18 WWG; auch `kartenportale-natur-
gefahren-objektschutz` § 22 WWG, `recht-norm-abstandsvorschriften-wald-gewaesser` § 18 WWG) fuehren
das ZH **Wasserwirtschaftsgesetz WWG (LS 724.11, 1991)** als geltende Rechtsgrundlage. energie
(`grundwasserwaermenutzung-bewilligung-zh-sz`, last_updated 2026-07-15) belegt **primaerquellen-
verifiziert** (WsG-Amtsblatt-Volltext §§ 48/74/96/126 gelesen): das WWG wurde per **1.6.2026 durch das
Wassergesetz WsG vom 12.12.2022 abgeloest** (§ 126 WsG, explizite Aufhebung). Da heute der 15.07.2026
ist, ist das WsG **bereits in Kraft** — die WWG-Zitate als aktuelle Basis sind ueberholt.

**Adversariale Verifikation:** Die energie-Quelle liest den § 126 WsG im Volltext (Aufhebung des WWG)
und ist selbst mit Datenstand 2026-07-15 markiert; die Medienmitteilung Kt. ZH (21.08.2025, Inkraft-
treten 1.6.2026) stuetzt sie. Bestaetigt. **Grenze:** das §-Mapping (welche WsG-§§ die alten
§ 22/§ 27/§ 18 WWG ersetzen) ist NICHT belegt — energie hat nur §§ 48/74/96/126 WsG gelesen. Daher
KEINE §-Umbenennung vorgenommen.

**Aktion (ausgefuehrt):** Aktualitaets-Flags (sourced, nicht-destruktiv) in den beiden zentralen
current-Rechtslage-Wiki-Artikeln:
- baurecht `wiki/baureife-und-erschliessung.md` (bei § 27 WWG).
- planungsgrundlagen `wiki/recht-norm-regenwasser-gewaesserraum-zh.md` (bei WWG-Rechtsgrundlage).
Die **Buecher-Destillate** in baurecht (band-2/12, /15, /20) bleiben bewusst **unangetastet** — sie
sind quellentreu zum Standardwerk 6. Aufl. 2019, das das WWG legitim zitiert.

**Offen (nicht autonom, Bring-Schuld):** WsG-/WsV-Volltext beschaffen → §-Mapping WWG→WsG erstellen →
current-Rechtslage-§§ in beiden KBs nachziehen; planungsgrundlagen `kartenportale-naturgefahren-
objektschutz` (§ 22 WWG) und `recht-norm-abstandsvorschriften-wald-gewaesser` (§ 18 WWG) noch flaggen.

## Nicht als Befund (adversarial ausgeschlossen)
- **energie Grundwasserwaerme-Bewilligung ↔ baurecht:** kein Doppel — baurecht fuehrt kein
  Grundwasserwaerme-Konzessionsverfahren; das ist ein energetisches Fachverfahren (analog
  fernwaerme-anschlusspflicht in energie). Nur der WWG→WsG-Rechtsstand ist der Cross-KB-Befund (s.o.).
- **baurecht LSV ES I-IV ↔ energie/normen SIA 181:** LSV = externe Laerm-Immissionen (Empfindlichkeits-
  stufen), SIA 181 = baulicher Schallschutz — verschiedene Ebenen, keine Doppelspur. Nicht vertieft
  (drossel-konform zurueckgestellt, Rotationskandidat).

## Zusammenfassung
- Bestaetigte Befunde: 2 (1 Doppelspur PV-EIV, 1 Veraltet-Cross-KB WWG→WsG). Widerlegt: 0.
- Ausgefuehrte Aktionen: 4 Datei-Flags/Querbezuege + 3 KB-CHANGELOG-Eintraege + Register + dieser Bericht.
- **Offene Entscheide fuer Raphael: keine.** Nur Loop-/Bring-Schulden: (a) PV-§1-Trim; (b) WsG-Volltext +
  §-Mapping WWG→WsG + 2 weitere WWG-Flags in planungsgrundlagen.
