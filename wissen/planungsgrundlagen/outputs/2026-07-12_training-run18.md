# Training Run 18 — KB Planungsgrundlagen · 2026-07-12

**Schwerpunkt-Domaene:** Recht/Norm (PL-02). Rotation Run 16 Kartenportale → Run 17 Energie →
Run 18 Recht/Norm (wie in Run 17 empfohlen). **Connector-Schritt:** nein (Domaene ohne eigenen
Connector; Geodaten-Bezug ueber den bestehenden `--produkt baulinien`).

## Ausgangslage / erkannte Luecke

Zwei offene Recht/Norm-Punkte mit realem Machbarkeits-Bezug: **B4** (ZH-Waldabstand-Baumass war
offen — die SZ-Seite war seit Run 15 belegt, die ZH-Seite fehlte) und **R2** (die SZ-Mass-
Definitionen waren aus Screenshots **Stand SRSZ 1.2.2021** belegt, ⚠ >18 Mt. — die aktuellen
amtlichen SRSZ-PDFs sollten die Zahlen bestaetigen). Beide zahlen auf **M2** ein (Baufeld-Grundlagen
fuer `baulinien-analyst`/`machbarkeit`). Schwerpunkt daher: **die zwei «gummigen» Baufeld-Masse Wald
und Gewaesser fuer ZH + SZ belegt konsolidieren + den SZ-Stand refreshen.**

## Bearbeitete Fragen (Run 18)

1. **Welches Waldabstands-Mass gilt in ZH und wie wird es wirksam?** → **30 m** Regel-Mass
   (≈ mittlere Baumhoehe); massgebend ist die **Waldabstandslinie im ÖREB**. **§ 262 PBG** =
   Bauverbot fuer Hochbauten zwischen Waldgrenze und Waldabstandslinie; unterirdisch = Forstpolizei-
   recht; < 15 m an der Waldgrenze immer forstlich. (Merkblatt «Baugesuch im Waldabstand», Abt. Wald,
   Nov 2018 + zh.ch «Bauen im Wald und am Waldrand».)
2. **Wie wird die Waldabstandslinie ueberstellt (ZH)?** → **zwei getrennte Bewilligungen**:
   baurechtlich **§ 220 PBG (Gemeinde)** + forstrechtlich **Art. 17 WaG (kant. Forstdienst)**;
   Gemeinde prueft zuerst, strenger Massstab (Vielzahl-Faelle/blosse Haerte ≠ Ausnahme). Verknuepft
   [[recht-norm-dispensrecht]].
3. **Wie wird der Gewaesserraum in ZH festgelegt (Rechtsgrundlage/Verfahren)?** → GSchG Art. 36a /
   GSchV Art. 41a/41b, kantonal HWSchV §§ 15 ff. (LS 724.112) + WWG § 18; nutzungsplanerisches
   Verfahren §§ 36–89 PBG mit Vorpruefung **ARE + AWEL (60 Tage)**, Festlegung Baudirektion, GIS-
   Uebersichtsplan § 15c HWSchV. (AWEL-Merkblatt Juli 2014.)
4. **Wie breit ist der Gewaesserraum (Bemessung)?** → nat. GSB × Breitenvariabilitaet (×1/1.5/2);
   Fliess normal: <2 m→≥11 m, 2–15 m→≥2.5×GSB+7 m, >15 m kant.; eingedolt ≥11 m; Schutzgebiet-
   Tabelle (Art. 41a Abs. 1); **See > 0.5 ha → ≥ 15 m ab Uferlinie** (Art. 41b).
5. **Was ist die planerische Konsequenz im Gewaesserraum?** → Nutzungsbeschraenkung **Art. 41c
   GSchV** (nur standortgebundene, im oeff. Interesse liegende Anlagen) → praktisch Bauverbot, hart
   fuers Baufeld; Verkleinerung nur «dicht ueberbaut» (Art. 41a Abs. 4). Geodatum: gis.zh.ch
   «Gewaesser-Oekomorphologie» + Connector-Layer 0153/0185.
6. **Sind die SZ-Mass-Definitionen in der aktuellen amtlichen Fassung noch gueltig? (R2-Refresh)**
   → **Ja fuer § 60/61/62/66/67** — per Volltext-Grep im amtlichen **PBG 400.100 (Stand 1.2.2025)**
   bestaetigt (§ 60 Grenzabstand 50 % GH min 3 m bis 30 m; § 66 Gewaesserabstand = Gewaesserraum
   GSchG; § 67 Waldabstand 15 m ab Waldgrenze). ⚠ >18-Mt.-Flag aufgeloest.
7. **Wo stehen GFZ/BMZ in SZ wirklich? (R2-Kernbefund/Korrektur)** → **Nicht** im amtlichen PBG/PBV.
   Die «§ 31i/§ 31g (neu)»-Nummern stammen aus der **[Mitberichtsvorlage] «Verordnung zum PBG»**
   (Entwurf, gestuetzt § 52 Abs. 3 PBG); dort **§ 31i = GFZ, § 31j = BMZ (nicht § 31g!), § 31m = AZ**.
   Die harmonisierten Dichtemasse sind in SZ **noch nicht in Kraft** → bis dahin gelten die
   kommunalen Baureglemente (oft noch AZ).
8. **Wie ist der Gewaesserabstand in SZ geregelt?** → **§ 66 PBG SZ**: entspricht dem **Gewaesserraum
   nach GSchG** (wie ZH); wo verzichtet → kein Abstand; Zustimmung kant. Stelle fuer Baubewilligung
   im Gewaesserraum + Unterschreitung.

## Was geaendert wurde

- **NEU [[recht-norm-abstandsvorschriften-wald-gewaesser]]** (established) — fokussierter Artikel
  Wald-/Gewaesserabstand ZH & SZ: ZH-Wald (30 m/§ 262/§ 220+Art. 17 WaG), ZH-Gewaesserraum
  (Art. 41a/41b/41c mit belegten Bemessungstabellen + Verfahren + GIS), SZ § 66/67, Merksatz
  Baufeld, Geodatum-Bezug via Connector 0150/0153/0185.
- **[[recht-norm-quellenlandkarte]] korrigiert:** SZ-Block auf amtliche Fassung Stand 1.2.2025
  gehoben (⚠-Flag weg); **Korrektur-Kasten** GFZ/BMZ = Entwurf (Vollzugsverordnungs-Vorlage), nicht
  geltendes Recht, BMZ-Nummer richtiggestellt (§ 31j statt § 31g); § 66 Gewaesserabstand ergaenzt;
  § 67 praezisiert (Ausnahme-Minima = Richtlinie, nicht Gesetz); Frontmatter + Offen-Abschnitt
  (R2/R3/B4) aktualisiert.
- **Register:** INDEX (neuer Artikel), curriculum (R2 refresh + NEU R8 [x]), QUESTIONS (NEU R8 ✓ +
  B4/R2-Abschluss), raw/_INGESTED (3 Run-18-Zeilen), CHANGELOG.

## Quellen (belegt)

- `PL-02/01_Gesetze/02_Zuerich/Wasser/AWEL_Merkblatt_Gewässerraum.pdf` (AWEL/ARE, **Juli 2014**,
  7 S.) — GSchG 36a / GSchV 41a/41b, Bemessungstabellen, GSB-Faktor, Verfahren, GIS.
- `zh.ch` Merkblatt **«Baugesuch im Waldabstand»** (Abt. Wald, **Nov 2018**) + «Bauen im Wald und
  am Waldrand» — 30 m, § 262 PBG, § 220 PBG + Art. 17 WaG, strenger Massstab.
- `sz.ch` amtliche SRSZ **PBG 400.100 (Stand 1.2.2025)** + **PBV 400.111 (Stand 1.2.2026)** — §§ 52
  Abs. 3 / 60 / 61 / 62 / 66 / 67 per Volltext geprueft.
- `sz.ch/public/upload/assets/51979/PBV_Vorlage.pdf` **[Mitberichtsvorlage] Verordnung zum PBG** —
  § 31i GFZ / § 31j BMZ / § 31m AZ (Entwurf, noch nicht in Kraft).

## Naechster Lauf (Run 19)

Rotation → **Brandschutz (PL-03)**. Offener Punkt: **C6/B5 BSV 2026** — definitive Fassung + neuer
Terminplan bei Publikation nachziehen (Check nach Crans-Montana-Untersuchungsbericht / bsvonline.ch).
Danach Rotation zurueck zu **Kartenportale** (Prioritaet; Kandidat: proj-Abstandslinien im Connector
analog Zonenplan-A6, oder K6/A5 ObjektwesenZH erneut pruefen). **Recht/Norm-Rest fuer spaeter:**
(a) zweiter Dispens-Benchmark mit *gewaehrtem* Dispens (Hanglage) + ZH-Wald-Ausnahmefall,
(b) Inkraftsetzung der SZ-Vollzugsverordnung (GFZ/BMZ scharf zitieren), (c) ZH-PBG-/Richtplan-
Umsetzung RPG 2 bei Publikation.
