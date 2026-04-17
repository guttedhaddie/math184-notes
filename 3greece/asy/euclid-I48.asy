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

size(120,0);

pair A=(0,0);
pair B=dir(5);
pair C=(0,1.2);
pair D=(-1,0);

draw(B--C--A);
draw(C--D);
draw(box((-0.1,0),(0,0.1)));
draw(B--A--D,StickIntervalMarker(2,2,blue));

label("$A$",A,S);
label("$B$",B,S);
label("$C$",C,N);
label("$D$",D,S);

