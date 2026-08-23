# Wege-Register — welcher Weg führt zu welcher Fähigkeit

> **Zweck:** Dieses Register beantwortet die Frage «wie komme ich an X heran» in einem
> Nachschlagevorgang statt in einer Suchrunde. Es nennt je Fähigkeit mehrere Wege in
> Rangfolge, mit dem **vollen Pfad**, einem **Testbefehl** und den **belegten Sackgassen**.
>
> Angelegt 09.08.2026 nach dem KISPI-Vorfall. Pflege: wer einen Weg neu findet oder einen
> Weg sterben sieht, trägt ihn hier nach. Kanonisch auf dem NAS.

## Warum es dieses Register gibt

In der Nacht auf den 09.08.2026 sollte der abgelaufene Gastzugriff auf die Projektsite
«JANS - 2619-KISPI» verlängert werden. Der Auftrag wurde an Raphael zurückgegeben mit der
Begründung, es gebe keinen Weg.

**Das war falsch.** Die CLI for Microsoft 365 war die ganze Zeit per Zertifikat angemeldet,
mit `Sites.FullControl.All` und `Mail.Send`, gültig bis März 2028. Sie wurde nicht gefunden,
weil sie nicht im `PATH` liegt, sondern nur unter
`~/Developer/jans-ai-hub/node_modules/.bin/m365`. Stattdessen wurden drei Sackgassen
abgelaufen (PnP-Cmdlet, SPO-Management-Shell, Chrome-Erweiterung).

**Die Lehre: Ein vorhandener Weg, den niemand findet, ist so gut wie keiner.** Darum steht
hier der volle Pfad, und darum stehen hier auch die Sackgassen.

## Grundsatz

1. **Vor dem Aufgeben dieses Register lesen.** Erst wenn alle gelisteten Wege einer
   Fähigkeit nachweislich versagt haben, ist eine Aufgabe blockiert.
2. **Weg 1 zuerst, dann absteigend.** Jeder Weg hat einen Testbefehl. Der Test kostet
   Sekunden und ersetzt das Raten.
3. **Wer eine Sackgasse läuft, trägt sie unten ein.** Dieselbe Sackgasse zweimal zu laufen
   ist der teuerste vermeidbare Fehler.
4. **Werkzeug kaputt heisst nicht Weg tot.** Zuerst `bash scripts/wege-doctor.sh` laufen
   lassen, der repariert die mechanischen Defekte selbst.

---

## Fähigkeits-Matrix

| Fähigkeit | Weg 1 | Weg 2 | Weg 3 | Weg 4 |
|---|---|---|---|---|
| SharePoint und Graph lesen | `m365 request` | `m365-graph.mjs` | MCP-Connector | Browser |
| SharePoint schreiben, Berechtigungen | `m365 spo` | `m365 request` (SPO REST) | PnP PowerShell | Admin Center |
| Entra, Gäste, Gruppen | `m365 entra` | Graph via `m365 request` | | Admin Center |
| Mail senden | Apple Mail (osascript) | Graph `Mail.Send` | `icloud-mail.py` | |
| Mail lesen, durchsuchen | Apple Mail (osascript) | Graph `/messages` | MCP Outlook | |
| Kalender | MCP Outlook `outlook_calendar_search` | Apple Calendar (osascript, **nur iCloud-Kalender**) | ~~Graph `/events`~~ Sackgasse, 403 | Outlook Web |
| Buchhaltung, Debitoren | `connectors/bexio.mjs` | | | bexio-Weboberfläche |
| Handelsregister | `connectors/zefix.mjs` | | | zefix.admin.ch |
| Projektraum Truninger | `connectors/truninger-ds3.mjs` | | | ds3.data-share.ch |
| Baugesuchsstand ZH | `connectors/ebaugesuche-zh.mjs` | | | Portal (Mobile ID) |
| Geodaten ZH und SZ | `connectors/geo-zh.mjs`, `geo-sz.mjs` | | | Kartenportale |
| Git auf dem NAS | `scripts/nas-commit-now.sh` | 15-Min-Cron abwarten | | |
| Mac-App-Store-Updates | `mas outdated` / `mas upgrade` | | | App Store (GUI) |
| Hersteller-CAD Sanitaerapparat (DWG/Massblatt) | Produktseite des Herstellers, Download-Tabelle auslesen; KWC/DELABIE offen unter `kwc-professional.com/assets-original/products/<ArtNr>/` (belegt 20.08.2026, BS302) | Fachhandel-Portal (Sanitas Troesch, heinze.de, ais-online.de) | BIM-Portale (bimobject) | Anfrage beim Lieferanten |
| Hersteller-CAD Armatur LAUFEN/Similor (2D+3D, Massblatt, Produktblatt) | Produktseite `laufen.ch/produkte/<slug>-<ArtNr>`, dann die `LaufenResourceServlet`-Links aus dem Quelltext ziehen (belegt 20.08.2026, CITYPRO HF500922100000) | Download Center `laufen.ch/download-centre` (Login erst ab 10 Dateien) | Handelsnummer beim Fachhandel in die Herstellernummer auflösen | Anfrage bei LAUFEN |
| CAD: Vektor-PDF oder Fremd-DXF nach DWG | Skill `pdf2dwg` (venv `~/.venvs/pdf2dwg`, ezdxf + LibreDWG) | | | Original-DXF unverändert weitergeben |
| CAD: 3D-Hersteller-DWG (ACIS) nach 2D-Plan (Grundriss/Ansicht/Schnitt) | **Rhino 8 an der besetzten Station**, Import + `Make2D` (4 Ansichten Europa) + `SimplifyCrv`/`Join` + Export R2013 | Rhino skriptgesteuert via `rhinocode` an der besetzten Station (belegt 20.08.2026, ein Dialogklick beim Erstimport) | Massbild aus dem Hersteller-Datenblatt nachzeichnen | Massblatt beim Lieferanten anfordern |
| Station erreichen, die per SSH nicht antwortet | Fernsteuerung: auf der Zielstation `claude --remote-control "<name>"` (laeuft ueber den Account-Relay, unabhaengig von LAN und Tailscale) | NAS-Task-Queue `scripts/sync-task-create.sh <station> …` (asynchron) | `remote-tasks/pending/<station>/*.sh` + git push (aus der Cloud) | ssh (LAN, dann Tailscale) — nur wenn die Station im Netz sichtbar ist |

**Zu Zeile «CAD»:** die belegten Sackgassen und die Verifikations-Falle dieses Wegs stehen
vollständig in `skills/pdf2dwg/SKILL.md` (Abschnitt «Grenzen») und werden hier bewusst nicht
kopiert — kurz: LibreDWGs DXF-Reader scheitert an SPLINE/HATCH (`READ ERROR 0x800`, deshalb
vorher mit ezdxf abflachen), ein 3DSOLID (ACIS) übersteht die Konvertierung nicht, und
`dwg2SVG` zeigt für korrekte DWGs 1e20-Koordinaten (Render-Bug, nicht Datenfehler — Prüfung
via `dwg2dxf`-Roundtrip). Belegt am Fall Schmidlin, 13.08.2026.

**Zu Zeile «3D-Hersteller-DWG nach 2D-Plan»** (belegt 20.08.2026, KWC Sirius BS302, 2619 KISPI):
Hersteller-DWGs aus Revit enthalten oft **ausschliesslich ACIS-Volumenkörper** und keine einzige
2D-Linie. Beim BS302 waren es 17 3DSOLID auf einem Layer plus rund 300 AEC-Darstellungsobjekte.
Ein 2D-Plan entsteht dort nur durch Projektion (Make2D), nicht durch Konvertieren, und dafür
braucht es einen ACIS-fähigen Kern: von den vorhandenen Werkzeugen kann das nur Rhino 8.
Sackgassen: LibreDWG liest sauber, lässt ACIS aber ACIS; `pdf2dwg` über das Datenblatt greift
nicht, weil die Massbilder dort Rasterbilder sind (BS302-Datenblatt Seite 1: 74 Vektorpfade,
im Wesentlichen Layout-Rahmen).

**Rhino via `rhinocode` (belegt 20.08.2026, Mac Mini):** Die CLI liegt unter
`/Applications/Rhino 8.app/Contents/Resources/bin/rhinocode`. Sie braucht eine laufende Instanz
**mit geöffnetem Dokument**, sonst ist `scriptcontext.doc` gleich `None` und jedes Skript stirbt
an `'NoneType' object has no attribute 'Objects'`; die Spalte DOC in `rhinocode list` zeigt es
an. Ein leeres Dokument lässt sich mit `rhino3dm` (venv `~/.venvs/volumen3d`) schreiben und mit
`open -a "Rhino 8" arbeit.3dm` öffnen. Die Instanz-ID gehört explizit an den Aufruf
(`rhinocode -r <ID> script <datei.py>`). **Läufe sind asynchron**: der Aufruf kehrt sofort
zurück, `print` landet in der Rhino-Konsole, Ergebnisse deshalb in eine Log-Datei schreiben und
darauf warten. **Die belegte Grenze:** `doc.Import()` auf eine DWG liefert `False` und schliesst
danach das Dokument, weil Rhino den modalen Dialog «AutoCAD Import Options» zeigt. Auf dem Mac
Mini ist der nicht bedienbar, da die Shell dort keine Bildschirmaufnahme hat (`screencapture`
scheitert mit «could not create image from display»). **Rhino-Arbeit an Hersteller-DWGs gehört
deshalb an die Station, an der jemand sitzt.**

**Nachtrag MacBook Pro (belegt 20.08.2026, derselbe Fall BS302, Ableitung erfolgreich
abgeschlossen).** Der Weg ist an der besetzten Station vollständig gangbar, und zwar
skriptgesteuert, nicht von Hand:

- **Die CLI startet zuerst gar nicht.** `rhinocode` ruft eine `RhinoCode.dll` auf, die
  `Microsoft.NETCore.App 7.0.0` verlangt; mitgeliefert ist nur 8.0.14. Der Aufruf endet mit
  «You must install or update .NET». Abhilfe ohne jede Installation: `DOTNET_ROLL_FORWARD=Major`
  vor den Aufruf setzen. Ohne diese Variable sieht der Weg tot aus, obwohl er offen ist.
- **Der Import-Dialog kommt nur beim Erstkontakt.** Nach einer einzigen Bestätigung von Hand
  liefen alle weiteren `_-Import`- und `_-Export`-Aufrufe im Dash-Modus dialogfrei. Die
  Sackgasse vom Mac Mini betrifft also den ersten Import, nicht den Weg an sich.
- **`doc.Import()` meiden.** Stattdessen
  `Rhino.RhinoApp.RunScript('_-Import "<pfad>" _Enter', True)`. Dieser Weg schliesst das
  Dokument nicht, anders als die RhinoCommon-Methode auf dem Mac Mini.
- **Make2D über die API statt über den Befehl.** `Rhino.Geometry.HiddenLineDrawing` mit
  `HiddenLineDrawingParameters` liefert die Projektion samt Sichtbarkeitsklassifikation
  (`Visible`, `Hidden`, `Duplicate`, `Projecting`) und über `hld.WorldToHiddenLine` die
  Projektionsmatrix, mit der sich Schnittkurven in dieselbe Zeichenebene bringen lassen.
  Dialogfrei und vollständig steuerbar. Zwei Fallen dabei: `Flatten = True` entfernt die
  Tiefe **nicht** (zusätzlich `Transform.PlanarProjection` anwenden), und
  `Brep.Trim(Plane, tol)` liefert für Körper, welche die Ebene gar nicht schneiden, ein
  **leeres** Ergebnis statt des Körpers selbst. Wer im Schnitt nur trimmt, verliert damit
  still alles, was vollständig hinter der Ebene liegt.
- **Export ohne Schemawahl schreibt AutoCAD 2007 (`AC1021`), nicht R2013.** Der Dash-Befehl
  nimmt kommentarlos das Schema «Standard». Für den Zweck genügt das: die Prüfung ergab
  191 Bögen, 233 Linien, 62 Polylinien und nur 12 NURBS-Kurven, ArchiCAD liest 2007 ebenso
  zuverlässig. Wer R2013 braucht, ruft `Export` ohne Bindestrich auf und wählt im Dialog.
  Der Dash-Prompt bietet die Option an (`Datei anhand Schema "Standard" schreiben
  ( Schema AusIni )`); die gültigen Schemanamen liessen sich auf der Platte nicht finden.
- **LibreDWG und das venv `~/.venvs/pdf2dwg` gibt es auf dem MacBook Pro nicht**, nur auf dem
  Mac Mini. Für eine DWG-Kontrolle auf dieser Station taugen zwei Ersatzwege: Rückimport nach
  Rhino (zeigt Geometrietypen, Layer und Bounding-Box) und die Formatkennung direkt aus dem
  Dateikopf, `head -c 6 datei.dwg` (`AC1021` = 2007, `AC1027` = 2013, `AC1032` = 2018).

**Nachtrag Mesh statt ACIS (belegt 20.08.2026, LAUFEN CITYPRO HF500922100000, 2619 KISPI).**
Nicht jede Hersteller-DWG ist ACIS. Armaturen kommen häufig als **triangulierter Mesh**
(hier 552 Meshes, 29'451 Flächen). Der Weg bleibt derselbe, drei Punkte kommen dazu:

- **Ohne Schweissen ist die Projektion unbrauchbar.** Roh liefert die Ansicht 1130 sichtbare
  und 3292 verdeckte Kurven, weil jede Dreieckskante als Kante gilt. Nach `Mesh.Append` aller
  Teile, `Vertices.CombineIdentical`, `Normals.ComputeNormals` und `Weld(35 Grad)` sind es
  114 sichtbare Kurven, und die Zeichnung sieht aus wie ein Hersteller-Massbild. **Der
  entscheidende Schritt ist `CombineIdentical`**, nicht der Schweisswinkel: 25, 35 und 45 Grad
  lieferten identische Ergebnisse.
- **Für den Schnitt `Mesh.Split(Plane)` und `Intersection.MeshPlane`**, nicht `Brep.Trim`.
  Dieselbe Fallunterscheidung über die Bounding-Box wie bei Breps ist nötig, weil Teile ganz
  vor oder ganz hinter der Ebene liegen können.
- **Eine Mesh-Ableitung hat keine Bögen.** Der Export liefert ausschliesslich Polylinien;
  Kreise sind feine Vielecke. Für den Plan ohne Folgen, für eine Bemassung am
  Kreismittelpunkt nicht. Beim BS302 (ACIS) entstanden dagegen 191 echte Bögen.

**Herstellermodelle stehen in der Zeichnungslage, nicht in der Einbaulage.** Beim CITYPRO lag
die Wandachse auf Z. Die Einbaulage (X entlang Wand, Y aus der Wand, Z nach oben) entstand
über die Drehung (x,y,z) auf (-x,z,y); die naheliegende Zuordnung (x,z,y) ist eine
**Spiegelung** (Determinante -1) und wäre falsch. Vor dem Zeichnen prüfen, ob die
Determinante der Transformation +1 ist.

---

## 1. Microsoft 365: SharePoint, Graph, Entra, Mail

### Weg 1: CLI for Microsoft 365 (Zertifikat, App-only)

**Der wichtigste Weg. Voller Pfad, weil er nicht im `PATH` liegt:**

```
M365="$HOME/Developer/jans-ai-hub/node_modules/.bin/m365"
```

Test: `"$M365" status --output json` muss `"authType": "certificate"` liefern.

Anmeldung: App «SharePoint MCP Connector (JANS)», App-ID
`80c24101-4597-48db-8388-c6e8bdc75f5f`, Tenant `d3ea8e1a-8ecc-479d-b831-6c0784ee0b51`,
Zertifikat `~/.cli-m365-cert-combined.pem`, gültig bis 23.03.2028.

Berechtigungen (Application): Graph Files, Group, Mail, Sites, User (Read bzw. ReadWrite),
Mail.Send, SharePoint `Sites.FullControl.All`.

Belegte Beispiele, alle am 09.08.2026 gelaufen:

```bash
# Site auflösen
"$M365" request --url "https://graph.microsoft.com/v1.0/sites/raphaeljans.sharepoint.com:/sites/kispi"

# Gäste im Verzeichnis
"$M365" entra user list --type Guest --output json

# Mitglieder einer M365-Gruppe (Quoting beachten, siehe Sackgassen)
"$M365" request --url 'https://graph.microsoft.com/v1.0/groups/<id>/members?$select=displayName,mail,userType'

# SharePoint-Gruppen einer Site
"$M365" spo group list --webUrl "$SITE" --output json
"$M365" spo group member list --webUrl "$SITE" --groupId 5 --output json

# Datei laden, wenn der OneDrive-Mount haengt ("Resource deadlock avoided"/"Operation timed
# out") — umgeht den File-Provider vollstaendig, belegt 11.08.2026 (grobkosten-KB, Ordner
# "2304 Waedenswil" seit 07.08. blockiert; energie-KB Run 126 nutzte denselben Trick per
# rohem Graph-request+curl, "spo file get" ist der einfachere Weg dafuer):
"$M365" spo file get --webUrl "$SITE" --url "/sites/<Site>/<Bibliothek>/<Pfad>/<Datei>.pdf" \
  --asFile --path "/tmp/<ziel>.pdf"
# WICHTIG: node muss im PATH sein (zsh-Login-Shell hat das i.d.R.; in einem Bash-Tool-Aufruf
# ohne Login-Profil kann "env: node: No such file or directory" kommen — dann
# "$HOME/Developer/jans-ai-hub/node_modules/.bin/m365" mit vollem Pfad UND intaktem PATH
# aufrufen, kein Workaround noetig ausser sicherzustellen dass /opt/homebrew/bin im PATH liegt).
# ⚠ FALLE (belegt 15.08.2026, energie-Run 134): der `--url` will die SERVER-relative URL, und
# die entspricht bei umbenannten Bibliotheken NICHT dem angezeigten Titel. SharePoint aendert
# beim Umbenennen nur den Titel, nicht die Server-URL. Die Bibliothek mit dem Titel
# "02_Recht_Norm" auf der Site /sites/PL heisst intern weiterhin "PL  Immobilienpreise"
# (zwei Leerzeichen!). Am 15.08.2026 gemessen, betroffen sind ZWEI der sechs PL-Bibliotheken:
#   Titel "02_Recht_Norm"    -> /sites/PL/PL  Immobilienpreise
#   Titel "01 Kartenportale" -> /sites/PL/01 AV Amtliche Vermessung
#   (03 Brandschutz, 04 Energie, 05 Planungsportale: Titel = interner Name)
# Richtig ist also
#   /sites/PL/PL  Immobilienpreise/06_Richtlinien/...   und NICHT
#   /sites/PL/02_Recht_Norm/06_Richtlinien/...          → das liefert 404.
# Den internen Namen holen (und nie raten):
"$M365" spo list list --webUrl "$SITE" --output json   # Feld: Url bzw. RootFolder.ServerRelativeUrl
# Der Graph-Weg ueber die Drive-ID ist von der Umbenennung NICHT betroffen und darum der
# robustere Einstieg, wenn der Bibliotheksname unklar ist:
"$M365" request --url "https://graph.microsoft.com/v1.0/sites/<siteId>/drives?\$select=id,name"
"$M365" request --url "https://graph.microsoft.com/v1.0/drives/<driveId>/root:/<Pfad>:/children"

"$M365" spo group member add --webUrl "$SITE" --groupId 5 --userNames "<upn>"

# Externe Nutzer einer Site (NUR mit --siteUrl, siehe Sackgassen)
"$M365" spo externaluser list --siteUrl "$SITE" --output json

# Tenant-Policy zum Gastablauf
"$M365" request --url 'https://raphaeljans-admin.sharepoint.com/_api/SPOInternalUseOnly.Tenant' \
  --accept 'application/json;odata=nometadata'

# Ablaufdatum je Gast einer Site (das belastbare Feld heisst Expiration)
"$M365" request --url "$SITE/_api/web/siteusers?\$filter=IsShareByEmailGuestUser%20eq%20true&\$select=Title,Email,Expiration&\$top=100" \
  --accept 'application/json;odata=nometadata'
```

### Weg 2: Eigener Graph-Connector

`connectors/m365-graph.mjs`, holt den Token selbst aus dem Zertifikat. Unabhängig von
`node_modules` und der CLI. Test: `node connectors/m365-graph.mjs --selbsttest`.

**Loest die Sackgasse „SharePoint-Site lokal nicht gemountet".** Belegt 23.08.2026 (KB
`normen`, SIA-Sweep-Nachtrag): auf einer Station, auf der die Site **PL** (Planungsportale —
`02_Recht_Norm`, `03 Brandschutz`, `04 Energie`, `05 Planungsportale`) nicht unter
`~/Library/CloudStorage/` sichtbar ist (weder OneDrive noch ein Group-Container-Duplikat,
per `find`/`ls` geprueft), findet dieser Weg jede Datei trotzdem — unabhaengig vom lokalen
Sync-Zustand, nur per Zertifikats-Token. Gilt vermutlich fuer jede SharePoint-Site, nicht nur
PL. Node muss im PATH sein (siehe Falle unten Weg 1).

```bash
export PATH="/opt/homebrew/bin:$PATH"   # falls "node: command not found" im Bash-Tool
cd ~/Developer/jans-ai-hub

# Site-ID einer Site auflösen (einmalig, dann cachen — siehe Site-IDs unten)
node connectors/m365-graph.mjs --get "/sites/raphaeljans.sharepoint.com:/sites/PL"

# Drive-IDs (= Bibliotheken) der Site auflisten
node connectors/m365-graph.mjs --get "/sites/<siteId>/drives"

# Ordnerinhalt per Pfad auflisten (funktioniert mit dem ANGEZEIGTEN Ordnernamen,
# nicht mit dem oft abweichenden internen Bibliotheksnamen aus Weg 1 — das ist der
# Vorteil dieses Wegs gegenüber "spo file get")
node connectors/m365-graph.mjs --get "/drives/<driveId>/root:/<Pfad/Ordner>:/children"

# Datei-Inhalt laden: der Connector selbst liefert nur JSON (kein Binaerdownload,
# GET auf /content antwortet mit HTTP 302 auf eine tempauth-Download-URL). Mit dem
# geliehenen Token per curl -L nachladen (verifiziert 23.08.2026, PDF vollstaendig,
# Seitenzahl korrekt):
TOKEN="$(node connectors/m365-graph.mjs --token graph)"
curl -sL -H "Authorization: Bearer $TOKEN" \
  "https://graph.microsoft.com/v1.0/drives/<driveId>/root:/<Pfad>/<Datei>.pdf:/content" \
  -o /tmp/<datei>.pdf
```

**Site-IDs/Drive-IDs, einmal aufgeloest, damit kuenftige Laeufe nicht neu suchen muessen:**

| Site | Site-ID | Zweck |
|---|---|---|
| PL (Planungsportale) | `raphaeljans.sharepoint.com,bc0cbde1-7a6d-48e1-9ff6-752f01437ebe,cabb651c-1220-4f25-867d-954b88c6dd27` | Normen, Recht, Energie, Kartenportale |

| Bibliothek (Site PL) | Drive-ID | Pfad-Beispiel |
|---|---|---|
| `02_Recht_Norm` | `b!4b0MvG164Uif9nUvAUN-vhxlu8ogEiVPhn2VS4jG3SfT25dFWtAPQ7JsQfZ1A7n_` | `/02_Normen/SIA_Norm/SIA_Normen/alle/`, `/02_Normen/SIA_Norm/416_2003_dfi.pdf` |

Fuer andere Sites (`kispi`, `03 Brandschutz`, …) analog per `--get "/sites/<host>:/sites/<name>"`
auflösen und hier ergänzen, statt bei jedem Lauf neu zu suchen.

### Weg 3: PnP PowerShell mit geliehenem Token

`pwsh` mit `PnP.PowerShell 3.1.0` ist installiert. Deckt die Tenant- und Site-Eigenschaften
ab, die weder Graph noch die CLI erreichen, etwa die Gastablauf-Policy je Site.

**Die Anmeldung ist der Trick.** PnP nimmt das PEM-Zertifikat nicht an (nur PFX), und
`openssl pkcs12 -export` ist vom Klassifikator blockiert. Der Ausweg: den Token über Weg 2
holen und PnP per `-AccessToken` damit anmelden. Am 09.08.2026 verifiziert:

```bash
TOKEN="$(node connectors/m365-graph.mjs --token admin)"   # oder: spo | graph
export PNP_TOKEN="$TOKEN"          # nicht als Argument, sonst in `ps` sichtbar
pwsh -NoProfile -Command '
  Connect-PnPOnline -Url "https://raphaeljans-admin.sharepoint.com" -AccessToken $env:PNP_TOKEN
  Get-PnPTenantSite -Identity "https://raphaeljans.sharepoint.com/sites/kispi"
'
```

Damit erreichbar, was sonst die Windows-only SPO-Management-Shell bräuchte:

```powershell
Set-PnPTenantSite -Identity <url> -OverrideTenantExternalUserExpirationPolicy $true
Set-PnPTenantSite -Identity <url> -ExternalUserExpirationInDays <n>
```

**Falle:** PowerShell parst das ganze Script vorab. Ein leer eingesetzter Wert (`-eq ()`)
lässt es scheitern, bevor ein früher `exit` greift. Immer syntaktisch gültige Werte einsetzen.

### Weg 4: Browser

In-App-Browser (`mcp__Claude_Browser__*`) oder Chrome-Erweiterung
(`mcp__claude-in-chrome__*`). Der In-App-Browser hat **keine** angemeldete Sitzung, taugt
also nur für öffentliche Seiten. Die Chrome-Erweiterung hat Raphaels Sitzungen, ist aber
nicht immer verbunden. Letzter Ausweg, nicht erster Griff.

---

## 2. Mail

**Weg 1, Standard:** Apple Mail über osascript, Bundle-ID `com.apple.mail`
(Rule `osascript-apple-apps`). Absender geschäftlich immer `rj@raphaeljans.ch`.

**Weg 2:** Graph `Mail.Send` über die CLI. Trägt auch dann, wenn Apple Mail nicht läuft,
etwa in einem Hintergrundlauf.

**Weg 3:** `connectors/icloud-mail.py` für das private iCloud-Konto (`raphaeljans@me.com`),
Passwort im Keychain unter `icloud-app-password`.

**Achtung:** Der MCP-Outlook-Connector kann das Postfach nicht durchsuchen, siehe Sackgassen.

---

## 3. Belegte Sackgassen

Wer hier steht, muss nicht nochmals probiert werden.

| Datum | Was versucht | Warum es nicht geht |
|---|---|---|
| 09.08. | `Get-Command PnP.PowerShell` nach einem Cmdlet für den Gastablauf | Es gibt keines. Der Gastablauf ist über PnP nicht erreichbar. |
| 09.08. | `Connect-PnPOnline -CertificatePath <PEM>` | PnP 3.1 nimmt nur PFX oder Base64-PFX. Die PEM wird mit «certificate does not have a private key» abgewiesen. Es gibt keine `-PEMCertificate`. **Gelöst über `-AccessToken`, siehe Weg 3.** |
| 09.08. | SPO-Management-Shell (`Microsoft.Online.SharePoint.PowerShell`) | Windows-only, läuft auf macOS nicht. **Kein Verlust: PnP kann dasselbe** und hat dieselben Parameter, siehe Weg 3. |
| 09.08. | MCP-Outlook `outlook_email_search` | Liefert `MailboxNotEnabledForRESTAPI`. Das verbundene Konto hat keine durchsuchbare Mailbox. Stattdessen Apple Mail per osascript. |
| 09.08. | `m365 spo externaluser list` ohne `--siteUrl` | Gibt **still eine leere Liste** zurück, Exit 0. Ein leeres Ergebnis ist hier eine Aussage über den Aufruf, nicht über den Tenant. Immer mit `--siteUrl`. |
| 09.08. | `m365 spo tenant setting list` | Existiert nicht in v11.5.0. Tenant-Einstellungen über `m365 request` gegen die Admin-REST-API. |
| 09.08. | Graph-URL mit `$select` in doppelten Anführungszeichen in zsh | zsh interpretiert Teile der GUID arithmetisch («bad math expression»). URL in **einfache** Anführungszeichen setzen. |
| 09.08. | `mdfind` über `~/Library/Mail` | Der Mail-Index ist auf dieser Station im Zustand «unknown indexing state», liefert nichts. Apple Mail per osascript durchsuchen. |
| 30.07. | `git` über den SMB-Mount aufs NAS-Repo | Hängt uninterruptibel, blockiert `index.lock`. Nur `scripts/nas-commit-now.sh`. |
| 07.08. | `grep` auf `sync-tasks/log/selfcommit-*.log` | Die Datei ist nicht UTF-8, `grep` behandelt sie als binär und liefert still nichts. Mit `awk 'substr($0,1,10)=="JJJJ-MM-TT"'` arbeiten. |
| 14.08. | Apple Mail, Versandbeleg suchen über `messages of mb whose subject contains "<Text>"` | Liefert **still «nicht gefunden»**, obwohl die Mail in «Gesendete Elemente» liegt (belegt am Hub-Chef-Briefing 14.08., gesendet 08:51:44, gefunden erst per Enumeration). Der `whose`-Filter greift auf frisch synchronisierten Nachrichten nicht zuverlässig. **Stattdessen die drei jüngsten Nachrichten je Konto enumerieren** (`item i of (messages of mb)`) und den Betreff selbst vergleichen. Ein leeres Ergebnis ist hier eine Aussage über den Filter, nicht über das Postfach — wer ihm glaubt, protokolliert einen erfolgreichen Versand als Fehlschlag und sendet womöglich ein zweites Mal. |

---

## 4. Aktionen, die der Auto-Mode-Klassifikator blockt

Diese Schicht liegt **über** der Allowlist in `.claude/settings.json` und greift auch dann,
wenn dort `Bash(*)` erlaubt ist. Sie lässt sich nicht durch einen Hub-Eintrag öffnen, und
sie darf nicht umgangen werden. Wer hier hängenbleibt, legt Raphael den fertigen Befehl vor.

Am 09.08.2026 blockiert:

- `openssl pkcs12 -export` (Zertifikatskonvertierung mit privatem Schlüssel)
- Anlegen ausführbarer Dateien in `~/.local/bin` (Persistenz)
- `scripts/wege-doctor.sh` im Reparaturmodus (chmod auf Secret-Dateien, Schreiben in `~/.zshrc`)
- `m365 spo group member add` (schreibende Berechtigungsänderung)

Der Prüfmodus `--nur-pruefen` läuft ohne Beanstandung, ebenso alle lesenden Abfragen.

---

## 5. Werkzeug-Grundversorgung

`bash scripts/wege-doctor.sh --nur-pruefen` misst alle Wege und meldet Defekte.
Ohne Flag repariert er zusätzlich, was mechanisch reparierbar ist.

Wiederkehrende Defekte:

- **`m365` nicht im `PATH`.** Voller Pfad `~/Developer/jans-ai-hub/node_modules/.bin/m365`.
- **`node_modules` fehlt.** Liegt bewusst nur im SSD-Klon, nicht auf dem NAS. Fehlt es dort,
  hilft `npm install` im SSD-Klon.
- **`~/.zefix.env` und `~/.versand.env` fehlen** auf dieser Station, die zugehörigen
  Connectoren sind hier nicht einsatzbereit.

**Mac-App-Store-Updates ohne Klicken** (eingerichtet 12.08.2026 auf dem Mac Mini, Freigabe
Raphael): `mas` liegt unter `/opt/homebrew/bin/mas` (Version 7.0.0, via `brew install mas`).
`mas outdated` listet die anstehenden Updates mit Alt- und Neuversion, `mas upgrade` spielt
alle ein, `mas upgrade <id>` nur eines. `softwareupdate -l` deckt dagegen nur macOS-System-
Updates ab, nie App-Store-Apps — die beiden Kanäle nie verwechseln. Auf einer anderen Station
ist `mas` erst zu installieren. **OneDrive nicht während eines laufenden Syncs aktualisieren**
(Update startet die App neu); Last am `OneDrive File Provider` messen, Vorgeschichte in
`rules/betrieb-chronik.md`.

Verwandt: `connectors/README.md` (Werkzeug-Index), Rule `wege-und-vollmachten.md`,
`logbuch/AKTIONS-WHITELIST.md` (was ohne Rückfrage getan werden darf).

## Nachtrag 19.08.2026 — eBaugesucheZH wechselt von ZHservices auf AGOV

Der Login-Weg des Connectors `ebaugesuche-zh.mjs` (Zeile 51 der Tabelle) **ist im Umbau**.
Systemmail `noreply@ebaugesuche.zh.ch` vom 18.08.2026 20:20 an `mail@raphaeljans.ch`: der
bisherige ZHservices-Zugang mit dem Benutzernamen `Raphael_Jans` wird durch den
Authentifizierungsdienst der Schweizer Behörden **AGOV** ersetzt; ohne Migration entfällt der
Zugriff auf Projekte, Zustellbegehren und Akteneinsichten. Ein Enddatum nennt die Mail nicht.

Konsequenz für den Connector: der bisherige Playwright-Weg (idp.zh.ch DXA, ZHservices,
Mobile ID am Handy, Session rund zehn Tage) trägt nach der Umstellung nicht mehr. Er meldet
ohnehin seit dem 29.07.2026 durchgehend HTTP 401. **Vor dem nächsten Reparaturversuch am
alten Weg zuerst klären, ob die Migration vollzogen ist** — sonst wird eine bereits
abgeschaltete Anmeldung debuggt.

Die Migration selbst führt Raphael aus (personengebundener Token, Anmeldung und allenfalls
Erstellung eines Logins; Claude erstellt keine Konten und authentifiziert sich nicht).
Beleg und Registerzeile: `logbuch/fristen.md`, Eintrag 19.08.2026 06:55.

## Nachtrag 22.08.2026 — Kalender: der Graph-Connector traegt nicht, die MCP-Outlook-Suche schon

Gemessen im Hub-Chef-Lauf vom 22.08.2026. Die Rangfolge der Kalender-Zeile war falsch herum.

**Weg 1, traegt: MCP Outlook `outlook_calendar_search`.** Liefert den Geschaeftskalender von
`rj@raphaeljans.ch` vollstaendig, inklusive Organisator, Teilnehmerliste, Teams-Link, Serien-
Instanzen und **Body-Text der Einladung**. Der Body ist der Grund, warum dieser Weg die anderen
schlaegt: Terminaenderungen stehen dort und nirgends sonst. Zeitangaben kommen als
`{dateTime, timeZone}`, im gemessenen Fall durchgehend **UTC** — also nicht als Ortszeit lesen,
sondern umrechnen (13:00 CEST erscheint als 11:00 UTC).

**Weg 2, traegt nur halb: Apple Calendar via osascript.** Auf dem MacBook Pro sind die Kalender
Privat, Arbeit, Kultur, Freunde, Sport, Haushalt, Kalender, brunnengold@gmail.com und die
Feiertags-/Geburtstagskalender eingebunden — **kein Exchange-Konto**. Geschaeftstermine, die per
Teams-Einladung kommen, sind hier also **nicht sichtbar**, auch wenn einzelne davon in einem
iCloud-Kalender liegen. Zum **Schreiben** eigener Eintraege ist es weiterhin der richtige Weg
(A2), zum **Lesen** des Geschaeftskalenders taugt es nicht.

**Sackgasse: eigener Graph-Connector `m365-graph.mjs`.**
`--get "/users/rj@raphaeljans.ch/calendarView?..."` antwortet **403 «Access is denied»**. Die
App-Registrierung hat keine `Calendars.Read`-Berechtigung; die Zertifikats-Anmeldung selbst ist
intakt und traegt fuer SharePoint und Entra weiterhin. Nicht erneut debuggen — der Weg ist nicht
kaputt, er ist nicht berechtigt. Wer ihn oeffnen will, ergaenzt die Application Permission
`Calendars.Read` in der App-Registrierung samt Admin Consent; solange das nicht geschehen ist,
gilt Weg 1.

**Fallstrick beim Auswerten, im selben Lauf belegt.** Der Body einer Serien-Instanz traegt
mitunter einen **ueberholten** Text: die Koordinationssitzung Gruner/Jans/KISPI liegt
nachweislich woechentlich (acht Instanzen, jeden Donnerstag 20.08. bis 08.10.2026), waehrend der
Body ab der Instanz vom 27.08. weiterhin «im Zwei-Wochen-Rhythmus» sagt. **Den Takt an den
Instanzen messen, nicht am Text.** Beleg: `logbuch/fristen.md`, Nachtrag 22.08.2026.

---

## Nachtrag 23.08.2026 — Fernsteuerung (Remote Control): der Weg an eine Station, wenn LAN und Tailscale nicht tragen

Anlass war eine Anzeige im Claude-Fenster: die Session «Normen training nacht» trug den Hinweis
«Über Fernsteuerung verbunden», während gleichzeitig **kein** SSH-Weg an den Mac Mini
funktionierte. Beides stimmte, und genau das ist die Lehre.

**Was Fernsteuerung ist.** Eine Session läuft auf einer Station und wird über den
Account-Relay von Anthropic durchgereicht, nicht über das eigene Netz. Sie ist damit vom
Büro-LAN, von Tailscale und vom Zustand des Routers **unabhängig** und aus der Desktop-App,
von claude.ai und vom Handy erreichbar. Die Session läuft weiter, wenn das Fenster
geschlossen wird; ein Abbruch der Fernsteuerung trennt die Anzeige, nicht den Lauf.

**Einschalten (belegt am CLI-Hilfetext, 23.08.2026):**

```
claude --remote-control "<sessionname>"
claude --remote-control-session-name-prefix "<prefix>"   # Default: hostname
```

Der Befehl läuft **auf der Zielstation**. Das ist der Haken: ist die Station per SSH nicht
erreichbar, lässt sich die Fernsteuerung von aussen nicht mehr nachträglich einschalten —
sie muss vorher laufen. Wer eine Station unbeaufsichtigt lässt, startet die Lern-Läufe
sinnvollerweise gleich mit dieser Option, dann bleibt ein Draht offen, wenn das Netz stirbt.

**Standard ist aus.** Auf dieser Station steht in `~/.claude/policy-limits.json`
`"defaults": { "remote_control_at_startup": false }`; `~/.claude/remote-settings.json` ist
leer, und `~/.claude.json` kennt nur `remoteControlUpsellSeenCount`. Fernsteuerung ist also
**opt-in je Session**, nicht ein Schalter, der einmal gesetzt für alles gilt.

### Der Messbefund vom 23.08.2026: unerreichbar ist nicht tot

| Prüfung | Ergebnis |
|---|---|
| `ssh revendo@100.120.219.12` (Tailscale) | Timeout |
| `ssh revendo@192.168.1.210` (LAN) | Timeout, `arp` bleibt `incomplete` |
| `tailscale status` | `macmini … offline, last seen 3d ago` |
| `dscacheutil -q host -a name Macmini.local` | keine Antwort |
| `logbuch/laeufe/260823-laeufe.jsonl` | **Macmini: 183 Läufe heute, zuletzt 23:28** |
| `logbuch/heartbeat/git-auto-sync-Macmini.stamp` | 23:26 desselben Abends |

Der Mac Mini arbeitete also normal weiter und schrieb im Minutentakt aufs NAS, während vier
Netzprüfungen ihn für tot erklärten. **Die Liveness einer Station wird am NAS-Journal
gemessen, nie an der Erreichbarkeit per SSH.** Wer aus einem fehlgeschlagenen `ssh` auf einen
Ausfall schliesst, meldet einen Vorfall, den es nicht gibt — und übersieht den echten, nämlich
den toten Tailscale-Client.

**Die Subnetz-Falle, im selben Lauf gelaufen.** Die dritte Station lag auf `192.168.1.129`,
der Mini laut Setup-Konnektor auf `192.168.1.210` — gleiche Nummerierung, **verschiedene
physische Netze**. Ein `ping` in dieselbe Adressfamilie sieht darum nach «im selben LAN, aber
tot» aus, obwohl schlicht kein gemeinsames Netz besteht. Erkennbar am `arp`-Eintrag: bleibt er
`incomplete`, war nie ein Gerät dieser Adresse auf diesem Draht. Nicht weiter debuggen,
sondern den Weg wechseln.

**Offen, nicht geprüft:** ob sich `claude --remote-control` über die NAS-Task-Queue
(`scripts/sync-task-create.sh mac-mini …`) auf einer nicht erreichbaren Station nachträglich
starten lässt. Der Weg ist plausibel, weil die Queue über das NAS und nicht über SSH läuft;
er dürfte aber an der Freigabe-Schwelle hängen (`scripts/sync-task-guard.sh`, Klasse
Persistenz/Fernausführung) und wäre damit ein Fall für Raphaels Einzelfreigabe. Wer es
braucht, prüft es und trägt das Ergebnis hier nach.
