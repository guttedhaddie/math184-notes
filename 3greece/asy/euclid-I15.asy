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
real th=45;
real ph=-20;

fill(arc(O,0.2,ph,th)--O--cycle,lightblue);
fill(arc(O,0.2,ph+180,th+180)--O--cycle,lightblue);
fill(arc(O,0.15,th,180+ph)--O--cycle,lightgreen);
fill(arc(O,0.15,180+th,ph,CCW)--O--cycle,lightgreen);

draw(-dir(th)--dir(th));
draw(-dir(ph)--dir(ph));