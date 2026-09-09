---
title: Wer eine Regel verdichtet, verliert zuerst ihre Bedingung — gemessen am Twin-Gehirn
status: final
last_updated: 2026-09-09
sources: [skills/twin/tools/build_dna.py; rules/jans-dna-facetten.md (Auto-Block); wissen/twin/wiki/*.md; wissen/twin/outputs/2026-09-09_fidelity.md, Befund 1; rules/auto-verbesserungen.md Eintrag 260719]
links: [[INDEX]]
---

# Wer eine Regel verdichtet, verliert zuerst ihre Bedingung

Ruecklauf aus dem `twin-fidelity-review` vom 09.09.2026 (Rule `wissens-ruecklauf`). Der Befund
entstand am Twin-Harness, gilt aber fuer **jede** Stelle im Hub, an der Wissen aus einem
ausfuehrlichen Traeger in einen knappen kompiliert oder ausgelagert wird — also fuer die
Kontext-Diaet insgesamt (Rule `auto-verbesserungen` 260719).

## Der Mechanismus

Ein Kompilierer, der aus einem langen Artikel einen kurzen Regelblock zieht, hat eine
**Auswahlregel**. Im gemessenen Fall (`build_dna.py`) ist es: nimm ausschliesslich den Block
«## Do / Don't». Alles, was ausserhalb dieses Blocks steht, erreicht das Ziel **nie** — nicht,
weil es falsch waere, sondern weil es am falschen Ort steht.

Kommt eine **Groessenbegrenzung** dazu, entsteht ein zweiter, subtilerer Effekt. Wer verdichten
muss, verschiebt Beleg-Prosa aus dem Block in den Fliesstext. Und weil eine **Bedingung
systematisch mehr Zeichen braucht als der Imperativ, den sie einschraenkt** («immer X» gegen
«X, ausser wenn A, B oder C»), ist die Bedingung bei jeder Verdichtungsrunde der billigste
Streichkandidat. Der Riegel selektiert also **gegen Bedingungen und fuer unbedingte Regeln** —
und niemand bemerkt es, weil jede einzelne Streichung fuer sich vertretbar ist.

## Die Messung

| | Facetten-Artikel (Quelle) | kompilierter Block (Ziel) |
|---|---|---|
| Marker «Vorrang vor / nicht ausnahmslos / Ausnahme / gilt nicht / Nicht anwenden» | **38** | **1** |

Die eine verbliebene betrifft eine Randnotiz, keine Verhaltensregel. Drei Stichproben ergaben
in allen drei Faellen eine im Artikel belegte Einschraenkung, die im Ziel fehlte — darunter eine
Regel, deren Originalbeleg **konditional** war («**Falls** X eintritt, melde ich mich») und die
im Ziel als unbedingter Imperativ stand. Genau diese Regel erzeugte die haeufigste gemessene
Fehlleistung des Harness: der Ausfuehrende befolgte den Massstab korrekt, der Massstab war
falsch verkuerzt.

## Was daraus folgt (fuer jede Verdichtung, nicht nur diese)

1. **Die Auswahlregel eines Kompilierers ist eine inhaltliche Entscheidung, keine technische.**
   «Nimm den Abschnitt X» heisst «alles ausserhalb von X existiert fuer das Ziel nicht».
2. **Beim Verdichten zuerst fragen, ob das Gestrichene eine Bedingung ist.** Beleg-Prosa,
   Historie und Begruendungen duerfen weichen. Eine Bedingung darf es nur, wenn sie
   nachweislich am neuen Ort steht — sonst wird sie **vorher** dorthin ausgelagert.
3. **Ein unbedingter Imperativ im Zielformat ist ein Verdachtsmoment**, kein Qualitaetsmerkmal.
   Wo eine kurze Regel «immer» oder «nie» sagt, lohnt der Blick in die Quelle.
4. **Eine Groessengrenze, die nur noch durch Streichen von Bedingungen einzuhalten ist, hat
   ihren Zweck verfehlt** — sie schuetzt dann nicht mehr vor Wildwuchs, sondern erzeugt
   Fehlverhalten. Der Riegel im gemessenen Fall bricht korrekt ab und verlangt eine
   Entscheidung, statt selbst zu kuerzen; das ist die richtige Bauform.

Gleiche Familie wie `auto-verbesserungen` 260807 (ein Konfigurationsfeld wirkt nicht, nur weil
es existiert): auch hier sieht die kurze Fassung vollstaendig aus und ist es nicht.
