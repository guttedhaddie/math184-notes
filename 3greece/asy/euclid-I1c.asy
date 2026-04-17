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
import markers;

size(60);

pair A=dir(180);
pair B=-A;
pair C=(0,sqrt(3));

draw(A--B,linewidth(1.2));
draw(shift(A)*scale(2)*unitcircle,blue);
draw(shift(B)*scale(2)*unitcircle,lGreen);

draw(A--C,blue+linewidth(1.2));
draw(B--C,heavygreen+linewidth(1.2));


dot(A,red);
dot(B,red);
dot(C,red);