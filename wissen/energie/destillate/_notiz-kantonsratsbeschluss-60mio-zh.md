---
notiz-typ: Recherche-Befund fuer Hauptagent (KEINE eigenstaendige Destillat-Datei, nicht in INDEX.md
  aufnehmen; Hauptagent soll die Kerninfo in destillate/foerderprogramm-energie-zh-2026.md
  nachtragen und diese Datei danach loeschen/archivieren)
quelle-primaer: parlzhcdws.cmicloud.ch (offizieller CDWS/XML-Webservice des Kantonsrats ZH,
  registriert auf opendata.swiss als "Organisation und Geschaefte des Zuercher Kantonsrats",
  https://opendata.swiss/de/dataset/organisation-und-geschafte-des-zurcher-kantonsrats) —
  live abgefragt am 2026-07-20
datenstand: 2026-07-20
---

# Notiz — Kantonsratsbeschluss zum 60-Mio-Anschlusskredit Foerderprogramm Energie ZH

## Verdikt

**Noch NICHT beschlossen.** Das Geschaeft ist identifiziert, hat die Kommissionsberatung
(KEVU) mit einstimmiger Zustimmungsempfehlung durchlaufen, liegt aber **weiterhin beim
Kantonsrats-Plenum pendent** — bislang ohne Schlussabstimmung. Kein Negativbefund im Sinn
von "nichts gefunden", sondern ein **klar belegter Zwischenstand**.

## Der Weg zum Befund

`kantonsrat.zh.ch` ist tatsaechlich eine JS-SPA (Nuxt) ohne serverseitig gerenderte
Trefferliste — WebFetch bekommt nur Navigations-Markup. ABER: der offizielle Datensatz
"Organisation und Geschaefte des Zuercher Kantonsrats" auf opendata.swiss verlinkt den
zugrundeliegenden **CDWS-Webservice** (CMI AG, dieselbe Software wie Curia Vista u.a.
Kantonsparlamente), der eine XML-Suche per CQL-Query erlaubt — genau die Datenquelle, aus
der die SPA ihre Inhalte zieht. Damit laesst sich das Geschaefts-Register direkt und
strukturiert abfragen, ganz ohne Headless-Browser.

Beispiel-Query (funktioniert ohne Auth):
```
https://parlzhcdws.cmicloud.ch/parlzh5/cdws/Index/GESCHAEFT/searchdetails?q=krnr%20any%206064&l=de-CH&s=1&m=5
```

## Das Geschaeft

- **KRNr / VorlageNr 6064**, Titel: **"Rahmenkredit 2026-2029 Subventionen gestuetzt auf
  § 16 Energiegesetz"** (NICHT woertlich "Foerderprogramm Energie 2027" — deshalb liefen
  reine Titel-Websuchen mit diesem Begriff ins Leere).
- Direktion: Baudirektion (BD); zustaendige Kommission: **KEVU** (Kommission fuer Energie,
  Verkehr und Umwelt).
- **Ablaufschritt 1 — Antrag Regierungsrat**, Sitzungsdatum **10.12.2025**: Vorlage 6064
  eingereicht (Dokument "Vorlage_6064_Rahmenkredit_2026-2029_Subventionen_16_Energiegesetz.pdf"
  im System hinterlegt). Deckt sich mit RRB Nr. 1306/2025 und der oeffentlichen
  Medienmitteilung des Regierungsrats vom 15.01.2026 (dort: 60 Mio. CHF kantonale Mittel,
  Laufzeit Mitte 2026 bis Ende 2029, bis zu 286 Mio. CHF inkl. Bundesmitteln/CO2-Abgabe).
- **Ablaufschritt 2 — Antrag Kommission (KEVU)**, Sitzungsdatum **07.05.2026**, Volltext im
  System: *"Rahmenkredit 2026–2029 fuer Energie-Subventionen soll bewilligt werden. Die
  Kommission fuer Energie, Verkehr und Umwelt (KEVU) beantragt dem Kantonsrat EINSTIMMIG,
  den «Rahmenkredit 2026–2029 Subventionen gestuetzt auf § 16 Energiegesetz» zu bewilligen.
  Mit der Erneuerung des Rahmenkredits soll das bestehende Foerderprogramm im Gebaeudebereich
  ... fortgefuehrt werden."*
- **PendentBeiNeu (aktueller Stand): "Kantonsrat"** — d.h. das Geschaeft wartet auf die
  Beratung/Schlussabstimmung im Plenum. Kein dritter Ablaufschritt (z.B. "Beschluss
  Kantonsrat"/"Schlussabstimmung") im Datensatz vorhanden.

## Cross-Check gegen die Sessionsagenden (Gegenprobe)

Zusaetzlich das Traktanden-Register aller Kantonsrats-Plenarsitzungen vom 04.05.2026 bis
06.07.2026 abgefragt (Sitzungen 153.–163. KR-Sitzung, letzte vor der Sommerpause; 244
Traktanden total). **Keine einzige Traktandenzeile enthaelt KRNr 6064, "Energiegesetz",
"§ 16" oder "Rahmenkredit 2026"** — das Geschaeft wurde in keiner dieser Sitzungen
traktandiert. Naechste Plenarsitzung nach der Sommerpause: **164. KR-Sitzung am 17.08.2026**
(zum Abfragezeitpunkt noch ohne Traktandenliste im System, da diese typischerweise erst
kurz vor der Sitzung publiziert wird).

## Wichtiger Nebenbefund (Verwechslungsgefahr!)

Ein in der ersten Suchrunde gefundenes PDF, betitelt **"Foerderprogramm Energie 2027–2030;
Verpflichtungskredit"** (gehostet bei aihk.ch, Datum 02.04.2026), ist **NICHT der Kanton
Zuerich**, sondern der **Kanton Aargau** (AIHK = Aargauische Industrie- und Handelskammer;
Dokument spricht explizit vom "Grossen Rat" und "Kanton Aargau", Betrag 127,8 Mio. CHF
brutto / 58,33 Mio. CHF kantonale Mittel). Bei oberflaechlicher Suche (Titel fast identisch
zum ZH-Sachverhalt) besteht hohe Verwechslungsgefahr — das Aargauer Dokument darf NICHT als
ZH-Quelle verwendet werden.

## Was der Hauptagent in destillate/foerderprogramm-energie-zh-2026.md ergaenzen sollte

Im Frontmatter/Abschnitt zur Befristung/zum Anschlusskredit ergaenzen (sinngemaess):

> Der Anschlusskredit ("Rahmenkredit 2026–2029 Subventionen gestuetzt auf § 16
> Energiegesetz", KRNr/Vorlage 6064) wurde vom Regierungsrat am 10.12.2025 beantragt
> (RRB Nr. 1306/2025, oeffentlich kommuniziert 15.01.2026: 60 Mio. CHF kantonale Mittel,
> bis zu 286 Mio. CHF inkl. Bund/CO2-Abgabe, Laufzeit Mitte 2026–Ende 2029). Die
> Kommission fuer Energie, Verkehr und Umwelt (KEVU) hat die Vorlage am 07.05.2026
> EINSTIMMIG zur Annahme empfohlen. Die Schlussabstimmung im Kantonsratsplenum steht
> per 20.07.2026 noch aus (naechste moegliche Sitzung nach der Sommerpause: 17.08.2026).
> Quelle: CDWS-Geschaeftsdatenbank Kantonsrat ZH (parlzhcdws.cmicloud.ch), live abgefragt
> 20.07.2026; zh.ch-Medienmitteilung 15.01.2026.

Bei Gelegenheit (naechster Loop-Lauf) mit derselben Query pruefen, ob KRNr 6064 inzwischen
einen dritten Ablaufschritt (Schlussabstimmung/Beschluss) hat:
`https://parlzhcdws.cmicloud.ch/parlzh5/cdws/Index/GESCHAEFT/searchdetails?q=krnr%20any%206064&l=de-CH&s=1&m=5`
