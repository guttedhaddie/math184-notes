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

size(100);

real f(real x){return 0.05*sin(10*x)+0.5;}

path p=graph(f,-0.2,1.2)--(1.2,-0.3)--(-0.2,-0.3)--cycle;

fill(p,blue+opacity(0.3));

draw(unitsquare);

label("20\,cm",(0.5,0),S);