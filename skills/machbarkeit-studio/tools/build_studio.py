#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
build_studio.py — JANS Machbarkeits-Studio (interaktives Live-Studio, eine HTML-Datei)

Das Herzstueck des Skills `machbarkeit-studio`. Erzeugt aus einem Modell (JSON) eine
EINZIGE, selbst-tragende HTML-Datei, die der Bauherr auf jedem Geraet offline oeffnet:
  - JANS-Look (DM Sans + Fragment Mono, monochrom + Oxidrot-Akzent), Fonts eingebettet
  - Live-Engine: Regler/Eingaben (Kennwert, Verkaufspreis/Miete, Marge, Diskont, ...)
    rechnen Volumen, Erstellungskosten BKP 1-5, Residualwert/zahlbaren Landwert, Marge,
    ROI fuer ALLE Varianten in Echtzeit um (Was-waere-wenn am Tisch).
  - Variantenvergleich (Tabelle + Balken) + Live-Sensitivitaet (Marge/Residual gegen
    Flaechen-Delta x Kostenmodell).
  - Druck-Knopf -> A4-PDF im JANS-Layout.

Die JS-Engine spiegelt 1:1 den Rechen-Kern tools/studio_calc.py.

Aufruf:
  python build_studio.py <model.json> <ausgabe.html>

Modell-Schema: schema/studio-model.schema.json + beispiele/beispiel_*.json
"""
import sys, os, json, base64, math

_HERE = os.path.dirname(os.path.abspath(__file__))
_FONTS = os.path.join(_HERE, "assets", "fonts")
sys.path.insert(0, _HERE)
from studio_calc import studie_rechnen  # noqa: E402
from massing_svg import massing_svg     # noqa: E402


def _font_b64(name):
    p = os.path.join(_FONTS, name)
    with open(p, "rb") as f:
        return base64.b64encode(f.read()).decode("ascii")


def _fontface():
    faces = []
    for fam, file, style in [
        ("DM Sans", "DMSans.ttf", "normal"),
        ("DM Sans", "DMSans-Italic.ttf", "italic"),
        ("Fragment Mono", "FragmentMono.ttf", "normal"),
        ("Fragment Mono", "FragmentMono-Italic.ttf", "italic"),
    ]:
        try:
            b = _font_b64(file)
        except FileNotFoundError:
            continue
        wght = "100 900" if fam == "DM Sans" else "400"
        faces.append(
            f"@font-face{{font-family:'{fam}';src:url(data:font/ttf;base64,{b}) format('truetype');"
            f"font-weight:{wght};font-style:{style};font-display:swap;}}"
        )
    return "\n".join(faces)


CSS = r"""
:root{
  --ink:#1A1A1A; --grey:#6A6A6A; --line:#1A1A1A; --hair:#CBCBCB; --faint:#EFEFEF;
  --accent:#A23E30; --bg:#FFFFFF; --panel:#FAF8F5; --rng:#1A1A1A;
}
*{margin:0;padding:0;box-sizing:border-box;}
html,body{background:#E9E6E0;color:var(--ink);font-family:'DM Sans',sans-serif;
  -webkit-font-smoothing:antialiased;text-rendering:geometricPrecision;}
body{font-size:13px;line-height:1.5;padding:24px 16px 64px;}
.mono{font-family:'Fragment Mono',monospace;}
.num{font-family:'Fragment Mono',monospace;font-variant-numeric:tabular-nums;}
.sheet{max-width:1080px;margin:0 auto;background:var(--bg);
  box-shadow:0 1px 0 rgba(0,0,0,.04),0 18px 50px rgba(0,0,0,.10);padding:30px 34px 26px;}

/* Masthead */
.mast{display:flex;justify-content:space-between;align-items:flex-start;padding-bottom:9px;}
.kicker{font-family:'Fragment Mono',monospace;font-size:11px;letter-spacing:.16em;
  text-transform:uppercase;color:var(--grey);}
.brand{font-family:'Fragment Mono',monospace;font-size:11px;letter-spacing:.06em;
  color:var(--ink);text-align:right;line-height:1.5;white-space:nowrap;}
.rule{height:0;border:0;border-top:1px solid var(--ink);}
.hair{height:0;border:0;border-top:1px solid var(--hair);}
.title{font-size:30px;font-weight:600;line-height:1.06;letter-spacing:-.018em;margin-top:14px;}
.subtitle{font-size:14px;color:var(--grey);font-weight:400;margin-top:7px;line-height:1.4;}

/* Meta strip */
.meta{display:flex;flex-wrap:wrap;gap:0;margin-top:14px;border-top:1px solid var(--hair);
  border-bottom:1px solid var(--hair);}
.meta .cell{flex:1 1 16%;padding:9px 14px 9px 0;min-width:120px;}
.meta .cell + .cell{padding-left:14px;border-left:1px solid var(--hair);}
.meta .lab{font-family:'Fragment Mono',monospace;font-size:9.5px;letter-spacing:.13em;
  text-transform:uppercase;color:var(--grey);}
.meta .val{font-size:13.5px;margin-top:4px;line-height:1.3;}

/* Hero KPI band */
.kpi{display:flex;flex-wrap:wrap;margin-top:20px;border-top:1px solid var(--line);
  border-bottom:1px solid var(--line);}
.kpi .k{flex:1 1 22%;padding:13px 18px 15px 0;min-width:150px;}
.kpi .k + .k{padding-left:18px;border-left:1px solid var(--hair);}
.kpi .klab{font-family:'Fragment Mono',monospace;font-size:9.5px;letter-spacing:.13em;
  text-transform:uppercase;color:var(--grey);}
.kpi .kfig{font-size:33px;font-weight:500;letter-spacing:-.02em;margin-top:8px;line-height:1;
  font-variant-numeric:tabular-nums;}
.kpi .kfig small{font-size:17px;font-weight:500;}
.kpi .knote{font-size:11.5px;color:var(--grey);margin-top:8px;line-height:1.3;}
.kpi .k.lead .kfig{color:var(--accent);}

/* Section */
.sec{margin-top:30px;}
.sechead{display:flex;align-items:baseline;gap:12px;margin-bottom:10px;}
.sechead .no{font-family:'Fragment Mono',monospace;font-size:14px;color:var(--ink);min-width:22px;}
.sechead .ttl{font-size:18px;font-weight:600;letter-spacing:-.008em;line-height:1.16;}
.sechead .ttl .q{font-weight:400;color:var(--grey);font-size:14px;}
p{font-size:13px;line-height:1.5;} p + p{margin-top:5px;}
b,strong{font-weight:600;}

/* Control panel */
.panel{background:var(--panel);border:1px solid var(--hair);padding:16px 18px;margin-top:4px;}
.panel .ph{display:flex;justify-content:space-between;align-items:center;margin-bottom:12px;}
.panel .ph .hint{font-size:11.5px;color:var(--grey);}
.ctrls{display:grid;grid-template-columns:repeat(auto-fit,minmax(220px,1fr));gap:14px 26px;}
.ctrl label{display:block;font-family:'Fragment Mono',monospace;font-size:9.5px;letter-spacing:.1em;
  text-transform:uppercase;color:var(--grey);margin-bottom:5px;}
.ctrl .row{display:flex;align-items:center;gap:10px;}
.ctrl input[type=range]{flex:1;-webkit-appearance:none;appearance:none;height:2px;background:var(--hair);
  outline:none;}
.ctrl input[type=range]::-webkit-slider-thumb{-webkit-appearance:none;appearance:none;width:14px;height:14px;
  border-radius:50%;background:var(--bg);border:1.5px solid var(--ink);cursor:pointer;}
.ctrl input[type=range]::-moz-range-thumb{width:14px;height:14px;border-radius:50%;background:var(--bg);
  border:1.5px solid var(--ink);cursor:pointer;}
.ctrl .out{font-family:'Fragment Mono',monospace;font-size:13px;font-variant-numeric:tabular-nums;
  min-width:62px;text-align:right;}
.ctrl .unit{font-family:'Fragment Mono',monospace;font-size:10px;color:var(--grey);}
.toggle{display:inline-flex;border:1px solid var(--ink);}
.toggle button{font-family:'Fragment Mono',monospace;font-size:11px;letter-spacing:.06em;
  text-transform:uppercase;padding:5px 12px;background:var(--bg);border:0;cursor:pointer;color:var(--ink);}
.toggle button.on{background:var(--ink);color:#fff;}
.btn{font-family:'Fragment Mono',monospace;font-size:11px;letter-spacing:.06em;text-transform:uppercase;
  padding:6px 14px;background:var(--bg);border:1px solid var(--ink);cursor:pointer;color:var(--ink);}
.btn:hover{background:var(--ink);color:#fff;}
.btn.accent{border-color:var(--accent);color:var(--accent);}
.btn.accent:hover{background:var(--accent);color:#fff;}

/* Tables */
table{width:100%;border-collapse:collapse;margin-top:6px;}
th{font-family:'Fragment Mono',monospace;font-size:9.5px;letter-spacing:.1em;text-transform:uppercase;
  color:var(--grey);text-align:right;font-weight:400;padding:0 10px 6px 0;border-bottom:1px solid var(--line);
  vertical-align:bottom;}
th:first-child{text-align:left;}
td{font-size:13px;line-height:1.35;padding:6px 10px 6px 0;border-bottom:1px solid var(--faint);
  vertical-align:top;text-align:right;}
td:first-child{text-align:left;}
td.k{color:var(--ink);font-weight:500;text-align:left;}
tr.total td{border-bottom:none;border-top:1px solid var(--line);font-weight:600;padding-top:9px;}
tr.lead td{background:#FBF2F0;}
.cmp th,.cmp td{text-align:right;white-space:nowrap;}
.cmp th:first-child,.cmp td:first-child{text-align:left;white-space:normal;}
.tablewrap{overflow-x:auto;-webkit-overflow-scrolling:touch;}
.cap{font-family:'Fragment Mono',monospace;font-size:10px;color:var(--grey);}

/* Variant bars */
.bars{margin-top:14px;}
.bars .b{display:grid;grid-template-columns:150px 1fr 120px;align-items:center;gap:14px;
  padding:7px 0;border-bottom:1px solid var(--faint);}
.bars .bl{font-size:13px;font-weight:500;}
.bars .bl .s{display:block;font-family:'Fragment Mono',monospace;font-size:9.5px;color:var(--grey);
  text-transform:uppercase;letter-spacing:.06em;margin-top:2px;}
.bars .track{position:relative;height:16px;background:var(--faint);}
.bars .fill{position:absolute;top:0;left:0;height:16px;background:var(--ink);}
.bars .b.lead .fill{background:var(--accent);}
.bars .bv{font-family:'Fragment Mono',monospace;font-size:14px;text-align:right;font-variant-numeric:tabular-nums;}

/* Sensitivity grid */
.sens{margin-top:8px;}
.sens table td,.sens table th{text-align:center;}
.sens table td:first-child,.sens table th:first-child{text-align:left;}
.heat{display:inline-block;min-width:78px;padding:3px 8px;border:1px solid var(--hair);
  font-family:'Fragment Mono',monospace;font-size:12px;}

/* Status dots */
.st{font-family:'Fragment Mono',monospace;font-size:11px;letter-spacing:.04em;white-space:nowrap;}
.st .dot{display:inline-block;width:9px;height:9px;border-radius:50%;margin-right:5px;
  transform:translateY(1px);border:1px solid var(--ink);}
.st.bad .dot{background:var(--accent);border-color:var(--accent);}
.st.mid .dot{background:linear-gradient(90deg,var(--ink) 50%,#fff 50%);}
.st.ok .dot{background:#fff;}

/* Lists */
ul.clean{list-style:none;margin-top:6px;}
ul.clean li{font-size:13px;line-height:1.45;padding-left:16px;position:relative;margin-top:4px;}
ul.clean li::before{content:"\2014";position:absolute;left:0;color:var(--grey);}

/* Renders */
.renders{display:grid;grid-template-columns:repeat(auto-fit,minmax(180px,1fr));gap:14px;margin-top:8px;}
.renders figure{border:1px solid var(--hair);}
.renders img{width:100%;display:block;}
.renders figcaption{font-family:'Fragment Mono',monospace;font-size:10px;color:var(--grey);
  padding:6px 8px;text-transform:uppercase;letter-spacing:.06em;}

/* Footer */
.foot{margin-top:34px;padding-top:14px;border-top:1px solid var(--line);}
.foot .src{font-size:11px;color:var(--grey);line-height:1.5;}
.foot .meta2{display:flex;justify-content:space-between;margin-top:12px;
  font-family:'Fragment Mono',monospace;font-size:10px;color:var(--grey);letter-spacing:.04em;}

/* Print -> A4 */
@media print{
  body{background:#fff;padding:0;font-size:9.6px;}
  .sheet{box-shadow:none;max-width:none;width:auto;padding:12mm 14mm;}
  .no-print{display:none !important;}
  .panel{background:#fff;}
  .title{font-size:22px;} .kpi .kfig{font-size:23px;}
  @page{size:A4 portrait;margin:0;}
  .sec{margin-top:16px;page-break-inside:avoid;}
}
.no-print-note{font-family:'Fragment Mono',monospace;font-size:10px;color:var(--grey);}
"""


JS = r"""
const M = window.__MODEL__;
const D = {
  bgf_faktor:1.15, gv_pro_gf:3.3, hnf_faktor:0.75, kennwert_chf_m3:950,
  kennwert_band_low:850, kennwert_band_high:1050, geschosshoehe_m:3.0, modus:"verkauf",
  verkaufspreis_chf_m2:9000, miete_chf_m2_jahr:320, kap_satz_pct:3.5,
  marge_pct:7, diskont_pct:3, abzug_chf:0, landpreis_chf:null
};
const A0 = Object.assign({}, D, M.annahmen||{});
let A = Object.assign({}, A0);                 // Live-Annahmen (Regler veraendern diese)
const GSF = +(((M.meta||{}).grundstuecksflaeche_m2)||0);
const num = (x,d=0)=>{ const v=parseFloat(x); return isNaN(v)?d:v; };

function calcVar(v, a){
  const ziffer=num(v.ziffer), zus=num(v.zuschlag_pct)/100, fd=num(v.flaechen_delta_pct)/100;
  const aGF=GSF*ziffer*(1+fd), BGF=aGF*num(a.bgf_faktor,D.bgf_faktor);
  const GV=BGF*num(a.gv_pro_gf,D.gv_pro_gf), HNF=BGF*num(a.hnf_faktor,D.hnf_faktor);
  const kw=num(a.kennwert_chf_m3,D.kennwert_chf_m3);
  const kwl=num(a.kennwert_band_low,kw), kwh=num(a.kennwert_band_high,kw);
  const erst=GV*kw*(1+zus), erstL=GV*kwl*(1+zus), erstH=GV*kwh*(1+zus);
  let wert,ertragJ=0;
  if(a.modus==="rendite"){ const miete=num(a.miete_chf_m2_jahr,D.miete_chf_m2_jahr);
    const kap=num(a.kap_satz_pct,D.kap_satz_pct)/100; ertragJ=HNF*miete; wert=kap>0?ertragJ/kap:0; }
  else { wert=HNF*num(a.verkaufspreis_chf_m2,D.verkaufspreis_chf_m2); }
  const margePct=num(a.marge_pct,D.marge_pct), disk=num(a.diskont_pct,D.diskont_pct)/100;
  const abzug=num(a.abzug_chf,0);
  const margeChf=margePct/100*wert;
  const resVor=wert-erst-margeChf-abzug, res=resVor*(1-disk);
  const o={name:v.name,kurz:v.kurz||"",ziffer,zuschlag_pct:num(v.zuschlag_pct),geschosse:v.geschosse,
    nutzung:v.nutzung||"",aGF,BGF,GV,HNF,erst,erstL,erstH,wert,ertragJ,margeChf,resVor,res,
    resM2:GSF>0?res/GSF:0};
  let lp=a.landpreis_chf; lp=(lp===null||lp===""||lp===undefined)?null:num(lp);
  if(lp!==null){ const gk=erst+lp, mr=wert-gk; o.gesamtkosten=gk; o.margeRealChf=mr;
    o.margeRealPct=gk>0?mr/gk*100:0; o.roiPct=gk>0?mr/gk*100:0; }
  return o;
}
function calcAll(a){ return (M.varianten||[]).map(v=>calcVar(v,a)); }

/* ---------- Formatierung (Schweizer Apostroph) ---------- */
function ap(n){ return Math.round(n).toLocaleString('de-CH').replace(/ /g,"'").replace(/,/g,"'").replace(/\./g,"'"); }
function mio(n){ const s=(n/1e6); return (Math.abs(s)>=10?s.toFixed(1):s.toFixed(2)).replace('.', "'").replace("'", "."); }
function mioStr(n){ let s=(n/1e6).toFixed(Math.abs(n/1e6)>=10?1:2); return s; }
function chf(n){ return "CHF "+ap(n); }

/* ---------- Render ---------- */
function leadIdx(res){
  let li=(typeof M.leitvariante_index==="number")?M.leitvariante_index:0;
  if(li<0||li>=res.length) li=0; return li;
}
function render(){
  const res=calcAll(A); if(!res.length) return;
  const li=leadIdx(res); const L=res[li];

  // Hero KPIs
  document.getElementById('kpi-res').innerHTML = mioStr(L.res)+'<small>&thinsp;Mio</small>';
  document.getElementById('kpi-res-note').textContent =
    'Leit-Variante '+L.name+' · '+ap(L.resM2)+' CHF/m² GSF';
  document.getElementById('kpi-erst').innerHTML = mioStr(L.erst)+'<small>&thinsp;Mio</small>';
  document.getElementById('kpi-erst-note').textContent =
    'Band '+mioStr(L.erstL)+'–'+mioStr(L.erstH)+' Mio · BKP 1–5';
  const m3 = A.modus==='rendite'
    ? {lab:'Bruttorendite', val:(L.ertragJ/ (L.erst+(L.res>0?L.res:0))*100).toFixed(1)+'<small>&thinsp;%</small>',
       note:'Ertrag '+chf(L.ertragJ)+'/Jahr'}
    : {lab:'Verkaufserlös', val:mioStr(L.wert)+'<small>&thinsp;Mio</small>',
       note:ap(L.HNF)+' m² HNF × '+ap(num(A.verkaufspreis_chf_m2))+' CHF/m²'};
  document.getElementById('kpi-3-lab').textContent=m3.lab;
  document.getElementById('kpi-3').innerHTML=m3.val;
  document.getElementById('kpi-3-note').innerHTML=m3.note;

  // Vergleichstabelle
  const cols=res.map(r=>'<th>'+r.name+'</th>').join('');
  function row(lab,fn,cap){ return '<tr><td class="k">'+lab+(cap?' <span class="cap">'+cap+'</span>':'')
    +'</td>'+res.map(r=>'<td class="num">'+fn(r)+'</td>').join('')+'</tr>'; }
  let html='<thead><tr><th>Kennzahl</th>'+cols+'</tr></thead><tbody>';
  html+=row('Ziffer AZ/GFZ', r=>r.ziffer.toFixed(2));
  html+=row('Geschosse', r=>r.geschosse!=null?r.geschosse:'–');
  html+=row('anrechenbare GF', r=>ap(r.aGF), 'm²');
  html+=row('Bruttogeschossfl.', r=>ap(r.BGF), 'm²');
  html+=row('Gebäudevolumen', r=>ap(r.GV), 'm³');
  html+=row('Hauptnutzfläche', r=>ap(r.HNF), 'm²');
  html+=row('Erstellung BKP 1–5', r=>chf(r.erst));
  html+=row(A.modus==='rendite'?'Ertragswert':'Verkaufserlös', r=>chf(r.wert));
  html+=row('− Marge ('+num(A.marge_pct)+'%)', r=>chf(r.margeChf));
  if(res[0].gesamtkosten!=null){
    html+=row('Marge real (mit Land)', r=>r.margeRealPct.toFixed(1)+'%');
  }
  html+='<tr class="total"><td class="k">Residualwert / zahlb. Land</td>'
    +res.map((r,i)=>'<td class="num">'+chf(r.res)+(i===li?' ◀':'')+'</td>').join('')+'</tr>';
  html+='<tr><td class="k">je m² Grundstück</td>'
    +res.map(r=>'<td class="num">'+ap(r.resM2)+'</td>').join('')+'</tbody>';
  document.getElementById('cmp').innerHTML=html;

  // Balken (Residual)
  const maxRes=Math.max(...res.map(r=>Math.max(r.res,0)),1);
  document.getElementById('bars').innerHTML=res.map((r,i)=>{
    const w=Math.max(0,r.res)/maxRes*100;
    return '<div class="b'+(i===li?' lead':'')+'"><div class="bl">'+r.name
      +'<span class="s">'+(r.kurz||r.nutzung||'')+'</span></div>'
      +'<div class="track"><div class="fill" style="width:'+w.toFixed(1)+'%"></div></div>'
      +'<div class="bv">'+chf(r.res)+'</div></div>';
  }).join('');

  // Sensitivitaet (Leit-Variante, live)
  const vleit=M.varianten[li]; const deltas=[0,-10,-20];
  const kmods=[['Kennwert','kennwert_chf_m3'],['Kennwert hoch','kennwert_band_high']];
  let sh='<thead><tr><th>Flächen-Delta ↓ / Kosten →</th>'
    +kmods.map(k=>'<th>'+k[0]+'</th>').join('')+'</tr></thead><tbody>';
  deltas.forEach(d=>{
    sh+='<tr><td class="k">'+(d===0?'Plan (0%)':d+'%')+'</td>';
    kmods.forEach(k=>{ const aa=Object.assign({},A); aa.kennwert_chf_m3=num(A[k[1]],A.kennwert_chf_m3);
      const vv=Object.assign({},vleit); vv.flaechen_delta_pct=d; const r=calcVar(vv,aa);
      const cls=r.res<0?'bad':(r.res<L.res*0.6?'mid':'ok');
      sh+='<td><span class="heat">'+mioStr(r.res)+'</span></td>'; });
    sh+='</tr>';
  });
  sh+='</tbody>';
  document.getElementById('sens').innerHTML=sh;
}

/* ---------- Regler verdrahten ---------- */
function fmtOut(key,val){
  // Einheit zeigt die .unit-Span; hier nur der Zahlwert (grosse Zahlen mit Apostroph)
  if(key==='kennwert_chf_m3'||key==='verkaufspreis_chf_m2'||key==='miete_chf_m2_jahr') return ap(val);
  return val;
}
function wire(){
  document.querySelectorAll('input[type=range][data-key]').forEach(inp=>{
    const key=inp.dataset.key, out=document.getElementById('out-'+key);
    const apply=()=>{ A[key]=num(inp.value); if(out) out.textContent=fmtOut(key,inp.value);
      // Band proportional zum Kennwert mitfuehren
      if(key==='kennwert_chf_m3'){ const f=num(inp.value)/num(A0.kennwert_chf_m3,1);
        A.kennwert_band_low=Math.round(num(A0.kennwert_band_low)*f);
        A.kennwert_band_high=Math.round(num(A0.kennwert_band_high)*f); } };
    if(out) out.textContent=fmtOut(key,inp.value);   // Anzeige initialisieren
    inp.addEventListener('input',()=>{ apply(); render(); });
  });
  const tg=document.getElementById('modus-toggle');
  if(tg){ tg.querySelectorAll('button').forEach(b=>b.addEventListener('click',()=>{
    A.modus=b.dataset.modus; tg.querySelectorAll('button').forEach(x=>x.classList.toggle('on',x===b));
    document.querySelectorAll('[data-modus-only]').forEach(el=>{
      el.style.display = el.dataset.modusOnly===A.modus?'':'none'; });
    render(); })); }
  const rst=document.getElementById('reset');
  if(rst) rst.addEventListener('click',()=>{ A=Object.assign({},A0);
    document.querySelectorAll('input[type=range][data-key]').forEach(inp=>{
      inp.value=A0[inp.dataset.key]; const out=document.getElementById('out-'+inp.dataset.key);
      if(out) out.textContent=fmtOut(inp.dataset.key,inp.value); });
    const tgb=document.querySelectorAll('#modus-toggle button');
    tgb.forEach(x=>x.classList.toggle('on',x.dataset.modus===A0.modus));
    document.querySelectorAll('[data-modus-only]').forEach(el=>{
      el.style.display=el.dataset.modusOnly===A0.modus?'':'none'; });
    render(); });
  const pr=document.getElementById('print'); if(pr) pr.addEventListener('click',()=>window.print());
  // Modus-Sichtbarkeit initial
  document.querySelectorAll('[data-modus-only]').forEach(el=>{
    el.style.display=el.dataset.modusOnly===A.modus?'':'none'; });
}
wire(); render();
"""


def _ctrl_range(key, label, lo, hi, step, val, unit=""):
    return f"""<div class="ctrl"><label>{label}</label><div class="row">
      <input type="range" data-key="{key}" min="{lo}" max="{hi}" step="{step}" value="{val}">
      <span class="out" id="out-{key}"></span><span class="unit">{unit}</span></div></div>"""


def build(model, out_path):
    meta = model.get("meta", {})
    a0 = dict(model.get("annahmen", {}))

    def mget(k, d=""):
        v = meta.get(k)
        return d if v in (None, "") else v

    # Meta-Zellen
    meta_cells = []
    for lab, key in [("Parzelle", "parzelle"), ("EGRID", "egrid"), ("Zone", "zone"),
                     ("Grundstück", "grundstuecksflaeche_m2"), ("Gemeinde", "gemeinde"),
                     ("Stand", "stand")]:
        v = mget(key)
        if key == "grundstuecksflaeche_m2" and v != "":
            v = f'<span class="num">{int(float(v)):,}</span> m²'.replace(",", "'")
        if v == "":
            continue
        meta_cells.append(f'<div class="cell"><div class="lab">{lab}</div><div class="val">{v}</div></div>')
    meta_html = "".join(meta_cells)

    # Regler (nur sinnvolle) — Startwerte aus dem Modell, sonst Defaults
    av = {**{
        "kennwert_chf_m3": 950, "verkaufspreis_chf_m2": 9000, "miete_chf_m2_jahr": 320,
        "kap_satz_pct": 3.5, "marge_pct": 7, "diskont_pct": 3
    }, **{k: a0[k] for k in a0}}
    ctrls = []
    ctrls.append(_ctrl_range("kennwert_chf_m3", "Kostenkennwert", 600, 1600, 10,
                             int(av["kennwert_chf_m3"]), "CHF/m³"))
    ctrls.append('<div data-modus-only="verkauf">' +
                 _ctrl_range("verkaufspreis_chf_m2", "Verkaufspreis", 4000, 16000, 100,
                             int(av["verkaufspreis_chf_m2"]), "CHF/m² HNF") + "</div>")
    ctrls.append('<div data-modus-only="rendite">' +
                 _ctrl_range("miete_chf_m2_jahr", "Mietzins", 120, 600, 5,
                             int(av["miete_chf_m2_jahr"]), "CHF/m²/J") + "</div>")
    ctrls.append('<div data-modus-only="rendite">' +
                 _ctrl_range("kap_satz_pct", "Kapitalisierung", 2, 6, 0.1,
                             av["kap_satz_pct"], "%") + "</div>")
    ctrls.append(_ctrl_range("marge_pct", "Bauträger-Marge", 0, 15, 0.5, av["marge_pct"], "%"))
    ctrls.append(_ctrl_range("diskont_pct", "Diskontierung", 0, 8, 0.5, av["diskont_pct"], "%"))
    ctrls_html = "\n".join(ctrls)

    modus0 = a0.get("modus", "verkauf")
    toggle = (f'<div class="toggle" id="modus-toggle">'
              f'<button data-modus="verkauf" class="{"on" if modus0=="verkauf" else ""}">Verkauf</button>'
              f'<button data-modus="rendite" class="{"on" if modus0=="rendite" else ""}">Rendite</button></div>')

    # Baurecht-Tabelle
    baurecht = model.get("baurecht", [])
    if baurecht:
        rows = "".join(
            f'<tr><td class="k">{b.get("label","")}</td><td class="num">{b.get("wert","")}</td>'
            f'<td class="cap">{b.get("quelle","")}</td></tr>' for b in baurecht)
        baurecht_html = (
            '<div class="sec"><div class="sechead"><span class="no">04</span>'
            '<div class="ttl">Baurechtliche Basis <span class="q">· belegt, nicht gerundet</span></div></div>'
            '<table><thead><tr><th>Kennziffer</th><th>Wert</th><th>Quelle</th></tr></thead>'
            f'<tbody>{rows}</tbody></table></div>')
    else:
        baurecht_html = ""

    # Massenmodell / Renderings je Variante
    calc = studie_rechnen(model)
    gh = float(calc["annahmen"].get("geschosshoehe_m", 3.0) or 3.0)
    vinfo = []
    for v, r in zip(model.get("varianten", []), calc["varianten"]):
        gesch = v.get("geschosse") or 1
        footprint = (r["BGF"] / gesch) if gesch else r["aGF"]
        height = gesch * gh
        vinfo.append({"v": v, "r": r, "gesch": gesch, "footprint": footprint, "height": height})
    ref_side = max((math.sqrt(max(i["footprint"], 1.0)) for i in vinfo), default=1.0)
    ref_h = max((i["height"] for i in vinfo), default=1.0)
    li_r = model.get("leitvariante_index", 0)
    renders = []
    for idx, i in enumerate(vinfo):
        v = i["v"]
        img = v.get("render_img")
        if img and not img.startswith(("data:", "http")):
            # lokales Bild selbst-tragend einbetten (base64 data-URI)
            try:
                with open(img, "rb") as fh:
                    b = base64.b64encode(fh.read()).decode("ascii")
                ext = "jpeg" if img.lower().endswith((".jpg", ".jpeg")) else "png"
                img = f"data:image/{ext};base64,{b}"
            except OSError:
                img = None
        if img:
            vis = f'<img src="{img}" alt="{v.get("name","")}">'
        else:
            vis = massing_svg(i["footprint"], i["gesch"], gh, ref_side, ref_h,
                              accent=(idx == li_r))
        cap = f'{v.get("name","")} · {i["gesch"]} Gesch · {round(i["r"]["GV"]):,} m³'.replace(",", "'")
        renders.append(f'<figure>{vis}<figcaption>{cap}</figcaption></figure>')
    renders_html = (
        '<div class="sec"><div class="sechead"><span class="no">05</span>'
        '<div class="ttl">Massenmodell <span class="q">· je Variante, gemeinsamer Massstab</span></div></div>'
        f'<div class="renders">{"".join(renders)}</div></div>') if renders else ""

    # Fazit / Vorbehalte
    def ul(items):
        return '<ul class="clean">' + "".join(f"<li>{x}</li>" for x in items) + "</ul>"
    fazit_html = ""
    if model.get("fazit"):
        fazit_html = ('<div class="sec"><div class="sechead"><span class="no">06</span>'
                      '<div class="ttl">Fazit &amp; Empfehlung</div></div>' + ul(model["fazit"]) + "</div>")
    vorbehalte = model.get("vorbehalte", [])
    quellen = model.get("quellen", "")

    title = mget("titel", "Machbarkeits-Studio")
    subtitle = mget("untertitel", "")
    kicker = mget("kicker", mget("studie", "Machbarkeits-Studio"))
    stand = mget("stand", "")
    studie = mget("studie", "")

    html = f"""<!doctype html><html lang="de-CH"><head><meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>{title} — JANS</title>
<style>{_fontface()}{CSS}</style></head>
<body><div class="sheet">

  <div class="mast">
    <div class="kicker">{kicker}</div>
    <div class="brand">RAPHAEL JANS ARCHITEKTEN ETH/SIA</div>
  </div>
  <hr class="rule">

  <div class="title">{title}</div>
  <div class="subtitle">{subtitle}</div>

  <div class="meta">{meta_html}</div>

  <div class="kpi">
    <div class="k lead"><div class="klab">Residualwert / zahlb. Land</div>
      <div class="kfig" id="kpi-res"></div><div class="knote" id="kpi-res-note"></div></div>
    <div class="k"><div class="klab">Erstellung BKP 1–5</div>
      <div class="kfig" id="kpi-erst"></div><div class="knote" id="kpi-erst-note"></div></div>
    <div class="k"><div class="klab" id="kpi-3-lab"></div>
      <div class="kfig" id="kpi-3"></div><div class="knote" id="kpi-3-note"></div></div>
  </div>

  <div class="sec no-print">
    <div class="sechead"><span class="no">◉</span>
      <div class="ttl">Live-Studio <span class="q">· Annahmen verändern, alle Zahlen rechnen sofort um</span></div></div>
    <div class="panel">
      <div class="ph">{toggle}
        <div style="display:flex;gap:8px">
          <button class="btn" id="reset">Annahmen zurücksetzen</button>
          <button class="btn accent" id="print">Als PDF drucken</button>
        </div></div>
      <div class="ctrls">{ctrls_html}</div>
      <div class="ph" style="margin-top:12px;margin-bottom:0"><div class="hint">
        Methode: Volumen × Kennwert (BKP 1–5) → Erstellungskosten;
        Verkaufserlös/Ertragswert − Erstellung − Marge − Diskont = Residualwert (zahlbarer Landwert).
      </div></div>
    </div>
  </div>

  <div class="sec">
    <div class="sechead"><span class="no">01</span>
      <div class="ttl">Variantenvergleich <span class="q">· Volumen, Kosten, Wirtschaftlichkeit</span></div></div>
    <div class="tablewrap"><table class="cmp" id="cmp"></table></div>
  </div>

  <div class="sec tight">
    <div class="sechead"><span class="no">02</span>
      <div class="ttl">Residualwert je Variante</div></div>
    <div class="bars" id="bars"></div>
  </div>

  <div class="sec">
    <div class="sechead"><span class="no">03</span>
      <div class="ttl">Sensitivität <span class="q">· Residualwert (Mio) gegen Flächen-Delta × Kostenmodell</span></div></div>
    <div class="sens"><table id="sens"></table></div>
  </div>

  {baurecht_html}
  {renders_html}
  {fazit_html}

  <div class="foot">
    <div class="src"><b>Methodik &amp; Vorbehalte.</b> {(' '.join(vorbehalte)) if vorbehalte else 'Grobschätzung ± 25 %. Kennziffern aus BZO/GIS/Dossier, nicht gerundet; Unbelegtes als Annahme markiert. Keine Schätzungs- oder Rechtsverbindlichkeit; vor Vorprojekt verifizieren.'} {quellen}</div>
    <div class="meta2"><span>{studie}</span><span>{stand}</span><span>JANS Machbarkeits-Studio</span></div>
  </div>

</div>
<script>window.__MODEL__={json.dumps(model, ensure_ascii=False)};</script>
<script>{JS}</script>
</body></html>"""

    with open(out_path, "w", encoding="utf-8") as f:
        f.write(html)
    return out_path


if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("Aufruf: build_studio.py <model.json> <ausgabe.html>"); sys.exit(1)
    with open(sys.argv[1], encoding="utf-8") as f:
        model = json.load(f)
    print("OK:", build(model, sys.argv[2]))
