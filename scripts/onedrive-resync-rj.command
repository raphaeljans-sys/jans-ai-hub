#!/bin/bash
# OneDrive Re-Sync aller 32 JANS-Bibliotheken fuer rj@raphaeljans.ch
# Generiert 10.06.2026 aus dem bisherigen Business2-Profil (admin@), IDs via Graph verifiziert.
# VORAUSSETZUNG: OneDrive laeuft und ist mit rj@raphaeljans.ch angemeldet.
set -u
echo "Starte Re-Sync von 32 Bibliotheken... (je ~8 s Abstand, total ~4-5 Min)"

echo "[1/32] AD - 01 Geschaeftsfuerung"
open "odopen://sync/?siteId=%7B21b17ad6-276e-450e-a921-02865256ac92%7D&webId=%7Bcabb651c-1220-4f25-867d-954b88c6dd27%7D&listId=%7B71401282-f765-48bb-9d4f-c9c4a90dc0be%7D&userEmail=rj%40raphaeljans.ch&webUrl=https%3A%2F%2Fraphaeljans.sharepoint.com%2Fsites%2FAD&webTitle=AD&listTitle=01%20Geschaeftsfuerung"
sleep 8

echo "[2/32] AD - 02 IT"
open "odopen://sync/?siteId=%7B21b17ad6-276e-450e-a921-02865256ac92%7D&webId=%7Bcabb651c-1220-4f25-867d-954b88c6dd27%7D&listId=%7B24d54768-547d-46ea-8140-471ccd51c97d%7D&userEmail=rj%40raphaeljans.ch&webUrl=https%3A%2F%2Fraphaeljans.sharepoint.com%2Fsites%2FAD&webTitle=AD&listTitle=02%20IT"
sleep 8

echo "[3/32] AD - 06 Unternehmung"
open "odopen://sync/?siteId=%7B21b17ad6-276e-450e-a921-02865256ac92%7D&webId=%7Bcabb651c-1220-4f25-867d-954b88c6dd27%7D&listId=%7Be5e2002d-eff5-493a-8720-53d8503d5e8e%7D&userEmail=rj%40raphaeljans.ch&webUrl=https%3A%2F%2Fraphaeljans.sharepoint.com%2Fsites%2FAD&webTitle=AD&listTitle=06%20Unternehmung"
sleep 8

echo "[4/32] AD - 03 Kommunikation"
open "odopen://sync/?siteId=%7B21b17ad6-276e-450e-a921-02865256ac92%7D&webId=%7Bcabb651c-1220-4f25-867d-954b88c6dd27%7D&listId=%7Ba4feb1bd-5df0-46d5-9278-6f39db9a3e6e%7D&userEmail=rj%40raphaeljans.ch&webUrl=https%3A%2F%2Fraphaeljans.sharepoint.com%2Fsites%2FAD&webTitle=AD&listTitle=03%20Kommunikation"
sleep 8

echo "[5/32] AR - 03 Studien"
open "odopen://sync/?siteId=%7Be279b921-c163-4bcc-8e43-c438943757d5%7D&webId=%7Bcabb651c-1220-4f25-867d-954b88c6dd27%7D&listId=%7B3d14def1-f5e6-4636-9161-4a6b0efb0421%7D&userEmail=rj%40raphaeljans.ch&webUrl=https%3A%2F%2Fraphaeljans.sharepoint.com%2Fsites%2FJANS.PROJEKTE&webTitle=AR&listTitle=03%20Studien"
sleep 8

echo "[6/32] AD - 04 Infrastruktur"
open "odopen://sync/?siteId=%7B21b17ad6-276e-450e-a921-02865256ac92%7D&webId=%7Bcabb651c-1220-4f25-867d-954b88c6dd27%7D&listId=%7Ba9a50438-73a8-4dc5-aa93-ded6de8706ca%7D&userEmail=rj%40raphaeljans.ch&webUrl=https%3A%2F%2Fraphaeljans.sharepoint.com%2Fsites%2FAD&webTitle=AD&listTitle=04%20Infrastruktur"
sleep 8

echo "[7/32] AD - 05 Vorlagen"
open "odopen://sync/?siteId=%7B21b17ad6-276e-450e-a921-02865256ac92%7D&webId=%7Bcabb651c-1220-4f25-867d-954b88c6dd27%7D&listId=%7B14b86e27-b706-4b82-95d6-8b24f0c16418%7D&userEmail=rj%40raphaeljans.ch&webUrl=https%3A%2F%2Fraphaeljans.sharepoint.com%2Fsites%2FAD&webTitle=AD&listTitle=05%20Vorlagen"
sleep 8

echo "[8/32] SE - Server"
open "odopen://sync/?siteId=%7B19d3178a-2484-4a5c-b7bd-e8449870d4e0%7D&webId=%7Bcabb651c-1220-4f25-867d-954b88c6dd27%7D&listId=%7B2bdc2f77-ec07-45b3-a640-510679fac214%7D&userEmail=rj%40raphaeljans.ch&webUrl=https%3A%2F%2Fraphaeljans.sharepoint.com%2Fsites%2FSE&webTitle=SE&listTitle=Server"
sleep 8

echo "[9/32] AR - 07 Archiv"
open "odopen://sync/?siteId=%7Be279b921-c163-4bcc-8e43-c438943757d5%7D&webId=%7Bcabb651c-1220-4f25-867d-954b88c6dd27%7D&listId=%7B6afcb8d0-850f-4271-b981-9d13c0ddf727%7D&userEmail=rj%40raphaeljans.ch&webUrl=https%3A%2F%2Fraphaeljans.sharepoint.com%2Fsites%2FJANS.PROJEKTE&webTitle=AR&listTitle=07%20Archiv"
sleep 8

echo "[10/32] JANS DATENAUSTAUSCH - Dokumente"
open "odopen://sync/?siteId=%7Be4b01309-4f92-475e-9411-04e54758899c%7D&webId=%7B80c13945-d2f9-473e-b778-9bc8bd264b9f%7D&listId=%7Bc1a2c0bf-f887-4ba6-b8eb-d35c5793a08a%7D&userEmail=rj%40raphaeljans.ch&webUrl=https%3A%2F%2Fraphaeljans.sharepoint.com%2Fsites%2FJANSDATENAUSTAUSCH&webTitle=JANS%20DATENAUSTAUSCH&listTitle=Dokumente"
sleep 8

echo "[11/32] PL - 02_Recht_Norm"
open "odopen://sync/?siteId=%7Bbc0cbde1-7a6d-48e1-9ff6-752f01437ebe%7D&webId=%7Bcabb651c-1220-4f25-867d-954b88c6dd27%7D&listId=%7B4597dbd3-d05a-430f-b26c-41f67503b9ff%7D&userEmail=rj%40raphaeljans.ch&webUrl=https%3A%2F%2Fraphaeljans.sharepoint.com%2Fsites%2FPL&webTitle=PL&listTitle=02_Recht_Norm"
sleep 8

echo "[12/32] PL - 01 Kartenportale"
open "odopen://sync/?siteId=%7Bbc0cbde1-7a6d-48e1-9ff6-752f01437ebe%7D&webId=%7Bcabb651c-1220-4f25-867d-954b88c6dd27%7D&listId=%7Bb01bbee4-2280-4e79-87b9-dc9affdb633e%7D&userEmail=rj%40raphaeljans.ch&webUrl=https%3A%2F%2Fraphaeljans.sharepoint.com%2Fsites%2FPL&webTitle=PL&listTitle=01%20Kartenportale"
sleep 8

echo "[13/32] PL - 03 Brandschutz"
open "odopen://sync/?siteId=%7Bbc0cbde1-7a6d-48e1-9ff6-752f01437ebe%7D&webId=%7Bcabb651c-1220-4f25-867d-954b88c6dd27%7D&listId=%7B1cdce5c9-f0a6-4dac-8fe6-94406bd4431e%7D&userEmail=rj%40raphaeljans.ch&webUrl=https%3A%2F%2Fraphaeljans.sharepoint.com%2Fsites%2FPL&webTitle=PL&listTitle=03%20Brandschutz"
sleep 8

echo "[14/32] PL - 04 Energie"
open "odopen://sync/?siteId=%7Bbc0cbde1-7a6d-48e1-9ff6-752f01437ebe%7D&webId=%7Bcabb651c-1220-4f25-867d-954b88c6dd27%7D&listId=%7Ba3075f8b-5967-446b-b361-53e82acb75f1%7D&userEmail=rj%40raphaeljans.ch&webUrl=https%3A%2F%2Fraphaeljans.sharepoint.com%2Fsites%2FPL&webTitle=PL&listTitle=04%20Energie"
sleep 8

echo "[15/32] AR - 01 Projekte"
open "odopen://sync/?siteId=%7Be279b921-c163-4bcc-8e43-c438943757d5%7D&webId=%7Bcabb651c-1220-4f25-867d-954b88c6dd27%7D&listId=%7Bcd36454e-f49d-4d95-bf1c-e90a3605d03e%7D&userEmail=rj%40raphaeljans.ch&webUrl=https%3A%2F%2Fraphaeljans.sharepoint.com%2Fsites%2FJANS.PROJEKTE&webTitle=AR&listTitle=01%20Projekte"
sleep 8

echo "[16/32] AR - 02 Wettbewerbe"
open "odopen://sync/?siteId=%7Be279b921-c163-4bcc-8e43-c438943757d5%7D&webId=%7Bcabb651c-1220-4f25-867d-954b88c6dd27%7D&listId=%7B78d8c11e-3606-4b51-b208-d418c205f867%7D&userEmail=rj%40raphaeljans.ch&webUrl=https%3A%2F%2Fraphaeljans.sharepoint.com%2Fsites%2FJANS.PROJEKTE&webTitle=AR&listTitle=02%20Wettbewerbe"
sleep 8

echo "[17/32] AR - 04 Honorarauftraege"
open "odopen://sync/?siteId=%7Be279b921-c163-4bcc-8e43-c438943757d5%7D&webId=%7Bcabb651c-1220-4f25-867d-954b88c6dd27%7D&listId=%7Bbbf24bf6-b8ef-4a8c-8b85-54e5fbf23952%7D&userEmail=rj%40raphaeljans.ch&webUrl=https%3A%2F%2Fraphaeljans.sharepoint.com%2Fsites%2FJANS.PROJEKTE&webTitle=AR&listTitle=04%20Honorarauftraege"
sleep 8

echo "[18/32] AR - 05 Transfer"
open "odopen://sync/?siteId=%7Be279b921-c163-4bcc-8e43-c438943757d5%7D&webId=%7Bcabb651c-1220-4f25-867d-954b88c6dd27%7D&listId=%7Bcc6838ee-4a80-4f7c-b98e-9eb91f12439d%7D&userEmail=rj%40raphaeljans.ch&webUrl=https%3A%2F%2Fraphaeljans.sharepoint.com%2Fsites%2FJANS.PROJEKTE&webTitle=AR&listTitle=05%20Transfer"
sleep 8

echo "[19/32] AR - 06 Referenzen"
open "odopen://sync/?siteId=%7Be279b921-c163-4bcc-8e43-c438943757d5%7D&webId=%7Bcabb651c-1220-4f25-867d-954b88c6dd27%7D&listId=%7B7c0238d4-b58f-422c-85e5-9e7adc55b177%7D&userEmail=rj%40raphaeljans.ch&webUrl=https%3A%2F%2Fraphaeljans.sharepoint.com%2Fsites%2FJANS.PROJEKTE&webTitle=AR&listTitle=06%20Referenzen"
sleep 8

echo "[20/32] WE - 01 Content"
open "odopen://sync/?siteId=%7B7ad446d0-48b9-4c71-923f-3dc26bf21dbb%7D&webId=%7Bcabb651c-1220-4f25-867d-954b88c6dd27%7D&listId=%7B8fd0ce41-bcc1-45fe-892c-aa9052334756%7D&userEmail=rj%40raphaeljans.ch&webUrl=https%3A%2F%2Fraphaeljans.sharepoint.com%2Fsites%2FWE&webTitle=WE&listTitle=01%20Content"
sleep 8

echo "[21/32] WE - 02 Korrespondenz"
open "odopen://sync/?siteId=%7B7ad446d0-48b9-4c71-923f-3dc26bf21dbb%7D&webId=%7Bcabb651c-1220-4f25-867d-954b88c6dd27%7D&listId=%7B9dbff96e-45cf-4e03-a685-1e549ef366fc%7D&userEmail=rj%40raphaeljans.ch&webUrl=https%3A%2F%2Fraphaeljans.sharepoint.com%2Fsites%2FWE&webTitle=WE&listTitle=02%20Korrespondenz"
sleep 8

echo "[22/32] WE - 03 KTV"
open "odopen://sync/?siteId=%7B7ad446d0-48b9-4c71-923f-3dc26bf21dbb%7D&webId=%7Bcabb651c-1220-4f25-867d-954b88c6dd27%7D&listId=%7Be84b1ec8-f8c1-45da-a856-e72c217d2a63%7D&userEmail=rj%40raphaeljans.ch&webUrl=https%3A%2F%2Fraphaeljans.sharepoint.com%2Fsites%2FWE&webTitle=WE&listTitle=03%20KTV"
sleep 8

echo "[23/32] WE - 04 Referenzen"
open "odopen://sync/?siteId=%7B7ad446d0-48b9-4c71-923f-3dc26bf21dbb%7D&webId=%7Bcabb651c-1220-4f25-867d-954b88c6dd27%7D&listId=%7Bbf3364e5-df4b-4faa-a552-b40b577c6427%7D&userEmail=rj%40raphaeljans.ch&webUrl=https%3A%2F%2Fraphaeljans.sharepoint.com%2Fsites%2FWE&webTitle=WE&listTitle=04%20Referenzen"
sleep 8

echo "[24/32] WE - 05 IT Equipment"
open "odopen://sync/?siteId=%7B7ad446d0-48b9-4c71-923f-3dc26bf21dbb%7D&webId=%7Bcabb651c-1220-4f25-867d-954b88c6dd27%7D&listId=%7B491a7c9d-9163-4cbf-b4db-3c9bebd9b358%7D&userEmail=rj%40raphaeljans.ch&webUrl=https%3A%2F%2Fraphaeljans.sharepoint.com%2Fsites%2FWE&webTitle=WE&listTitle=05%20IT%20Equipment"
sleep 8

echo "[25/32] WE - 06 Dokumente"
open "odopen://sync/?siteId=%7B7ad446d0-48b9-4c71-923f-3dc26bf21dbb%7D&webId=%7Bcabb651c-1220-4f25-867d-954b88c6dd27%7D&listId=%7B67c8d46d-cc91-483f-82d1-8b450f4275af%7D&userEmail=rj%40raphaeljans.ch&webUrl=https%3A%2F%2Fraphaeljans.sharepoint.com%2Fsites%2FWE&webTitle=WE&listTitle=06%20Dokumente"
sleep 8

echo "[26/32] IMMO - 01 Projekte"
open "odopen://sync/?siteId=%7Bbe9d0099-1c2f-4f52-b82e-9c38906e76c2%7D&webId=%7B7e168047-64c9-495a-81df-5cabb79f709b%7D&listId=%7B07cfd250-ed0d-4780-acaa-e754eba180b2%7D&userEmail=rj%40raphaeljans.ch&webUrl=https%3A%2F%2Fraphaeljans.sharepoint.com%2Fsites%2FIMMO&webTitle=IMMO&listTitle=01%20Projekte"
sleep 8

echo "[27/32] IMMO - 02 UBSFS"
open "odopen://sync/?siteId=%7Bbe9d0099-1c2f-4f52-b82e-9c38906e76c2%7D&webId=%7B7e168047-64c9-495a-81df-5cabb79f709b%7D&listId=%7B4ca10ea9-d45c-4670-adb3-d42a309754a8%7D&userEmail=rj%40raphaeljans.ch&webUrl=https%3A%2F%2Fraphaeljans.sharepoint.com%2Fsites%2FIMMO&webTitle=IMMO&listTitle=02%20UBSFS"
sleep 8

echo "[28/32] IMMO - 03 KNOW-HOW"
open "odopen://sync/?siteId=%7Bbe9d0099-1c2f-4f52-b82e-9c38906e76c2%7D&webId=%7B7e168047-64c9-495a-81df-5cabb79f709b%7D&listId=%7B08a5d1fc-ad12-46a2-9cdf-dffc48edc24d%7D&userEmail=rj%40raphaeljans.ch&webUrl=https%3A%2F%2Fraphaeljans.sharepoint.com%2Fsites%2FIMMO&webTitle=IMMO&listTitle=03%20KNOW-HOW"
sleep 8

echo "[29/32] IMMO - 04 Marktpreise"
open "odopen://sync/?siteId=%7Bbe9d0099-1c2f-4f52-b82e-9c38906e76c2%7D&webId=%7B7e168047-64c9-495a-81df-5cabb79f709b%7D&listId=%7B6d526398-cc1f-490f-be3e-b7d75dc0d1b0%7D&userEmail=rj%40raphaeljans.ch&webUrl=https%3A%2F%2Fraphaeljans.sharepoint.com%2Fsites%2FIMMO&webTitle=IMMO&listTitle=04%20Marktpreise"
sleep 8

echo "[30/32] IMMO - 05 Bodenpreise"
open "odopen://sync/?siteId=%7Bbe9d0099-1c2f-4f52-b82e-9c38906e76c2%7D&webId=%7B7e168047-64c9-495a-81df-5cabb79f709b%7D&listId=%7B0e915145-4e20-4bbe-8058-476a3db0059b%7D&userEmail=rj%40raphaeljans.ch&webUrl=https%3A%2F%2Fraphaeljans.sharepoint.com%2Fsites%2FIMMO&webTitle=IMMO&listTitle=05%20Bodenpreise"
sleep 8

echo "[31/32] IMMO - 06 Kennwerte"
open "odopen://sync/?siteId=%7Bbe9d0099-1c2f-4f52-b82e-9c38906e76c2%7D&webId=%7B7e168047-64c9-495a-81df-5cabb79f709b%7D&listId=%7B9425c3a6-b6d9-4e3b-919f-4a4975ab68c0%7D&userEmail=rj%40raphaeljans.ch&webUrl=https%3A%2F%2Fraphaeljans.sharepoint.com%2Fsites%2FIMMO&webTitle=IMMO&listTitle=06%20Kennwerte"
sleep 8

echo "[32/32] JANS - 2619-KISPI - Dokumente"
open "odopen://sync/?siteId=%7B9309f595-ed24-4bcd-bd4f-72500bda9bf7%7D&webId=%7B1b25bcf5-9af9-42e7-941d-9209672ac03f%7D&listId=%7B446c6ec2-c674-41c3-a1eb-ba28ba8e9655%7D&userEmail=rj%40raphaeljans.ch&webUrl=https%3A%2F%2Fraphaeljans.sharepoint.com%2Fsites%2Fkispi&webTitle=JANS%20-%202619-KISPI&listTitle=Dokumente"
sleep 8

echo "Fertig. OneDrive verbindet die Bibliotheken jetzt im Hintergrund."
echo "Kontrolle: ~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken-JANS sollte wieder alle Ordner zeigen."
