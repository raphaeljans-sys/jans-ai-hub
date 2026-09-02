---
title: "Formfindung ohne Rechenprogramm: Experimenteller Tragwerksentwurf nach Frei Otto, Fallbeispiel Stuttgarter Bahnhof"
status: emerging
last_updated: 2026-08-30
sources: ["/Volumes/daten/02_Architektur_Archiv/01_Tragwerk/04_Bauingenieure/Schwartz_Joseph/02_Lehre/110225_Prof_Schwartz/03_Vorlesungen/110316_Experimenteller_Tragwerksentwurf/110327_Experimenteller_Tragwerksentwurf.pdf — eigenes ETH-Skript zum experimentellen Tragwerksentwurf, Stand 28.3.11, Prof. Joseph Schwartz, ETH Zürich (im Text zitiert: Frei Otto, «Leightweight Construction»; Arch+ 159/160, «Formfindung», S. 74-75)", "raw/inventar/archiv-fachwissen__01_Tragwerk.md"]
links: [[tragwerksentwurf-plastizitaetstheorie-eleganz-brueckenbau]]
---

# Formfindung ohne Rechenprogramm: Experimenteller Tragwerksentwurf nach Frei Otto, Fallbeispiel Stuttgarter Bahnhof

## Kontext

Ein ETH-Vorlesungsskript (Professur Tragwerksentwurf, Joseph Schwartz, Stand 28.03.2011)
fasst die Methode des experimentellen Tragwerksentwurfs nach Frei Otto zusammen und belegt
sie am Fallbeispiel des Stuttgarter Hauptbahnhofs («Stuttgart 21», Entwurf mit Büro Happold).
Brauchbar für frühe Volumen- und Machbarkeitsphasen, in denen noch kein Rechenmodell und oft
noch kein Bauingenieur am Tisch sitzt.

## Die Methode: Selbstbildungsprozesse

Otto entwickelte seine Konstruktionen (vom ersten Zeltdach-Projekt der frühen 1950er-Jahre
bis zum Stadion München, über 100 Modelle) nicht rechnerisch, sondern über physische Modelle,
weil sie mathematisch nur mit grosser Schwierigkeit zu fassen sind: Gummi- und
Seifenhaut-Experimente zur Ermittlung minimaler Flächen, Ketten- und Kettennetz-Modelle zur
Formfindung.

Das Skript definiert den **Selbstbildungsprozess** als Optimierung der Form eines
Analogmodells im Entstehungsprozess: Das Modell macht die Beziehung zwischen Form und
wirkenden Kräften sichtbar und lässt die Konstruktion ihre Form über Naturgesetze selbst
finden. Ziel ist eine materialgerechte Konstruktion mit minimiertem Materialquerschnitt.

Der methodische Ablauf gliedert sich in vier Schritte: **Material wählen, physikalische
Eigenschaften kennen, Konstruktion vorschlagen, Form finden.** Das Skript unterscheidet dabei
vier Experiment-Schwerpunkte:

1. **Formerfassung** — berührungsfreie Analyse (Beobachtung, Skizze, Fotografie, auch
   Mehrfachbelichtung für Verformungsbilder) versus tastende Information (Messung mit
   Winkel, Lineal, Waage).
2. **Kraftermittlung** — der Selbstbildungsprozess als Abbild eines Gleichgewichtszustands
   zwischen inneren und äusseren Kräften; die Kraftwirkung wird über die Formveränderung
   eines Körpers unter Last oder seine Lageveränderung im Raum ermittelt.
3. **Form-Kraft-Masse-Zusammenhang** — Betrachtung der Aufwandwerte einzelner
   Tragwerkselemente, vom Faden bis zur biaxial beanspruchten Membran.
4. **Entwurfsmodelle** — von Entwurfs- über Funktionsmodelle bis zum Prototyp, unter
   Einbezug von Stabilität, Verformung und Nebenanforderungen (Besonnung, Beschattung).

## Fallbeispiel Stuttgarter Bahnhof: vom Seilnetz zur Betonschale

Die Formfindung für die neue Bahnhofshalle («Stuttgart 21») erfolgte iterativ zusammen mit
Frei Otto und dem Büro Happold. Ausgangspunkt waren Ottos frühere Seifenhaut-Versuche zur
Ermittlung von Minimalflächen: Eine Punktlast lässt sich spannungsspitzenfrei in eine Membran
einleiten, es entsteht ein Loch — ein «Auge» an der Stelle der grössten Belastung. Für den
Bahnhof wurden diese «Konstruktionsaugen» konsequent mit den Stützen verbunden und dienen
zugleich der natürlichen Belichtung und Belüftung der abgesenkten Halle.

Die erste Idee war eine vorgespannte, betonausgefachte und begrünte Seilnetzkonstruktion nach
dem Seifenhautmodell. Die Analyse des Tragverhaltens zeigte jedoch: Statt eines
zugbeanspruchten Hängedachs ist eine **druckbeanspruchte Betonschale** sinnvoller. Ihre Form
wurde über Hängemodelle ermittelt, die im belasteten Zustand «eingefroren» und umgedreht
wurden (klassische Umkehrung Zug zu Druck) — daraus entwickelte sich das Raumkonzept der
Halle.

Erst danach wurde die experimentell entwickelte und mit Belastungsversuchen getestete Form
vom Büro Happold rechnerisch nachgebildet, mit dem Programm «Tensyl»: Es erzeugt
zugbelastete Membranstrukturen; wird die erzeugte Form gegensinnig belastet, entstehen nur
Druckspannungen — auch hier wird ein Rechenmodell «auf den Kopf gestellt», nicht die Form aus
der Berechnung heraus entwickelt. Die endgültige Form ergab sich erst aus der Optimierung der
Schale: Ziel ist, dass alle permanent abzutragenden Lasten in jedem Schalenquerschnitt als
Druckkräfte übertragen werden, bis in die kelchförmigen Stützen. Wegen der geometrischen
Komplexität (doppelt schiefe Ebene, wechselnde Elementstärken) wurden Teilbereiche der Halle
zusätzlich als dreidimensionales Volumenmodell gebaut.

## Praxisregel für JANS

Für frühe Volumen- und Machbarkeitsphasen liefert die Methode ein Vorgehen, das ohne
Tragwerksplaner auskommt, um Formen plausibel vorzuprüfen: physisches Analogmodell bauen
(Hängemodell für Druck-, Seifenhaut- oder Seilnetzmodell für Zugkonstruktionen), Verhalten
beobachten und fotografisch dokumentieren, danach — falls nötig — erst rechnerisch
nachbilden. Die Umkehr-Regel («was im Hängemodell hängt, trägt umgedreht auf Druck») ist ein
schneller Plausibilitätstest für Schalen- und Gewölbeformen ohne jede Software.

## Offen

Die Quelle ist ein eigenes Vorlesungsskript von Schwartz (2011), das seinerseits ein
Frei-Otto-Zitat sowie einen Arch+-Artikel (Ausgabe 159/160, S. 74-75) referenziert — beide
Sekundärquellen wurden nicht im Original geprüft. Status bleibt deshalb `emerging` bis zu
einer unabhängigen Zweitbelegung, z. B. direkt aus Frei Ottos «IL»-Schriftenreihe (im Skript
als «IL25» referenziert, im Bestand dieser Sektion nicht als Volltext vorhanden).
