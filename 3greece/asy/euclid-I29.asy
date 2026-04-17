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

draw(Label("$\ell$",Relative(1)),(-3.5,1)--(3,1));
draw(Label("$m$",Relative(1)),(-3.5,-1)--(3,-1));
draw((-1,2)--(1,-2));

pair A=(-0.5,1);
pair B=-A;


draw("$\alpha$",arc(A,0.41,180*angle(B-A)/pi,0));
//draw("$\gamma$",arc(A,0.31,180,180*angle(B-A)/pi,CCW));
draw("$\beta$",arc(B,0.41,180*angle(A-B)/pi,180));




