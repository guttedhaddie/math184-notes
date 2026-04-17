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

size(0,75);

pair O=(0,0);
pair A=(1,0);
real h=1.4;
pair B=(0.6,h);
pair C=B-A;

pair P=(1.2,h);

fill(O--A--B--C--cycle,lightblue);
fill(O--A--P--cycle,green);

pair Q=intersectionpoint(O--P,A--B);
fill(O--A--Q--cycle,0.5lightblue+0.5green);

draw(O--A--B--C--cycle--P--A);

