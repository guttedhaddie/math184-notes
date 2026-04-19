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

size(160);

draw(unitcircle);

pair O=(0,0);
pair A=dir(-90+18);
pair B=dir(-90-18);
pair C=-A;

fill(A--arc(A,A+0.1unit(-A),A+0.1unit(B-A))--cycle,blue);


fill(O--arc(O,0.3B,0.3A)--cycle,lGreen);
draw("$36^\circ$",arc(O,0.3B,0.3A),lGreen);
fill(O--arc(O,0.1C,0.1B)--cycle,Magenta);

draw(O--B);
draw(A--C);
draw("$1$",C--B);
draw("$\ell$",A--B);