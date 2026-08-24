---
titel: "KR-Geschäft 6000 — Planungs- und Baugesetz (PBG), Änderung, Baulinien — amtlicher Verfahrensstand"
kuerzel: "KR-Geschäft 6000"
quelle: "Kantonsrat Zürich, Geschäftsverwaltungssystem (Web-Service), veröffentlicht über opendata.swiss"
dataset: "opendata.swiss/de/dataset/organisation-und-geschafte-des-zurcher-kantonsrats (Organisation Fachstelle OGD Kanton Zürich)"
url: "https://parlzhcdws.cmicloud.ch/parlzh5/cdws/Index/GESCHAEFT/searchdetails?q=krnr%20all%20%226000%22&l=de-CH&s=1&m=5"
format: "XML"
beschafft-am: "2026-08-24"
beschafft-fuer: "wissen/baurecht/wiki/baulinien-und-abstandslinien.md — Primärquellen-Nachprüfung des von Buch-Run 135 nur sekundär (Aggregator inzh.ch) belegten Fassungsstand-Wachpostens zur PBG-Teilrevision Baulinien"
methode: "Die offizielle HTML-Seite kantonsrat.zh.ch/geschaefte/geschaeft/ ist clientseitig gerendert und per WebFetch nicht auslesbar. opendata.swiss (CKAN-API, package_show ueber den Datensatznamen 'organisation-und-geschafte-des-zurcher-kantonsrats') listet als Ressource den zugrunde liegenden Web-Service des Geschaeftsverwaltungssystems (Anbieter cmicloud.ch), der servergerendertes XML liefert und per curl direkt abrufbar ist. Abfrage mit Filter krnr=6000 (statt der Beispiel-Abfrage 'krnr any *') liefert genau einen Treffer."
status: "amtlich, direkt abgerufen (kein Aggregator)"
---

# KR-Geschäft 6000 — Planungs- und Baugesetz (PBG), Änderung, Baulinien (amtlicher Auszug)

Wörtliche Wiedergabe der relevanten Felder aus der XML-Antwort des offiziellen Web-Service
(Tags gekürzt auf die inhaltstragenden Elemente).

```xml
<KRNr>6000</KRNr>
<VorlageNr>6000</VorlageNr>
<Titel>Planungs- und Baugesetz (PBG), Änderung, Baulinien</Titel>
<Geschaeftsart>Vorlage</Geschaeftsart>
<BehandelndeKommission>Kommission für Planung und Bau</BehandelndeKommission>
<BehandelndeKommissionKurzname>KPB</BehandelndeKommissionKurzname>
<Direktion>Baudirektion</Direktion>
<DirektionKurzname>BD</DirektionKurzname>
<Beginn><Text>13.01.2025</Text></Beginn>
```

## Ablaufschritte (chronologisch, alle Status laut Web-Service "Abgeschlossen")

1. **Antrag Regierungsrat** — 18.12.2024.
2. **Antrag Kommission** — 02.12.2025. StatusText (Kurzmitteilung KPB, Auszug):
   «Die Kommission für Planung und Bau (KPB) beantragt dem Kantonsrat mit 10 zu 5 Stimmen,
   die Änderung des Planungs- und Baugesetzes (PBG) betreffend «Baulinien» zu verabschieden.
   Die Kommissionsmehrheit unterstützt den Antrag des Regierungsrates, der die zulässigen
   Masse von vorspringenden Gebäudeteilen im Baulinienbereich von der Allgemeinen
   Bauverordnung (ABV) auf die Gesetzesstufe überführen und neu regeln will. […] Die
   Kommissionsminderheit (SP, Grüne) fordert, dass hervorspringende Gebäudeteile im
   Interesse des öffentlichen Raumes höchstens auf einem Drittel der Fassadenlänge erlaubt
   sein sollen, und möchte den Gemeinden die Möglichkeit abweichender Regelungen einräumen.»
3. **1. Lesung** — abgeschlossen 15.06.2026. StatusText (Auszug):
   «Der Kantonsrat ist in erster Lesung mit 115 zu 59 Stimmen auf eine Änderung des
   Planungs- und Baugesetzes (PBG) betreffend «Baulinien» eingetreten. Der Rat ist in der
   Beratung allen Anträgen der vorberatenden Kommission gefolgt. Das Geschäft geht nun an
   die Redaktionskommission zur Antragstellung für die zweite Lesung.»
4. **Antrag Kommission (Redaktionskommission)** — 02.07.2026. StatusText: «Antrag REDKO»
   (Kurztext, ohne weitere Ausführung im abgerufenen Feld).

**Keine weiteren Ablaufschritte im Datensatz** (kein Eintrag zu 2. Lesung, Schlussabstimmung,
Referendumsfrist, Publikation im Amtsblatt oder Inkraftsetzung, Stand Abruf 24.08.2026).

## Abgleich mit der Sekundärquelle

Deckungsgleich mit `raw/260824_sekundaer_zh_kantonsrat-geschaeft-6000-baulinien.md`
(Aggregator inzh.ch) in allen vier Verfahrensschritten, Daten und Abstimmungszahlen. Die
Sekundärquelle ist damit nachträglich amtlich bestätigt; dieser Datensatz ersetzt sie als
massgebliche Quelle für künftige Zitate.
