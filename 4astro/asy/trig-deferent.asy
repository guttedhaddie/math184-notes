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

draw(reverse(unitcircle),ArcArrow(Relative(0.7)));

dot("Eccenter",(0,0),dir(200));

dot("Earth",0.2dir(-20));
dot("Planet/Sun",dir(140),dir(140+180));
