# PL-02 — byte-identische Mehrfachablagen (quickXorHash, gemessen 2026-08-16, Run 137)

23 Gruppen, 55 Dateien, 32 redundante Kopien. Ein Werk ist einmal zu destillieren;
die uebrigen Ablagen sind im Destillat-Frontmatter als Zweit-/Drittablage zu nennen.

## Wozu dieses Register

Der PL-02-Korpus legt dieselben Merkblaetter bis zu **dreifach** ab: einmal flach unter
`04_Merkblätter/eco/` mit CRB-artiger Nummer (`3.38RecyclingBetonKBOB_2007_2.pdf`), einmal in
der thematisch gegliederten Unterbibliothek `eco/Nachhaltiges Bauen/<01 verbindliche
Richtlinien|02 Checklisten|03 Informationen>/` und einmal unter `Projektadmin AHB/18-Nachhaltiges
Bauen/18.x …/` mit sprechendem Namen. **Drei Dateinamen, ein Werk.** Wer nach Dateinamen plant,
plant gegen einen Vorrat, den es nicht gibt.

**Methode (aus Run 136 uebernommen, hier systematisiert):** Der `quickXorHash` kommt bei einer
Graph-`delta`-Abfrage ueber den ganzen Drive **gratis mit**, wenn `file` im `$select` steht —
ein Durchlauf statt eines Downloads plus Wort-Diff je Verdachtsfall. Befehl:

```
m365 request --url "https://graph.microsoft.com/v1.0/drives/<driveId>/root/delta?\$select=id,name,size,file,folder,parentReference"
```
Drive-ID `02_Recht_Norm`: `b!4b0MvG164Uif9nUvAUN-vhxlu8ogEiVPhn2VS4jG3SfT25dFWtAPQ7JsQfZ1A7n_`
(⚠ die server-relative URL heisst intern `PL  Immobilienpreise` mit zwei Leerzeichen — der
Graph-Weg ueber die Drive-ID umgeht diese Falle, siehe `connectors/WEGE.md`.)

**Abgrenzung zur Dubletten-Tabelle im `pdf-inventar.md`:** dort stehen per Wort-Diff gepruefte
Einzelfaelle, auch die belegten **Nicht**-Dubletten (spaetere Revisionen mit anderem Stand). Die
Befunde beider Register widersprechen sich nicht: alle dort als «KEINE Dublette» gefuehrten Paare
haben hier erwartungsgemaess **verschiedene** Hashes. Der Hash entscheidet Byte-Gleichheit, nicht
Werk-Gleichheit — zwei Ausgaben desselben Werks sind nie byte-identisch und muessen weiterhin am
Titelblatt unterschieden werden (siehe die Editionskette 09/2006 → 2008 → 2009 in
`ecobkp-editionskette-2006-2009`).

## 1. 3 Ablagen · 99127 Bytes · `8p53eAtP9Pe275EG9a7Ragu8Tw0=`
- `/04_Merkblätter/Projektadmin AHB/18-Nachhaltiges Bauen/18.1 Grundsaetze/Zielvereinbarungen_SIA112.1_Nachhaltiges_Bauen_(Uebersicht).pdf`
- `/04_Merkblätter/eco/1.13Zielvereinbarungen_SIA112_1.pdf`
- `/04_Merkblätter/eco/Nachhaltiges Bauen/02 Checklisten/1.13.C Zielvereinbarungen SIA112_1.pdf`

## 2. 3 Ablagen · 170597 Bytes · `Sj94OjgS0/zWGWtoSRFFCCkcFoM=`
- `/04_Merkblätter/Projektadmin AHB/18-Nachhaltiges Bauen/18.1 Grundsaetze/Nachhaltige_Gebaeudeerneuerung_(Checkliste).pdf`
- `/04_Merkblätter/eco/1.15Checkliste_Genossenschaften.pdf`
- `/04_Merkblätter/eco/Nachhaltiges Bauen/02 Checklisten/1.15.C Checkliste nachhaltige GebÑudeerneuerung.pdf`

## 3. 3 Ablagen · 471237 Bytes · `DHH4TITSTa4pioV0PIB/5z56oRw=`
- `/04_Merkblätter/Projektadmin AHB/18-Nachhaltiges Bauen/18.1 Grundsaetze/Gebaeudelabel_MINERGIE-ECO_(Flyer).pdf`
- `/04_Merkblätter/eco/1.16.I_Gebaudelabel-MINERGIE-ECO.pdf`
- `/04_Merkblätter/eco/Nachhaltiges Bauen/03 Informationen/1.16.I Gebaeudelabel MINERGIE-ECO.pdf`

## 4. 3 Ablagen · 4094375 Bytes · `8QfxN7ab4s+ihxAAFyJb7JviVx4=`
- `/04_Merkblätter/Projektadmin AHB/18-Nachhaltiges Bauen/18.3 Baustoffe (Bauoekologie & Stofffluesse)/Recycling_Beton_(KBOB-Empfehlung_2007.2).pdf`
- `/04_Merkblätter/eco/3.38RecyclingBetonKBOB_2007_2.pdf`
- `/04_Merkblätter/eco/Nachhaltiges Bauen/03 Informationen/3.38.I Recycling Beton KBOB_2007_2.pdf`

## 5. 3 Ablagen · 1753618 Bytes · `/UjyXK3/PbTgIIc3Iv1tLOLDMsg=`
- `/04_Merkblätter/Projektadmin AHB/18-Nachhaltiges Bauen/18.4 Wohlbefinden (Innenraumklima)/Gutes_Innenraumklima_ist_planbar_(KBOB-Empfehlung_2004.1).pdf`
- `/04_Merkblätter/eco/4.13Innenraumklima.pdf`
- `/04_Merkblätter/eco/Nachhaltiges Bauen/02 Checklisten/4.13.C Gutes Innenraumklima.pdf`

## 6. 3 Ablagen · 54159 Bytes · `v2kyk+WtKH+YqkKVoO4QJ+SyIyc=`
- `/04_Merkblätter/Projektadmin AHB/18-Nachhaltiges Bauen/18.4 Wohlbefinden (Innenraumklima)/Schadstoff_in_Bauten_(Checkliste).pdf`
- `/04_Merkblätter/eco/4.14SchadstoffinBauten.pdf`
- `/04_Merkblätter/eco/Nachhaltiges Bauen/02 Checklisten/4.14.C Schadstoff in Bauten.pdf`

## 7. 3 Ablagen · 29182 Bytes · `jrbJthX0WJzz+fYXv+WDEeOK3r8=`
- `/04_Merkblätter/Projektadmin AHB/18-Nachhaltiges Bauen/18.4 Wohlbefinden (Innenraumklima)/Vorgehen_bei_Beschwerden_(Checkliste).pdf`
- `/04_Merkblätter/eco/4.15VorgehenbeiBeschwerden.pdf`
- `/04_Merkblätter/eco/Nachhaltiges Bauen/02 Checklisten/4.15.C Vorgehen bei Beschwerden.pdf`

## 8. 3 Ablagen · 724221 Bytes · `4ZCvZh++syknFgTFk5UH9hqesyQ=`
- `/04_Merkblätter/Projektadmin AHB/18-Nachhaltiges Bauen/18.4 Wohlbefinden (Innenraumklima)/PCB_in_Fugendichtung_(KBOB-Empfehlung_2004.4).pdf`
- `/04_Merkblätter/eco/4.27Fugendichtungsmassen.pdf`
- `/04_Merkblätter/eco/Nachhaltiges Bauen/03 Informationen/4.27.I PCB in Fugendichtungsmassen(KBOB2004_4).pdf`

## 9. 3 Ablagen · 81531 Bytes · `7coSGElLNGYYpVM6xr3Njhhs700=`
- `/04_Merkblätter/Projektadmin AHB/18-Nachhaltiges Bauen/18.4 Wohlbefinden (Innenraumklima)/Elektrosmog_(Informationsblatt_5.7).pdf`
- `/04_Merkblätter/eco/4.76Elektrosmog.pdf`
- `/04_Merkblätter/eco/Nachhaltiges Bauen/03 Informationen/4.76.I Elektrosmog.pdf`

## 10. 2 Ablagen · 178033 Bytes · `VYTIKPNo10OSdEtVV+gEr/eLUdM=`
- `/04_Merkblätter/eco/1.11Meilenschritte_05_2006.pdf`
- `/04_Merkblätter/eco/Nachhaltiges Bauen/01 verbindliche Richtlinien/1.11.R Massstaebe fÅr Umwelt- und Energiegerechtes Bauen.pdf`

## 11. 2 Ablagen · 374979 Bytes · `QMsEF58aduRatMLlYJYPqYycHT0=`
- `/04_Merkblätter/eco/1.14OekologischBauen_PlanungProjektierung.pdf`
- `/04_Merkblätter/eco/Nachhaltiges Bauen/02 Checklisten/1.14.C Oekologisch_Bauen_Planung_Projektierung.pdf`

## 12. 2 Ablagen · 3633285 Bytes · `UkJtBU/AkhlJ6xLN3+9wblY/OdE=`
- `/04_Merkblätter/eco/2.33Haushaltgeraete.pdf`
- `/04_Merkblätter/eco/Nachhaltiges Bauen/02 Checklisten/2.33.C HaushaltgerÑte_2008.pdf`

## 13. 2 Ablagen · 2134567 Bytes · `lH0TnB6pvO2GYgIgejI+ds5UluU=`
- `/04_Merkblätter/eco/2.43Solarstromanlagen.pdf`
- `/04_Merkblätter/eco/Nachhaltiges Bauen/02 Checklisten/2.43.C Solarstromanlagen.pdf`

## 14. 2 Ablagen · 2432210 Bytes · `QV+viyR+sQFJg9H24QI5ntLCqL0=`
- `/04_Merkblätter/eco/3.12MerkblaetternachBKP_1_2008_ganzer_Inhalt.pdf`
- `/04_Merkblätter/eco/Nachhaltiges Bauen/01 verbindliche Richtlinien/3.12.R MerkblÑtter nach BKP_2008_.pdf`

## 15. 2 Ablagen · 64309 Bytes · `GhaITqu2kHqDcczYuSwpKT18t1I=`
- `/04_Merkblätter/eco/3.14Deviskontrolle.pdf`
- `/04_Merkblätter/eco/Nachhaltiges Bauen/02 Checklisten/3.14.C Checkliste Deviskontrolle.pdf`

## 16. 2 Ablagen · 70322 Bytes · `OoyQjs0aDdLQfl1qJB1tvM/6QDo=`
- `/04_Merkblätter/eco/3.15Baustellenkontrolle.pdf`
- `/04_Merkblätter/eco/Nachhaltiges Bauen/02 Checklisten/3.15.C Baustellenkontrolle.pdf`

## 17. 2 Ablagen · 241146 Bytes · `1gkcp5E2jXKpBn2tdtMHHMA9DIE=`
- `/04_Merkblätter/eco/3.36KBOB_Empfehlung_2007_1.pdf`
- `/04_Merkblätter/eco/Nachhaltiges Bauen/03 Informationen/3.26.I Hochbaukonstr nach îkol gesichtspunkten.pdf`

## 18. 2 Ablagen · 69499 Bytes · `2fXqnctIqPZ2LMy/Gd0nI2lTxTI=`
- `/04_Merkblätter/eco/4.16Gebaudescreening.pdf`
- `/04_Merkblätter/eco/Nachhaltiges Bauen/02 Checklisten/4.16.C Gebudescreening.pdf`

## 19. 2 Ablagen · 173047 Bytes · `bTCe0gAcRh9s6ClDcEb9x82xqgk=`
- `/04_Merkblätter/eco/4.26Asbest.pdf`
- `/04_Merkblätter/eco/Nachhaltiges Bauen/03 Informationen/4.26.I Asbest(ZUP41_2005).pdf`

## 20. 2 Ablagen · 5235353 Bytes · `41jqUYEOAMHZ8kUlSexG0C16Y7k=`
- `/04_Merkblätter/eco/5.26PflanzenamBau.pdf`
- `/04_Merkblätter/eco/Nachhaltiges Bauen/03 Informationen/5.26.I Pflanzen am Bau.pdf`

## 21. 2 Ablagen · 2664647 Bytes · `rPJ8qVulVbiv7IQQPFU+yp+lRQA=`
- `/04_Merkblätter/eco/5.36Wassersparen.pdf`
- `/04_Merkblätter/eco/Nachhaltiges Bauen/03 Informationen/5.36.I Wassersparen.pdf`

## 22. 2 Ablagen · 49339 Bytes · `kmXgblew2vmbLI9eVUF+Bx3U8XM=`
- `/04_Merkblätter/eco/6.16Eidg.Gesetze_Verordnungen_1-2005.pdf`
- `/04_Merkblätter/eco/Nachhaltiges Bauen/03 Informationen/6.16.I Eidg.Gesetze_Verordnungen_1-2005.pdf`

## 23. 2 Ablagen · 179336 Bytes · `0OAaFs3SCeLEv9Zc5XjeMwh0o7I=`
- `/06_Richtlinien/Minergie/Merkblaetter/VoHi_EN-02_de.pdf`
- `/06_Richtlinien/Minergie/SIA380_1_Energie_im_Hochbau/VoHi_EN-02_de.pdf`

