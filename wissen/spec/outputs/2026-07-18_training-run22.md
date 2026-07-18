# Spec-Training — Lauf 22 (2026-07-18)

**Typ:** Verifikationslauf (keine neue reale Spec seit Lauf 20). Die naechste reale Spec
(SYN-02 typologischer Entwurfsprozess) ist im `SYNERGIE-REGISTER` auf **Spec-Start ab
20.07.2026** terminiert — heute ist der 18.07., die Abwesenheit einer neuen Spec ist also
**erwartet und kein Gate-Fehltreffer**.

## Stand gelesen
- `wiki/QUESTIONS.md`, `wiki/verifier.md`, `wiki/anwendung-jans.md`, `CHANGELOG.md`, `outputs/`.
- **Loser Faden entdeckt:** Lauf 21 (17.07.) hat QUESTIONS.md (F1/F2-Korrekturen «ein Artefakt
  ist keine Quelle fuer seine eigene Herkunft») und `anwendung-jans.md` Schritt 1 (Zuordnung
  «terminierte Freigabe statt Benutzer abwesend», `last_updated: 2026-07-17`) korrigiert, aber
  **keinen Output und keinen CHANGELOG-Eintrag** hinterlassen (kein `..._training-run21.md`).
  Die Aenderungen wurden vom `nas-selfcommit` 17.07. 04:30 mitgesichert. → hier nachgetragen.

## Ausgewertet (Reue-Pruefung des von Lauf 19 geschlossenen AG-Monitor-Fadens)
Lauf 19 (15.07.) schloss den Monitor-Schweige-Faden (Laeufe 11–14) als «geheilt/erledigt» mit
der Bedingung «kein weiterer Sweep noetig, solange der taegliche Eintrag laeuft». Gegenprobe an
der Primaerquelle (`logbuch/fristen.md`, direkt gelesen):
- **Schliessung haelt:** der `ag-gruendung-monitor` schreibt weiter taeglich — 17.07.-Eintrag real
  vorhanden («kein neuer UBS-/Notariats-Eingang, Stand unveraendert»).
- **Aber neuer Fehlermodus:** derselbe 17.07.-Lauf dokumentiert einen METHODEN-BEFUND — die
  UBS-Pruefung war seit ~15.07. **blind**. Der M365-Connector ist als **rj@** angemeldet und hat
  auf **mail@** keinen Delegate-Zugriff; eine Suche auf mail@ liefert dort **still eine LEERE
  Antwort statt eines Fehlers**. Da der gesamte UBS-Strang in mail@ liegt, schlossen die Laeufe
  15./16.07. faelschlich «kein UBS-Absender», obwohl zwei UBS-Mails (21.06./23.06.) dort liegen —
  eine eingetroffene Kapitalbescheinigung waere **nicht erkannt worden**. Gegenprobe ueber Apple
  Mail (alle 6 Konten): inhaltlich nichts verpasst, Task auf Apple Mail als Primaerkanal fuer mail@
  umgestellt (der Kanalwechsel ist `logbuch`-Betrieb, ausserhalb `wissen/spec`).

## Geaendert (belegt, im KB-Mandat)
- **`wiki/verifier.md`** — neue Sektion **«Ein leeres Verifier-Signal ist mehrdeutig — Zugriff VOR
  Inhalt pruefen»**. Kern: ein leeres/negatives Signal ist nur so viel wert wie der Beweis, dass
  die Abfrage die Daten erreicht hat («nichts da» ↔ «Fenster zu» sehen gleich aus). Absicherung:
  (a) **Positivkontrolle** (ein zwingend vorhandener Treffer — bleibt er aus, ist der Kanal blind),
  (b) **zweiter unabhaengiger Kanal** bei kritischen Negativ-Befunden. Reiht sich in die
  Falsch-Signal-Familie (Lauf 1 falsches Gruen · Lauf 10 Mass misst den Fix nicht · Lauf 12 Flag
  ist keine Reparatur · **hier: leeres Signal ist kein Beweis fuer Leere**). `last_updated` → 07-18.
- **`wiki/QUESTIONS.md`** F2 — Bestaetigung «Lauf-19-Schliessung haelt» + Verweis auf den neuen
  Fehlermodus/die Verifier-Lehre.

## Bewusst NICHT getan
- Kein voller Environment-Sweep (Lauf 13 frisch; Drei-Listen-Konsistenz zuletzt belegt geprueft).
- **Keine** Rule-/Gate-Aenderung (`spec-methode.md` unveraendert): dies ist Verifier-Disziplin, kein
  Gate-Trigger-/Ueberdehnungs-Beleg. F1-Ueberdehnungs-Gegentest bleibt unbelegt.
- Keine `logbuch`-/Connector-Reparatur (Kanalwechsel bereits am 17.07. im Monitor erledigt; ausserhalb
  Mandat). Kein Mail-Versand.
- Keine erfundene Verifier-Tabellenzeile: die SYN-02-Zeile bleibt **Pending** (E5 unbestaetigt), bis
  das terminierte Interview (ab 20.07.) sie belegt.

## Offen
- F1-Ueberdehnungs-Gegentest (genervter Mittelfall) fehlt weiter; F3 nur noch Marketing/Text +
  SYN-02-Pending.
- SYN-02-Spec ab 20.07. — dann Auswertungslauf; Verifier-Pending → volle Tabellenzeile promovieren.
- Positivkontrolle/Zweitkanal als Verifier-Muster sind hier als Lehre destilliert; ob andere
  Monitore/Connector-Checks im Hub denselben «silent-empty»-Risikopfad haben, bleibt ein Kandidat
  fuer einen kuenftigen Environment-Sweep (Befund, nicht autonom repariert).
