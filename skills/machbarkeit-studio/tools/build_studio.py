#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
build_studio.py — JANS Machbarkeits-Studio v2 (interaktives Live-Studio, eine HTML-Datei)

Herzstueck des Skills `machbarkeit-studio`. Erzeugt eine selbst-tragende HTML-Datei:
  - JANS-Look (DM Sans + Fragment Mono, monochrom + Oxidrot), Fonts eingebettet
  - Live-Engine (spiegelt tools/studio_calc.py v2): Flaechenbilanz aus der Ausnuetzung
    (aGF → GF → GV → HNF inkl. Dach- und nicht-anrechenbarem Souterrain), Wohnungsmix
    je Variante, Wirtschaftlichkeit/Residualwert. Regler (Kennwert, Verkaufspreis/Mietzins,
    Marge, Diskont, Souterrain an/aus, Verkauf/Rendite) rechnen ALLES in Echtzeit um.
  - Variantenachse = WOHNUNGSMIX: der Bauherr sieht, wie viele Wohnungen welcher Groesse
    moeglich sind und wie sich das auf die Rentabilitaet auswirkt.
  - Massenmodell aus echten swisstopo-Daten (model.renders, eingebettet).

Aufruf:  python build_studio.py <model.json> <ausgabe.html>
"""
import sys, os, json, base64

_HERE = os.path.dirname(os.path.abspath(__file__))
_FONTS = os.path.join(_HERE, "assets", "fonts")
sys.path.insert(0, _HERE)
from studio_calc import studie_rechnen, DEFAULTS  # noqa: E402


def _font_b64(name):
    with open(os.path.join(_FONTS, name), "rb") as f:
        return base64.b64encode(f.read()).decode("ascii")


def _fontface():
    faces = []
    for fam, file, style in [("DM Sans", "DMSans.ttf", "normal"), ("DM Sans", "DMSans-Italic.ttf", "italic"),
                             ("Fragment Mono", "FragmentMono.ttf", "normal"), ("Fragment Mono", "FragmentMono-Italic.ttf", "italic")]:
        try:
            b = _font_b64(file)
        except FileNotFoundError:
            continue
        wght = "100 900" if fam == "DM Sans" else "400"
        faces.append(f"@font-face{{font-family:'{fam}';src:url(data:font/ttf;base64,{b}) format('truetype');"
                     f"font-weight:{wght};font-style:{style};font-display:swap;}}")
    return "\n".join(faces)


def _img_data_uri(path):
    if not path or path.startswith(("data:", "http")):
        return path
    try:
        with open(path, "rb") as f:
            b = base64.b64encode(f.read()).decode("ascii")
        ext = "jpeg" if path.lower().endswith((".jpg", ".jpeg")) else "png"
        return f"data:image/{ext};base64,{b}"
    except OSError:
        return None


CSS = r"""
:root{--ink:#1A1A1A;--grey:#6A6A6A;--line:#1A1A1A;--hair:#CBCBCB;--faint:#EFEFEF;
  --accent:#A23E30;--bg:#FFFFFF;--panel:#FAF8F5;}
*{margin:0;padding:0;box-sizing:border-box;}
html,body{background:#E9E6E0;color:var(--ink);font-family:'DM Sans',sans-serif;
  -webkit-font-smoothing:antialiased;text-rendering:geometricPrecision;}
body{font-size:13px;line-height:1.5;padding:24px 16px 64px;}
.mono{font-family:'Fragment Mono',monospace;}
.num{font-family:'Fragment Mono',monospace;font-variant-numeric:tabular-nums;}
.sheet{max-width:1080px;margin:0 auto;background:var(--bg);
  box-shadow:0 1px 0 rgba(0,0,0,.04),0 18px 50px rgba(0,0,0,.10);padding:30px 34px 26px;}
.mast{display:flex;justify-content:space-between;align-items:flex-start;padding-bottom:9px;}
.kicker{font-family:'Fragment Mono',monospace;font-size:11px;letter-spacing:.16em;text-transform:uppercase;color:var(--grey);}
.brand{font-family:'Fragment Mono',monospace;font-size:11px;letter-spacing:.06em;text-align:right;white-space:nowrap;}
.rule{height:0;border:0;border-top:1px solid var(--ink);}
.title{font-size:30px;font-weight:600;line-height:1.06;letter-spacing:-.018em;margin-top:14px;}
.subtitle{font-size:14px;color:var(--grey);margin-top:7px;line-height:1.4;}
.meta{display:flex;flex-wrap:wrap;margin-top:14px;border-top:1px solid var(--hair);border-bottom:1px solid var(--hair);}
.meta .cell{flex:1 1 16%;padding:9px 14px 9px 0;min-width:120px;}
.meta .cell+.cell{padding-left:14px;border-left:1px solid var(--hair);}
.meta .lab{font-family:'Fragment Mono',monospace;font-size:9.5px;letter-spacing:.13em;text-transform:uppercase;color:var(--grey);}
.meta .val{font-size:13.5px;margin-top:4px;line-height:1.3;}
.kpi{display:flex;flex-wrap:wrap;margin-top:20px;border-top:1px solid var(--line);border-bottom:1px solid var(--line);}
.kpi .k{flex:1 1 22%;padding:13px 18px 15px 0;min-width:140px;}
.kpi .k+.k{padding-left:18px;border-left:1px solid var(--hair);}
.kpi .klab{font-family:'Fragment Mono',monospace;font-size:9.5px;letter-spacing:.13em;text-transform:uppercase;color:var(--grey);}
.kpi .kfig{font-size:31px;font-weight:500;letter-spacing:-.02em;margin-top:8px;line-height:1;font-variant-numeric:tabular-nums;}
.kpi .kfig small{font-size:16px;font-weight:500;}
.kpi .knote{font-size:11.5px;color:var(--grey);margin-top:8px;line-height:1.3;}
.kpi .k.lead .kfig{color:var(--accent);}
.sec{margin-top:30px;}
.sechead{display:flex;align-items:baseline;gap:12px;margin-bottom:10px;}
.sechead .no{font-family:'Fragment Mono',monospace;font-size:14px;min-width:22px;}
.sechead .ttl{font-size:18px;font-weight:600;letter-spacing:-.008em;line-height:1.16;}
.sechead .ttl .q{font-weight:400;color:var(--grey);font-size:14px;}
p{font-size:13px;line-height:1.5;}p+p{margin-top:5px;}b,strong{font-weight:600;}
.panel{background:var(--panel);border:1px solid var(--hair);padding:16px 18px;margin-top:4px;}
.panel .ph{display:flex;justify-content:space-between;align-items:center;margin-bottom:12px;flex-wrap:wrap;gap:8px;}
.panel .hint{font-size:11.5px;color:var(--grey);}
.ctrls{display:grid;grid-template-columns:repeat(auto-fit,minmax(220px,1fr));gap:14px 26px;}
.ctrl label{display:block;font-family:'Fragment Mono',monospace;font-size:9.5px;letter-spacing:.1em;text-transform:uppercase;color:var(--grey);margin-bottom:5px;}
.ctrl .row{display:flex;align-items:center;gap:10px;}
.ctrl input[type=range]{flex:1;-webkit-appearance:none;appearance:none;height:2px;background:var(--hair);outline:none;}
.ctrl input[type=range]::-webkit-slider-thumb{-webkit-appearance:none;width:14px;height:14px;border-radius:50%;background:var(--bg);border:1.5px solid var(--ink);cursor:pointer;}
.ctrl .out{font-family:'Fragment Mono',monospace;font-size:13px;font-variant-numeric:tabular-nums;min-width:60px;text-align:right;}
.ctrl .unit{font-family:'Fragment Mono',monospace;font-size:10px;color:var(--grey);}
.toggle{display:inline-flex;border:1px solid var(--ink);}
.toggle button{font-family:'Fragment Mono',monospace;font-size:11px;letter-spacing:.06em;text-transform:uppercase;padding:5px 12px;background:var(--bg);border:0;cursor:pointer;color:var(--ink);}
.toggle button.on{background:var(--ink);color:#fff;}
.chk{display:inline-flex;align-items:center;gap:7px;font-family:'Fragment Mono',monospace;font-size:11px;letter-spacing:.04em;text-transform:uppercase;color:var(--ink);cursor:pointer;}
.chk input{width:15px;height:15px;accent-color:var(--accent);cursor:pointer;}
.btn{font-family:'Fragment Mono',monospace;font-size:11px;letter-spacing:.06em;text-transform:uppercase;padding:6px 14px;background:var(--bg);border:1px solid var(--ink);cursor:pointer;color:var(--ink);}
.btn:hover{background:var(--ink);color:#fff;}
.btn.accent{border-color:var(--accent);color:var(--accent);}
.btn.accent:hover{background:var(--accent);color:#fff;}
table{width:100%;border-collapse:collapse;margin-top:6px;}
th{font-family:'Fragment Mono',monospace;font-size:9.5px;letter-spacing:.1em;text-transform:uppercase;color:var(--grey);text-align:right;font-weight:400;padding:0 10px 6px 0;border-bottom:1px solid var(--line);vertical-align:bottom;white-space:nowrap;}
th:first-child{text-align:left;}
td{font-size:13px;line-height:1.35;padding:6px 10px 6px 0;border-bottom:1px solid var(--faint);vertical-align:top;text-align:right;white-space:nowrap;}
td:first-child{text-align:left;white-space:normal;}
td.k{color:var(--ink);font-weight:500;text-align:left;}
tr.total td{border-bottom:none;border-top:1px solid var(--line);font-weight:600;padding-top:9px;}
tr.lead td{background:#FBF2F0;}
.tablewrap{overflow-x:auto;}
.cap{font-family:'Fragment Mono',monospace;font-size:10px;color:var(--grey);}
.bars{margin-top:14px;}
.bars .b{display:grid;grid-template-columns:170px 1fr 130px;align-items:center;gap:14px;padding:7px 0;border-bottom:1px solid var(--faint);}
.bars .bl{font-size:13px;font-weight:500;}
.bars .bl .s{display:block;font-family:'Fragment Mono',monospace;font-size:9.5px;color:var(--grey);text-transform:uppercase;letter-spacing:.06em;margin-top:2px;}
.bars .track{position:relative;height:16px;background:var(--faint);}
.bars .fill{position:absolute;top:0;left:0;height:16px;background:var(--ink);}
.bars .b.lead .fill{background:var(--accent);}
.bars .bv{font-family:'Fragment Mono',monospace;font-size:14px;text-align:right;}
.spiegel{display:grid;grid-template-columns:repeat(auto-fit,minmax(240px,1fr));gap:18px;margin-top:8px;}
.spiegel .wcard{border:1px solid var(--hair);padding:12px 14px;}
.spiegel .wcard.lead{border-color:var(--accent);}
.spiegel .wh{display:flex;justify-content:space-between;align-items:baseline;margin-bottom:8px;}
.spiegel .wh .nm{font-size:14px;font-weight:600;}
.spiegel .wh .u{font-family:'Fragment Mono',monospace;font-size:12px;color:var(--accent);}
.spiegel table{margin-top:2px;}
.spiegel td,.spiegel th{font-size:12px;padding:3px 6px 3px 0;}
ul.clean{list-style:none;margin-top:6px;}
ul.clean li{font-size:13px;line-height:1.45;padding-left:16px;position:relative;margin-top:4px;}
ul.clean li::before{content:"\2014";position:absolute;left:0;color:var(--grey);}
.renders{display:grid;grid-template-columns:repeat(auto-fit,minmax(260px,1fr));gap:14px;margin-top:8px;}
.renders figure{border:1px solid var(--hair);}
.renders img{width:100%;display:block;}
.renders figcaption{font-family:'Fragment Mono',monospace;font-size:10px;color:var(--grey);padding:6px 8px;text-transform:uppercase;letter-spacing:.05em;}
.foot{margin-top:34px;padding-top:14px;border-top:1px solid var(--line);}
.foot .src{font-size:11px;color:var(--grey);line-height:1.5;}
.foot .meta2{display:flex;justify-content:space-between;margin-top:12px;font-family:'Fragment Mono',monospace;font-size:10px;color:var(--grey);letter-spacing:.04em;}
@media print{body{background:#fff;padding:0;font-size:9.6px;}.sheet{box-shadow:none;max-width:none;padding:12mm 14mm;}
  .no-print{display:none!important;}.panel{background:#fff;}.title{font-size:22px;}.kpi .kfig{font-size:22px;}
  @page{size:A4 portrait;margin:0;}.sec{margin-top:16px;page-break-inside:avoid;}}
"""


JS = r"""
const M=window.__MODEL__;
const D=window.__DEFAULTS__;
const A0=Object.assign({},D,M.annahmen||{});
let A=Object.assign({},A0);
const META=M.meta||{};
const GSF=+((META.grundstuecksflaeche_m2)||0);
const num=(x,d=0)=>{const v=parseFloat(x);return isNaN(v)?d:v;};
const ap=n=>Math.round(n).toLocaleString('de-CH').replace(/[\s.,]/g,"'");
const mioS=n=>{const s=n/1e6;return (Math.abs(s)>=10?s.toFixed(1):s.toFixed(2));};
const chf=n=>"CHF "+ap(n);

function huelle(a){
  const az=num(a.az,num(META.az)), vg=Math.max(1,Math.round(num(a.vollgeschosse,num(META.vollgeschosse,2))));
  const f_agf_gf=num(a.f_agf_gf,D.f_agf_gf), gh=num(a.geschosshoehe_m,D.geschosshoehe_m);
  const f_wohn=num(a.f_hnf_gf_wohn,D.f_hnf_gf_wohn), f_ug=num(a.f_hnf_gf_ug,D.f_hnf_gf_ug), f_dg=num(a.f_dg_gf,D.f_dg_gf);
  const hatDG=!!a.dachgeschoss, hatUG=!!a.souterrain, ugWohn=!!a.souterrain_wohntauglich;
  const aGF=GSF*az, gf_rg=vg>0?aGF*f_agf_gf/vg:0;
  let G=[];
  for(let i=0;i<vg;i++) G.push({name:(vg>1?(i+1)+'. VG':'EG'),gf:gf_rg,hnf:gf_rg*f_wohn,typ:'Vollgeschoss'});
  const gf_dg=hatDG?gf_rg*f_dg:0; if(hatDG) G.push({name:'Attika/DG',gf:gf_dg,hnf:gf_dg*f_wohn,typ:'Dach-/Attikageschoss'});
  const gf_ug=hatUG?gf_rg:0, hnf_ug=(hatUG&&ugWohn)?gf_ug*f_ug:0;
  if(hatUG) G.push({name:'Souterrain',gf:gf_ug,hnf:hnf_ug,typ:'UG nicht anrechenbar'+(ugWohn?'':' (NNF)')});
  const gf_total=G.reduce((s,g)=>s+g.gf,0), gv=gf_total*gh;
  const hnf_oben=G.filter(g=>g.name!=='Souterrain').reduce((s,g)=>s+g.hnf,0);
  const hnf_total=hnf_oben+hnf_ug;
  const kw=num(a.kennwert_chf_m3,D.kennwert_chf_m3),kwl=num(a.kennwert_band_low,kw),kwh=num(a.kennwert_band_high,kw);
  return {az,vg,aGF,gf_rg,geschosse:G,gf_total,gv,hnf_oberirdisch:hnf_oben,hnf_souterrain:hnf_ug,
    hnf_total,hnf_pro_agf:aGF?hnf_total/aGF:0,erstellung:gv*kw,erstellung_low:gv*kwl,erstellung_high:gv*kwh};
}
function variante(v,a,h){
  const ugOK=!!a.souterrain && !!a.souterrain_wohntauglich;
  let mix=[],hnf_mix=0,units=0;
  (v.wohnungsmix||[]).forEach(w=>{ if(w.souterrain && !ugOK) return;
    const fl=num(w.flaeche),n=Math.round(num(w.anzahl)),s=fl*n;
    hnf_mix+=s;units+=n;mix.push({zimmer:w.zimmer||'',flaeche:fl,anzahl:n,hnf_sum:s,souterrain:!!w.souterrain});});
  mix.forEach(m=>m.pct=hnf_mix?m.hnf_sum/hnf_mix*100:0);
  const hnf=hnf_mix>0?hnf_mix:h.hnf_total;
  // globaler Preis-Regler skaliert die (ggf. variantenspezifischen) Preise relativ
  const baseVkp=num(A0.verkaufspreis_chf_m2,D.verkaufspreis_chf_m2);
  const baseMiete=num(A0.miete_chf_m2_jahr,D.miete_chf_m2_jahr);
  const sVkp=num(a.verkaufspreis_chf_m2,baseVkp)/(baseVkp||1);
  const sMiete=num(a.miete_chf_m2_jahr,baseMiete)/(baseMiete||1);
  const vkp=num(v.verkaufspreis_chf_m2,baseVkp)*sVkp;
  const miete=num(v.miete_chf_m2_jahr,baseMiete)*sMiete;
  const kap=num(a.kap_satz_pct,D.kap_satz_pct)/100;
  let wert,ertragJ=0;
  if(a.modus==='rendite'){ertragJ=hnf*miete;wert=kap>0?ertragJ/kap:0;} else {wert=hnf*vkp;}
  const margeChf=num(a.marge_pct,D.marge_pct)/100*wert, disk=num(a.diskont_pct,D.diskont_pct)/100, abz=num(a.abzug_chf,0);
  const resVor=wert-h.erstellung-margeChf-abz, res=resVor*(1-disk);
  return {name:v.name,kurz:v.kurz||'',mix,units,hnf_mix,hnf_fit:h.hnf_total?hnf_mix/h.hnf_total*100:0,
    vkp,miete,wert,ertragJ,margeChf,res,resM2:GSF?res/GSF:0,erloesUnit:units?wert/units:0};
}
function leadIdx(n){let li=(typeof M.leitvariante_index==='number')?M.leitvariante_index:0;return (li>=0&&li<n)?li:0;}

function render(){
  const h=huelle(A); const R=(M.varianten||[]).map(v=>variante(v,A,h)); if(!R.length)return;
  const li=leadIdx(R.length), L=R[li];
  // Hero
  document.getElementById('kpi-res').innerHTML=mioS(L.res)+'<small>&thinsp;Mio</small>';
  document.getElementById('kpi-res-note').textContent='Leit: '+L.name+' · '+ap(L.resM2)+' CHF/m² GSF';
  document.getElementById('kpi-hnf').innerHTML=ap(h.hnf_total)+'<small>&thinsp;m²</small>';
  document.getElementById('kpi-hnf-note').textContent='HNF inkl. Souterrain · HNF/aGF '+h.hnf_pro_agf.toFixed(2)+' · aGF '+ap(h.aGF)+' m²';
  document.getElementById('kpi-units').textContent=L.units+' Whg';
  document.getElementById('kpi-units-note').textContent='Variante '+L.name.split('·').pop().trim();
  const m4=A.modus==='rendite'
    ? {l:'Bruttorendite',v:(L.ertragJ/(h.erstellung+(L.res>0?L.res:0))*100).toFixed(1)+'<small>&thinsp;%</small>',n:'Ertrag '+chf(L.ertragJ)+'/J'}
    : {l:'Verkaufserlös',v:mioS(L.wert)+'<small>&thinsp;Mio</small>',n:ap(L.hnf_mix)+' m² × '+ap(L.vkp)+' CHF/m²'};
  document.getElementById('kpi-4-lab').textContent=m4.l;document.getElementById('kpi-4').innerHTML=m4.v;document.getElementById('kpi-4-note').innerHTML=m4.n;

  // Flaechenbilanz (Geschosse)
  let gb='<thead><tr><th>Geschoss</th><th>Typ</th><th>GF m²</th><th>HNF m²</th><th>anrechenbar</th></tr></thead><tbody>';
  h.geschosse.forEach(g=>{gb+='<tr><td class="k">'+g.name+'</td><td>'+g.typ+'</td><td class="num">'+ap(g.gf)+'</td><td class="num">'+ap(g.hnf)+'</td><td>'+(g.name==='Souterrain'||g.name==='Attika/DG'?'nein':'ja')+'</td></tr>';});
  gb+='<tr class="total"><td class="k">Total</td><td>aGF '+ap(h.aGF)+' · GV '+ap(h.gv)+' m³</td><td class="num">'+ap(h.gf_total)+'</td><td class="num">'+ap(h.hnf_total)+'</td><td>HNF/aGF '+h.hnf_pro_agf.toFixed(2)+'</td></tr></tbody>';
  document.getElementById('bilanz').innerHTML=gb;

  // Variantenvergleich
  const cols=R.map(r=>'<th>'+r.name+'</th>').join('');
  const row=(lab,fn,cap)=>'<tr><td class="k">'+lab+(cap?' <span class="cap">'+cap+'</span>':'')+'</td>'+R.map(r=>'<td class="num">'+fn(r)+'</td>').join('')+'</tr>';
  let cv='<thead><tr><th>Kennzahl</th>'+cols+'</tr></thead><tbody>';
  cv+=row('Anzahl Wohnungen',r=>r.units);
  cv+=row('HNF (Mix)',r=>ap(r.hnf_mix),'m²');
  cv+=row('Ø Wohnungsgrösse',r=>r.units?ap(r.hnf_mix/r.units):'–','m²');
  cv+=row(A.modus==='rendite'?'Mietzins':'Verkaufspreis',r=>ap(A.modus==='rendite'?r.miete:r.vkp),A.modus==='rendite'?'CHF/m²/J':'CHF/m²');
  cv+=row(A.modus==='rendite'?'Ertragswert':'Verkaufserlös',r=>chf(r.wert));
  cv+=row('− Erstellung BKP 1–5',r=>chf(h.erstellung));
  cv+=row('− Marge ('+num(A.marge_pct)+'%)',r=>chf(r.margeChf));
  cv+='<tr class="total"><td class="k">Residualwert / zahlb. Land</td>'+R.map((r,i)=>'<td class="num">'+chf(r.res)+(i===li?' ◀':'')+'</td>').join('')+'</tr>';
  cv+='<tr><td class="k">je m² Grundstück</td>'+R.map(r=>'<td class="num">'+ap(r.resM2)+'</td>').join('')+'</tbody>';
  document.getElementById('cmp').innerHTML=cv;

  // Balken Residual
  const mx=Math.max(...R.map(r=>Math.max(r.res,0)),1);
  document.getElementById('bars').innerHTML=R.map((r,i)=>'<div class="b'+(i===li?' lead':'')+'"><div class="bl">'+r.name+'<span class="s">'+r.units+' Whg · '+(r.kurz||'')+'</span></div><div class="track"><div class="fill" style="width:'+(Math.max(0,r.res)/mx*100).toFixed(1)+'%"></div></div><div class="bv">'+chf(r.res)+'</div></div>').join('');

  // Wohnungsspiegel je Variante
  document.getElementById('spiegel').innerHTML=R.map((r,i)=>{
    let t='<table><thead><tr><th>Typ</th><th>m² HNF</th><th>Anz</th><th>%</th></tr></thead><tbody>';
    r.mix.forEach(m=>{t+='<tr><td class="k">'+m.zimmer+(m.souterrain?' ·UG':'')+'</td><td class="num">'+ap(m.flaeche)+'</td><td class="num">'+m.anzahl+'</td><td class="num">'+m.pct.toFixed(0)+'</td></tr>';});
    t+='<tr class="total"><td class="k">Total</td><td class="num">'+ap(r.hnf_mix)+'</td><td class="num">'+r.units+'</td><td class="num">100</td></tr></tbody></table>';
    return '<div class="wcard'+(i===li?' lead':'')+'"><div class="wh"><span class="nm">'+r.name+'</span><span class="u">'+chf(r.res)+'</span></div>'+t+'</div>';
  }).join('');
}

function fmtOut(k,v){ if(k==='kennwert_chf_m3'||k==='verkaufspreis_chf_m2'||k==='miete_chf_m2_jahr')return ap(v); return v; }
function wire(){
  document.querySelectorAll('input[type=range][data-key]').forEach(inp=>{
    const key=inp.dataset.key,out=document.getElementById('out-'+key);
    const apply=()=>{A[key]=num(inp.value);if(out)out.textContent=fmtOut(key,inp.value);
      if(key==='kennwert_chf_m3'){const f=num(inp.value)/num(A0.kennwert_chf_m3,1);
        A.kennwert_band_low=Math.round(num(A0.kennwert_band_low)*f);A.kennwert_band_high=Math.round(num(A0.kennwert_band_high)*f);}};
    if(out)out.textContent=fmtOut(key,inp.value);
    inp.addEventListener('input',()=>{apply();render();});
  });
  const sg=document.getElementById('souterrain-chk');
  if(sg){sg.checked=!!A.souterrain;sg.addEventListener('change',()=>{A.souterrain=sg.checked;render();});}
  const tg=document.getElementById('modus-toggle');
  if(tg)tg.querySelectorAll('button').forEach(b=>b.addEventListener('click',()=>{A.modus=b.dataset.modus;
    tg.querySelectorAll('button').forEach(x=>x.classList.toggle('on',x===b));
    document.querySelectorAll('[data-modus-only]').forEach(el=>el.style.display=el.dataset.modusOnly===A.modus?'':'none');render();}));
  const rs=document.getElementById('reset');
  if(rs)rs.addEventListener('click',()=>{A=Object.assign({},A0);
    document.querySelectorAll('input[type=range][data-key]').forEach(inp=>{inp.value=A0[inp.dataset.key];
      const o=document.getElementById('out-'+inp.dataset.key);if(o)o.textContent=fmtOut(inp.dataset.key,inp.value);});
    if(sg)sg.checked=!!A0.souterrain;
    document.querySelectorAll('#modus-toggle button').forEach(x=>x.classList.toggle('on',x.dataset.modus===A0.modus));
    document.querySelectorAll('[data-modus-only]').forEach(el=>el.style.display=el.dataset.modusOnly===A0.modus?'':'none');render();});
  const pr=document.getElementById('print');if(pr)pr.addEventListener('click',()=>window.print());
  document.querySelectorAll('[data-modus-only]').forEach(el=>el.style.display=el.dataset.modusOnly===A.modus?'':'none');
}
wire();render();
"""


def _ctrl(key, label, lo, hi, step, val, unit=""):
    return (f'<div class="ctrl"><label>{label}</label><div class="row">'
            f'<input type="range" data-key="{key}" min="{lo}" max="{hi}" step="{step}" value="{val}">'
            f'<span class="out" id="out-{key}"></span><span class="unit">{unit}</span></div></div>')


def build(model, out_path):
    meta = model.get("meta", {})
    a0 = {**DEFAULTS, **model.get("annahmen", {})}

    def mg(k, d=""):
        v = meta.get(k)
        return d if v in (None, "") else v

    cells = []
    for lab, key in [("Parzelle", "parzelle"), ("EGRID", "egrid"), ("Zone", "zone"),
                     ("Grundstück", "grundstuecksflaeche_m2"), ("Gemeinde", "gemeinde"), ("Stand", "stand")]:
        v = mg(key)
        if key == "grundstuecksflaeche_m2" and v != "":
            v = f'<span class="num">{int(float(v)):,}</span> m²'.replace(",", "'")
        if v == "":
            continue
        cells.append(f'<div class="cell"><div class="lab">{lab}</div><div class="val">{v}</div></div>')
    meta_html = "".join(cells)

    ctrls = [_ctrl("kennwert_chf_m3", "Kostenkennwert", 600, 1600, 10, int(a0["kennwert_chf_m3"]), "CHF/m³")]
    ctrls.append('<div data-modus-only="verkauf">' + _ctrl("verkaufspreis_chf_m2", "Verkaufspreis", 4000, 20000, 100, int(a0["verkaufspreis_chf_m2"]), "CHF/m²") + "</div>")
    ctrls.append('<div data-modus-only="rendite">' + _ctrl("miete_chf_m2_jahr", "Mietzins", 120, 700, 5, int(a0["miete_chf_m2_jahr"]), "CHF/m²/J") + "</div>")
    ctrls.append('<div data-modus-only="rendite">' + _ctrl("kap_satz_pct", "Kapitalisierung", 2, 6, 0.1, a0["kap_satz_pct"], "%") + "</div>")
    ctrls.append(_ctrl("marge_pct", "Bauträger-Marge", 0, 15, 0.5, a0["marge_pct"], "%"))
    ctrls.append(_ctrl("diskont_pct", "Diskontierung", 0, 8, 0.5, a0["diskont_pct"], "%"))
    ctrls_html = "\n".join(ctrls)

    modus0 = a0.get("modus", "verkauf")
    toggle = (f'<div class="toggle" id="modus-toggle">'
              f'<button data-modus="verkauf" class="{"on" if modus0=="verkauf" else ""}">Verkauf</button>'
              f'<button data-modus="rendite" class="{"on" if modus0=="rendite" else ""}">Rendite</button></div>'
              f'<label class="chk"><input type="checkbox" id="souterrain-chk"> Souterrain-Wohnung (nicht anrechenbar)</label>')

    # Baurecht
    baurecht_html = ""
    if model.get("baurecht"):
        rows = "".join(f'<tr><td class="k">{b.get("label","")}</td><td>{b.get("wert","")}</td><td class="cap">{b.get("quelle","")}</td></tr>' for b in model["baurecht"])
        baurecht_html = ('<div class="sec"><div class="sechead"><span class="no">04</span><div class="ttl">Baurechtliche Basis <span class="q">· belegt, nicht gerundet</span></div></div>'
                         f'<div class="tablewrap"><table><thead><tr><th>Kennziffer</th><th>Wert</th><th>Quelle</th></tr></thead><tbody>{rows}</tbody></table></div></div>')

    # Renders (envelope, echte swisstopo)
    renders_html = ""
    figs = []
    for r in model.get("renders", []):
        uri = _img_data_uri(r.get("img"))
        if uri:
            figs.append(f'<figure><img src="{uri}" alt="{r.get("caption","")}"><figcaption>{r.get("caption","")}</figcaption></figure>')
    if figs:
        renders_html = ('<div class="sec"><div class="sechead"><span class="no">05</span><div class="ttl">Massenmodell <span class="q">· Baukörper auf swissALTI3D-Gelände im swissBUILDINGS3D-Kontext</span></div></div>'
                        f'<div class="renders">{"".join(figs)}</div></div>')

    def ul(items):
        return '<ul class="clean">' + "".join(f"<li>{x}</li>" for x in items) + "</ul>"
    fazit_html = ('<div class="sec"><div class="sechead"><span class="no">06</span><div class="ttl">Fazit &amp; Empfehlung</div></div>' + ul(model["fazit"]) + "</div>") if model.get("fazit") else ""

    title, subtitle = mg("titel", "Machbarkeits-Studio"), mg("untertitel", "")
    kicker, stand, studie = mg("kicker", mg("studie", "")), mg("stand", ""), mg("studie", "")
    vorbehalte, quellen = model.get("vorbehalte", []), model.get("quellen", "")

    html = f"""<!doctype html><html lang="de-CH"><head><meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1"><title>{title} — JANS</title>
<style>{_fontface()}{CSS}</style></head><body><div class="sheet">
  <div class="mast"><div class="kicker">{kicker}</div><div class="brand">RAPHAEL JANS ARCHITEKTEN ETH/SIA</div></div>
  <hr class="rule">
  <div class="title">{title}</div><div class="subtitle">{subtitle}</div>
  <div class="meta">{meta_html}</div>
  <div class="kpi">
    <div class="k lead"><div class="klab">Residualwert / zahlb. Land</div><div class="kfig" id="kpi-res"></div><div class="knote" id="kpi-res-note"></div></div>
    <div class="k"><div class="klab">Hauptnutzfläche</div><div class="kfig" id="kpi-hnf"></div><div class="knote" id="kpi-hnf-note"></div></div>
    <div class="k"><div class="klab">Wohnungen (Leit)</div><div class="kfig" id="kpi-units"></div><div class="knote" id="kpi-units-note"></div></div>
    <div class="k"><div class="klab" id="kpi-4-lab"></div><div class="kfig" id="kpi-4"></div><div class="knote" id="kpi-4-note"></div></div>
  </div>
  <div class="sec no-print"><div class="sechead"><span class="no">◉</span><div class="ttl">Live-Studio <span class="q">· Annahmen verändern, alle Zahlen rechnen sofort um</span></div></div>
    <div class="panel"><div class="ph">{toggle}<div style="display:flex;gap:8px"><button class="btn" id="reset">Zurücksetzen</button><button class="btn accent" id="print">Als PDF drucken</button></div></div>
      <div class="ctrls">{ctrls_html}</div>
      <div class="ph" style="margin-top:12px;margin-bottom:0"><div class="hint">Methode: aGF = Grundstück × Ausnützung; HNF inkl. Dach- und nicht-anrechenbarem Souterrain (§ 255 Abs. 2 PBG); Erstellung = Volumen × Kennwert; Erlös − Erstellung − Marge − Diskont = Residualwert.</div></div>
    </div>
  </div>
  <div class="sec"><div class="sechead"><span class="no">01</span><div class="ttl">Variantenvergleich <span class="q">· Wohnungsmix → Wohnungen, Fläche, Rentabilität</span></div></div>
    <div class="tablewrap"><table class="cmp" id="cmp"></table></div></div>
  <div class="sec tight"><div class="sechead"><span class="no">02</span><div class="ttl">Residualwert je Variante</div></div><div class="bars" id="bars"></div></div>
  <div class="sec"><div class="sechead"><span class="no">03</span><div class="ttl">Wohnungsspiegel <span class="q">· je Variante: wie viele Wohnungen welcher Grösse</span></div></div><div class="spiegel" id="spiegel"></div></div>
  <div class="sec"><div class="sechead"><span class="no">3b</span><div class="ttl">Flächenbilanz <span class="q">· aGF → GF → Volumen → HNF inkl. Souterrain</span></div></div><div class="tablewrap"><table id="bilanz"></table></div></div>
  {baurecht_html}
  {renders_html}
  {fazit_html}
  <div class="foot"><div class="src"><b>Methodik &amp; Vorbehalte.</b> {(' '.join(vorbehalte)) if vorbehalte else 'Grobschätzung ± 25 %.'} {quellen}</div>
    <div class="meta2"><span>{studie}</span><span>{stand}</span><span>JANS Machbarkeits-Studio</span></div></div>
</div>
<script>window.__DEFAULTS__={json.dumps(DEFAULTS)};window.__MODEL__={json.dumps(model, ensure_ascii=False)};</script>
<script>{JS}</script></body></html>"""
    with open(out_path, "w", encoding="utf-8") as f:
        f.write(html)
    return out_path


if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("Aufruf: build_studio.py <model.json> <ausgabe.html>"); sys.exit(1)
    with open(sys.argv[1], encoding="utf-8") as f:
        model = json.load(f)
    print("OK:", build(model, sys.argv[2]))
