---
title: Anwendung der Spec-Methode im JANS AI Hub
status: established
last_updated: 2026-07-12
sources: [260616_marchese_the-spec_karpathy-method_transkript.md]
links: [[the-spec]], [[3-schritte-spec]], [[verifier]], [[environment-jans-hub]]
---

# Anwendung der Spec-Methode im JANS AI Hub

Die Methode wird im Hub durch drei Artefakte verankert:
- **Rule `spec-methode.md`** (immer aktiv) — der *Gate*: prueft bei jeder Anfrage, ob die
  Spec-Methode angewandt werden soll.
- **Skill `spec`** — die *Durchfuehrung*: 3 Schritte (Spec) + Verifier + Environment-Bezug.
- **KB `wissen/spec/`** + Trainings-Loop — das *Lernen*: jede Anwendung verbessert die Methode.

## Der Gate-Test (wann Spec-Methode JA)

Spec-Methode anwenden, sobald **mindestens eines** zutrifft:
- mehrteiliger Auftrag, neues Vorhaben/Projekt, ganzes Dokumenten-/Deliverable-Set;
- Studie/Strategie/Konzept; etwas Praesentier- oder Versandwuerdiges mit Aussenwirkung;
- das Ziel ist unklar, mehrdeutig oder es stecken mehrere Annahmen drin;
- hoher Einsatz (Geld, Recht, Termin, Reputation) oder schwer umkehrbar.

Spec-Methode **ueberspringen** (direkt liefern), wenn:
- triviale Einzelauskunft, kurzer Lookup, Statuscheck, eine kleine mechanische Aenderung;
- der Benutzer bereits eine praezise Spec/klare Vorgabe geliefert hat;
- der Benutzer ausdruecklich "einfach machen / keine Rueckfragen" sagt.

Im Zweifel: **ein** Satz, der Spec-Modus anbietet ("Soll ich das kurz als Spec aufgleisen —
Ziel, Abgrenzung, Kriterien — bevor ich baue?"), statt blind loszulegen.

## Abgrenzung zu bestehenden Hub-Mechaniken
- Rule `auftrags-dekomposition` = *taktische* Zerlegung eines bereits klaren Mehrfachauftrags
  in eine Deliverable-Checkliste. Spec-Methode ist *strategisch* vorgelagert: zuerst das
  *wahre Ziel* aufdecken und Schluesselentscheide bestaetigen, bevor zerlegt wird.
- Skill `korrektur` + `twin`-Gate = die JANS-Auspraegung von Layer 2 (Verifier) fuer Texte.
  Die **belegte Verhaltensevidenz**, dass Raphaels eigene Arbeitsweise genau diesem
  Spec-Denken folgt (Komplexes zerlegen, Grundlage→Empfehlung→Ausblick, Freeze/Change-Request
  als Checkpoint), fuehrt die KB `wissen/twin` (`arbeitsweise` / `denken`).
- `wissen/` + Trainings-Tasks = Layer 3 (Environment), bereits vorhanden.

## Wie die drei Schritte im Hub konkret aussehen
1. **Ziel aufdecken** — kurzes Interview (gern via `AskUserQuestion` fuer Schluesselentscheide),
   tendenziell kleine, abgegrenzte Specs, Entscheide ausdruecklich bestaetigen lassen.
   Bei Recht/Gruendung/Umbau **zuerst die Ausgangslage (IST-Zustand) als Schluesselentscheid
   bestaetigen** — sonst baut das Ziel auf einer falschen Annahme auf (Lektion AG-Gruendung:
   anfangs faelschlich "bestehende AG" statt "Einzelfirma").
   Bei **System-/Prozess-/Umbau-Vorhaben** reicht «Ausgangslage bestaetigen» nicht — den
   IST-Zustand **real scannen und die Schwachstelle diagnostizieren**; diese Diagnose IST das
   Argument fuer das Ziel (Lektion Buchhaltungssystem 02.07.: OneDrive-Archiv gescannt →
   dokumentierte «Erosion» der manuellen Ordner-Kontierung 2022→2026 begruendete direkt das
   neue System). Die Spec fuehrt dafuer einen eigenen Abschnitt **«Ist-Zustand (Scan)»** vor
   den Schluesselentscheiden.
2. **Agil** — `TaskCreate`-Checkliste, enge Scopes, Checkpoints, Review je Block.
   Die Spec ist ein **lebendes Dokument**: kippt ein Schluesselentscheid spaeter, wird er
   im **Schluesselentscheide-Abschnitt selbst** korrigiert (nicht nur als Log-Zeile angehaengt)
   und das **gesamte Deliverable-/Belegset in EINEM versionierten Durchlauf** nachgezogen, nicht
   ein Dokument geflickt (Lektion AG-Gruendung 29.06.: Firmenname «JANS AG»→«Raphael Jans AG»
   und Liberierung 50 %→100 % kippten nach der Bestaetigung; das ganze Belegset wurde als
   Version 260627 neu erstellt). Annahmen, die erfahrungsgemaess wandern (Name, Kapital,
   Termin), im Interview als «noch beweglich» markieren.
   Die reifste Form davon ist eine **Status-Spalte je Schluesselentscheid** direkt in der
   Entscheide-Tabelle — statt eines separaten «Annahmen»-Abschnitts (Lektion Wettbewerbs-Layer
   12.07.: Tabelle mit Status `bestaetigt` / `vorgeschlagen` / `offen` / `umgesetzt`). Der Plan
   baut dann **nur auf den bestaetigten** Entscheiden; ein noch offener Entscheid **gatet seine
   eigene Etappe** («vor Bau nochmals bestaetigen» statt jetzt annehmen). So laeuft eine Spec
   sauber teil-bestaetigt an, ohne auf ungeklaerten Annahmen vorzupreschen.
   Ein Kippen muss nicht «spaet ueber Tage» sein — es kann **gleich in derselben Session**
   passieren, sobald der Scope besser verstanden ist (Lektion Submission 2414 Thalwil 11.07.:
   **Rev. B am selben Tag** — Schluesselentscheid #5 «JANS liefert nur die Devisierungsgrundlagen,
   die externe Bauleitung macht die Submission» *ersetzte Teile von #2+#4*). Die Mechanik ist
   identisch: den Schluesselentscheide-Abschnitt selbst korrigieren (hier mit Vermerk «Nr. 5 ersetzt
   Teile von 2+4»), nicht nur eine Log-Zeile anhaengen. Bei einem solchen Scope-Schwenk waechst
   typischerweise die **Abgrenzung (NICHT dazu)** am staerksten — sie ist der eigentliche Traeger
   des Pivots (Thalwil: fuenf neue «NICHT»-Punkte, weil ein ganzer Leistungsteil an die Bauleitung
   abgegeben wurde; ausgeloest durch eine Budget-Realitaet, knappes Architektur-Honorar).
   Eine lebende Spec durchlaeuft **zwei Phasen** (belegt AG-Gruendung 21.06.–06.07., 15 Tage):
   **(A) aktive Formung** — Entscheide werden bestaetigt und kippen teils spaet, Belegset wird
   versioniert nachgezogen (21.–29.06.); **(B) Steady-State-Monitoring** — das Vorhaben wartet
   auf eine autoritative Instanz (UBS-Kapitalbescheinigung, Notariat/HRA). In Phase B laeuft der
   Monitor-Log **low-noise**: er meldet «NICHTS NEUES» und eskaliert (Status-Mail) nur bei echter
   Aenderung (belegt: 8+ Eintraege «Keine Status-Mail gesendet, nichts Neues» 30.06.–06.07.). In
   Phase B ist die *awartete* autoritative Instanz selbst der Verifier (siehe [[verifier]]) — das
   Warten ist kein Stillstand, sondern ein gueltiger Verifier-Zustand.
   **Aber:** die low-noise-Kadenz gilt nur fuer echtes *externes* Warten. Haengt ein Punkt am
   *eigenen* Handeln (selbst-blockierte Owner-Aktion), gehoert er in jeden Monitor-Lauf als aktive
   Nudge/Pendenz, nicht unter «nichts Neues» — sonst altert eine erledigbare Aufgabe still (belegt
   AG-Gruendung: «Antwort ans Notariat raus» blieb 17 Tage in der «nichts Neues»-Zeile; siehe
   [[verifier]] «Zwei Blocker-Typen»).
3. **Praezise + Verifier** — Bewertungskriterien vorab; Goldstandard als Format-Vorlage;
   zweite Pruefinstanz (`korrektur`/`twin`/`/code-review`); externes Signal via Connector.
   Wo eine **autoritative Instanz** entscheidet (Behoerde/Notar/Bank), gilt deren Befund vor
   jedem Connector-Signal — Connector-Gruen ist nur Indiz (siehe [[verifier]]).

## Muster: die Spec deckt eine noetige Guardrail-Anpassung auf
Manchmal ist das *wahre Ziel* nur erreichbar, wenn eine bestehende Leitplanke (Whitelist,
Autonomie-Grenze, harte Regel) bewusst verschoben wird. Das darf **nie stillschweigend** im
Bauen passieren, sondern nur als **ausdruecklich bestaetigter Schluesselentscheid** in der Spec —
mit dem Guard, der die Ausnahme eng haelt.

Beleg Buchhaltungssystem 02.07.: Schluesselentscheid #2 «Buchen nach Einzelfreigabe» oeffnet
die harte Regel «Geld/Buchungen NIE» (aus `logbuch/AKTIONS-WHITELIST.md`, vgl. Skill `hub-chef`)
kontrolliert — Claude kontiert und zeigt je Lauf eine **Buchungsliste**, gebucht wird erst nach
explizitem Ja (`--ja`-Muster wie im Mahnwesen). Nie automatisch, nie ohne Liste. Die Spec ist
damit der richtige Ort, an dem eine Autonomie-Erweiterung sichtbar entschieden und begrenzt wird
(Layer 1 trifft Layer 3). Konsequenz: kippt ein Vorhaben eine Guardrail, gehoert die Aenderung
in den Schluesselentscheide-Abschnitt **und** die betroffene Whitelist/Regel wird nachgezogen.

## Compounding
Jede groessere Spec-Anwendung wird als `outputs/JJJJ-MM-TT_<vorhaben>_spec.md` abgelegt
(Ziel · Abgrenzung · Annahmen · Kriterien · Plan · Verifikation). Gute Specs werden zur
Vorlage fuer die naechste — und speisen den Trainings-Loop (`training/PROGRAMM.md`).
Das aus den drei ersten Specs destillierte Skelett steht als Kopiervorlage unter
`wissen/spec/templates/spec-vorlage.md` (F6, 2026-07-06 extrahiert).

## Drei Endzustaende einer Spec
Eine Spec endet in einem von drei Zustaenden — nicht nur «aktiv» oder «erledigt»:
- **aktiv** — in Formung (Phase A) oder im low-noise Steady-State-Monitor (Phase B, siehe oben).
- **erledigt** — Ziel erreicht, autoritative Instanz hat abgenommen; Monitor endet.
- **parkiert** — Denkstand konserviert, aber bewusst NICHT weitergebaut (belegt 11.07.2026:
  Shop-Connector + Versandplanung Onlineshop; Scope-0-Interview ergab «parkieren»). Wichtig:
  parkiert ist **kein** Monitor-Loop und **keine** Pendenz — es gibt kein externes Warten und
  keine Owner-Aktion; die Spec haelt nur den Stand fuer den spaeteren Wiedereinstieg fest
  (Status-Banner in SKILL.md/Output). Dass die beweglichen Annahmen im Interview markiert waren,
  machte den sauberen Rueckbau erst moeglich (kein halb gebautes Geruest).
