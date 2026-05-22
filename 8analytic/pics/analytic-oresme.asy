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


size(180,150,IgnoreAspect);

xaxis("$t$",0,1.1,red,RightTicks(new real[]{0,1},new real[]{0.25,0.5,0.75}));
yaxis("$v$",0,35,red,LeftTicks(new real[]{0,10,20,30}));

xtick(Label("$\frac 12$",align=S),0.5,S,red);


for(int i=0; i<=11; ++i){
	filldraw((1/2^i,1+3*i)--(1/2^(i+1),1+3*i)--(1/2^(i+1),0)--(1/2^i,0)--cycle,lightblue);
	}

real a=0;
for(int i=0; i<=20; ++i){
	real b=a+(1+3*i)/2^(i+1);
	a=b;
	write(a);
	}
	



