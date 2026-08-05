# Mailbatch 87 — Luecken-Sweep `rj@` Dezember 2025 / Januar 2026

Lauf: `twin-mail-training`, 05.08.2026. Zugriff via MCP-Connector `outlook_email_search`
(Ordner "Sent Items", order oldest) + `read_resource`. Kein Mail-Volltext gehortet — nur
Marker und anonymisierte Schnipsel (Rule KB-Schema).

## Fenster und Bestand

| Fenster | Sent Items | Quelle |
|---|---|---|
| 10.12.–29.12.2025 | **9** (`totalResultCount`) | vollstaendig gelistet |
| 01.01.–15.01.2026 | **31** (`totalResultCount`) | vollstaendig gelistet, erste 25 gesichtet |

Empfehlung aus Batch 86 war «Dezember 2025 + Januar 2026, letzte grosse stichprobenartige Zone
vor dem sequenziell dichten Bereich» (Batches 22/23 lasen dort «20 gesichtet, 5 gelesen»).

## Methodik-Befund: das Fenster war doppelt vorbelegt

Der Abdeckungsabgleich **vor** der Lektuere (Batch-Register zuerst, dann Tages-/Begriffs-Grep,
mit Positivtest und Kontrollbegriff-Gegenprobe gemaess Lehre 260804) zeigte, dass dieses Fenster
nicht nur von den Batches 22/23 stammt, sondern zusaetzlich von **zwei Fidelity-Laeufen**
abgeerntet wurde, die im Batch-Register gar nicht als Mail-Batches erscheinen:

- Fidelity **260723** verbrauchte met-all/Grillmotor (29.12.2025) und den Claudia-Ultra-Ping
  «0798461165 / ruf mich an» (19.12.2025).
- Fidelity **260727d** verbrauchte die CNCEST-Konsumentenreklamation (05./06./09.01.2026), das
  Peter-Weisser-Neujahrs-Mehrprojekt-Update (05.01.2026) und den nackten Sie-Gruss.

**Lehre fuer den naechsten Sweep:** der Gold-Verbrauch der Fidelity-Laeufe steht am **Ende** von
`_INGESTED.md` in eigenen Abschnitten, nicht in der Batch-Tabelle. Wer nur die Tabelle liest,
haelt ein Fenster fuer duenn, das in Wahrheit abgeerntet ist. Der Abgleich muss beide Teile des
Registers auswerten. Positivtest bestanden (`guet.s N|Bonit` > 0), Kontrollbegriff 0 Treffer.

## Gelesene Eigentexte (4 Volltexte)

| Datum | Empfaenger / Rolle | Register | Gewichtung |
|---|---|---|---|
| 08.01.2026 10:59 | Bauherrin Wartstrasse 8, Baumanager im cc | Sie, «Geschaetzte Frau <Nachname>» | authentisch |
| 13.01.2026 12:33 | Konzern-Support, anonymes Ticket-Postfach | Sie, ohne Anrede | authentisch |
| 14.01.2026 15:22 | Reality-Capture-Vermieter | Sie, «Guten Tag Herr <Voller Name>» | authentisch |
| 14.01.2026 18:24 | Reality-Capture-Haendler, anonymes Postfach | Sie, «Guten Tag» | authentisch |

Dazu als Kontext gelesen bzw. ueber Previews gestreift: 13.01. 12:14 und 14.01. 10:48
(Support-Kette), 13.01. 14:52 (Miet-Offertenanfrage, bereits Batch 23), 15.01. (Sofortueberweisung,
kein eigener Marker), 15.12./19.12./21.12.2025 (Baumanager-Du, bereits Batch 22).

**Echo-Pruefung negativ** trotz Claude-Aera-Fenster: dichte Tippfehler in allen vier Rahmen
(«weiervermieten», «Testungsgebrauch», «Budget on», «Programe», «wägt», «Punktwollken»),
Bandbreiten mit Bindestrich statt En-dash («CHF 800 - 1'300.-»), keine polierten Bullet-Bloecke,
kein rohes `**`. Handgetippt, Gold.

## Destillierte Luecken (3 neu, 1 Status-Hebung)

1. **stimme — Der Signaturblock als Satzfortsetzung.** «Jetzt warte ich auf Ihren Anruf**:**»
   + FG + Block, ohne Anrede; der Doppelpunkt zeigt auf die Nummer im Block.
2. **stimme (Status-Hebung) — «Gern/Gerne erwarte ich …».** Zweiter, registerfremder Beleg zum
   Batch-86-Marker (dort Behoerde, hier Gewerbe): «Gern erwarte ich eine Offerte von Ihnen fuer
   folgendes Produkt:». Von Einzelbeleg auf registeruebergreifende Regel gehoben.
3. **arbeitsweise — Eskalation beim namenlosen Support ueber Verfuegbarkeitsmeldungen.** Drei
   Mails in 22 Stunden ohne Vorwurf, ohne «leider», ohne Frist; Druck nur ueber die Taktung.
4. **arbeitsweise — Die Zusatzangabe mitbestellen, die die Offerte vergleichbar macht.** Beim
   Vermieter die A)/B)-Varianten, beim Verkaeufer «Bitte geben Sie den moeglichen Liefertermin ab
   Bestelldatum an.»
5. **haltung — Das Geschaeft der Gegenseite mitrechnen, auch als zahlender Kunde.** «07:00 Uhr.
   So koennten Sie das Geraet an diesem Tag weiervermieten.» Fairness beidseitig, nicht
   rollenabhaengig (Gegenstueck zum Vergabe-Abgebot, Batch 31).
6. **beziehungsregister — Namenloses Firmen-Postfach behaelt FG+Block auch bei der Ein-Satz-Mail.**
   Schaerft QUESTIONS 260727d #3: nicht Fadentiefe und nicht Mailkuerze entscheiden ueber den
   nackten Gruss, sondern **ob am anderen Ende ein Name steht**. Dazu Mapping Miro P. Quenson
   (drei Anredestufen in EINEM Faden, Namensform aus der Signatur des Gegenuebers uebernommen).

**Geprueft und NICHT destilliert** (bereits belegt): Themen-Header als Mikro-Struktur und die
Wärmestufen-Kette der Bauherrin (Batch 22, `arbeitsweise` 749–755 / `beziehungsregister` 726–731);
einfachste-Loesung-Empfehlung samt Firmenvorschlaegen BKP 112/282 und Budgetband «CHF 800–1'300.-»
(Batch 23, `arbeitsweise` 786–790 — die Mail vom 08.01. ist der aeltere Zwilling der bereits
destillierten Mail vom 14.01.); «Fuer Sie zur Infor»-Werkzeug-Selbstauskunft, A)/B)-Offertenvarianten
und die Lernbereitschaft gegenueber dem Lieferanten (Batch 23); «Herr + Vorname» als Sie-Zwischen-
stufe (Batch 25); Service-Satz «Bei Fragen oder Unklarheiten …» (Batch 24).

## Mikro-Metrik (`stilmetrik.py`, 559 W ueber die vier Eigentexte)

- Satzlaenge ø **21.5 W** — hoechster Wert der Sweep-Serie, aber ein **Artefakt zweier Gattungen
  im selben Batch**: Verfahrens-Statusmail und Werkzeug-Selbstauskunft mit 40+-Wort-Saetzen gegen
  Support-Mails aus einem bis fuenf Woertern. Kein Tonlagen-Befund.
- Du-Gross-Quote **0.0** (reiner Sie-Batch) · Tausender-Apostroph 1× · Ellipsen 0 · «%» kam nicht vor.
- Anreden: «Sehr geehrter Herr <Vorname>» 1×, «Geschaetzte Frau <Nachname>» 1×, **«Guten Tag» ohne
  Namen 4×**. Gruesse: «Freundliche Gruesse» 6× / «Beste Gruesse» 1×.

## Ertrag und naechstes Fenster

3 neue Marker + 1 Status-Hebung bei 4 gelesenen Eigentexten — schwaecher als Batch 86 (5 bei 8),
und der Grund ist der Methodik-Befund oben: das Fenster war zweifach vorbelegt. `denken` und
`fachsignatur` gehen leer aus (Beschaffungs- und Abwicklungsfenster, keine Wertentscheide und
keine neue Fachmaterie).

**Naechstes Fenster:** `rj@` **28.02.–05.03.2026** (Restluecke der Batches 32/33, in Batch 86
bereits als zweite Prioritaet benannt), danach **16.–31.01.2026** (Batch 23/24 lasen dort erneut
nur stichprobenartig; die zweite Januarhaelfte ist ungeprueft). **Vor der Lektuere zwingend beide
Teile von `_INGESTED.md` auswerten — Batch-Tabelle UND die Gold-Verbrauch-Abschnitte der
Fidelity-Laeufe.**
