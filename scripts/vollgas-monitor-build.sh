#!/bin/bash
# ============================================================================
# +++ AUSGEBAUT AM 29.07.2026 (Entscheid Raphael) — NICHT MEHR LADEN +++
# ============================================================================
# Die Statusseite zeigte den VOLLGAS-Endlos-Runner, der ausgebaut ist (Begruendung
# im Kopf von vollgas-runner.sh). Der launchd-Job ch.jans.vollgas-monitor (alle 15 s,
# nur MacBook Pro) ist entladen, die plist nach *.disabled-260729 umbenannt, und die
# erzeugte logbuch/vollgas/monitor.html wurde entfernt: sie trug einen 15-Sekunden-
# Autorefresh und haette einen eingefrorenen Stand wie einen laufenden Betrieb
# angezeigt. Die Quell-Logs Macbookpro.log/Macmini.log werden nicht mehr frisch.
# Wer den Hub-Zustand sehen will: logbuch/vollgas/RADAR.md und FRUEHWARNUNG.md.
# ============================================================================
#
# vollgas-monitor-build.sh — erzeugt eine selbst-aktualisierende HTML-Statusseite
# ("Vollgas-Herzschlag") des VOLLGAS-Endlos-Runners BEIDER Stationen aus den NAS-Logs.
#
# Quelle: logbuch/vollgas/{Macbookpro,Macmini}.log (beide Stationen schreiben aufs NAS).
# Ausgabe: logbuch/vollgas/monitor.html (self-contained, meta-refresh 15 s, gitignored).
# Aufruf: einmalig manuell ODER alle 15 s via launchd ch.jans.vollgas-monitor.
# Braucht keinen ssh-Zugriff auf die andere Station — der laufende Loop wird aus dem
# Log abgeleitet (letzter START ohne folgendes ENDE).
set -uo pipefail

NAS_DIR="/Volumes/daten/jans-ai-hub/logbuch/vollgas"
OUT="$NAS_DIR/monitor.html"
END_DATE_DEFAULT="20260811"
[ -d "$NAS_DIR" ] || exit 0

NOW_EPOCH=$(date +%s)
NOW_HUMAN=$(date '+%d.%m.%Y  %H:%M:%S')

ts_epoch() { date -j -f "%Y-%m-%d %H:%M:%S" "$1" +%s 2>/dev/null || echo 0; }
fmt_dur() {
  local s=${1:-0}; [ "$s" -lt 0 ] 2>/dev/null && s=0
  if   [ "$s" -ge 3600 ]; then printf '%dh %02dm' $((s/3600)) $(((s%3600)/60))
  elif [ "$s" -ge 60 ];   then printf '%dm %02ds' $((s/60)) $((s%60))
  else printf '%ds' "$s"; fi
}

# awk-Parser: Zeile 1 = Steuerwerte (TAB-getrennt), danach die Ergebnis-<li>-HTML.
parse() {
  tail -n 700 "$1" 2>/dev/null | iconv -f UTF-8 -t UTF-8 -c 2>/dev/null | awk '
  function esc(s){ gsub(/&/,"\\&amp;",s); gsub(/</,"\\&lt;",s); gsub(/>/,"\\&gt;",s); return s }
  { ts=$1" "$2 }
  / START / { p=index($0," START "); lastStart=NR; lastStartTs=ts; lastStartLoop=substr($0,p+7) }
  / ENDE  / {
    lastEnde=NR
    p=index($0," ENDE  "); rest=substr($0,p+7)
    q=index(rest," (rc="); loopn=substr(rest,1,q-1)
    r=substr(rest,q+1); rcv="?"; durv="?"; summ=""
    if (match(r,/rc=[0-9]+/))      rcv=substr(r,RSTART+3,RLENGTH-3)
    if (match(r,/, [0-9]+s\)/))    durv=substr(r,RSTART+2,RLENGTH-3)
    c=index(r,"): "); if(c>0) summ=substr(r,c+3)
    n++; Rloop[n]=loopn; Rrc[n]=rcv; Rdur[n]=durv; Rsum[n]=summ; Rts[n]=ts
  }
  /=== VOLLGAS-Runner gestartet/ {
    runnerTs=ts
    if (match($0,/PID [0-9]+/))  pid=substr($0,RSTART+4,RLENGTH-4)
    if (match($0,/Ende [0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]/)) endd=substr($0,RSTART+5,8)
  }
  /--- Zyklus / {
    if (match($0,/Zyklus [0-9]+/)) cyc=substr($0,RSTART+7,RLENGTH-7)
    p=index($0,"Loops: "); if(p>0){ cl=substr($0,p+7); sub(/ ---.*/,"",cl); cycloops=cl }
  }
  { lastEventTs=ts }
  END {
    running=""; runningTs=""
    if (lastStart>lastEnde){ running=lastStartLoop; runningTs=lastStartTs }
    printf "%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\n", running, runningTs, cyc, pid, endd, lastEventTs, runnerTs, cycloops
    start=n-5; if(start<1)start=1
    for(i=n;i>=start;i--){
      cls=(Rrc[i]=="0")?"ok":"err"
      s=Rsum[i]; if(length(s)>150) s=substr(s,1,150) "…"
      tt=Rts[i]; sub(/^.* /,"",tt)
      printf "<li class=\"res\"><span class=\"dot %s\"></span><span class=\"rl\">%s</span><span class=\"rm\">%s &middot; rc %s &middot; %s</span><span class=\"rs\">%s</span></li>\n", cls, esc(Rloop[i]), tt, esc(Rrc[i]), esc(Rdur[i]), esc(s)
    }
  }'
}

build_station() { # $1 label  $2 logfile
  local label="$1" log="$2"
  if [ ! -f "$log" ]; then
    printf '<section class="card"><div class="ch"><span class="hb idle"></span><h2>%s</h2></div><p class="muted">kein Log gefunden</p></section>' "$label"
    return
  fi
  local out ctrl results
  out="$(parse "$log")"
  ctrl="$(printf '%s\n' "$out" | head -1)"
  results="$(printf '%s\n' "$out" | tail -n +2)"
  local running runningTs cyc pid endd lastEventTs runnerTs cycloops
  IFS=$'\t' read -r running runningTs cyc pid endd lastEventTs runnerTs cycloops <<<"$ctrl"

  local lastEv age stale=0
  lastEv=$(ts_epoch "$lastEventTs"); age=$((NOW_EPOCH - lastEv))
  [ "$lastEv" -eq 0 ] && age=999999
  [ "$age" -gt 900 ] && stale=1

  # Statuszeile
  local hbcls statustxt runstart=0 elapsed_html=""
  if [ -n "$running" ] && [ "$stale" -eq 0 ]; then
    hbcls="live"; runstart=$(ts_epoch "$runningTs")
    local el=$((NOW_EPOCH - runstart))
    statustxt="läuft <strong>${running}</strong>"
    elapsed_html="<span class=\"elapsed\" data-start=\"${runstart}\">$(fmt_dur "$el")</span>"
  elif [ "$stale" -eq 1 ]; then
    hbcls="stale"; statustxt="keine Aktivität seit $(fmt_dur "$age")"
  else
    hbcls="between"; statustxt="zwischen Läufen"
  fi

  # Runner-seit + Zyklus-Warteschlange
  local runner_since="—"
  if [ -n "$runnerTs" ]; then
    local rs; rs=$(ts_epoch "$runnerTs"); [ "$rs" -gt 0 ] && runner_since="seit $(fmt_dur $((NOW_EPOCH - rs)))"
  fi
  local queue=""
  if [ -n "$cycloops" ]; then
    for lp in $cycloops; do
      if [ "$lp" = "$running" ]; then queue="$queue<span class=\"q qon\">$lp</span>"
      else queue="$queue<span class=\"q\">$lp</span>"; fi
    done
  fi

  printf '<section class="card">'
  printf '<div class="ch"><span class="hb %s"></span><h2>%s</h2></div>' "$hbcls" "$label"
  printf '<p class="status">%s %s</p>' "$statustxt" "$elapsed_html"
  printf '<p class="meta">Zyklus %s &middot; PID %s &middot; Runner %s</p>' "${cyc:-–}" "${pid:-–}" "$runner_since"
  [ -n "$queue" ] && printf '<div class="queue">%s</div>' "$queue"
  printf '<h3>letzte Ergebnisse</h3><ul class="results">%s</ul>' "$results"
  printf '</section>'
}

CARD_MB="$(build_station 'MacBook Pro' "$NAS_DIR/Macbookpro.log")"
CARD_MINI="$(build_station 'Mac Mini' "$NAS_DIR/Macmini.log")"

# END_DATE / Tage bis Selbst-Drosselung
ENDD="${END_DATE_DEFAULT}"
END_HUMAN="${ENDD:6:2}.${ENDD:4:2}.${ENDD:0:4}"
END_EPOCH=$(date -j -f "%Y%m%d %H:%M:%S" "${ENDD} 00:00:00" +%s 2>/dev/null || echo 0)
DAYS_LEFT="?"; [ "$END_EPOCH" -gt 0 ] && DAYS_LEFT=$(( (END_EPOCH - NOW_EPOCH) / 86400 ))

cat > "$OUT" <<HTML
<!doctype html>
<html lang="de">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="refresh" content="15">
<title>JANS · Vollgas-Herzschlag</title>
<style>
:root{
  --bg:#141110; --card:#1d1917; --card2:#221d1a; --line:#332b27;
  --tx:#efe7db; --mut:#a3968a; --dim:#7c7067;
  --rot:#c04a5e; --rotdim:#8c2233; --ok:#7fbf95; --err:#e07a72;
}
*{box-sizing:border-box}
html,body{margin:0}
body{background:var(--bg);color:var(--tx);
  font-family:ui-sans-serif,-apple-system,"Helvetica Neue",Arial,sans-serif;
  font-size:15px;line-height:1.5;padding:26px 22px 40px;-webkit-font-smoothing:antialiased}
.mono{font-family:ui-monospace,"SF Mono",Menlo,monospace}
header{display:flex;align-items:baseline;justify-content:space-between;
  gap:14px;flex-wrap:wrap;border-bottom:1px solid var(--line);padding-bottom:14px;margin-bottom:4px}
h1{font-size:19px;font-weight:650;letter-spacing:.2px;margin:0}
h1 .ac{color:var(--rot)}
header .upd{font-family:ui-monospace,Menlo,monospace;font-size:12.5px;color:var(--dim)}
.pulsebar{height:2px;margin:14px 0 20px;border-radius:2px;
  background:linear-gradient(90deg,transparent,var(--rotdim),var(--rot),var(--rotdim),transparent);
  background-size:220% 100%;animation:sweep 2.6s linear infinite;opacity:.9}
@keyframes sweep{from{background-position:180% 0}to{background-position:-40% 0}}
.grid{display:flex;gap:18px;flex-wrap:wrap}
.card{background:var(--card);border:1px solid var(--line);border-radius:12px;
  padding:18px 18px 16px;flex:1 1 340px;min-width:300px}
.ch{display:flex;align-items:center;gap:11px;margin-bottom:10px}
h2{font-size:15.5px;font-weight:600;margin:0;letter-spacing:.2px}
.hb{width:12px;height:12px;border-radius:50%;background:var(--dim);flex:none;position:relative}
.hb.live{background:var(--rot)}
.hb.live::after{content:"";position:absolute;inset:-4px;border-radius:50%;
  border:2px solid var(--rot);animation:beat 1.35s ease-out infinite}
@keyframes beat{0%{transform:scale(.6);opacity:.9}70%{transform:scale(1.9);opacity:0}100%{opacity:0}}
.hb.between{background:var(--ok)}
.hb.stale{background:var(--err)}
.hb.idle{background:var(--dim)}
.status{margin:2px 0 6px;font-size:15px}
.status strong{color:var(--rot);font-weight:600}
.elapsed{font-family:ui-monospace,Menlo,monospace;color:var(--tx);background:var(--card2);
  border:1px solid var(--line);border-radius:6px;padding:1px 7px;font-size:13px;margin-left:6px}
.meta{margin:2px 0 12px;color:var(--mut);font-size:12.5px;
  font-family:ui-monospace,Menlo,monospace}
.queue{display:flex;flex-wrap:wrap;gap:6px;margin:0 0 14px}
.q{font-family:ui-monospace,Menlo,monospace;font-size:11.5px;color:var(--dim);
  background:var(--card2);border:1px solid var(--line);border-radius:20px;padding:2px 10px}
.q.qon{color:var(--tx);border-color:var(--rotdim);background:#2a1c1f}
h3{font-size:11px;font-weight:600;text-transform:uppercase;letter-spacing:1.4px;
  color:var(--dim);margin:6px 0 8px}
ul.results{list-style:none;margin:0;padding:0}
li.res{padding:8px 0;border-top:1px solid var(--line);display:grid;
  grid-template-columns:auto 1fr;grid-template-areas:"d l" ". m" ". s";column-gap:9px;row-gap:2px}
li.res .dot{grid-area:d;width:8px;height:8px;border-radius:50%;margin-top:6px}
li.res .dot.ok{background:var(--ok)}
li.res .dot.err{background:var(--err)}
.rl{grid-area:l;font-weight:600;font-size:13.5px}
.rm{grid-area:m;font-family:ui-monospace,Menlo,monospace;font-size:11.5px;color:var(--dim)}
.rs{grid-area:s;color:var(--mut);font-size:12.5px;line-height:1.45}
.muted{color:var(--mut)}
footer{margin-top:22px;padding-top:14px;border-top:1px solid var(--line);
  color:var(--dim);font-size:12px;font-family:ui-monospace,Menlo,monospace;
  display:flex;justify-content:space-between;gap:14px;flex-wrap:wrap}
footer .rot{color:var(--rot)}
</style>
</head>
<body>
<header>
  <h1><span class="ac">&#9646;</span> JANS &middot; Vollgas-Herzschlag</h1>
  <div class="upd">aktualisiert ${NOW_HUMAN} &middot; Auto-Refresh 15 s</div>
</header>
<div class="pulsebar"></div>
<div class="grid">
${CARD_MB}
${CARD_MINI}
</div>
<footer>
  <span>Endlos-Runner beider Stationen &middot; Quelle: logbuch/vollgas/*.log</span>
  <span>Selbst-Ende <span class="rot">${END_HUMAN}</span> (noch ${DAYS_LEFT} Tage &middot; 5x-Abo-Downshift)</span>
</footer>
<script>
// Live-Sekundenzähler zwischen den 15-s-Reloads — das eigentliche "Herzschlag"-Gefühl
function fmt(s){s=Math.max(0,s|0);
  if(s>=3600)return (s/3600|0)+"h "+String((s%3600/60|0)).padStart(2,"0")+"m";
  if(s>=60)return (s/60|0)+"m "+String(s%60).padStart(2,"0")+"s";
  return s+"s";}
function tick(){var now=Date.now()/1000|0;
  document.querySelectorAll(".elapsed").forEach(function(e){
    var st=+e.dataset.start; if(st)e.textContent=fmt(now-st);});}
tick();setInterval(tick,1000);
</script>
</body>
</html>
HTML

exit 0
