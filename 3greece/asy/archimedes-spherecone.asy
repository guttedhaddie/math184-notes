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

size(140);

path p=arc((0,0),(0,-1),(0,1))--(1,1)--(1,-1)--cycle;
filldraw(p,SkyBlue+White);
path c=(0,0)--(-1,1)--(-1,-1)--cycle;
filldraw(c,Lime+White);
draw((0,1)--(0,-1));


real x=0.6;
draw((-x,x)--(-x,-x),red+linewidth(0.7));
draw("$x$",(-x,0)--(0,0));
draw("$x$",(0,0)--(x,0));
draw("$1$",(x,sqrt(1-x^2))--(0,0));
draw("$y$",(x,0)--(x,sqrt(1-x^2)));
draw((x,sqrt(1-x^2))--(x,1),red+linewidth(0.7));
draw((x,-sqrt(1-x^2))--(x,-1),red+linewidth(0.7));