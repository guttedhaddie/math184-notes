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

include graph;

size(120,0);

real r=1;

real f(real x){return x^2/(sqrt(r^2-x^2));}

real d=0.15;
path p=graph(f,-r+d,r-d);
draw(p,Blue+linewidth(1));

draw(reflect((0,0),(1,0))*p,Blue+linewidth(1));

real gr(real x, real y){return x*(2x^2+y^2)/(y*(r^2-x^2));}

pair P=(r/2,r/(sqrt(12)));
real h=0.4*r;
draw(P-(h,h*gr(P.x,P.y))--P+(h,h*gr(P.x,P.y)),lGreen);
dot(P);

xaxis(-r,r,Red);
yaxis(Red);

xtick(Label("$r$",align=S),r,S,red);
xtick(Label("$-r$",align=S),-r,S,red);
ytick(Label("$r$",align=W),r,W,red);
ytick(Label("$-r$",align=W),-r,W,red);
