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

real a=2;
real b=2;

pair O=(0,0);
pair Q=(0,-a/2);
pair P=(b,-a/2);
pair D=unit(P-O);
pair M=O+(a/2)*D;
pair NN=O-(a/2)*D;

draw(circle((0,0),a/2));
draw(O--Q--P--NN);


label("$b$",(P+Q)/2,S);
label("$\frac a2$",(O+Q)/2,W);

dot(Label("$M$",black),M,dir(25),red);
dot(Label("$N$",black),NN,NW,red);
dot(Label("$P$",black),P,S,red);
dot(Label("$Q$",black),Q,S,red);
dot(Label("$O$",black),O,NE,red);