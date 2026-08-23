# QUESTIONS-Abarbeitung 12 — N59-4 (VKF 104-15) geschlossen, unerwarteter Fund FAQ 104-001

- **Datum:** 23.08.2026
- **Auftrag Raphael:** weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je
  Aussage mit Norm, Ausgabe und Ziffer, Verifikationsstatus des Destillats vor Zitat lesen (nur
  `established` zitierfähig). CHANGELOG und Report des letzten Laufs zuerst lesen, dort
  weitermachen. Rule `wissens-bibliothekar` beachten, jede Aussage belegen, nichts raten,
  CHANGELOG-Eintrag setzen, nach jedem Schreiben `git diff --numstat` prüfen. Hinweis: ein
  `claude`-Prozess mit demselben Lauf-Namen ist der eigene Lauf, kein Konkurrent.
- **`ps aux` zu Laufbeginn geprüft:** eigener Prozess (Lauf-Name `mschub79`) korrekt erkannt.
  Ein zweiter `claude -p`-Prozess läuft parallel, arbeitet aber an einer anderen KB (`baurecht`,
  Reglemente-Queue Thalwil) — kein Konkurrent an `normen`.
- **Vorlauf gelesen:** `CHANGELOG.md` (Kopf: SIA-Sweep fünfzehnte Fortsetzung, davor
  QUESTIONS-Abarbeitung 11) und `outputs/2026-08-23_questions-abarbeitung11.md`.

## Ausgangslage

Der elfte Lauf hatte nach einem vollständigen Scan aller offenen Abschnitte in `QUESTIONS.md`
festgestellt, dass kein selbständig lösbarer Punkt mehr offen ist, und ausdrücklich empfohlen,
**nicht** denselben Scan zu wiederholen. Eigene Nachprüfung der von Run 11 genannten Klassen
(N-SIASWEEP-2/-3, N59-2, N60-1/-2, SVGW-Scope, N58-4) bestätigte das — mit einer Ausnahme:
**N59-4** hatte in seinem letzten Nachtrag (sechster Lauf) einen konkreten, noch nicht
ausgeführten nächsten Schritt benannt: «dieselbe Archivseiten-Technik auf weitere
Delta-Destillate mit grossen Fassungssprüngen anwenden». Von den drei identifizierten grossen
Fassungssprüngen (40-15: 2015→2025, 108-15: 2015→2020→2022, 104-15: 2015→2022) war nur
**104-15** noch nicht mit dieser Technik geprüft.

## Durchgeführt

**Archivprüfung 104-15.** `curl -sL -A "Mozilla/5.0" https://www.bsvonline.ch/de/
brandschutzvorschriften/archiv-bsv-2015` abgerufen, der eingebettete JSON-Payload strukturiert
nach dem Feld `"title"` durchsucht (Methode aus dem sechsten Lauf übernommen, nicht reiner
Text-Grep). Ergebnis: genau **ein** Treffer, «104-15 Spänefeuerungen (gültig bis 30.11.2022)»
(`BSPUB-1394520214-825.pdf`). Kein zweiter, mit einem weiteren «(gültig bis …)» betitelter
Eintrag. **N59-4 für 104-15 damit geschlossen:** lückenloser Übergang 01.01.2015 → 01.12.2022,
keine unveröffentlichte Zwischenausgabe (gleiches Befundmuster wie 108-15 im vierten Lauf).

**Unerwarteter Nebenfund.** Dieselbe Archivseite listet zu 104-15 eine amtliche FAQ:

- **Nummer 104-001**, Beschlussdatum **16.03.2015**, Bezug **Ziff. 6.2**, Status «Erläuterung /
  Interpretation», öffentlich publiziert, Dokument `BSPUB-1394520214-1243.pdf`.
- PDF via `curl` geladen und mit `/opt/homebrew/bin/pdftotext -layout` gelesen (Textlayer
  vorhanden, keine OCR nötig).
- **Inhalt:** Frage schildert, dass pneumatisch angesteuerte Brandschutzklappen (5 s
  Öffnungszeit) durch elektrische Federrücklaufmotoren (bis 120 s Öffnungszeit) ersetzt wurden
  und ein sofortiges Schliessen beim Ausschalten der Anlage (Ziff. 6.2, Fassung 2015) in der
  Praxis unzumutbar lange Wartezeiten erzeugt. Antwort ABSV: Bei Späneabsaugungen mit nicht
  dauernd laufendem Förderventilator dürfen die Klappen mit Verzögerung schliessen, sofern sie
  bei Hauptschalter/Not-Aus sofort schliessen.
- **Bedeutung für die KB:** Diese 2015er-Interpretation ist **inhaltlich identisch** mit dem in
  der Fassung 2022 neu in den Normtext aufgenommenen Ziff. 6.2 Abs. 2 (Delta-Destillat, bisher
  als reine 2022-Neuerung geführt). Die Regel ist also keine Neuerfindung 2022, sondern die
  Kodifizierung einer bereits sieben Jahre lang geltenden Amtsauslegung.

## Nachgeführt

- `destillate/vkf-brl-104-15-spaenefeuer.md`: Ziff.-6.2-Passage um den FAQ-Beleg ergänzt
  (Volltext-Fundstelle, Datum, Dokument-ID), `last_updated` auf 2026-08-23. Status unverändert
  `superseded` (Bestandsfassung 2015, unverändert korrekt für Bestandesbauten).
- `destillate/vkf-brl-104-15-fassung-2022-delta.md`: Tabellenzeile Ziff. 6.2 um den Verweis auf
  die FAQ-Herkunft ergänzt; neuer Abschnitt «Herkunft der Ziff.-6.2-Abs.-2-Regel und
  Archivprüfung» vor «Belege» eingefügt (FAQ-Fund + Archiv-Zwischenausgaben-Befund).
  `last_updated` auf 2026-08-23. Status unverändert `speculative`.
- `wiki/QUESTIONS.md`: N59-4 um datierten Nachtrag ergänzt (Archivbefund 104-15 + FAQ-Fund +
  Zahlenwert-Vorbehalt), additiv, Ursprungstext unverändert.
- `CHANGELOG.md`: eigener Eintrag oben.
- `outputs/2026-08-23_questions-abarbeitung12.md` (dieser Report, neu).

## Offener Vorbehalt: Zahlenwert-Unstimmigkeit im FAQ-Original

Die FAQ-Antwort nennt wörtlich «einer Verzögerung von 120 Minuten». Das widerspricht sowohl der
eigenen Fragestellung (Öffnungszeit bis 120 Sekunden, Bediener soll nicht «2 Minuten» warten
müssen) als auch der 2022 kodifizierten Fassung, die im Delta-Destillat wortgenau «120 Sekunden»
belegt. Das ist vermutlich ein Schreibversehen im VKF-Original. Es wurde **nicht stillschweigend
korrigiert**, sondern unverändert zitiert und der Widerspruch in beiden Destillaten sowie in
`QUESTIONS.md` als Vorbehalt vermerkt (Rule `bkp-2017-referenz`, «Sachbezug prüfen, nicht
mechanisch ersetzen», sinngemäss auf ein wörtliches Zitat übertragen). Für ein laufendes Projekt
ist ohnehin die kodifizierte Fassung 2022 mit 120 Sekunden massgebend.

## Verifikation

`git diff --numstat` nach jedem Schreibvorgang geprüft:

| Datei | Befund |
|---|---|
| `destillate/vkf-brl-104-15-spaenefeuer.md` | additiv (ein erweiterter Satz + `last_updated`-Zeile ersetzt) |
| `destillate/vkf-brl-104-15-fassung-2022-delta.md` | additiv (Tabellenzelle ergänzt, neuer Abschnitt eingefügt, `last_updated` ersetzt) |
| `wiki/QUESTIONS.md` | additiv (neuer Nachtrag-Block am Ende von N59-4, nichts gelöscht) |
| `CHANGELOG.md` | additiv (neuer Eintrag oben eingefügt) |

Kein `git`-Schreibbefehl über den SMB-Mount ausgeführt (Commit läuft über
`scripts/nas-commit-now.sh`).

## Damit erledigt / weiterhin offen

Die «Nächster Schritt bei Bedarf»-Empfehlung aus dem vierten Lauf (Archivtechnik auf alle
grossen Fassungssprünge anwenden) ist **vollständig abgearbeitet**: 40-15 (offen, kein
Archiv-Treffer, keine weitere freie Quelle ersichtlich), 108-15 (geschlossen, vierter Lauf),
104-15 (geschlossen, dieser Lauf). Kein weiterer Kandidat mit vergleichbar grossem
Fassungssprung im Bestand — der Rang-5-Sammelposten (2015→2017) ist nur ein Zweijahres-Sprung
und rechtfertigt keinen eigenen Archiv-Lauf.

**Unverändert offen, wie in Run 11 festgehalten:** Volltext-Beschaffung SIA 380:2022/
SIA 382/1:2025/EN 13487/EN 12102-1/NIN (Bring-Schuld Raphael, Bezahlschranke), N60-1/N60-2
(Entscheid Raphael), SVGW-Scope (Entscheid Raphael), N58-1 Abdeckungsrichtung und N58-4
Restindex (eigene grössere Projekte, kein Einzelpunkt). **Empfehlung an den nächsten Lauf:**
für Selbstläufer-QUESTIONS-Punkte ist die KB nun tatsächlich ausgeschöpft — inklusive des in
Run 11 übersehenen N59-4-Regionalschritts. Ein weiterer Ertrag ist nur noch über eine der drei
grösseren, bewusst zurückgestellten Linien (N58-1, N58-4, oder eine neue Bring-Schuld/ein neuer
Sweep-Fund) zu erwarten, nicht über einen erneuten QUESTIONS-Scan.
