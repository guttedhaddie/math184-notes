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

size(0,140);

real th=70;
pair M=0.5((1,0)+dir(th));
draw(arc((0,0),(1,0),dir(th)));
draw("$\sin\alpha$",dir(th)--M,blue+linewidth(1));
draw("$1$",dir(th)--(0,0));
draw((1,0)--(0,0));
draw("$\cos\alpha$",(0,0)--M,red+linewidth(1));
draw("$\operatorname{versin}\alpha$",M--dir(th/2),Green+linewidth(1));
draw(M--(1,0));
draw("$\alpha$",arc((0,0),0.1dir(0),0.1dir(th/2)));
draw("$\alpha$",arc((0,0),0.13dir(th/2),0.13dir(th)));
//draw("$\operatorname{crd}2\alpha$",(1,0)--(1,0)+0.35M--dir(th)+0.35M--dir(th),dashed);