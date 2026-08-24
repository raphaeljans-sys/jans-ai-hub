# Referenz: Bundesrecht-Volltexte ueber Fedlex lesen

Ausgelagert am 07.08.2026 aus `rules/auto-verbesserungen.md` (Eintrag 260721, Grundkontext-
Diaet Runde 3). Die Regel gilt unveraendert, sie wird nur nicht mehr in jede Session geladen —
gebraucht wird sie von den KBs und Loops, die Bundesrecht zitieren (`normen`, `baurecht` fuer
Bundesnormen, `firmengruendung-ch`, `energie`).

## Die Regel

Das Fedlex-Portal liefert **ohne JavaScript keinen Text**. Amtliche Volltexte deshalb immer
ueber das Filestore-Muster beziehen:

```
https://www.fedlex.admin.ch/filestore/fedlex.data.admin.ch/eli/cc/<ELI>/<JJJJMMTT>/de/html/fedlex-data-admin-ch-eli-cc-<ELI-mit-Bindestrichen>-<JJJJMMTT>-de-html.html
```

- Konsolidierungsdatum ist meist der 01.01. des laufenden Jahres; per curl-Statuscode testen.
- Beispiel OR (SR 220): ELI `27/317_321_377`.
- Artikel sind per `<article id="art_NNN">` extrahierbar; Buchstaben-Artikel tragen einen
  Unterstrich, z.B. `art_777_c`.

## Nachtrag 23.08.2026 (Buch-Run 82) — Domain `www.fedlex.admin.ch` liefert bei manchen Erlassen nur noch die App-Huelle

Seit der Fedlex-Neugestaltung (Last-Modified der betroffenen Ressourcen 21.08.2026) liefert die
Domain **`www.fedlex.admin.ch`** das Filestore-Muster oben fuer **manche** Erlasse nur noch als
JavaScript-App-Huelle (konstant 77'151 Byte, textlos, unabhaengig von Datum/Format `de/html` vs.
`de/pdf-a`) — beobachtet an der GSchV (SR 814.201, ELI `1998/2863_2863_2863`) und am GSchG-Haupttext
(SR 814.20, ELI `1992/1860_1860_1860`, dort zusaetzlich nur bis Konsolidierungsdatum 01.01.2022
funktionsfaehig). Andere Erlasse (getestet: OR, SR 220, ELI `27/317_321_377`) liefern ueber dieselbe
`www`-Domain weiterhin den vollen Text — der Fehler ist **erlass-/routenspezifisch**, kein
genereller Fedlex-Ausfall.

**Funktionierender Ausweichweg:** dieselbe Filestore-URL, aber auf der Subdomain
**`fedlex.data.admin.ch`** (ohne `www`) statt `www.fedlex.admin.ch` — identischer Pfad, liefert bei
den betroffenen Erlassen ein echtes PDF (`de/pdf-a`-Suffix bevorzugen, `de/html` liefert bei GSchV/
GSchG ebenfalls nur die App-Huelle). Beispiel (funktioniert): `https://fedlex.data.admin.ch/filestore/
fedlex.data.admin.ch/eli/cc/1998/2863_2863_2863/20251201/de/pdf-a/fedlex-data-admin-ch-eli-cc-1998-
2863_2863_2863-20251201-de-pdf-a.pdf`.

**Konsolidierungsdatum ist nicht frei waehlbar.** Anders als bei der `www`-Route (die bei
funktionierenden Erlassen jedes `01.01.JJJJ` akzeptiert) verlangt die `fedlex.data.admin.ch`-Route
ein Datum, das **exakt** einem tatsaechlichen Snapshot entspricht — ein falsches Datum liefert
still die 77'151-Byte-App-Huelle statt eines Fehlercodes (HTTP 200 in beiden Faellen, nur
`Content-Type`/Groesse unterscheiden). Praktisch: mehrere Kandidatendaten durchprobieren (typisch
der 1. Januar mehrerer Jahre sowie das zuletzt bekannte Aenderungsdatum) und per
`curl -so /dev/null -w "%{content_type} %{size_download}"` verifizieren, dass `application/pdf`
zurueckkommt und die Groesse deutlich über 77'151 Byte liegt, bevor der Volltext als beschafft
gilt. Fuer die GSchV war `20251201` (Stand 1.12.2025) der erste treffende Kandidat.

**Praxisregel:** bei einem GSchV/GSchG-artigen Fehlschlag (App-Huelle statt Text) NICHT vorschnell
als «Anhang nicht online lesbar» verbuchen (das war die urspruengliche Fehleinschaetzung, siehe
`wissen/baurecht/wiki/QUESTIONS.md`, Frage B, Nachtrag Buch-Run 82) — zuerst die `fedlex.data.admin.ch`-
Route mit mehreren Konsolidierungsdaten probieren. Betrifft potenziell jede KB, die Bundesrecht per
Filestore zitiert (`normen`, `baurecht`, `energie`, `firmengruendung-ch`).

## Nachtrag 24.08.2026 (Buch-Run 131/132) — EMRK (SR 0.101) bleibt an Fedlex/coe.int komplett unerreichbar; Ausweichweg ueber oesterreichisches RIS

Anders als bei GSchV/GSchG oben ist die EMRK (SR 0.101, ELI `1974/2151_2151_2151`) **an keiner
Fedlex-Route** abrufbar: zwoelf getestete Konsolidierungsdaten (19740101, 19981101,
20180101-20260101) liefern durchgehend nur die leere App-Huelle, sowohl ueber `www.` als auch
ueber `fedlex.data.admin.ch`. Auch der direkte Weg zum Vertragsdepositar
`echr.coe.int/documents/convention_deu.pdf` scheitert (Cloudflare-Challenge-Seite statt PDF).

**Funktionierender Ausweichweg fuer die EMRK (und vermutlich weitere multilaterale Vertraege mit
deutscher Fassung):** die oesterreichische Bundesrechtssammlung **RIS**
(`ris.bka.gv.at/NormDokument.wxe?Abfrage=Bundesnormen&Gesetzesnummer=<Nr>&Artikel=<N>`) kundmacht
denselben Vertragstext amtlich (fuer die EMRK: Gesetzesnummer `10000308`, BGBl. Nr. 210/1958).
Da die EMRK nur Englisch/Franzoesisch als verbindliche Vertragssprachen kennt (Art. 59 EMRK),
verwenden die deutschsprachigen Signatarstaaten (A/D/CH/FL) dieselbe abgestimmte deutsche
Uebersetzung — der Wortlaut ist zwischen den amtlichen Kundmachungen identisch, auch wenn die
Fundstelle selbst nicht schweizerisch ist. Bei Zitierung klar als solche kennzeichnen (nicht als
SR-Fundstelle ausgeben). Beleg: `wissen/baurecht/raw/260824_amtlich_at_emrk-art7.md`.

## Verwandt

- Rule `normen-referenz.md` — Fundstellenpflicht bei Normen (importiert).
- Rule `auto-verbesserungen.md`, Eintrag 260721 — verweist hierher.
