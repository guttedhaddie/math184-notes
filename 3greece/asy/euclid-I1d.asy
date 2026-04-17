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

size(30);

pair A=dir(180);
pair B=-A;
pair C=(0,sqrt(3));

draw(A--B,linewidth(1.2));

draw(A--C,blue+linewidth(1.2));

dot(A,red);
dot(B,red);
dot(C,red);