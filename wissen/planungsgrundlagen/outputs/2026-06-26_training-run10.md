# Trainings-Lauf 10 — KB Planungsgrundlagen

- **Datum:** 2026-06-26
- **Schwerpunkt-Domaene:** **Energie (PL-04, Prioritaet)** — per Rotation (Run 9 Kartenportale → Run 10 Energie).
- **Connector-Schritt:** **nein** (Energie hat kein eigenes Tool wie `geo-zh.mjs`).

## Ausgangslage
Run 9 hatte als naechsten Lauf «Energie» gesetzt, offen: **D5** Typ B/C/D PV-Benchmarks, **D6**
EVEN-Bedienung am realen KISPI-Fall, **D3** Skill-Frage `energie-nachweis`, **D1** ZH-MuKEn-2025.
D6 ist erst dokumentierbar, wenn der KISPI-Nachweis in EVEN gefuehrt ist (noch nicht). D5 Typ B/C/D
braucht ein reales Projekt mit Dachziegel-/transparent-/Fassaden-PV (nicht im Archiv belegt). Statt
auf diese blockierten Punkte zu warten, habe ich die **zwei noch nie eingearbeiteten PL-04-Ordner**
erschlossen, die ein reales JANS-Projekt sofort braucht: **`_Private Kontrolle`** (Energienachweis-
Prozess) und **`_Heizwaermebedarf`/graue Energie** (kommender Grenzwert).

## Bearbeitete Selbstfragen (9)
1. **Wer darf den Energienachweis ZH als «Private Kontrolle» unterzeichnen?** → Private Fachleute mit
   Befugnis je Fachbereich (BBV I § 4); bestaetigen unterschriftlich auf Plaenen + Bericht; Projekt-
   **und** Ausfuehrungskontrolle.
2. **Welche Befugnis deckt welches EN-Formular?** → Matrix (Merkblatt S. 2): **Wä** 101/102/104/112/
   131/132 · **He** 101/103/104/120/130/133-135/141 + LN-1a · **Kl** 101/105/110/141 + LN-1b · **Bl**
   104/111 · **Lä** S/LN-1a/LN-1b.
3. **Wie verteilen sich die drei Unterschriften?** → Bauherr/Vertretung auf Hauptformular (§ 6 BVV);
   Projekt-Verantwortliche + Befugte Private Kontrolle auf den technischen Formularen EN-101…141/S/LN
   (§ 6 BVV bzw. § 4 BBV I).
4. **Gilt die ZH-Befugnis auch in SZ?** → **Firmen nur im Kt. ZH**; gelistete **natuerliche Personen**
   in allen fuenf Kantonen (ZH/AR/GL/GR/SZ/SG). → SZ-Projekt: Private Kontrolle ueber natuerliche Person.
5. **Was passiert bei Minergie-Label / Ausnahmebewilligung?** → Minergie-Label erteilt → Rechtsnormen
   Ziff. 3.2/3.3 BBV-I-Anhang als erfuellt (EN-101…111 entfallen); § 220-PBG-Ausnahme / § 360-Abs.-3-
   Abweichung → Behoerde auf Plan/Bericht ausdruecklich aufmerksam machen.
6. **Wie wird man Befugter?** → BBV I § 5-7: Fachkenntnis + Leumund + Einfuehrungskurs + Aufnahme-/
   Jahresgebuehr; Aufnahme in oeffentliche Liste durch Baudirektion auf Antrag der Kommission.
7. **SIA-2040-Zielwerte graue Energie Wohnen?** → Richtwerte (Standardpersonenflaeche, kWh/m²·a
   Primaerenergie n.e.): Erstellung 30/20 · Betrieb 60/70 · Mobilitaet 30/30; Zielwert-Zusatzanf. E+B ~90.
8. **Wie sieht ein realer JANS-Oekobilanz-Nachweis aus?** → Wettbewerb **Schlierenweg 31** (ZPF
   Ingenieure, 28.03.2022): Ziel = rechnerische Amortisation graue Energie via PV-Ueberschuss < 30 J;
   Zielwerte Erstellung inkl. PV 6.0 kg CO₂-eq / 20 kWh / 12'000 UBP pro m²·a, Betrieb netto 0.
9. **Kommt der graue-Energie-Grenzwert rechtlich?** → Ja: Pa.Iv. 20.433 → Art. 45 Abs. 3 lit. e EnG
   verpflichtet Kantone zu Grenzwerten (kommende MuKEn 2025); heute nur via Label (Minergie-ECO/SNBS/
   SIA 390/1). Methodik-Tiefe steht in KB `wissen/energie` `[[graue-energie]]`.

## Geaendert
- **NEU** `wiki/energie-private-kontrolle-zh.md` (**established**) — Prozess, BBV I § 4-7, drei
  Unterschriften, Befugnis-Matrix, interkantonale Geltung, Minergie-Abkuerzung, Praxis-Merkposten.
- `wiki/energie-uebersicht.md`: neuer Abschnitt **«Graue Energie / THGE als Planungsgrundlage»**
  (SIA-2040-Richtwerte + JANS-Benchmark Schlierenweg 31 + Pa.Iv.-20.433-Anker, Link `[[graue-energie]]`);
  Private-Kontrolle-Pointer im Energienachweis-Block; Offen-Liste + links nachgefuehrt.
- `wiki/energie-energienachweis-zh-formulare.md`: Private-Kontrolle-Merkposten ausgebaut + verlinkt;
  links-Frontmatter ergaenzt.
- `wiki/INDEX.md`: neuer Energie-Artikel + graue-Energie-Verweis.
- `wiki/QUESTIONS.md`: **D7 ✓**, **D8/D1 [~]** (graue Energie teil).
- `training/curriculum.md`: **E8 ✓**, **E9 [~]**.
- `raw/_INGESTED.md`: PL-04 Run10-Zeilen (_Private Kontrolle, graue-Energie-Belege, Minergie-Planerwissen).

## Belegte Kernfakten (neu)
- **Private Kontrolle** ist im Kt. ZH der **Regelweg** fuer den Energienachweis (Behoerde prueft nur
  stichprobenweise) — der Energienachweis braucht je Fachbereich eine **befugte Unterschrift** zusaetzlich
  zu Bauherr + Projekt-Verantwortlichem. Belegt: Merkblatt AWEL Stand 04/2025 + BBV I § 4-7.
- **Interkantonale Falle (SZ):** Firmen-Befugnis gilt **nur in ZH** — fuer Schwyzer JANS-Projekte die
  Private Kontrolle ueber eine **natuerliche Person** abdecken.
- **Graue Energie** kommt als **gesetzlicher Grenzwert** (Pa.Iv. 20.433 → MuKEn 2025); heute ueber
  Minergie-ECO (SIA 2032 + KBOB-Oekobilanzdaten, Lebensdauer 60 J). JANS hat dafuer ein reales
  Oekobilanz-Deliverable (Schlierenweg 31) als Benchmark.

## Kein-Doppel-Entscheid
Die **graue-Energie-Methodik** (THGE-Grenzwerte je Kategorie, 9 KBOB-Reduktionshebel, Bauteil-Logik)
ist in der KB `wissen/energie` `[[graue-energie]]` bereits vollstaendig — planungsgrundlagen haelt
nur die **beschaffbare Grundlage** (SIA-2040-Richtwerte) + das **reale JANS-Deliverable** und verlinkt.

## Naechster Lauf
Rotation → **Recht/Norm (PL-02)**. Offen: **B2** ZH-PBG-Fassung bei RPG-2-Publikation nachziehen;
**LRV 814.318.142.1** ELI; ggf. **R2/R3** SZ-vs-ZH-Messweisen vertiefen. Energie-Reste fuer einen
spaeteren Energie-Lauf: **D5** Typ B/C/D PV-Benchmarks (reales Projekt noetig), **D6** EVEN-Bedienung
am KISPI-Fall (sobald dort gefuehrt), **D3** Skill-`energie-nachweis`-Frage. **M1** Grundlagen-Checkliste
«neue Parzelle» bleibt Meta-Kandidat.
