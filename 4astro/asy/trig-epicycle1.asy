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

size(100);

real R=2;
real om=1;
real r=0.25;
real ps=16;

pair P(real t){return R*dir((180/pi)*om*t)+r*dir((180/pi)*ps*t);}

draw(scale(R)*unitcircle,dashed,ArcArrow(Relative(0.2)));
draw(shift((R,0))*scale(r)*unitcircle,dashed,ArcArrow(Relative(0.2)));
dot((R+r,0),blue);
dot((0,0));
dot((R,0));

draw(graph(P,0,2pi,400,operator..),blue,ArcArrow(Relative(0.2)));