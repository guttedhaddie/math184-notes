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

size(200,60,IgnoreAspect);

draw(0.8dir(60+180)--0.8dir(120+180)--(0,0)--cycle);
draw((-2,0)--(3,0));
draw(box((-2,0.04),(-1.6,0.5)));
draw(box((3,0.04),(2.6,0.65)));
draw("$r_1$",(-1.8,0.25)--(0,0.25),N,dashed,Arrows);
draw("$r_2$",(2.8,0.25)--(0,0.25),N,dashed,Arrows);
label("$M_1$",(-1.8,0.7));
label("$M_2$",(2.8,0.9));