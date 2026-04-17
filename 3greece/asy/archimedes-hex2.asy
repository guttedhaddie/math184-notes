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

size(120);

draw(unitcircle,linewidth(0.1));

path H0=dir(0);
for(int i=1; i<=5; ++i){
	H0=H0--dir(60*i);
	}
H0=H0--cycle;

path H1=dir(0);
for(int i=1; i<=11; ++i){
	H1=H1--dir(30*i);
	}
H1=H1--cycle;

path H2=dir(0);
for(int i=1; i<=23; ++i){
	H2=H2--dir(15*i);
	}
H2=H2--cycle;

filldraw(H2,Yellow,linewidth(0.1));
filldraw(H1,LightGreen,linewidth(0.1));
filldraw(H0,LightBlue,linewidth(0.1));

for(int i=0; i<=23; ++i){
	draw((0,0)--dir(15*i),linewidth(0.1));
	}

draw((0,0)--dir(60)--dir(0)--cycle,Blue);
draw(dir(0)--dir(30)--dir(60),Green);