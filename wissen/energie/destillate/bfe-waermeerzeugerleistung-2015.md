---
quelle: PL - 04 Energie/_Heizwaermebedarf/_2781-Ermittlung_der_Wärmeerzeugerleistung.pdf
herausgeber: EnergieSchweiz / Bundesamt fuer Energie BFE (mit Minergie & suissetec)
ausgabe: 12.2015 (Merkblatt Nr. 2781)
gelesen: vollstaendig (5 S.)
datenstand: ⚠ 12.2015; Normbezug SIA 384/1:2009, SIA 384.201:2003, SIA 380/1:2009 — vor dem Zitieren gegen aktuelle Normfassung pruefen.
status: established
last_updated: 2026-06-08
---

# Destillat — Ermittlung der Waermeerzeugerleistung (Heizungs-Dimensionierung)

> Wie gross muss der Waermeerzeuger (Kessel/Waermepumpe) sein? Zwei Wege: bei **Sanierung**
> aus dem bisherigen **Brennstoffverbrauch** rueckrechnen; bei **Neubau** ueber die
> **Norm-Heizlast** SIA 384.201. Plus Kontrollwerte der spezifischen Heizleistung.

## Das Wichtigste in 1 Satz
Eine korrekt — und damit eher knapp — dimensionierte Heizung ist Voraussetzung fuer
energiegerechten Betrieb; ueberdimensionierte Anlagen takten, verschleissen und laufen ineffizient.

## Weg A — Sanierung: Leistung aus dem Brennstoffverbrauch
Fuer uebliche Wohnbauten bis ~100 kW Leistungsbedarf (nicht sehr gut gedaemmt, kein hoher
Glasanteil, keine ausgepraegte Suedhanglage) genuegt die Rueckrechnung aus dem Verbrauch:

```
Φgen,out,new = (man · GCV / tan) · (ηan,old / ηan,new) · ηgen,new
```
| Symbol | Bedeutung |
|---|---|
| Φgen,out,new | Leistung des Ersatz-Waermeerzeugers [kW] |
| man | jaehrlicher Brennstoffverbrauch (mehrjaehriges Mittel) [kg / m³ / l] |
| GCV | Brennwert «Gross Calorific Value» [kWh je Einheit] |
| tan | jaehrliche Volllaststunden [h] |
| ηan,old / ηan,new | Jahresnutzungsgrad alt / neu (bzgl. Brennwert) |
| ηgen,new | Erzeuger-Wirkungsgrad neu ≈ 0,5 · (1 + ηan,new) |

**Volllaststunden tan (Standorthoehe bis 800 m):** 2300 h nur Heizung · 2700 h Heizung + Warmwasser.
Ueber 800 m: + 300 h. Prozente als Dezimalzahl einsetzen (80 % = 0,80).
⚠ Formel gilt nur fuer **gleichartigen** Ersatz — Daten verschiedener Systeme nicht mischen;
beim Systemwechsel zuerst ein gleichartiges Ersatzsystem bestimmen.

### Brennwerte (GCV) und Jahresnutzungsgrade je Energietraeger (treu aus der Quelle)
| Energietraeger | Brennwert GCV | Jahresnutzungsgrad ηan |
|---|---|---|
| Stueckholz Weichholz | 1800 kWh/rm | neue Kessel 65–75 %, alte 45–65 % |
| Stueckholz Hartholz | 2500 kWh/rm | neue Kessel 65–75 %, alte 45–65 % |
| Holzschnitzel Weichholz (W 30 %) | 750–900 kWh/Srm | neue 65–75 %, alte 45–65 % |
| Holzschnitzel Hartholz (W 30 %) | 1000–1250 kWh/Srm | neue 65–75 %, alte 45–65 % |
| Pellets | 5,2–5,5 kWh/kg | neue + alte Kessel 65–75 % |
| Heizoel EL | 10,5 kWh/l | kondensierend 85–95 %, alt 75–80 % |
| Heizgas | 10,4 kWh/m³ (0,98 bar, 15 °C) | kondensierend 85–95 %, alt 80–85 % |

(rm = Raummeter Ster; Srm = Schuettraummeter.) **Keine Waermepumpe** in dieser Quelle —
WP-Dimensionierung erfolgt ueber Norm-Heizlast / JAZ separat.

### Alternative bei Sanierung — gemessene Leistungskennlinie
Genauer bei sehr gut gedaemmten/glasreichen Bauten oder anderen Nutzungen: ueber ~2 Wintermonate
mittlere Verbrennungsleistung gegen Aussentemperatur auftragen, auf Norm-Aussentemperatur
extrapolieren; ermittelten Wert wegen Solargewinnen um ~15 % erhoehen (SIA 384/1 Ziff. 4.3.7).

## Weg B — Neubau: Norm-Heizlast SIA 384.201
Raumweise Norm-Heizlast rechnen, dann Gebaeude-Leistung:
```
Φgen,out = ΦHL + ΦW + ΦAS
```
ΦHL Norm-Heizlast · ΦW Wassererwaermung · ΦAS verbundene Systeme (Lueftung/Prozess).
Zuschlag Warmwasser (Richtwert, je Energiebezugsflaeche): **MFH 3 W/m² · EFH 2 W/m² · Verwaltung 1 W/m²**.
In der Regel keine pauschalen Sicherheitszuschlaege noetig; bei guter Daemmung sind
Verteilverluste meist vernachlaessigbar (nur Verluste ausserhalb der thermischen Huelle zaehlen).

## Kontrollwerte — spezifische Heizleistung (Norm-Heizlast ÷ EBF)
| Gebaeudetyp | Kontrollwert |
|---|---|
| Bestand, schlecht gedaemmt (Wohnen) | 50–70 W/m² |
| Bestand, gut gedaemmt (Wohnen) | 40–50 W/m² |
| **Neubau nach heutigen Vorschriften** | **25–40 W/m²** |
| Bestand, schlecht gedaemmt (Dienstleistung) | 60–80 W/m² |
| **Minergie** | **20–30 W/m²** |
| **Minergie-P** | **8–20 W/m²** |

Nur grobes Kontrollinstrument; die Dimensionierung selbst erfolgt nach den Verfahren oben.
Aus dem Heizwaermebedarf Qh allein laesst sich die Heizleistung **nicht** genau ableiten.

## Bauherren-Transfer
- **Faustregel zum Mitnehmen:** Ein Neubau braucht grob **25–40 W je m²** beheizte Flaeche,
  ein Minergie-Haus nur **20–30**, ein Minergie-P-Haus **8–20** — ein schlecht gedaemmter
  Altbau dagegen **50–70**. Ein 150-m²-Neubau-EFH liegt also bei rund **4–6 kW** Heizlast.
- **Erst daemmen, dann Heizung waehlen:** je besser die Huelle, desto kleiner (und guenstiger)
  der Waermeerzeuger. Wer vor dem Heizungsersatz die Huelle verbessert, kauft kleiner ein.
- **Heizungsersatz im Bestand** laesst sich serioes aus den letzten Heiz-Abrechnungen
  abschaetzen — alte Anlagen waren oft 1,5–2× ueberdimensioniert.
- ⚠ **Heizsystem-WAHL** (Waermepumpe ↔ Fernwaerme ↔ Pellets) und das fossile Heizverbot regelt
  das Energierecht → Skill `baurecht`; diese Quelle liefert nur Brennwerte/Nutzungsgrade
  (ohne WP) und die Dimensionierungslogik.

## Offene Punkte
- Waermepumpen-Dimensionierung (JAZ/COP, Leistung) — eigene Quelle noetig (SIA 384/1 Detail / FWS).
- Speichervolumen-Dimensionierung (auf Erzeugerart abstimmen) — in dieser Quelle nur qualitativ.
