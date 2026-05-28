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

include graph;

size(140,IgnoreAspect);

real f(real t){return 4-(t-2)^2;}

real a=1.2;
path p=graph(f,0,a)--(a,0)--cycle;
fill(p,LightGreen+opacity(0.5));

draw(graph(f,0,1.4),Blue+linewidth(0.8));

real de=0.03;
filldraw(box((a-de,0),(a+de,f(a))),BlueViolet+opacity(0.3),linewidth(0.1));

label("$oy$",(a+de,0.5*f(a)),E,BlueViolet);

xaxis(0,1.4,red);
yaxis(0,3.7,red);

label("$z$",(1.2a/2,0.5*f(a/2)),DarkGreen);

xtick(Label("$x$",align=S),a,S,Red);
ytick(Label("$y$",align=W),f(a),W,Red);
