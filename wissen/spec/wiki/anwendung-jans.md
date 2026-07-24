---
title: Anwendung der Spec-Methode im JANS AI Hub
status: established
last_updated: 2026-07-24
sources: [260616_marchese_the-spec_karpathy-method_transkript.md]
links: [[the-spec]], [[3-schritte-spec]], [[verifier]], [[environment-jans-hub]]
---

# Anwendung der Spec-Methode im JANS AI Hub

Die Methode wird im Hub durch drei Artefakte verankert:
- **Rule `spec-methode.md`** (immer aktiv) — der *Gate*: prüft bei jeder Anfrage, ob die
  Spec-Methode angewandt werden soll.
- **Skill `spec`** — die *Durchführung*: 3 Schritte (Spec) + Verifier + Environment-Bezug.
- **KB `wissen/spec/`** + Trainings-Loop — das *Lernen*: jede Anwendung verbessert die Methode.

## Der Gate-Test (wann Spec-Methode JA)

Spec-Methode anwenden, sobald **mindestens eines** zutrifft:
- mehrteiliger Auftrag, neues Vorhaben/Projekt, ganzes Dokumenten-/Deliverable-Set;
- Studie/Strategie/Konzept; etwas Präsentier- oder Versandwürdiges mit Aussenwirkung;
- das Ziel ist unklar, mehrdeutig oder es stecken mehrere Annahmen drin;
- hoher Einsatz (Geld, Recht, Termin, Reputation) oder schwer umkehrbar.

Spec-Methode **überspringen** (direkt liefern), wenn:
- triviale Einzelauskunft, kurzer Lookup, Statuscheck, eine kleine mechanische Änderung;
- der Benutzer bereits eine präzise Spec/klare Vorgabe geliefert hat;
- der Benutzer ausdrücklich "einfach machen / keine Rückfragen" sagt.

Im Zweifel: **ein** Satz, der Spec-Modus anbietet ("Soll ich das kurz als Spec aufgleisen —
Ziel, Abgrenzung, Kriterien — bevor ich baue?"), statt blind loszulegen.

## Abgrenzung zu bestehenden Hub-Mechaniken
- Rule `auftrags-dekomposition` = *taktische* Zerlegung eines bereits klaren Mehrfachauftrags
  in eine Deliverable-Checkliste. Spec-Methode ist *strategisch* vorgelagert: zuerst das
  *wahre Ziel* aufdecken und Schlüsselentscheide bestätigen, bevor zerlegt wird.
- Skill `korrektur` + `twin`-Gate = die JANS-Ausprägung von Layer 2 (Verifier) für Texte.
  Die **belegte Verhaltensevidenz**, dass Raphaels eigene Arbeitsweise genau diesem
  Spec-Denken folgt (Komplexes zerlegen, Grundlage→Empfehlung→Ausblick, Freeze/Change-Request
  als Checkpoint), führt die KB `wissen/twin` (`arbeitsweise` / `denken`).
- `wissen/` + Trainings-Tasks = Layer 3 (Environment), bereits vorhanden.

## Wie die drei Schritte im Hub konkret aussehen
1. **Ziel aufdecken** — kurzes Interview (gern via `AskUserQuestion` für Schlüsselentscheide),
   tendenziell kleine, abgegrenzte Specs, Entscheide ausdrücklich bestätigen lassen.
   Bei Recht/Gründung/Umbau **zuerst die Ausgangslage (IST-Zustand) als Schlüsselentscheid
   bestätigen** — sonst baut das Ziel auf einer falschen Annahme auf (Lektion AG-Gründung:
   anfangs fälschlich "bestehende AG" statt "Einzelfirma").
   Bei **System-/Prozess-/Umbau-Vorhaben** reicht «Ausgangslage bestätigen» nicht — den
   IST-Zustand **real scannen und die Schwachstelle diagnostizieren**; diese Diagnose IST das
   Argument für das Ziel (Lektion Buchhaltungssystem 02.07.: OneDrive-Archiv gescannt →
   dokumentierte «Erosion» der manuellen Ordner-Kontierung 2022→2026 begründete direkt das
   neue System). Die Spec führt dafür einen eigenen Abschnitt **«Ist-Zustand (Scan)»** vor
   den Schlüsselentscheiden.
   **Vorgezogener Schritt-1-Deliverable — die «Interview-Vorbereitung» (Lektion SYN-02 15.07.,
   Zuordnung korrigiert 17.07.):** Fällt der Gate-Trigger und das Interview kann **jetzt nicht
   geführt werden** — weil Raphael nicht am Tisch sitzt, oder weil der Vorhabens-Start bewusst
   auf einen späteren Zeitpunkt freigegeben ist (SYN-02: Register-Status «freigegeben 15.07.,
   Spec-Start nach Limit-Reset ab 20.07.») —, ist der korrekte Output **nicht**, die
   Schlüsselentscheide selbst zu erfinden und loszubauen — sondern **Schritt 1 vorzubereiten**:
   die Schlüsselfragen (E1…En) mit **je Frage bereits recherchierter Faktenlage + Default-Vorschlag**,
   ausdrücklich als «Dies ist NICHT die Spec» markiert und mit «kein Bau vor bestätigter Spec»
   abgeschlossen (Start «auf Zuruf»). Das ist die saubere Auflösung der Spannung «Spec verlangt
   bestätigte Entscheide» ↔ «Trigger jetzt, Interview später»: die Maschine leistet die teure
   Vorarbeit (Register/Schema/Generator scannen, Spannungen zu bestehenden Rules benennen, je
   Entscheid einen Default herleiten), damit im späteren Interview **nur wirklich Offenes** gefragt
   wird — genau die «zuerst die Faktenbasis ziehen»-Vorgabe der Rule, hier vollständig ausgeführt.
   Das Format reift damit zu einem eigenen Zwischen-Artefakt `..._spec-interview.md` (Vorstufe der
   `..._spec.md`).
   **Gemessene Trefferquote der Defaults (SYN-02, Vorbereitung 15.07. → Interview 20.07., Lauf 24):**
   von neun vorbereiteten Default-Vorschlägen hielten **sieben** bei der Bestätigung, **zwei** wurden
   überstimmt — und zwar genau die beiden **strategischen Geschäftsmodell-Entscheide** (E2 Absatzkanal:
   Vorschlag «Variantenstudie GM2 zuerst» → bestätigt «Wettbewerbs-Fabrik GM3 zuerst»; E3
   Automatisierungsgrad/Human-Gates: Vorschlag «drei Gates a/b/c» → bestätigt «nur Gate c, Pipeline
   läuft autonom durch»). **Alle technischen Folgeentscheide** (E1/E4/E6/E7/E8/E9 — Tiefe, Ablage,
   Kennwerte, MVP-Grenze) hielten. Lehre für die Vorbereitung: **für die technischen Folgefragen
   ruhig einen festen Default setzen** (sie halten meist), die **strategischen Richtungsentscheide
   (Kanal-Priorität, Automatisierungsgrad) bewusst offen lassen** — dort entscheidet der Mensch, und
   ein Override dort **kaskadiert** oft auf spätere Entscheide (E2-Override → E5 strenger: voller
   `programm-pruefer` schon im MVP). Genau darum in der Vorbereitung die **Kopplungen mitflaggen** (die
   SYN-02-Vorbereitung tat das korrekt: E5 war als «reicht das, oder willst Du den vollen
   programm-pruefer?» an E2 gekoppelt notiert, weshalb der E2-Override sauber durchschlug). Das ist der
   erste **gemessene** Beleg für die F2-Hypothese: die teure Recherche wandert vor das Interview, das
   Live-Gespräch schrumpft auf **zwei echte Entscheidungen + sieben Bestätigungen**.
2. **Agil** — `TaskCreate`-Checkliste, enge Scopes, Checkpoints, Review je Block.
   Die Spec ist ein **lebendes Dokument**: kippt ein Schlüsselentscheid später, wird er
   im **Schlüsselentscheide-Abschnitt selbst** korrigiert (nicht nur als Log-Zeile angehängt)
   und das **gesamte Deliverable-/Belegset in EINEM versionierten Durchlauf** nachgezogen, nicht
   ein Dokument geflickt (Lektion AG-Gründung 29.06.: Firmenname «JANS AG»→«Raphael Jans AG»
   und Liberierung 50 %→100 % kippten nach der Bestätigung; das ganze Belegset wurde als
   Version 260627 neu erstellt). Annahmen, die erfahrungsgemäss wandern (Name, Kapital,
   Termin), im Interview als «noch beweglich» markieren.
   Die reifste Form davon ist eine **Status-Spalte je Schlüsselentscheid** direkt in der
   Entscheide-Tabelle — statt eines separaten «Annahmen»-Abschnitts (Lektion Wettbewerbs-Layer
   12.07.: Tabelle mit Status `bestaetigt` / `vorgeschlagen` / `offen` / `umgesetzt`). Der Plan
   baut dann **nur auf den bestätigten** Entscheiden; ein noch offener Entscheid **gatet seine
   eigene Etappe** («vor Bau nochmals bestätigen» statt jetzt annehmen). So läuft eine Spec
   sauber teil-bestätigt an, ohne auf ungeklärten Annahmen vorzupreschen.
   Ein Kippen muss nicht «spät über Tage» sein — es kann **gleich in derselben Session**
   passieren, sobald der Scope besser verstanden ist (Lektion Submission 2414 Thalwil 11.07.:
   **Rev. B am selben Tag** — Schlüsselentscheid #5 «JANS liefert nur die Devisierungsgrundlagen,
   die externe Bauleitung macht die Submission» *ersetzte Teile von #2+#4*). Die Mechanik ist
   identisch: den Schlüsselentscheide-Abschnitt selbst korrigieren (hier mit Vermerk «Nr. 5 ersetzt
   Teile von 2+4»), nicht nur eine Log-Zeile anhängen. Bei einem solchen Scope-Schwenk wächst
   typischerweise die **Abgrenzung (NICHT dazu)** am stärksten — sie ist der eigentliche Träger
   des Pivots (Thalwil: fünf neue «NICHT»-Punkte, weil ein ganzer Leistungsteil an die Bauleitung
   abgegeben wurde; ausgelöst durch eine Budget-Realität, knappes Architektur-Honorar).
   Eine lebende Spec durchläuft **zwei Phasen** (belegt AG-Gründung 21.06.–06.07., 15 Tage):
   **(A) aktive Formung** — Entscheide werden bestätigt und kippen teils spät, Belegset wird
   versioniert nachgezogen (21.–29.06.); **(B) Steady-State-Monitoring** — das Vorhaben wartet
   auf eine autoritative Instanz (UBS-Kapitalbescheinigung, Notariat/HRA). In Phase B läuft der
   Monitor-Log **low-noise**: er meldet «NICHTS NEUES» und eskaliert (Status-Mail) nur bei echter
   Änderung (belegt: 8+ Einträge «Keine Status-Mail gesendet, nichts Neues» 30.06.–06.07.). In
   Phase B ist die *awartete* autoritative Instanz selbst der Verifier (siehe [[verifier]]) — das
   Warten ist kein Stillstand, sondern ein gültiger Verifier-Zustand.
   **Aber:** die low-noise-Kadenz gilt nur für echtes *externes* Warten. Hängt ein Punkt am
   *eigenen* Handeln (selbst-blockierte Owner-Aktion), gehört er in jeden Monitor-Lauf als aktive
   Nudge/Pendenz, nicht unter «nichts Neues» — sonst altert eine erledigbare Aufgabe still (belegt
   AG-Gründung: «Antwort ans Notariat raus» blieb 17 Tage in der «nichts Neues»-Zeile; siehe
   [[verifier]] «Zwei Blocker-Typen»).
3. **Präzise + Verifier** — Bewertungskriterien vorab; Goldstandard als Format-Vorlage;
   zweite Prüfinstanz (`korrektur`/`twin`/`/code-review`); externes Signal via Connector.
   Wo eine **autoritative Instanz** entscheidet (Behörde/Notar/Bank), gilt deren Befund vor
   jedem Connector-Signal — Connector-Grün ist nur Indiz (siehe [[verifier]]).

## Muster: die Spec deckt eine nötige Guardrail-Anpassung auf
Manchmal ist das *wahre Ziel* nur erreichbar, wenn eine bestehende Leitplanke (Whitelist,
Autonomie-Grenze, harte Regel) bewusst verschoben wird. Das darf **nie stillschweigend** im
Bauen passieren, sondern nur als **ausdrücklich bestätigter Schlüsselentscheid** in der Spec —
mit dem Guard, der die Ausnahme eng hält.

Beleg Buchhaltungssystem 02.07.: Schlüsselentscheid #2 «Buchen nach Einzelfreigabe» öffnet
die harte Regel «Geld/Buchungen NIE» (aus `logbuch/AKTIONS-WHITELIST.md`, vgl. Skill `hub-chef`)
kontrolliert — Claude kontiert und zeigt je Lauf eine **Buchungsliste**, gebucht wird erst nach
explizitem Ja (`--ja`-Muster wie im Mahnwesen). Nie automatisch, nie ohne Liste. Die Spec ist
damit der richtige Ort, an dem eine Autonomie-Erweiterung sichtbar entschieden und begrenzt wird
(Layer 1 trifft Layer 3). Konsequenz: kippt ein Vorhaben eine Guardrail, gehört die Änderung
in den Schlüsselentscheide-Abschnitt **und** die betroffene Whitelist/Regel wird nachgezogen.

## Compounding
Jede grössere Spec-Anwendung wird als `outputs/JJJJ-MM-TT_<vorhaben>_spec.md` abgelegt
(Ziel · Abgrenzung · Annahmen · Kriterien · Plan · Verifikation). Gute Specs werden zur
Vorlage für die nächste — und speisen den Trainings-Loop (`training/PROGRAMM.md`).
Das aus den drei ersten Specs destillierte Skelett steht als Kopiervorlage unter
`wissen/spec/templates/spec-vorlage.md` (F6, 2026-07-06 extrahiert).

## Drei Endzustände einer Spec
Eine Spec endet in einem von drei Zuständen — nicht nur «aktiv» oder «erledigt»:
- **aktiv** — in Formung (Phase A) oder im low-noise Steady-State-Monitor (Phase B, siehe oben).
- **erledigt** — Ziel erreicht, autoritative Instanz hat abgenommen; Monitor endet.
- **parkiert** — Denkstand konserviert, aber bewusst NICHT weitergebaut (belegt 11.07.2026:
  Shop-Connector + Versandplanung Onlineshop; Scope-0-Interview ergab «parkieren»). Wichtig:
  parkiert ist **kein** Monitor-Loop und **keine** Pendenz — es gibt kein externes Warten und
  keine Owner-Aktion; die Spec hält nur den Stand für den späteren Wiedereinstieg fest
  (Status-Banner in SKILL.md/Output). Dass die beweglichen Annahmen im Interview markiert waren,
  machte den sauberen Rückbau erst möglich (kein halb gebautes Gerüst).
