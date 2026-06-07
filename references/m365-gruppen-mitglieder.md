# M365-Gruppe: Mitglieder hinzufuegen (Vorgehen)

Verbindliches Vorgehen, um eine Person zu einer Microsoft-365-Gruppe (Unified Group)
hinzuzufuegen — z.B. **JANS - 2619-KISPI** (`kispi@raphaeljans.ch`). Mitgliedschaft in
der Gruppe = Zugriff auf das Gruppenpostfach **und** die SharePoint-Doku-Bibliothek
(z.B. «JANS - 2619-KISPI - Dokumente») in einem Schritt.

Laeuft ueber den M365-Connector (Certificate-Auth, App-Permission `Group.ReadWrite.All`).

## Entscheidungsregel: intern vs. extern

| Person | Bedingung | Schritte |
|---|---|---|
| **Intern** | Mailadresse `@raphaeljans.ch` (existiert im Tenant) | Nur Schritt 3 |
| **Extern** | Fremddomain (z.B. `@jomos.ch`, `@gruner.ch`, `@kispi.uzh.ch`) | Schritt 2 (Gast einladen) → dann Schritt 3 |

Externe **muessen** zuerst als Gast eingeladen werden, sonst existiert keine UPN/Objekt-ID
im Tenant und Schritt 3 schlaegt fehl.

## Schritt 1 — Group-ID ermitteln

```
m365 entra m365group list --query "[?mail=='kispi@raphaeljans.ch']" --output json
```
→ liefert `id` (Group-ID). Fuer 2619-KISPI: `84827896-9184-4766-ab8a-8be314cc3eef`.

## Schritt 2 — Externe als Gast einladen (nur extern)

```
m365 entra user guest add \
  --emailAddress tim.harder@jomos.ch \
  --displayName "Tim Harder" \
  --messageLanguage de-CH \
  --welcomeMessage "Guten Tag Herr Harder, Sie erhalten hiermit Zugriff auf die Projektablage 2619-KISPI (JANS - Raphael Jans Architekten ETH). Freundliche Gruesse" \
  --sendInvitationMessage --output json
```
→ liefert `invitedUser.id` (Objekt-ID des neuen Gasts) und Status `PendingAcceptance`.
Die Person erhaelt eine Einladungs-Mail mit Zugriffslink.

`--displayName` als «Vorname Nachname» setzen (sonst zeigt die Mitgliederliste nur die UPN).
`--messageLanguage de-CH` haelt die Einladung auf Deutsch.

## Schritt 3 — Zur Gruppe hinzufuegen

```
m365 entra m365group user add \
  --groupId 84827896-9184-4766-ab8a-8be314cc3eef \
  --ids <objektId> \
  --role Member
```

- Option heisst `--ids` (Objekt-IDs) oder `--userNames` (UPNs) — **nicht** `--userName`.
- Mehrere auf einmal: kommagetrennt.
- Owner statt Mitglied: `--role Owner`.
- Bei Erfolg: **keine Ausgabe**.

Intern direkt mit UPN:
```
m365 entra m365group user add --groupId <id> --userNames vorname.nachname@raphaeljans.ch --role Member
```

## Schritt 4 — Verifizieren

```
m365 entra m365group user list --groupId 84827896-9184-4766-ab8a-8be314cc3eef --output json
```
→ Person muss in der Liste erscheinen (`userType: Guest|Member`, `roles: [Member]`).
Hinweis: ein gefilterter Query direkt nach dem Hinzufuegen kann wegen Graph-Propagation
kurz leer zurueckkommen — volle Liste ist verlaesslicher.

## Nach dem Hinzufuegen

- Externe Gaeste: Status bleibt `PendingAcceptance`, bis die Person die Einladung annimmt.
  Technisch ist die Mitgliedschaft gesetzt; der Doku-/Mail-Zugriff greift nach Annahme.
- Gruppen-Mails an `kispi@raphaeljans.ch` erreichen ab dann alle Mitglieder.

## Alternativer Klick-Weg (ohne CLI)

outlook.office.com → links **Gruppen** → Gruppe waehlen → **Mitglieder** →
**Mitglieder hinzufuegen** (intern per Name, extern per Mailadresse als Gast).
