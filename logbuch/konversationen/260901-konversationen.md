# Konversations-Destillat 01.09.2026

**Abdeckung:** MacBook Pro 23 Sessions · Mac Mini 12 Sessions · Cloud/Dispatch 4 Dispatch-Protokolle, 0 remote-tasks — Fenster 26 h (31.08.2026 04:19 bis 01.09.2026 06:19 CEST). Beide Extrakte liefen sauber, `ssh mini` trug (rc 0). Das NAS war beim Sessionstart nicht gemountet und wurde mit `ensure-nas-mounted.sh` geheilt (rc 0); es fiel danach einmal mitten im Lauf erneut weg.

**Zwei echte Gespräche im Fenster, beide am Montagvormittag des 31.08. auf dem Mac Mini** und beide ausserhalb der Bauprojekte: eine Werkzeugfrage zu Outlook und ein Kontakt, der in den M365-Tenant sollte. Alles Übrige ist Maschinerie.

Gegengezählt: Im MacBook-Digest fünf «RAPHAEL:»-Zeilen, davon **keine einzige** echte Eingabe — zwei sind Fensterproben («Antworte nur mit: OK»), drei sind Stop-Hook-Rückmeldungen des Umlaut-Wächters. Im Mini-Digest sieben Zeilen, davon fünf wortgleiche Lane- und Nachtschicht-Auftragstexte und **zwei** echte Eingaben Raphaels (Blöcke 01 und 02), belegt an den Zeitstempeln der Session-Journale (04:14:46Z und 09:54:23Z).

Der operativ wichtigste Punkt des Tages stammt nicht aus einem Gespräch, sondern aus dem Hub-Chef-Lauf: die Türbeschläge-Runde ist verschoben, und der Registerpunkt dazu ist überholt (Block 03).

---

## 01 «warum werden mir diese komischen E-Mail-Adressen angezeigt» (Mac Mini, 31.08. 06:14)

**Kern.** Raphael fragte, warum in der Outlook-Vorschau kryptische Adressen der Form `leave-<zufallscode>@leave.<domain>` erscheinen. Antwort: Das sind List-Unsubscribe-Adressen von Newslettern (im Beleg Sunrise). Beim Klick auf «Abmelden» verschickt Outlook im Hintergrund eine leere Mail dorthin, und die AutoVervollständigen-Liste merkt sich jede Adresse, an die je gesendet wurde. Tippt man «le» für Lena oder Levi, matchen die `leave-`-Einträge zuerst.

**Offene Punkte und Folgeaktionen.** Der Weg zum Aufräumen liegt bei Raphael: im An- oder Cc-Feld den Anfang tippen, mit der Maus über den Eintrag fahren, das kleine X rechts klicken. Eine Aktion durch Claude war weder verlangt noch nötig.

**Radar-relevant: nein.** Werkzeugfrage, vollständig beantwortet, keine Frist, kein Betrag, keine Zusage.

---

## 02 Kontakt Nicklas Rothe in den M365-Tenant (Mac Mini, 31.08. 11:54)

**Kern.** Raphael sandte den Signaturblock von **Nicklas Rothe, Projektleiter, Schreinermanufaktur** (`nr@schreinermanufaktur.ch`, Tel. +41 34 497 72 97, Mobil +41 76 516 34 77, `www.schreinermanufaktur.ch` und `www.emmekueche.ch`) mit dem Auftrag, ihn unter `rj@raphaeljans.ch` abzulegen und sicherzustellen, dass er im Programm Kontakte im Adressbuch dieses Kontos erscheint. Beides ist erledigt und rückverifiziert: Der Kontakt liegt im Exchange-Konto «rj I JANS» und synchronisiert von dort in den Tenant und nach Outlook. Die zweite Website steht in der Notiz, weil Exchange-Kontakte nur eine URL tragen.

**Zwei Wegbefunde, beide im Wege-Register `connectors/WEGE.md` nachgetragen.** Erstens ist der direkte Graph-Weg in den Tenant blockiert: Die M365-App hat keine Contacts-Berechtigung und antwortet mit 403; für einen künftigen Direktweg wäre in Entra `Contacts.ReadWrite` (Application) zu ergänzen. Zweitens verwirft AppleScript unter macOS Tahoe die Telefonnummern bei Exchange-Kontakten still; sie wurden über das native Contacts-Framework nachgetragen.

**Bezug zum Bestand.** Rothe ist derselbe Ansprechpartner, der im Register die Terminkette der Therapieküche KISPI führt (Planfreigabe Werkplan **02.09.2026**, Produktionsstart 07.09.). Der Kontakt ist damit kein Neuzugang aus dem Nichts, sondern die Stammdatenpflege zu einem laufenden Vorgang. Ein Anrede-Register für ihn ist **nicht** belegt; in `rules/anrede-kontakte.md` steht er nicht, es gilt also der Default Sie.

**Radar-relevant: nein** für den Kontakt selbst. Die Entra-Berechtigung ist ein Nice-to-have ohne Frist und ausdrücklich als nicht nötig bezeichnet.

---

## 03 Die Türbeschläge-Runde steht neu am Mittwoch 02.09. um 09:00 — der Registerpunkt ist überholt

**Kern.** Der Logbuch-Radar führte die Runde um 06:5x noch als «heute 31.08. 16:00, zwei Absagen» und setzte dazu eine Registerzeile mit Tagesfrist 31.08. 16:00. Der Hub-Chef-Lauf um 09:0x las danach aus dem Postfach: **L. Hiltmann sagt um 08:18 für den Montag ab** und bietet nur Dienstag 09:00 bis 11:00; **um 08:20 verschickt Raphael die Einladung neu auf Mittwoch 02.09.2026 09:00** (Zusagen Würsch, Bajrami, Merci «mit Vorbehalt»; Spörri abgelehnt). Hiltmann hat auf den neuen Termin nicht geantwortet.

**Eigene Gegenprüfung in diesem Lauf.** Im Outlook-Kalender von `rj@raphaeljans.ch` steht der Termin «Türbeschläge» am **02.09.2026, 07:00 bis 07:30 UTC, also 09:00 bis 09:30 CEST**, Organisator rj@, Teams, nicht abgesagt, mit denselben sechs Eingeladenen (Merci, Spörri, Bajrami, Hiltmann, Spahic, Würsch). Der Befund des Hub-Chefs ist damit bestätigt, nicht nur zitiert.

**Warum das wiegt.** Der **Produktionsstart Türen ist heute, 01.09.** Die Runde liegt jetzt einen Tag danach. Der Anlass der Sitzung waren die sieben Türmatrix-Korrekturen von L. Merci vom 28.08., die vor dem Produktionsstart eingearbeitet sein müssen, dazu der offene Tür-ID-Restpunkt (01.2.3014.01 und 01.2.3017.01). Mercis Angebot vom 31.08. 06:12, vorab per Mail zur Verfügung zu stehen, ist damit nicht erledigt, sondern wichtiger geworden: Es ist der einzige Weg, die Korrekturen noch vor der Produktion schriftlich zu bereinigen.

**Radar-relevant: ja.** Registerzeile vom 31.08. 06:5x trägt eine abgelaufene Tagesfrist und einen überholten Termin. Nachtrag unten gesetzt. Betrifft die Registerpunkte «Türbeschläge» (Zeilen 70 und 4722 der Fassung vom 01.09.) sowie die KISPI-Lose 231.10 und 274.01.

---

## 04 Der P1-Sync-Befund hat seinen Charakter geändert: die GitHub-Seite schreibt nicht mehr

**Kern.** Die seit dem 29.08. 22:04 laufende Divergenz zwischen NAS-Repo und GitHub ist im Fenster von vier unabhängigen Läufen nachgemessen worden: 484/267 (31.08. 20:2x, Tenant-Hygiene), 503/267 (01.09. 00:0x, Wissens-Chef Run 49), 510/267 (01:00, Vollgas-Chef-Radar), 525/267 (04:1x, Twin-Mail-Training), 530/267 (05:1x, Planungsgrundlagen-Wartung 03).

**Das Neue ist nicht der Zuwachs, sondern der Stillstand der Gegenseite.** `github/main` steht unverändert auf `66df04125` vom **31.08. 06:12** — seit rund 19 Stunden kein Push. Die SSD-Klone beider Stationen tragen denselben Commit mit sauberem Arbeitsbaum. Damit ist die bisherige Entwarnung «beide Seiten schreiben weiter, kein Datenverlust» in ihrer zweiten Hälfte hinfällig: **Die gesamte Wissensarbeit seit dem 31.08. 06:12 existiert an genau einem Ort**, darunter `energie` Run 171, `baurecht` Buch-Run 141, `wissens-chef` Run 49, der Nachtschicht-Lauf 23:30 und der Wartungsreport `wissen/planungsgrundlagen/outputs/2026-09-01_wartung-03.md`. Der Mini-Klon ist dabei nicht blockiert, sondern fällt still: Er kann bei auseinanderlaufenden Historien nicht fast-forwarden und meldet das niemandem.

**Offene Punkte.** Ursache und Entscheidbedarf stehen unverändert als Befund **B6** in `docs/konzepte/260830-Laufzeitschicht-Umbau/SPEC.md`: `dispatch-run.sh` pinnt das Arbeitsverzeichnis auf den SSD-Klon der jeweiligen Station, während Rule `sync-kanonische-quelle` geteilte Inhalte nur auf dem NAS-Pfad erlaubt. Kein Lauf hat die Divergenz selbst aufgelöst, alle mit derselben Begründung (Rule `interaktive-eingriffe` Punkt 3: unbeaufsichtigter Lauf, fremde unbestätigte Arbeit in genau den Konfliktdateien).

**Radar-relevant: ja, aber ohne neue Zeile** — der Vorgang ist als P1 vierfach registriert und mit dem Nachtrag von heute 05:1x auf dem aktuellen Stand. Eine weitere Zeile würde nur doppeln. Der Punkt gehört ins Briefing, nicht ins Register.

---

## 05 Der NAS-Mount ist die zweitgrösste Reibungsquelle des Fensters

**Kern.** Praktisch jeder Lauf im Fenster musste den Mount mindestens einmal heilen. Zwei verschiedene Fehlerbilder, im Register sauber getrennt:

**(a) `/etc/nsmb.conf` fehlt auf dem MacBook Pro.** Die dokumentierte SMB-Härtung ist halb vorhanden: Der Keepalive-Job läuft, die Konfigurationsdatei mit `notify_off` und `mc_on` existiert nicht. Gemessen wurden **59 Mount-Abrisse am 31.08.**, rund alle 15 Minuten einer, je etwa vier Minuten ohne `/Volumes/daten`. Der Wächter heilte jedes Mal selbst; es ist ein Verfügbarkeits- und Effizienzproblem, kein Datenrisiko. Nicht selbst behoben, weil die Datei erhöhte Rechte verlangt (Rule `interaktive-eingriffe` Klasse 2).

**(b) SYN-64, die Verschattung unter `daten-1`.** Der Synergie-Lauf 24 vom 31.08. fand, dass vier Wächter-Skripte dieselbe blinde Annahme teilen: Sie fragen, ob ein Mount auf `/Volumes/daten` liegt. macOS hängt die Freigabe aber unter `daten-1` ein, wenn der Name belegt ist — genau den Zustand erzeugt `nas-auto-mount.sh` mit seinem eigenen `umount -f`. Der Wissens-Chef-Lauf traf denselben Fall um 00:0x, das Twin-Training um 04:1x, und der Fidelity-Lauf um 06:1x fand die Freigabe sogar unter `daten-2`. Auch dieser Lauf startete ohne Skills, Agenten und Rules, weil `/Volumes/daten` fehlte.

**Radar-relevant: teilweise.** Beide Befunde stehen bereits im Register (Zeile 16 und der Eintrag «NEU 31.08.2026, 23:5x»). Keine neue Zeile nötig; die Häufung im Fenster gehört ins Briefing.

---

## 06 Das Lauf-Gate weist Nachtläufe wegen freiem Speicher ab — vier Messungen unter der Schwelle

**Kern.** Der Lauf `normen-training-nacht` wurde am 01.09. um 01:32 vom Lauf-Gate abgewiesen: **2666 MB verfügbar gegen einen Mindestwert von 3000 MB**. Es wurde weder destilliert noch etwas geschrieben oder committet, sauberer stiller Rücktritt nach Rule 260728. Blocker ist die Mengenschwelle, nicht die Laufzahl (0 aktiv bei Grenze 2) und nicht das Wochenkontingent (FREI, 3.94 von 167 Mio bei 7.7 % verstrichener Woche).

**Das Muster ist neu und wiederkehrend.** Der Lauf hielt ausdrücklich fest, dass die Station seit dem 31.08. wiederholt knapp unter der Schwelle liegt: **2784 / 2771 / 2666 / 2655 MB in vier Messungen über zwei Tage**. Der Heartbeat vom 31.08. 09:44 meldete gleichzeitig 171.9 GB freien Plattenplatz — es geht also um Arbeitsspeicher, nicht um Disk.

**Offene Punkte.** Ohne Eingriff fällt der Normen-Nachtlauf weiter aus, jeweils still. Der Lauf hat bewusst keinen Vorschlag im Alleingang gemacht. Zu entscheiden wäre, ob die Schwelle für diese Station angepasst oder die Speicherlast reduziert wird. Berührt die bestehende Registerzeile zum Beschaffungsentscheid Arbeitsstation und zur Arbeits-Weiche.

**Radar-relevant: ja.** Neue Registerzeile unten, weil bisher nur ein anderer, älterer Gate-Defekt geführt wird und der wiederkehrende Ausfall sonst in Laufberichten verschwindet (Rule 260805).

---

## 07 Die Claude-CLI des MacBook Pro bleibt gewedged, die Empfehlung steht im sechsten Lauf unverändert

**Kern.** Der Vollgas-Chef-Radar meldet zum sechsten Mal in Folge: `/opt/homebrew/bin/claude` zeigt seit dem 29.08. unverändert auf die hängende Version 2.1.236, Homebrew liefert seit vier Tagen nichts nach. Die Läufe weichen jedes Mal auf die app-gebündelte CLI aus (2.1.247, rc 0, 82 bis 98 s) und sparen damit je rund 180 Sekunden und einen irreführenden `rc=137`.

**Offene Punkte.** Die Empfehlung, die Task fest auf die App-CLI umzustellen, steht laut Laufbericht «im fünften Lauf unverändert» und braucht Raphaels Entscheid. Sie ist im Fristen-Register bisher **nicht** als eigene Zeile geführt.

**Radar-relevant: ja.** Neue Registerzeile unten, geringe Dringlichkeit, aber ein Entscheid, der seit sechs Läufen wiederholt vorgelegt und nie beantwortet wird.

---

## 08 Die blinden Messwege und die AG-Gründung: unverändert, aber die Uhr läuft

**bexio, vierundzwanzigster Tag.** Zwei Läufe im Fenster (Verzugscheck 08:0x, Hygiene-Vorfilter 08:2x) bestätigen HTTP 401, auch direkt am Aussteller. Der Token läuft erst am 13.12.2026 ab, die Session dahinter ist serverseitig beendet — Warten hilft nicht, es braucht einen neuen Personal Access Token. Letzter verifizierter Zahlstatus 08.08.2026 08:36. **Unverifiziert blockiert bleiben CHF 51'400.00 in fünf Positionen**, darunter RE-00098 und RE-00099 (KISPI, CHF 13'600 und CHF 3'680, 19 Tage über der Mahnfrist), RE-00101 (Tschopp, CHF 6'000, gesperrt wegen der ungeprüften Transaktion 3630 über exakt denselben Betrag) und RE-00100 (Nova Property Fund Management AG, CHF 13'120, heute einen vollen Monat offen). Nichts gebucht, nichts gemahnt, der Tagessnapshot bewusst nicht fortgeschrieben. Der Punkt gehört sachlich zum Abo-Entscheid vom **08.09.2026** und ist dort mitzuerledigen.

**Apple Mail, neunter beziehungsweise zehnter Tag.** `mail-vorfilter.sh` bricht mit AppleEvent-Zeitüberschreitung (-1712) ab; alle Läufe weichen auf Graph aus. Das Konto `raphaeljans@outlook.com` hat keinen Graph-Weg und ist damit weiterhin ungelesen — jeder Thalwil-Punkt bleibt dort ungegengeprüft.

**AG-Gründung, neunter Tag blind.** Der Monitor kommt per osascript nicht ans Notariat. Aus Spec und Register: Kapitaleinzahlungskonto seit 17.08. eröffnet, die **CHF 50'000 sind seit 14 Tagen nicht eingezahlt**, ohne sie keine Kapitalbescheinigung und keine Beurkundung; die Firmenname-Alternative ist seit dem 22.06. offen. Letzte Sachnachricht 17.08.2026.

**Radar-relevant: ja, aber alle drei bereits registriert.** Keine neuen Zeilen; der Radar führt sie täglich fort.

---

## 09 Was die Lern-Läufe im Fenster geliefert haben, und ein lehrreicher Fehlgriff

**Fachlich ergiebig war die Nacht trotz allem.** `energie` Run 171 hat das AHB-Merkblatt 384 (Beleuchtung Hallenbäder, Oktober 2024) vollständig destilliert und dabei einen Cross-KB-Befund gesetzt: EN 12464-1, EN 12193 und SLG 305 fehlen im Normen-Register. `baurecht` Buch-Run 141 prüfte die RPV-Schwellen am amtlichen Volltext Stand 1.1.2026 — alle drei Zahlenwerte bestätigt, aber vier Regeln falsch, darunter eine Verknüpfung «bzw.» statt «und», die einen Betrieb mit 30 % Anteil und 6000 m² fälschlich durchgewinkt hätte. Der Wartungslauf `planungsgrundlagen` 03 fand, dass der SIA-Shop-Link nicht tot ist, sondern das Suffix `/D/Product` verlangt.

**Der lehrreichste Punkt war ein eigener Fehler.** Der Wissens-Chef Run 49 baute auf einen Melderbefund hin einen Vorbehalt zu angeblich veralteten Healthcare-Lux-Werten ein. Der adversariale Verifikator öffnete danach die Norm selbst: SIA 387/4:2017 Tab. 4 führt genau die Werte, die in `planungsgrundlagen` stehen; die «Abweichung» war die Bezugsgrössen-Falle E_vm gegen E0 (300 × 1,67 = 500 gegenüber 500 × 1,0 = 500, dieselbe Anforderung). Beide Eingriffe wurden zurückgenommen, nie committet, keine Station hat sie gesehen. Als Registerlehre gesetzt: Ein Zahlenwiderspruch ist erst bestätigt, wenn die führende Norm selbst geöffnet wurde.

**Routine-Läufe im Fenster, ohne Besonderheiten:** Logbuch-Radar (31.08. 07:08), Hub-Chef mit Tagesbriefing 31.08., Vollgas-Frühwarnung 07:22 (keine Mail, mit Begründung), Vollgas-Chef-Radar 13:26 und 01.09. 00:57, Behörden-Check ZH (33 von 33 aktuell, ein Dokument aktualisiert), Heartbeat 09:44, Tenant-Hygiene 20:10, Twin-Fidelity 31.08. 05:58 und 01.09. 06:1x, Twin-Mail-Training Batch 111, Synergie-Lauf 24, Wissens-Chef Run 49, `energie` Runs 170 und 171, `baurecht` Buch-Run 141, Nachtschicht Mac Mini (drei Zyklen), Konversations-Log 31.08. Ein Lauf fiel aus: `normen-training-nacht` (Block 06).

**Ein Nebenbefund ohne Handlungsbedarf:** Der Tenant belegt 893.16 GB von rund 1'054 GB (84.74 %), Wachstum +7.93 GB in 24 Stunden, davon 7.88 GB reiner Versionsverlauf auf JANS.PROJEKTE und nur rund 10 MB neue Substanz. Die Restlaufzeit von 67 Tagen ist gegenüber gestern nicht wegen Entspannung gestiegen, sondern weil der 24.08. mit +13.90 GB aus dem Sieben-Tage-Fenster gefallen ist; der Werktagsschnitt sagt weiterhin 48 Tage.

---

## Register-Ergänzungen aus diesem Destillat

1. **NACHTRAG zur Türbeschläge-Zeile vom 31.08. 06:5x** — Termin verschoben auf Mittwoch 02.09.2026 09:00, Tagesfrist 31.08. 16:00 damit überholt, Runde liegt neu einen Tag nach dem Produktionsstart Türen (Block 03).
2. **NEU** — Lauf-Gate weist Nachtläufe des MacBook Pro wegen freiem Arbeitsspeicher ab, vier Messungen unter der 3000-MB-Schwelle über zwei Tage (Block 06).
3. **NEU** — Entscheid Claude-CLI MacBook Pro: Empfehlung, die Radar-Task fest auf die app-gebündelte CLI umzustellen, steht im sechsten Lauf unbeantwortet (Block 07).
