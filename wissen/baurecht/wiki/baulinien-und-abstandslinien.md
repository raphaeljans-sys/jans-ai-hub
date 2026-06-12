---
title: Baulinien und Abstandslinien — Kanton Zürich
status: emerging
last_updated: 2026-06-12
sources: ["§ 51 Abs. 2 PBG", "§ 66 PBG", "§ 67 PBG", "§ 96 PBG", "§ 98 PBG", "§ 99 PBG", "§ 100 PBG", "§ 101 PBG", "§ 105 PBG", "§ 220 PBG", "§ 238 Abs. 3 PBG", "§ 357 PBG", "§ 15m HWSchV", "Buch Bd 2 S. 1022-1033"]
links: [[abstaende-und-hoehen]], [[gebaeudearten-und-abstandssystem]], [[15-lage-von-gebaeuden]], [[zonenkonformitaet]], [[raumplanung-und-gestaltung]]
---

# Baulinien und Abstandslinien

**Kernregel:** Neben den nachbarrechtlichen Grenz-/Gebäudeabständen (§§ 269-274 PBG, →
[[abstaende-und-hoehen]]) begrenzen **Linien** das Baufeld: **Baulinien** (§ 96 ff. PBG),
**Gewässerabstandslinien** (§ 67 PBG), **Waldabstandslinien** (§ 66 PBG → [[15-lage-von-gebaeuden]]).
Sie wirken **grundeigentümerverbindlich** wie ein Bauverbot bis zur Linie und können das Baufeld
**stärker** einschränken als die Regelabstände. Quelle: Buch Bd 2, Kap. 15, S. 1022-1033 →
[[15-lage-von-gebaeuden]].

## 1. Baulinien (§ 96 PBG)

**Zweck (§ 96 Abs. 1 PBG):** Sicherung bestehender und geplanter Anlagen und Flächen.

**Drei Arten (§ 96 Abs. 2 PBG):**

| Art | Sichert | § |
|---|---|---|
| **Verkehrsbaulinie** | Strassen, Wege, Plätze, Eisenbahnen; ggf. Vorgärten, Lärmschutzanlagen, Grünzüge, Fahrzeugabstellplätze | § 96 Abs. 2 lit. a PBG |
| **Baulinie für Schutzbauten** | Hochwasserschutz, Parkhäuser/Grossparkierung, Unterhalts-/Überwachungs-/Versorgungsdienste, Fluss-/Bachkorrektionen | § 96 Abs. 2 lit. b PBG |
| **Baulinie für Versorgung** | Versorgungsleitungen, Anschlussgleise | § 96 Abs. 2 lit. c PBG |

- **Massgeblich ist der Endausbau:** Baulinien werden auf den voraussichtlichen Endausbau der
  gesicherten Anlage festgesetzt (§ 98 PBG).
- **Verkehrsbaulinie** sichert den benötigten Raum, schafft den für die Verkehrssicherheit
  nötigen **Sichtbereich** und kann ästhetische Funktionen erfüllen (BEZ 1986 Nr. 44).
  Näherbaurecht innerhalb der Linie nach **§ 105 PBG**; Vorgärten § 238 Abs. 3 PBG.
- **Rechtswirkung (§§ 99-101 PBG):** ober- und unterirdische Gebäude dürfen die Baulinie
  grundsätzlich **nicht überschreiten** (Bauverbot bis zur Linie). Ausnahmen für untergeordnete
  Bauteile/Balkone nach **§ 100 Abs. 1 PBG**; in Freihaltezonen § 100 Abs. 3 PBG.

## 2. Subsidiärer Strassenabstand (§ 51 Abs. 2 PBG)

**Fehlt eine Baulinie**, gilt der **bloss subsidiäre 6-Meter-Abstand** der Gemeinden gegenüber
Strassen (§ 51 Abs. 2 PBG). → Eine festgesetzte Verkehrsbaulinie **geht vor** und kann das
Baufeld deutlich stärker einschränken als die 6 m. Daher vor jeder Volumenstudie an der Strasse
die kommunale Baulinie (OEREB-Auszug/GIS) abfragen.

## 3. Gewässerabstandslinien (§ 67 PBG)

- Die **Bau- und Zonenordnung** kann gegenüber im Zonenplan eingetragenen Gewässern Linien
  festlegen, die **über** den kantonalen Gewässerabstand hinausgehen (§ 67 PBG); Funktion:
  Erholung, Schutz, Revitalisierung.
- **Bauverbotszone:** ober-/unterirdische Gebäude dürfen die Linie **nicht überschreiten**;
  Rechtswirkungen **§§ 99-101 PBG analog** (wie Baulinien), Ausnahmen § 100 Abs. 1 PBG (BEZ 2007 Nr. 19).
- **Zuständigkeit:** kommunale Ebene (Element der kommunalen Nutzungsplanung).
- **Ausnahmen/Überstellung** ausserhalb des Uferstreifens via **§ 220 PBG** (Dispens);
  bestehende Bauten über § 357 PBG.
- **Gewässerbaulinien** für Fluss-/Bachkorrektionen: § 96 Abs. 2 lit. b PBG.

## 4. Abgrenzung der Linien-Typen

| Linie | Grundlage | Setzt fest | Wirkung |
|---|---|---|---|
| Baulinie | § 96 ff. PBG | Gemeinde (Nutzungsplanung) | Bauverbot bis Linie, §§ 99-101 |
| Gewässerabstandslinie | § 67 PBG | Gemeinde (BZO) | wie Baulinie, §§ 99-101 analog |
| Waldabstandslinie | § 66 PBG | Kanton/Gemeinde | 30 m (red. bis 15 m), → [[15-lage-von-gebaeuden]] |
| Gewässerraum (Bundesrecht) | Art. 36a GSchG / § 15b HWSchV | Kanton (Baudirektion) | standortgebundene Anlagen, → [[abstaende-und-hoehen]] |

## 5. Anwendungs-Transfer JANS

- **Die Linie ist oft bindender als die Ziffer.** Bei der Baufeld-Ermittlung (Agent
  `baulinien-analyst`, Skill `machbarkeit`) sind Baulinie/Abstandslinie und der nachbarrechtliche
  Grenzabstand **getrennt** zu prüfen — bindend ist die jeweils **strengste** Restriktion. Eine
  Verkehrsbaulinie kann das Baufeld weit vor den 6-m-Abstand zurücksetzen.
- **OEREB zuerst:** Baulinien und Gewässerabstandslinien sind grundeigentümerverbindlich und im
  OEREB-Kataster eingetragen — vor jeder Volumen-/Machbarkeitsstudie über die Connectoren
  `geo-zh.mjs` (ZH) bzw. `geo-sz.mjs` (SZ) ziehen, bevor das Baufeld gerechnet wird.
- **Unterirdisch ≠ frei:** Auch unterirdische Gebäude (Tiefgarage) dürfen Bau-/Gewässerabstands-
  linien grundsätzlich nicht überschreiten (§§ 99 ff. PBG) — anders als bei der Waldabstandslinie,
  die unterirdische Bauteile freistellt. Bei TG-Planung an der Linie früh prüfen.

## 6. Offene Punkte

- **Zahlenwerk Verkehrsbaulinien/Vorgärten** (§§ 99-101, § 238 PBG) und die Grenz-/Gebäude-
  abstände §§ 263-274 PBG: noch nicht distilliert (Buch S. 1034 ff., Shots ab 521).
- **§ 100 Abs. 1 PBG** (zulässige Überschreitungen): genauer Katalog am amtlichen Volltext
  präzisieren.
