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

size(170);

pair O=(0,0);
pair A=(1,0);
pair B=-A;
pair C=dir(55);

draw(O--arc(O,A,B)--O--C);



draw("$\alpha$",arc(O,0.1A,0.1C));

draw("$r$",C--O);

draw("crd $\alpha$",C--A,Blue);
draw(Label("crd($180^\circ-\alpha$)",Relative(0.4)),C--B,2dir(27.5+90),lGreen);