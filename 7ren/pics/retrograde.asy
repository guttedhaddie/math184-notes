settings.tex="lualatex";
defaultpen(fontsize(12pt));

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{unicode-math}
\setmainfont{TeX Gyre Pagella}
\setmathfont{TeX Gyre Pagella Math}
\usepackage[svgnames,x11names]{xcolor}
");

import x11colors;
pen lGreen=rgb("00a000");


import graph;
import animate;

size(450);

picture pic;

path c=unitcircle;

draw(pic,scale(10)*c,Brown);
draw(pic,c,Blue);
draw(pic,scale(1.45)*c,Red);
draw(pic,scale(5.2)*c,lGreen);
draw(pic,scale(0.08)*c);
for(int i=0; i<8; ++i){draw(pic,0.15*dir(360i/8)---0.1*dir(360i/8));}
//label(pic,"$S$",(0,0));

pair e(real t){return dir(t);}
pair m(real t){return 1.45*dir(t/1.88);}
pair j(real t){return 5.2*dir(t/11.86+90);}

animation A;

int n=200;
real s=3;

for(int i=-n; i<=n; ++i){
save();
add(pic);
dot(e(s*i));
dot(m(s*i));
dot(j(s*i));
pair pm=m(s*i)+20*(m(s*i)-e(s*i));
pair qm=intersectionpoint(m(s*i)--pm,scale(10)*c);
pair pj=j(s*i)+4*(j(s*i)-e(s*i));
pair qj=intersectionpoint(j(s*i)--pj,scale(10)*c);
draw(e(s*i)--qm);
//draw(e(s*i)--m(s*i));
draw(e(s*i)--qj);
//draw(e(s*i)--j(s*i));
dot("M",qm,unit(qm),Red);
dot("J",qj,unit(qj),lGreen);
A.add();
restore();
}

label(A.pdf("controls",multipage=false),fontsize(5));
