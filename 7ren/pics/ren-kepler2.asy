settings.tex="lualatex";
defaultpen(fontsize(12pt));

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{unicode-math}
\setmainfont{TeX Gyre Pagella}
\setmathfont{TeX Gyre Pagella Math}
\usepackage[svgnames,x11names]{xcolor}
\newfontfamily\astro{Arial}[Scale=1,FakeBold=1.5]
\def\mars{\text{\astro ♂}}
\def\earth{\oplus}
");

import x11colors;
pen lGreen=rgb("00a000");

import graph;

size(140);

picture pic;

path c=unitcircle;

draw(c,blue);

path m=scale(1.45)*c;

draw(m,red);

pair e(real t){return dir(t);}
pair mm(real t){return 1.45*dir(t/1.88);}

void planets(real t, pen pp=black){
	filldraw(shift(e(t))*scale(0.04)*c,lGreen);
	filldraw(shift(mm(t))*scale(0.03)*c,Red);
	}

draw((0,0)--mm(0),grey);
draw(shift(e(98.6))*rotate(98.6-180,(0,0))*box((0,0),(0.1,0.1)));

planets(0);

draw(e(98.6)--mm(98.6),grey);
draw(Label("$R_{\earth}$",black),e(98.6)--(0,0),grey);
draw(Label("$R_{\mars}$",black),(0,0)--mm(98.6),grey);
planets(98.6);

draw(Label("$\alpha$",Relative(0.7)),arc((0,0),0.2,0,98.6),Teal,ArcArrow);
draw(Label("$\beta$",Relative(0.5)),arc((0,0),0.25,0,52.5),Brown,ArcArrow);

filldraw(scale(0.05)*c,yellow);
for(int i=0; i<8; ++i){draw(0.15*dir(360i/8)---0.1*dir(360i/8));}
