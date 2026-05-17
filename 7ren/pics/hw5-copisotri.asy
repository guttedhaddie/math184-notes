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

draw(unitcircle,Blue);

real t=20;

pair A=dir(90);
pair B=dir(180+t);
pair C=dir(-t);
pair D=(A+B)/2;
pair E=(A+C)/2;

draw(A--B--C--cycle);

label("$A$",A,N);
label("$B$",B,B);
label("$C$",C,C);

real r=arclength(A--B);
draw(shift(A)*scale(r/2)*unitcircle,Red);

label("$D$",D,dir(190));
label("$E$",E,dir(350));

draw(D--E);
