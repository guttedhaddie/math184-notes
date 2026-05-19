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

real x=2;
real y=1;

draw(scale(x)*unitsquare);
draw(shift((x,x))*scale(y)*unitsquare);
draw((0,x)--(0,x+y)--(x,x+y));
draw((x,0)--(x+y,0)--(x+y,x));


