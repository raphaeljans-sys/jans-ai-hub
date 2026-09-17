# bexio-Dauerzugang über OpenID Connect — Spec

- **Ziel (1 Satz):** Der bexio-Connector erneuert seinen Zugang selbst (Refresh-Token), damit
  das Debitoren-Monitoring nie wieder still ausfällt, wie vom 12.08. bis 17.09.2026 geschehen.
- **Abgrenzung:** Keine neuen bexio-Funktionen, kein Umbau der Befehle (`--verzug`, `--mahnen`,
  `--buchen` bleiben). Schreibschutz (`--ja`) unverändert. Kein Abo-Entscheid. Keine Tokens in
  Dateien, Git oder Chat.

## Ist-Zustand (gemessen 17.09.2026)
- Zugang via Personal Access Token in `~/.bexio.env`. bexio begrenzt PATs auf **60 Tage**
  (docs.bexio.com, Abschnitt PAT; Banner im Developer Portal). Ein PAT hat **alle** Scopes,
  auch `bank_payment_edit` und Payroll.
- Ausfall 12.08. bis 17.09.2026 (40 Tage), viermal täglich korrekt als 401 gemessen, aber mit
  falscher Ursache (JWT-`exp` statt Portal-Ablauf). Chronik 260917c.
- Aktueller PAT läuft am 16.11.2026 ab; Frist 02.11.2026 im Register.

## Faktenbasis (docs.bexio.com, gelesen 17.09.2026)
- Authorization Code Flow über `auth.bexio.com/realms/bexio` (Keycloak), Endpunkte
  `/protocol/openid-connect/auth` und `/token`; Parameter nur im Request-Body.
- Scope `offline_access` liefert einen Refresh-Token; er gilt unbegrenzt, die Offline-Session
  schliesst nach **1 Jahr ohne Erneuerung**. Der bei der Erneuerung zurückgegebene
  Refresh-Token **ersetzt** den alten und muss gespeichert werden.
- Scopes ändern sich beim Refresh nicht; neue Scopes brauchen eine neue Autorisierung.
- Redirect-URLs müssen in der App registriert sein (bis 10).
- Schreib-Scope schliesst Lesen ein (`kb_invoice_edit` deckt `kb_invoice_show`).

## Schlüsselentscheide (bestätigt Raphael 17.09.2026)
1. **Rechte eng** (bestätigt): `openid offline_access company_profile kb_invoice_edit
   accounting contact_show bank_account_show`. Deckt alle heute genutzten Endpunkte
   (`kb_invoice`, `accounts`, `/3.0/accounting`, `/3.0/banking`, `contact`, `company_profile`,
   `currencies`). Keine Bankzahlungen, kein Lohn. *Noch beweglich:* ob `/3.0/banking` mit
   `bank_account_show` auskommt, zeigt Checkpoint 2.
2. **Für alle Stationen einheitlich** (bestätigt): eine App im Developer Portal, ein
   Einrichtungsbefehl, gleicher Code. Jede Station autorisiert einmal selbst und hält ihren
   eigenen Refresh-Token. *Gatet Checkpoint 1:* sperren sich zwei Stationen derselben App
   gegenseitig aus? Falls ja, Rückfall auf je eine App pro Station bei sonst gleichem Ablauf.
3. **Ablage im macOS-Schlüsselbund** (bestätigt): Client-ID, Client-Secret und Refresh-Token
   im Login-Keychain (Service `jans-bexio-oidc`), nie in Dateien. Gesperrter Schlüsselbund
   ergibt eine klare Fehlermeldung, keinen stillen Ausfall.
4. **PAT bleibt Rückfallweg** (vorgeschlagen): ist kein OIDC eingerichtet oder scheitert es,
   nimmt der Connector `~/.bexio.env` und sagt das in einer Zeile. Nach bestandener
   Beobachtungszeit PAT löschen.

## Bewertungskriterien
- `--test` und `--verzug` laufen auf jeder eingerichteten Station ohne PAT-Datei.
- Zwei Stationen erneuern abwechselnd, ohne dass eine danach 401 erhält.
- Parallele Läufe auf einer Station verlieren den Refresh-Token nicht (Lock).
- Kein Geheimnis in Datei, Git, Prozessliste oder Ausgabe.
- `--test` weist die Zugangsart aus (OIDC oder PAT) und bei OIDC das Datum der letzten Erneuerung.
- Ein Bankzahlungs-Endpunkt antwortet mit 403 (Beweis der engen Rechte).

## Plan (enge Scopes, Checkpoints)
- **Block 1, Bau:** `connectors/bexio-auth.mjs` (`--einrichten`, `--status`, `--token`,
  `--entfernen`) und Umstellung von `ladeToken()` in `bexio.mjs` auf OIDC zuerst, PAT danach.
- **Schritt Raphael:** App im Developer Portal anlegen (Redirect
  `http://localhost:8917/callback`), danach `node connectors/bexio-auth.mjs --einrichten`
  im eigenen Terminal; Client-Secret wird dort verdeckt abgefragt, Login im Browser.
- **Checkpoint 1:** Mac Mini eingerichtet, dann MacBook Pro; Wechseltest zwischen den Stationen.
- **Checkpoint 2:** alle Lese-Befehle je einmal gegen die engen Scopes; 403-Probe Bankzahlung.
- **Block 2, Abschluss:** `connectors/README.md`, `WEGE.md`, `wege-doctor.sh`, heartbeat-Probe
  auf Alter der letzten Erneuerung (Warnung ab 300 Tagen Leerlauf ist unnötig, weil jeder
  Lauf erneuert; gemeldet wird stattdessen ein fehlgeschlagener Refresh). Registerzeile
  schliessen, Frist 02.11.2026 erst nach bestandenem Checkpoint 1 streichen.

## Verifikation
Autoritative Instanz ist bexio selbst: Antwort von `api.bexio.com` und das Feld der App unter
developer.bexio.com. Externes Signal: Connector `--test` auf beiden Stationen. Code-Prüfung:
`/code-review` auf die Änderung vor dem Abschluss.
