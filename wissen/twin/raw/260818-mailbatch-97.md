# Batch 97 (18.08.2026) — Doppelabgleich `Drafts` × Sent Items, Fenster `rj@` 17.08.2026

Fortsetzung der in Batch 96 begonnenen Entwurfs-Arbeit. Der Entwurfsordner zaehlt jetzt
**109 Eintraege** (17.08.: 103) — sechs neue seit dem letzten Lauf, zwei davon mit
Drittempfaengern und **beide mit vorhandenem Sent Item**. Damit liegen erstmals zwei
Korrektur-Paare desselben Tages nebeneinander.

**Gelesen:** 5 Volltexte (2 Entwuerfe + 3 gesendete Fassungen).
**Gewichtung:** 1 `korrektur-delta` (Hub→Raphael) · 1 `korrektur-delta` (Claude-Paste→Raphael)
· 3 Gold · 1 neuer Echo-Beleg.

## Paar A — Tuerbuch-Termin an den Du-Fachplaner, 78 Minuten

| | Entwurf 06:48 (Apple Mail = Hub) | Gesendet 08:06 (Outlook = Raphael) |
|---|---|---|
| Anrede | «Geschaetzter Levi» | «Geschaetzter Levi» — **unveraendert** |
| Kern | «Von Eurer Seite habe ich dazu noch keine Bestaetigung.» | «Nach Ruecksprache mit Lior Merci …» |
| Schluss | «Damit ist die Runde beisammen und haengt nur noch an Euch.» | **entfaellt ersatzlos** |
| Bitte | «Gib mir bitte kurz Bescheid, ob Ihr dabei seid.» | «Geht Dir diesen Termin? Koenntest Du uns einen … vorschlagen und uns einladen?» |
| Optionen | im Fliesstext, in Klammern | eigener abgesetzter Block, untereinander |
| Teilnehmer | — | **Name, Organisation und Mailadresse je Person** |
| Beilagen | keine | **SharePoint-Link UND 8 Anhaenge** |
| Gruss | «Freundliche Gruesse / Raphael Jans» + voller Block | «**Lieber Gruss, Raphael**», kein Block |

**Der Kernbefund: der Zwilling baut Druck auf, Raphael baut eine Bruecke.** Beide Fassungen
wollen dasselbe (Termin bestaetigen lassen), aber der Zwilling begruendet die Bitte mit dem
**Ausbleiben** der Gegenleistung und stellt fest, woran es haengt. Raphael streicht den Vorwurf
vollstaendig und ersetzt ihn durch eine **Legitimation** («nach Ruecksprache mit …»). Danach gibt
er die Terminhoheit ab, statt sie zu behalten: drei Fragen statt einer Aufforderung.

Handschrift-Belege in der gesendeten Fassung: «**worden** wir gerne» (wuerden), «Geht Dir
**diesen** Termin» (Kasus-Slip).

## Paar B — Amtsauskunft ans UGZ, 6 Minuten (der teuerste Fund des Laufs)

Der Entwurf 14:04 kommt ueber **Exchange** und traegt Raphaels Outlook-Signatur — nach der
Kanal-Regel der vierzehnten Falle waere er **Gold**. Er ist es nicht. Sein Body traegt auf jedem
Absatz

```
class="font-claude-response-body break-words whitespace-normal"
```

Das ist die Antwort-Klasse der Claude-Weboberflaeche, aus dem Chatfenster in Outlook einkopiert.
**Zweiter Beleg der fuenfzehnten Falle, neues Token, erstmals mit Entwurfs-Paar.**

Das Delta, sechs Minuten spaeter gesendet (aus Outlook Mobile,
`ms-outlook-mobile-body-separator-line`):

| | Claude-Paste 14:04 | Gesendet 14:10 |
|---|---|---|
| Betreff | **keiner** | «B26-00705.01_Akutspital_Innerer_Umbau/Abaenderungseingabe B26-00705.02» |
| Bezug | «im **oben genannten Projekt**:» | «im **Projekt B26-00705.01 Akutspital Innerer Umbau**.» |
| Rest | vier Saetze | **wortgleich uebernommen** |

**Vier von fuenf Saetzen ueberleben unveraendert — geaendert wird genau die Selbstreferenz ohne
Anker.** «Oben genannt» zeigte auf einen Betreff, den der Entwurf gar nicht hatte. Raphael setzt
die Projektnummer aus und macht den Satz alleinstehend lesbar. Die Mail geht an ein Amt (UGZ) und
wird dort abgelegt: sie muss ohne ihren Kontext gelten. Deckt sich mit Rule
`identifikatoren-verifizieren`.

## Gold desselben Tages — drei Anreden fuer EINEN Kontakt in sieben Stunden

Levi Hiltmann, per Du (Rule `anrede-kontakte`, nachgetragen 17.08.), bekommt am 17.08.:

| Zeit | Anrede | Gruss | Mailtyp |
|---|---|---|---|
| 08:06 | «Geschaetzter Levi» | «Lieber Gruss, Raphael» | Terminvorschlag, 3 Empfaenger |
| 08:11 | «Geschaetzter Levi, **lieber Lior**» | «Freundliche Gruesse» + voller Block | Dokumentenuebergabe, 2 An + 3 Cc |
| 15:02 | «**Lieber Levi,**» | «Lieber Gruss Raphael» | Fwd, ein Empfaenger, Bezug aufs Telefonat |

**Der Gruss folgt nicht der Person, sondern dem Mailtyp und der Verteilerbreite.** Fuenf Minuten
zwischen 08:06 und 08:11, gleicher Hauptadressat, gleiches Thema — und der Gruss faellt von
«Lieber Gruss» auf «Freundliche Gruesse» + Signaturblock zurueck, sobald ein Cc-Verteiler
mitliest. Sauberer kontrollierter Vergleich, kein Interpretationsspielraum.

Weitere Gold-Marker aus 08:11:
- **«_ » als Aufzaehlungszeichen** vor Dateinamen (dritter Beleg, nach 08.08.)
- Anhaenge **namentlich im Fliesstext** mit voller Endung, zusaetzlich zum Anhang selbst
- **eingeschobener Vokativ** aus der Gruppe heraus: «bitte ich Dich, **Levi**, im folgenden Ordner …»
- Fett-Auszeichnung endet mitten im Wort («15:00 - 15:30 Uh**r**») = getippte Fluechtigkeit
- Datum kurz, zweistelliges Jahr: «19.08.26»

## Mikro-Metrik (`stilmetrik.py`, Gold 235 W aus 5 Eigentexten, Zwilling 150 W aus 2 Entwuerfen)

| | Gold (Raphael) | Zwilling |
|---|---|---|
| Du-Gross-Quote | 1.0 | 1.0 |
| Tausender-Apostroph | 0 | 0 |
| Ellipsen /1000 W | 0 | 0 |
| Satzlaenge ø | 16.8 W | 15.0 W |
| Gruesse | «Freundliche Gruesse» 2× · **«Lieber Gruss» 2×** | «Freundliche Gruesse» 2× |

**Belastbar ist die Gruss-Verteilung, nicht die Satzlaenge** (Fragmentproblem [[QUESTIONS]]
260814 #3 wirkt weiter). Die Du-Gross-Quote liegt in diesem Fenster beidseits bei 1.0 — der
Zwilling liegt hier also richtig; der Batch-96-Befund (0.818 gegen 1.0) ist damit **nicht**
bestaetigt und bleibt Einzelbeleg. Sperrlisten-Disziplin: weiterhin kein Detektor.
