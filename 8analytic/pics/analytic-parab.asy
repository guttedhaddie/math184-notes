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


size(0,130);

xaxis(-2.5,3.7,red,RightTicks(new real[]{-3,-2,-1,0,1,2,3}));

labelx("$x$",3.5,S,red);

real f(real x){return x^2+1;}
pair P(real x){return (x,0)+f(x)*dir(60);}


for(int i=-4; i<=3; ++i){
	draw((i/2,0)--P(i/2),dashed+lGreen);
	}

draw("$y$",(2,0)--P(2),dashed+lGreen,Arrows);


draw(graph(P,-2.1,2.1,operator..),Blue+linewidth(1));