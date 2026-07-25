# Konditionen & Abzüge

Quelle: BBase-Konditionenmodelle (KBOB/ESTV) + reale JANS-Devis (.crbx).

## ⚠️ MWST aktuell

| Stand | Normalsatz |
|---|---|
| bis 31.12.2023 | 7,7 % |
| **ab 01.01.2024** | **8,1 %** |

In Altdaten/Vorlagen steht meist 7,7 % — **immer auf 8,1 % aktualisieren**.

## Konditionenmodell KBOB

Reihenfolge der Abzüge (Brutto → Netto):

```
Total brutto exkl. MWST
  − Rabatt (%)
  = Zwischentotal
  − weitere Abzüge (%)
  − weitere Abzüge (P = Pauschal)
  = Total exkl. Skonto und MWST
  − Skonto (% , 30 Tage)
  = Total netto exkl. MWST
  + MWST (8,1 %)
  = Total inkl. MWST
```

## Konditionenmodell ESTV

```
Total Summe Brutto
  − Rabatt (%)
  − Abzüge (%)
  − Pauschalabzug (P)
  = Total Summe Netto
  + MWST (8,1 %)
```

## Typische Abzüge aus JANS-Devis (Beispiel Maler)

| Position | Art | Wert |
|---|---|---|
| Rabatt | % | projektspezifisch |
| Skonto | % | projektspezifisch (oft 2 %, 30 Tage) |
| Baureinigung | % | −0,5 % |
| Baustrom | % | −0,3 % |
| Bauwasser | % | −0,3 % |
| Baureklame | P/% | projektspezifisch |
| MWST | % | **8,1 %** |

## Anwendung

Beim LV-Erstellen die Konditionen als eigenen Block ans Ende setzen
(Anbieter trägt Rabatt/Skonto ein). Die Bau-Nebenabzüge (Reinigung, Strom,
Wasser, Reklame) sind JANS-Standard und werden vorgegeben.
