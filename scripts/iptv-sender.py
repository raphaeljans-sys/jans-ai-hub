# Listet Live-Sender des eigenen IPTV-Abos (Xtream player_api, Quelle: GSE xepgsource.db, Eintrag Ste2022)
# nach Namensmuster. Gibt NUR Sendername, stream_id und Kategorie aus, nie Zugangsdaten.
import sqlite3, sys, json, urllib.request, urllib.parse, os, re
db = os.path.expanduser("~/Library/Containers/com.gsetech.gseosxiptvpro/Data/Library/Application Support/GSE SMART IPTV/xepgsource.db")
server, user, pw = sqlite3.connect(db).execute("select server, username, password from apitv_source where name='Ste2022'").fetchone()
api = f"{server.rstrip('/')}/player_api.php?" + urllib.parse.urlencode({"username": user, "password": pw})
def get(action):
    req = urllib.request.Request(api + "&action=" + action, headers={"User-Agent": "VLC/3.0.21 LibVLC/3.0.21"})
    with urllib.request.urlopen(req, timeout=25) as r: return json.load(r)
if sys.argv[1:2] == ["--url"]:
    print(f"{server.rstrip('/')}/live/{user}/{pw}/{sys.argv[2]}.ts"); sys.exit(0)
cats = {c["category_id"]: c["category_name"] for c in get("get_live_categories")}
streams = get("get_live_streams")
print("Live-Sender total:", len(streams), "| Kategorien:", len(cats))
pat = re.compile("|".join(sys.argv[1:]) if len(sys.argv) > 1 else "blue sport|dazn|prime|champions|villarreal|dortmund", re.I)
for s in streams:
    n = s.get("name",""); c = cats.get(str(s.get("category_id")), "")
    if pat.search(n) or pat.search(c):
        print(f'{s["stream_id"]:>8} | {c[:28]:<28} | {n[:70]}')
