# VKF-Fassungsmatrix — Abgleich des Publikationsindex (Run 58, 20.08.2026)

**Zweck.** Erster vollständiger Abgleich der KB-Destillate gegen den **VKF-Publikationsindex**.
Er schliesst den seit Run 27 offenen Auftrag **N27-1** und ist zugleich die Anwendung der
Lehre aus Run 57 (SIA 416/1 war elf Jahre zurückgezogen, ohne dass es je jemand prüfte) auf
die zweite grosse Normenfamilie dieser Station.

**Diese Datei ist der Beleg.** Sie ersetzt in künftigen Läufen die Neubeschaffung: wer den
Fassungsstand einer VKF-Publikation braucht, liest hier nach und prüft nur, ob sich das Portal
seither geändert hat.

## Zugangsweg (belegt, reproduzierbar)

| Schritt | Befehl / URL |
|---|---|
| Publikationsindex | `https://www.bsvonline.ch/de/brandschutzvorschriften/vorschriften-2015` — die Seite trägt einen Astro-JSON-Payload mit `fileLeafRef`, `title`, `vkgPubSamStatus`, `modified`; 83 deutschsprachige Einträge |
| Dokument | `https://services.vkg.ch/rest/public/georg/bs/publikation/documents/BSPUB-1394520214-<NR>.pdf/content` |
| Fassungsdatum | **am Titelblatt abgelesen** (Format «01.04.2026 / 12-15de»), Änderungsliste auf S. 2 |

⚠ **Zwei Fallen, beide in diesem Lauf belegt.**

1. **Der REST-Index ist nicht frei.** `…/publikation/documents` ohne Dokumentnummer antwortet
   mit HTTP 400 «Fehlender API-Key». Frei ist nur der Dokument-Content. Der Index kommt deshalb
   über die HTML-Seite, nicht über die API.
2. **`vkgPubSamStatus` ist KEIN Gültigkeitsindikator.** Das Feld steht bei allen 83 Einträgen
   auf «aktuell» — auch bei der am 31.08.2025 zurückgezogenen Erläuterung 103-15. Es bedeutet
   «aktuell publiziert», nicht «in Kraft». Die Gültigkeitsaussage steht allein im **Titelfeld**
   («Gültig ab …», «Gültig bis …», «zurückgezogen am …»). Wer auf das Statusfeld baut, hält
   eine zurückgezogene Richtlinie für geltend.

## Die Matrix (Abruf 20.08.2026)

Spalte «KB vorher» = Fassung, auf der das Destillat beruhte. Spalte «Befund»: **✗** = Destillat
führte die geltende Fassung nirgends · **(FM)** = Frontmatter veraltet, geltende Fassung aber im
Fliesstext geführt (kein Sachbefund) · **✓** = übereinstimmend.

| BRL | Titel | geltend | KB vorher | Befund | Dok.-Nr. | MD5 (gekürzt) |
|---|---|---|---|---|---|---|
| 1-15 | Brandschutznorm | 01.01.2015 | 2015 | ✓ | 57 | `9774b4dbb936` |
| 10-15 | Begriffe und Definitionen | **01.01.2019** | 2015 | **✗ → Δ** | 2768 | `63d4e6017e12` |
| 11-15 | Qualitätssicherung im Brandschutz | **01.01.2019** | 2015 | **✗ → Δ** | 2706 | `6338ef4c5b29` |
| 12-15 | Brandverhütung und organisat. Brandschutz | **01.04.2026** | 2015 | **✗** | 1545 | `393cccfa865b` |
| 13-15 | Baustoffe und Bauteile | 01.01.2017 | 2015 | (FM) | 71 | `5dc4d5989c41` |
| 14-15 | Verwendung von Baustoffen | 01.01.2017 | 2015 | (FM) | 77 | `bebf8a418e97` |
| 15-15 | Brandschutzabstände Tragwerke | 01.01.2017 | 2015 | (FM) | 81 | `6dcc54f34a2d` |
| 16-15 | Flucht- und Rettungswege | 01.01.2017 | 2017 | ✓ | 85 | `507d99ecb5f3` |
| 17-15 | Kennzeichnung von Fluchtwegen | 01.01.2017 | 2015 | **✗** | 89 | `ab2103c387a4` |
| 18-15 | Löscheinrichtungen | 01.01.2017 | 2015 | **✗** | 91 | `77ca901487d6` |
| 19-15 | Sprinkleranlagen | 01.01.2015 | 2015 | ✓ | 97 | `ba634ccf5374` |
| 20-15 | Brandmeldeanlagen | 01.01.2017 | 2015 | **✗** | 101 | `db5fb1aae72b` |
| 21-15 | Rauch- und Wärmeabzugsanlagen | 01.01.2017 | 2015 | **✗** | 105 | `ef46ada4e9f1` |
| 22-15 | Blitzschutzsysteme | 01.01.2017 | 2015 | (FM) | 107 | `655e788ff59d` |
| 23-15 | Beförderungsanlagen | 01.01.2017 | 2015 | **✗** | 113 | `ac539bd2c1eb` |
| 24-15 | Wärmetechnische Anlagen | 01.01.2017 | 2015 | **✗** | 117 | `379a079b9c8f` |
| 25-15 | Lufttechnische Anlagen | 01.01.2017 | 2015 | **✗** | 121 | `80aabbf40ca5` |
| 26-15 | Gefährliche Stoffe | **01.04.2026** | 2015 | **✗** | 125 | `90813af41a3c` |
| 27-15 | Nachweisverfahren im Brandschutz | 01.01.2015 | 2015 | ✓ ⚠ | 127 | `72e31ae5a6e7` |
| 28-15 | Anerkennungsverfahren | 01.01.2015 | 2015 | ✓ | 133 | `304d843c9853` |
| 40-15 | Weitere Bestimmungen | **11.06.2025** | 2015 | **✗ → Δ** | 137 | `64a96d9cca14` |
| 100-15 | Brandmauern | 01.01.2017 | 2015 | **✗** | 141 | `bd5d8ec274d1` |
| 101-15 | Bauten mit Atrien und Innenhöfen | 01.01.2017 | 2015 | **✗** | 145 | `d4d2cfacaa3e` |
| 102-15 | Bauten mit Doppelfassaden | 01.01.2017 | 2015 | **✗** | 149 | `43a8e5474278` |
| 103-15 | Cheminées | 01.01.2017, **zurückgezogen 31.08.2025** | 2015 | **✗✗** | 3181 | `b5092d51280c` |
| 104-15 | Spänefeuerungen | **01.12.2022** | 2015 | **✗ → Δ** | 157 | `5a24599ab088` |
| 105-15 | Schnitzelfeuerungen | 01.01.2017 | 2015 | **✗** | 161 | `17f9eb64d937` |
| 106-15 | Pelletsfeuerungen | 01.01.2017 | 2015 | **✗** | 165 | `adc9e5a34e15` |
| 107-15 | Temporäre Flüssiggasanlagen | 01.01.2017 | 2015 | **✗** | 169 | `6347ae95b95b` |
| 108-15 | Betriebsbereitschaft BFS | **01.01.2020, Stand 01.08.2022** ⚠ | 2015 | **✗ → Δ** | 3017 | `9cfedaf550e2` |
| 1000-15 | Gebäude mit geringen Abmessungen | 01.01.2017 | 2015 | **✗** | 181 | `d422de8958eb` |
| 1001-15 | Wohnbauten | 01.01.2017 | 2015/2017 | (FM) | 185 | `19e8b1a5942d` |
| 1002-15 | Schulbauten | 01.01.2017 | 2015 | **✗** | 189 | `42a46e50bde0` |
| 2001-15 | Solaranlagen (Merkblatt) | 01.01.2022 | 2022 | ✓ | 197 | `a17958fdf95c` |
| 2005-15 | Lithium-Ionen-Batterien (Merkblatt) | 01.06.2021 | 2021 | ✓ | 3688 | `d80a21d7dbbc` |

**⚠ Nachtrag Run 59 (22.08.2026) — zwei Korrekturen an dieser Matrix.**

1. **108-15 trägt zwei Daten.** Das Titelblatt nennt die Fassung «01.01.2020 / 108-15de» **und
   darunter «Stand 01.08.2022»**; die Änderungsliste weist den TKB-Beschluss vom 08.06.2022 aus.
   Die Matrix führte nur «01.01.2020». **Merksatz:** bei den VKF-Erläuterungen ist das
   Fassungsdatum nicht immer der aktuelle Stand — beide Zeilen des Titelblatts lesen.
2. **Spalte «Befund», neuer Wert «✗ → Δ».** Er bedeutet: das Destillat beruhte auf der
   überholten Fassung **und** das Fassungs-Delta ist inzwischen destilliert. Betroffen sind
   **10-15, 11-15, 40-15, 104-15 und 108-15** (Run 59, Auftrag N58-1). Die übrigen 18 stehen
   unverändert auf **✗**.

**⚠ zu 27-15:** Das Titelblatt trägt 01.01.2015, die Hinweisseite nennt aber einen
**ABSV-Beschluss vom 22.03.2017**. Fassungsdatum und Änderungsliste widersprechen sich; ob das
Fassungsdatum nicht nachgeführt wurde oder die Änderung nur den Anhang betrifft, ist in diesem
Lauf **nicht geklärt** (siehe QUESTIONS N58-3).

## Bilanz

| Kennzahl | Wert |
|---|---|
| Publikationen im Index (deutsch) | 83 |
| davon mit KB-Destillat abgeglichen | 35 |
| Destillat und geltende Fassung stimmen überein | 7 |
| Frontmatter veraltet, Fliesstext führt die geltende Fassung | 5 |
| **Destillat führte die geltende Fassung nirgends** | **23** |
| davon zurückgezogene Publikation | 1 (103-15) |
| Fassungsstufen, die der KB ganz fehlten | **2019, 2020, 2022 (104-15), 2025, 2026** |

## Nicht geprüft

- **Die übrigen 48 Indexeinträge** (IOTH-Beschlüsse, Formulare, Checklisten, Musterweisungen,
  Reglemente, Verzeichnisse ohne KB-Destillat). Der Sweep lief nur über die 35 Publikationen,
  zu denen die KB ein Destillat führt.
- **Die Fassungs-Deltas selbst.** Festgestellt ist, *dass* eine jüngere Fassung gilt, nicht
  *was* sie ändert — mit einer Ausnahme: die Teilrevision 2026 (12-15, 26-15) ist in
  `destillate/vkf-teilrevision-2026-pyrotechnik.md` inhaltlich destilliert.
- **Die französischen und italienischen Fassungen.** Der Index führt sie getrennt; der Sweep
  lief nur über `vkgPubDokSprache = DE`.
- **Die Anhänge** der Richtlinien mit neuer Fassung.
