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

size(180);

draw((-4,1)--(4,1));
draw((-4,-1)--(4,-1));

pair A=(-0.5,1);
pair B=-A;
draw(A+0.25(A-B)--B+0.25(B-A));

draw("$\alpha$",arc(A,0.41,180*angle(B-A)/pi,0));
draw("$\alpha$",arc(B,0.41,180*angle(A-B)/pi,180));




