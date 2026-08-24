# QUESTIONS-Abarbeitung 24.08.2026 (dreizehnter Lauf) — Session-Zugriffslücke, ein Fahrplan-Nachtrag, Sättigung 13. Mal bestätigt

## Auftrag

Fortsetzung der Daueraufgabe: offene Fragen in `wiki/QUESTIONS.md` abarbeiten, Fundstelle je
Aussage mit Norm/Ausgabe/Ziffer, nur `established` zitierfähig. CHANGELOG und Report des
zwölften Laufs (`outputs/2026-08-24_questions-abarbeitung-zwoelfter-lauf.md`) zuerst gelesen.

## Session-Zugriffslücke

Beim Start dieser Session war `/Volumes/daten` nicht gemountet (Hook-Warnung). Zusätzlich war
`node` in dieser Session nicht im `PATH` — weder eine System-Installation noch `nvm` gefunden —,
der M365-Graph-Connector (`connectors/m365-graph.mjs`) war damit nicht aufrufbar. Der lokal
gemountete SharePoint-Pfad `~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/`
wurde geprüft (`find -iname "*Recht*Norm*"`, `-maxdepth 2`) und enthält keinen
`PL - 02_Recht_Norm`-Ordner — eine andere Bibliothek als die Norm-Ablage.

**Folge:** keine neuen Norm-Originale lesbar in dieser Session, keine primärquellenbasierte
Neu-Destillation oder Retro-Verifikation möglich. `wissen/normen` selbst ist normaler
Git-Repo-Inhalt (kein NAS-Symlink) und blieb uneingeschränkt les-/schreibbar; `WebSearch`/
`WebFetch` auf öffentliche, unauthentifizierte Quellen (Shop-Produktseiten, Behördenseiten)
funktionierten normal.

## Vorgehen

Da echter Primärquellen-Zugriff (SharePoint-PDFs) fehlte, wurde bewusst **nicht** die volle
30er-Liste erneut durchgesehen (das wäre die 13. reine Wiederholung derselben Feststellung
gewesen), sondern gezielt zwei Kandidaten geprüft, die öffentlich ohne Kauf/Login verifizierbar
sind — dem Muster des elften/zwölften Laufs folgend («prüfen, ob zwischenzeitlich extern gelöst»,
nicht «alles neu lesen»):

1. **SN 641 400** (Z. 5306, Bring-Schuld aus `baurecht`): eigene Anläufe
   `mobilityplatform.ch/de/vss-shop/product/SN-641400` und `.../sn-641400.html` — beide HTTP 404.
   Beim Lesen des vollständigen Eintrags zeigte sich, dass dieselben und weitere URL-Varianten
   (`641-400`, `00641400`) sowie drei WebSearch-Anläufe bereits am 23./24.08.2026 **vierfach**
   unabhängig dokumentiert sind, inklusive der Erkenntnis, dass die shop-eigene Suche eine
   JS-SPA ohne statische API ist, und der konkreten Handlungsempfehlung (VSS-Kundendienst,
   info@vss.ch, Tel. +41 44 269 40 20). Ein fünfter Anlauf auf denselben Sackgassen hätte keinen
   Mehrwert gehabt — **keine QUESTIONS-Änderung**, um das Dokument nicht mit reiner Redundanz zu
   belasten.
2. **BSV 2026** (Z. 4162, Monitoring-Eintrag «BSV 2026 überwachen»): `bsvonline.ch/de/aktuell/
   information-bsv-2026` (WebFetch, Abruf 24.08.2026) bestätigt den unveränderten Status
   (weiterhin nicht in Kraft; «Inkrafttreten neue Brandschutzvorschriften jetzt für 2027
   vorgesehen», Grund: Detailabstimmungsbedarf zwischen Vorschriftenteilen), liefert aber einen
   bisher nicht dokumentierten, präziseren Fahrplan: technische Vernehmlassung September
   2025–Januar 2026 (abgeschlossen), Schulungsstart Dezember 2025, **politische Vernehmlassung
   August–November 2026** (läuft ab diesem Monat), Genehmigung IOTH-Plenarversammlung März 2027.
   Das ist eine echte, kleine Aktualisierung (genauerer Zeitrahmen, kein Statuswechsel) — als
   Nachtrag unter `wiki/QUESTIONS.md` Z. 4162 eingetragen.

## Ergebnis

Offene Checkboxen unverändert **30** (`grep -c "^\- \[ \]"`, identisch zum zwölften Lauf).
Kein neuer, mit Primärquellenlektüre lösbarer Befund möglich — dieser Lauf konnte aus
Umgebungsgründen gar keine Primärquellen lesen. Die dreizehnte Bestätigung derselben
Kategorisierung wie in den Läufen 1–12: Bring-Schuld/Kaufentscheid Raphael, Struktur-Entscheide
(destruktive Merges), genuine Quell-Ambiguitäten, Betriebs-/Methodennotizen.

## Eskalationsempfehlung an Raphael

Unverändert (SIA-Shop-Käufe SIA 380/1, 385/1, 266/1, 118:2013, 181:2020, 491, SN EN 12193;
Freigabe der vier destruktiven VKF-Duplikat-Merges; alternativ Abdeckungsrichtung
VKF-Delta-Destillate statt weiterer QUESTIONS-Läufe). **Neu:** ein Lauf ohne gemountetes NAS
und ohne funktionierenden `node`/M365-Zugang kann für diese KB nur noch Buchhaltungspflege
und öffentliche Web-Recherche leisten, keine neue Primärquellen-Destillation — sinnvoll wäre,
den Nacht-Loop-Startcheck um eine `node`-/Connector-Erreichbarkeitsprüfung zu ergänzen, damit
ein Lauf das sofort erkennt statt stillschweigend nur Sekundärquellen zu bearbeiten.

## Eingearbeitet

- `wissen/normen/CHANGELOG.md`: dieser Lauf vorangestellt.
- `wiki/QUESTIONS.md`: ein Nachtrag (Z. 4162, BSV-2026-Fahrplan, sourced auf bsvonline.ch),
  keine Checkbox-Schliessung.

## Diff-Gegenprobe (`git diff --numstat`)

Siehe Bash-Ausgabe im Anschluss an diesen Lauf.
