---
titel: "Wissens-Chef Run 19 — Cross-KB-Aufsicht"
datum: 2026-07-28
verfahren: "Workflow-Fan-out, 15 Agenten (5 Lese + 10 adversariale Verifikatoren), ~2.42 Mio. Subagent-Token, 310 Tool-Calls, 20 Min."
befunde: "15 gemeldet, 10 verifiziert → 7 BESTAETIGT / 3 WIDERLEGT"
korrigiert: "14 Stellen in 12 Dateien"
---

# Wissens-Chef Run 19 — 28.07.2026

## Lage: warum dieser Lauf ergiebig war

Das Delta seit Run 18 (27.07., 23:47) ist gross und ungewöhnlich gut geschnitten:

- **`baurecht` hat die in Run 18 gemeldete P1-Lücke eingelöst.** Buch-Run 69 beschaffte
  `raw/260728_amtlich_zh_wsg.md` (WsG, LS 724.1, §§ 1–132) und `raw/260728_amtlich_zh_wsv.md`
  (WsV, LS 724.11, §§ 1–215). **Damit waren erstmals alle rund 60 WsG-/WsV-Fundstellen des Hubs
  am amtlichen Wortlaut prüfbar** — genau das ist die Kernprüfung dieses Laufs.
- **`energie` Run 118**: sechs neue Destillate, FAQ F178–F183.
- **`normen`**: Therapieküchen-Report (Querschnitt PBG/BBV I/ArGV 3/VKF/SIA 382) + SIA-500-Destillat.
- **`planungsgrundlagen` Run 92**: Brandschutz auf Wettbewerbsebene (WB BIWAK, SAC-Wegleitung).
- **`bauprodukte`**: am 28.07. **neu entstandene KB**, 7 Artikel, nie cross-geprüft.
- **`projekt-lessons`**: zwei neue Lesson-Artikel.

Der Lauf hat fünf Paare parallel gelesen und jeden gewichtigen Befund von einem eigenen
Verifikator **mit Widerlegungsauftrag** an den Originalquellen gegenprüfen lassen.
**7 von 10 hielten stand, 3 kippten** — dieselbe gesunde Quote wie Run 18 (7/10) und Run 17 (8/10).

---

## Die vier wichtigsten Befunde

### 1. Der Gewässerraum stand hub-weit auf der falschen Norm — und dahinter steckt ein neues Strukturmuster

**Sachverhalt.** Die grundeigentümerverbindliche Festlegung des Gewässerraums wurde an vier Stellen
in drei KBs auf **§ 19 WsG** gestützt. Am amtlichen Volltext steht das Wort
«grundeigentümerverbindlich» wörtlich und ausschliesslich in **§ 18 Abs. 1 WsG** (Randtitel
«b. Festlegung»); **§ 19 WsG** trägt den Randtitel «c. Berücksichtigung der baulichen Gegebenheiten
in dicht überbauten Gebieten» und regelt die **Anpassung**. Systematik: § 17 Grundsatz · § 18
Festlegung · § 19 dicht überbautes Gebiet.

**Warum das zählt.** Betroffen war die Rechtsgrundlagen-Spalte von **OEREB-Thema 190** — also genau
die Angabe, die aus `planungsgrundlagen` in Behördenschreiben, Vorabklärungen und Studien-Dossiers
gegenüber dem AWEL wandert. Wer § 19 als Festlegungsnorm zitiert, beruft sich auf die Ausnahmeregel
für dicht überbaute Gebiete statt auf die Festlegungskompetenz der Direktion. Zusätzlich hat der
Fehler die **praktisch wertvollste Norm verdeckt**: § 19 Abs. 2 ist der Hebel, wenn ein festgelegter
Gewässerraum die bauliche Nutzung erheblich einschränkt — im Hub war er nirgends als solcher
erfasst, weil er mit der Festlegung verwechselt wurde. Er ist jetzt in `abstaende-und-hoehen`
als eigene Aussage aufgenommen.

**Das Strukturmuster — NEU und wichtiger als der Einzelfehler:**
**Autorentext in `raw/` wurde später als amtlicher Wortlaut zitiert.** Die Quelle der Verbreitung
ist eine **vom KB-Autor geschriebene** Konkordanztabelle im Kopf von
`baurecht/raw/260717_amtlich_zh_hwschv.md`; der amtliche Teil derselben Datei beginnt erst unter
«TEIL A». Der Refuter von **Run 8** erklärte die Zuordnung mit dem Satz «die Nachfolge § 19 WsG /
§ 11 WsV steht wörtlich in der **amtlichen** Konkordanztabelle» für belegt — und behandelte damit
Autoren-Interpretation als Primärquelle. Die Datei markiert das im Frontmatter-Feld `umfang` sogar
selbst; es wurde nur nicht gelesen.

> **Regel daraus: eine `raw/`-Datei ist nicht als Ganzes amtlich.** Führt sie neben dem Erlasstext
> Autoren-Hilfstabellen (Konkordanz, Mapping, Übersicht), sind diese sichtbar als «KB-Autorentext,
> nicht amtlich» zu kennzeichnen — sonst wiederholt sich der Fall bei jeder Mapping-Tabelle im
> Bestand.

Das ist zugleich ein **Selbstbefund**: der Fehler stammt aus einem früheren Lauf dieser
Koordinationsinstanz. Er wurde erst korrigierbar, als der Volltext vorlag — was für die
Bring-Schuld-Mechanik spricht, nicht gegen sie.

### 2. SIA 500: vier Korrigenda, eines davon dem Hub sieben Jahre lang unbekannt

Das SIA-500-Destillat führte Ziff. 9.7.2 im Stand der Basisausgabe 2009. Der Verifikator hat
Basisausgabe **und** Korrigenda am Original beschafft:

- **C3:2013** ändert die **Bezugsgrösse von Parkplätzen auf Wohnungen** (ein rollstuhlgerechter
  Parkplatz pro 25 **Wohnungen**, angebrochene Einheit zählt) und führt einen 100-m-Gehdistanz-
  Richtwert ein, den die Basisausgabe nicht kennt.
- **C4:2019 war im Hub nirgends erwähnt** und ändert Ziff. 3.4.1, 3.7.3, 3.7.4, 3.7.6, 3.7.7,
  3.7.8 und 6.2.2.

**Der Fehler hatte die Destillat-Ebene bereits verlassen:** `bauprodukte/wiki/bkp-261-aufzuege.md`
rechnet ein konkretes Herstellermass gegen die Kabinen-Tabelle aus **Ziff. 3.7.3** — genau eine der
von C4 geänderten Ziffern.

> **Verallgemeinerte Lehre — dritte Variante der Run-8-Regel «Fassungspflege ist der blinde Fleck».**
> Bisher hiess sie: erst den Bestand nach jüngeren **Ausgaben** durchsuchen. Neu kommt hinzu: auch
> bei **unveränderter Ausgabe** können **Korrigenda** einzelne Ziffern materiell ändern. Sie tragen
> keine neue Jahreszahl im Normtitel und sind an der Ausgabe **nicht erkennbar** — genau deshalb
> blieb C4:2019 sieben Jahre unbemerkt. Bei jedem SIA-Destillat gehört ein Blick in die
> Korrigenda-Liste des SIA-Shops dazu; Korrigenda sind Preisgruppe 0 (gratis).

### 3. Die Konzessionsdauer war auf der falschen Regelungsstufe gesucht — und der Fehler erreichte den Bauherrn

`energie` hielt fest, für die Grundwasserwärme-Konzession gebe es **keinen gesetzlichen
Maximalwert**, die Dauer werde im Einzelfall festgelegt. Die Einschränkung war ehrlich formuliert
(«bevor die WsV geprüft ist») und ist seit dem 28.07. einlösbar:

**§ 121 Abs. 1 lit. b WsV** — «Nutzung von Grund- und Oberflächenwasser zur Wärmeentnahme und zum
Wärmeeintrag: **15–30 Jahre**» (Abs. 2: bei besonderen Verhältnissen längstens 80). Die kursierenden
**40 Jahre gelten für andere Litera** (lit. a Wasserentnahme, lit. d Inanspruchnahme) — für die
Wärmenutzung falsch.

**Die Stufe war das Problem, nicht die Recherche:** gesucht wurde im **Gesetz**, geregelt ist es in
der **Verordnung**. Korrigiert wurde nicht nur das Destillat, sondern auch **`BAUHERREN-FAQ` F77** —
dort erreichte der Fehler den Kunden. Praxisfolge: in Wirtschaftlichkeitsrechnungen den
Amortisationshorizont der Wärmequelle mit **maximal 30 Jahren** ansetzen und die
Konzessionserneuerung als Risiko ausweisen (`healthcare-wirtschaftlichkeit`, `machbarkeit` Typ B,
`immobilienbewertung` DCF).

Nebenbefund mit Eigenwert: die **100-kW/Minergie-Mindestgrösse steht nicht in der WsV** → sie ist
AWEL-Verwaltungspraxis, nicht Verordnungsrecht. § 173 lit. b WsV kennt bei 200 kW nur eine
**Verfahrens**schwelle (vereinfachtes Verfahren), keine Grössenvorgabe.

### 4. Die neue KB `bauprodukte` war im Register unsichtbar — und produzierte prompt den erwarteten Fehler

Die am 28.07. entstandene KB fehlte in der Führungs-Matrix **vollständig**. Genau diese
Registerlücke hat den materiellen Befund erzeugt: `dachbegruenung-systeme` führte die Dachbegrünung
allein unter **BKP 224** und kannte **SIA 312:2013** gar nicht — obwohl das Destillat seit längerem
in `normen` liegt. Die Norm verlangt die Aufteilung **224 (Schichtaufbau) / 288 (Vegetation)**: wer
alles unter 224 ausschreibt, **verliert die Gärtnerleistung aus dem Devis**.

Drei Führungszeilen sind ergänzt (Produktwissen → `bauprodukte`; Norm-Fundstellen → `normen`;
Kennwerte → `grobkosten`/`immobilienbewertung`), der Normabschnitt ist nachgetragen, die Verlinkung
beidseitig gesetzt.

---

## Was die Verifikation gekippt hat (3 von 10)

Die widerlegten Befunde sind so wertvoll wie die bestätigten, weil ihre Umsetzung **neue Fehler
erzeugt hätte**:

1. **70-%-Deckel «nur bei hohen Bauten» sei eine Falschlesart** — kippt: es ist die **amtliche
   Vollzugslesart** des ZH-Leitfadens. Eine «Korrektur» hätte die Vollzugspraxis aus dem Hub entfernt.
2. **Terrazzo/Kunststein sei durch SN EN 16954:2018 abgedeckt** — kippt an der falschen Leitnorm:
   für zementgebundene Kunststein-/Terrazzoplatten ist **SIA 244:2006** einschlägig. Die Umsetzung
   hätte eine falsche Normzuordnung in eine brandneue KB gesetzt.
3. **SBB-Lesson erhebe den Einzelfall zur Regel** — kippt an vier unabhängigen Gründen: die Lesson
   erhebt gar keine Rechtsbehauptung. **Der Vorschlag war der gefährlichere Teil:** er wollte ein
   «Vorsprungsprivileg § 260 Abs. 3 PBG» zitieren, das im geltenden Hauptteil des PBG einen anderen
   Gegenstand hat.

Bemerkenswert: **zwei der drei Kipp-Vorgänge förderten echte Fehler an anderer Stelle zutage.**
Aus dem SBB-Kipp stammen die beiden `baurecht`-Meldungen unten; aus der C41-Prüfung stammt die
gefundene Lücke im VKF-Destillat (die Absätze, die die 1.2-m-Erleichterung an die Erschliessung
**mehrerer Nutzungseinheiten** binden, und die Regel, dass an Treppen **innerhalb** der
Nutzungseinheit keine Anforderungen gestellt werden — die praktisch häufigste Konstellation).

---

## Ausgeführte Aktionen (14 Stellen in 12 Dateien)

| KB | Datei | Aktion |
|---|---|---|
| baurecht | `wiki/abstaende-und-hoehen.md` | § 19 → **§ 18 Abs. 1 WsG**; § 19 neu als eigene Aussage |
| baurecht | `wiki/QUESTIONS.md` | P1 raw-Konkordanz + 2 Befunde aus dem SBB-Kipp gemeldet |
| planungsgrundlagen | `wiki/kartenportale-oereb-kataster-system-zh.md` | OEREB-190 Tabellenzeile + Warnkasten korrigiert |
| planungsgrundlagen | `wiki/recht-norm-abstandsvorschriften-wald-gewaesser.md` | § 18 Abs. 1 WsG |
| planungsgrundlagen | `wiki/QUESTIONS.md` | C41 Breitenfrage geschlossen, Zuordnungsfrage neu gefasst |
| energie | `destillate/grundwasserwaermenutzung-…` | Konzessionsdauer 15–30 J.; Mindestgrösse als Praxis markiert |
| energie | `wiki/BAUHERREN-FAQ.md` (F77) | Bauherren-sichtbare Fassung korrigiert |
| energie | `destillate/rueckkuehler-flaechenkennwert-…` | Erlass ↔ Vollzugshilfe getrennt (§ 47b BBV I) |
| normen | `destillate/sia-500-2009.md` | Fassungsfeld, Ziff. 9.7 auf C3:2013, C4-Ziffern markiert |
| normen | `destillate/vkf-brl-16-15-…` | 2 fehlende Absätze (Nutzungseinheit) nachgetragen |
| normen | `destillate/sia-312-2013.md` | Rückverlinkung zu `bauprodukte` |
| normen | `outputs/2026-07-28_therapiekueche-…` | Gebäudekategorie IX → **VIII** |
| normen | `wiki/QUESTIONS.md` | Leitplanke Kategorien I–XII; P1 SIA-500-Korrigenda-Nachzug |
| bauprodukte | `wiki/dachbegruenung-systeme.md` | SIA 312:2013 + BKP 224/288 nachgetragen, verlinkt |
| bauprodukte | `wiki/bkp-261-aufzuege.md` | Fassungs-Vorbehalt C4:2019 |
| projekt-lessons | `wiki/roethlisberger-…` | `bkp`-Feld: **258**, «273.35» als Los-Nr. gekennzeichnet |
| koordination | `QUERBEZUEGE.md` | 3 Führungszeilen `bauprodukte` + 5 Paar-Einträge |

Alle Korrekturen sind im CHANGELOG der jeweiligen KB **und** im Chef-CHANGELOG protokolliert.

---

## Offene Entscheide und Meldungen

### Für Raphael (klein, aber Löschung → Rückfragepflicht)

- **`wissen/bauprodukte/.!33499!CHANGELOG.md`** ist ein **0-Byte-SMB-Schreibfragment** vom 28.07.
  01:37. Das echte `CHANGELOG.md` ist intakt, **kein Datenverlust**. Nicht gelöscht, weil Löschungen
  nie ohne Rückfrage erfolgen. → Freigabe zum Entfernen genügt.

### An die führenden KBs übergeben (Bring-Schulden, nicht Chef-Sache)

- **P1 `baurecht`:** Konkordanzzeilen in `raw/260717_amtlich_zh_hwschv.md` (Z. 40/252) korrigieren —
  der Chef fasst `raw/` nicht an. Bis dahin regeneriert sich der Fehler bei jeder Konsultation.
- **P1 `baurecht`:** drei **grammatisch zerstörte Sätze** in
  `buecher/band-2/15-lage-von-gebaeuden-teil2d.md` (Abschnitt Näherbaurecht) — nicht zitierfähig und
  nachweislich bereits Ursache einer Fehlableitung. S. 1099–1101 neu destillieren.
- **`baurecht`:** der Haupt-/Anhang-Vorbehalt zu **§ 260 Abs. 3 PBG** ist im Schwester-Artikel
  gesetzt, im `established`-Leit-Artikel `abstaende-und-hoehen` nicht — nicht vollzogener Sweep.
- **P1 `normen`:** SIA-500-Korrigenda Ziffer für Ziffer nachziehen (~20 Stellen, C3 + C4), danach
  C1/C2 im Volltext beschaffen.
- **`planungsgrundlagen`/`baurecht`:** OEREB-Thema 130 stützt sich weiter ungeflaggt auf die
  **KGSchV (LS 711.11)**, laut eigener KB-Feststellung per 01.01.2022 aufgehoben; Nachfolgeerlass im
  Hub nicht belegt. Nicht selbst gesetzt, weil die Nachfolge unklar ist.

### Unverändert offen aus Run 17/18 (Entscheid Raphael)

- Zwei Rule-Änderungen an `anrede-kontakte.md` (generelle Gewichts-Klausel; **Felix Stählin** —
  Karl Wächter AG oder Stählin AG Sanitär?).
- Die in Run 18 eskalierte **Doppel-Taktgeber-Lage auf dem Mac Mini** ist inzwischen durch die
  Rule-Einträge vom 28.07. adressiert (launchd `ch.jans.training-plg` abgeschaltet); keine neue
  Meldung von dieser Seite.

---

## Nicht zu beanstanden (der ehrliche Teil)

- **Beide neuen raw-Dateien sind vollständig** — WsG §§ 1–132, WsV §§ 1–215, Frontmatter-Fassungsstand
  deckt sich mit dem Textkörper. Auf Lücken geprüft, keine gefunden.
- **Der EG-GSchG-Sweep aus Run 17/18 ist sauber abgeschlossen** — keine Fundstelle ohne
  Aufhebungsvermerk mehr.
- Am Volltext bestätigt und unverändert richtig: §§ 44/45/46/48/74/126 WsG, §§ 11/92/183/213 WsV.
  Die in `baurecht/wiki/QUESTIONS.md` **offen gelassenen** §-Zuordnungen (§ 15 Abs. 3 / § 36 Abs. 2
  EG GSchG) sind zu Recht offen — die Gegensuche in WsG und WsV fand ebenfalls keine Entsprechung.
- Der Therapieküchen-Report schreibt ZH-Erlasswortlaut fort, obwohl `baurecht` dafür führend ist —
  als **Report** mit korrekt zitierten Fundstellen vertretbar, deshalb nicht korrigiert. Bei einer
  Promotion in die `wiki/`-Ebene auf Verweise umzustellen.
