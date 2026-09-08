# Variante: Sender je Kategorie abfragen (Panel liefert ohne category_id leere Liste). Nur Namen/IDs ausgeben.
import sqlite3, sys, json, urllib.request, urllib.parse, os, re
db = os.path.expanduser("~/Library/Containers/com.gsetech.gseosxiptvpro/Data/Library/Application Support/GSE SMART IPTV/xepgsource.db")
server, user, pw = sqlite3.connect(db).execute("select server, username, password from apitv_source where name='Ste2022'").fetchone()
api = f"{server.rstrip('/')}/player_api.php?" + urllib.parse.urlencode({"username": user, "password": pw})
def get(q):
    req = urllib.request.Request(api + "&" + q, headers={"User-Agent": "VLC/3.0.21 LibVLC/3.0.21"})
    with urllib.request.urlopen(req, timeout=25) as r: return json.load(r)
cats = get("action=get_live_categories")
catpat = re.compile(sys.argv[1], re.I); chpat = re.compile(sys.argv[2], re.I)
print("Kategorien passend:")
for c in cats:
    if catpat.search(c["category_name"]): print("  ", c["category_id"], c["category_name"])
for c in cats:
    if not catpat.search(c["category_name"]): continue
    for s in get("action=get_live_streams&category_id=" + str(c["category_id"])):
        if chpat.search(s.get("name","")): print(f'{s["stream_id"]:>8} | {c["category_name"][:26]:<26} | {s["name"][:70]}')
