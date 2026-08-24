# A-BLIND-Fall 2: GSchG/GSchV-Wortlaut für Erdwärmesonden am Fedlex-Primärtext verifiziert

Datum: 2026-08-24 · Lauf: interaktive Session, Fortsetzung des QUESTIONS-Nachlaufs

## Auftrag

Weitere offene Fragen in `wiki/QUESTIONS.md` abarbeiten, belegt mit Quelle und Datenstand, Anschluss
an den letzten Lauf. Die zwanzigste Fortsetzung des QUESTIONS-Nachlaufs (`outputs/2026-08-23_
questions-nachlauf-zwanzigste-fortsetzung.md`) hatte festgestellt, dass alle frage-getriebenen
`[ ]`-Punkte entweder an Raphaels Entscheid (Normkauf SIA 380/1:2016 bzw. SN EN ISO 6946,
Projektdaten-Freigabe, Loop-Takt) oder an sachlichen Sackgassen (Widerspruch im Original selbst,
fehlender Herausgeber/Datum) hängen — ein erneutes Durchgehen derselben sechs Punkte hätte nichts
Neues ergeben.

Die späteren Läufe desselben Tages (Registerpflege 03.16, EN-102-Korrektur, A-P2-Gegenprüfung,
BFE-Wärmebrückenkatalog vollständig) hatten die Blindstelle **A-BLIND** benannt: «keine der sechs
Prüfdimensionen hat je eine Originalquelle geöffnet» — mit dem expliziten Hinweis, dass die
«zwanzig meistzitierten Destillate» als Kandidaten für eine quartalsweise Primärquellen-Verifikation
**noch nicht ausgewählt** sind. Das ist der Anschlusspunkt dieses Laufs.

## Kandidatenauswahl

Backlink-Zählung über alle `[[...]]`-Referenzen in `wiki/*.md` und `destillate/*.md` (Python-Skript,
gegen tatsächlich existierende Dateien in `destillate/` gefiltert). Von den zehn meistzitierten
Destillaten sind sieben bereits `established` und ohne offenen Verifikationspunkt; drei tragen einen
im eigenen Frontmatter benannten offenen Punkt:

1. `sia-2024-nutzungsrandbedingungen-gesundheitsbau` (63 Backlinks) — blockiert: Normtext SIA
   2024:2021 Anhang A/F ist kostenpflichtig, Normkauf-Entscheid Raphael (dieselbe Kategorie wie
   E-R148-1/E-R161-1, nicht eigenmächtig entscheidbar).
2. `waermepumpe-systemvergleich` (45 Backlinks) — der offene Punkt (Grundwasser-JAZ) ist bereits als
   Datenlücke ohne Schweizer Feldstudie dokumentiert (Audit-Korrektur A-P2 02.12); kein neuer
   Rechercheansatz vorhanden.
3. **`erdwaermesonden-bewilligung-zh-sz` (32 Backlinks)** — Frontmatter nennt ausdrücklich: «SZ-
   Kostenpunkt, exakte Verfahrensfrist als verbindliche Norm sowie GSchG/GSchV-Wortlaut weiterhin
   nicht direkt am Bundes-Primärtext verifiziert». Der Bundesrechts-Teil ist mit dem dokumentierten
   Fedlex-Ausweichweg tatsächlich lösbar — anders als die beiden vorigen Kandidaten.

Gewählt: Nr. 3, weil als einziger der drei Kandidaten ein konkreter, ohne Kauf oder fremde
Freigabe gangbarer Rechercheweg vorlag.

## Vorgehen

`fedlex.admin.ch` liefert für GSchG/GSchV bekanntermassen nur die JS-App-Hülle (Rule
`auto-verbesserungen` 260721, Nachtrag Buch-Run 82 in `docs/referenz/fedlex-volltexte.md`). Den dort
dokumentierten Ausweichweg angewendet: Domain `fedlex.data.admin.ch` statt `www`, Format `pdf-a`
statt `html`, mehrere Konsolidierungsdaten per `curl -w "%{content_type} %{size_download}"`
durchprobiert, bis ein echtes PDF (nicht die konstante 77'151/9'148-Byte-App-Hülle) zurückkam.

- **GSchG** (SR 814.20, ELI `1992/1860_1860_1860`): einziger erreichbarer Snapshot war
  `20220101` (555'174 Byte HTML/PDF); spätere Daten (`20240101`, `20260101`) lieferten durchgehend
  die App-Hülle. Art. 19 trägt keine Änderungsfussnote nach der Fassung von 2006/2007 — der Wortlaut
  von 2022 ist damit auch heute aktuell.
- **GSchV** (SR 814.201, ELI `1998/2863_2863_2863`): `20251201` lieferte ein echtes PDF (927'081
  Byte, `pdf-a`), per PyPDF2 ausgelesen (76 Seiten).

## Befund

Art. 19 Abs. 2 GSchG (wörtlich): «In den besonders gefährdeten Bereichen bedürfen die Erstellung und
die Änderung von Bauten und Anlagen sowie Grabungen, Erdbewegungen und ähnliche Arbeiten einer
kantonalen Bewilligung, wenn sie die Gewässer gefährden können.»

Art. 32 Abs. 2 Bst. c GSchV (wörtlich, im Kontext der besonders gefährdeten Bereiche nach Art. 29
GSchV): eine Bewilligung nach Art. 19 Abs. 2 GSchG ist insbesondere erforderlich für
«Grundwassernutzungen (einschliesslich Nutzungen zu Heiz- und Kühlzwecken)».

**Beide Fundstellen bestätigen wörtlich, was das Destillat bereits als Bundesrechtsgrundlage
darstellte** — keine Diskrepanz, kein Korrekturbedarf am Fliesstext. Art. 20/21 GSchV
(Grundwasserschutzzonen/-areale) ebenfalls gelesen, ebenfalls deckungsgleich.

## Eingearbeitet

- `destillate/erdwaermesonden-bewilligung-zh-sz.md`: Frontmatter (`status`, `last_updated`),
  Abschnitt «Offene Punkte» (Verifikationsvermerk mit Wortlaut-Zitaten), Abschnitt «Quellen»
  (Fedlex-ELIs + Konsolidierungsdaten ergänzt).
- `wiki/QUESTIONS.md`: neuer datierter Abschnitt mit Kandidatenauswahl-Begründung und Befund; zwei
  geprüfte, aber bereits ausgeschöpfte Alternativ-Kandidaten benannt, damit ein künftiger Lauf sie
  nicht erneut durchgeht.
- `CHANGELOG.md`: Eintrag mit Anschlusslogik zum Vortag.

**Weiterhin offen, bewusst nicht angefasst:** SZ-Kostenpunkt und exakte Verfahrensfrist — das ist
kantonales Recht Schwyz, nicht Bundesrecht, und damit ausserhalb dessen, was dieser Fedlex-Weg lösen
kann.

## Für den nächsten Lauf

Unter den Destillaten mit ≥ 30 Backlinks sind aktuell keine weiteren unbearbeiteten A-BLIND-
Kandidaten offen, die ohne Normkauf oder Raphaels Entscheid lösbar wären. Ein nächster Lauf sollte
entweder (a) die Backlink-Schwelle absenken (Kandidaten mit 20–29 Backlinks prüfen) oder (b) auf
neu destillierte Quellen warten, die durch häufige Zitierung neu in den A-BLIND-Radius rücken.

`git diff --numstat` nach jedem Schreibvorgang geprüft — alle drei Dateien laufen additiv/
präzisierend, keine fremde Löschung.
