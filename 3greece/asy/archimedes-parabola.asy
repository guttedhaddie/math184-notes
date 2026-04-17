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

size(150);

pair P(real t){return (t,t^2+0.2);}

real l=-1; real r=1.3;

real m(real i){return (1/2-i/8)*l+(1/2+i/8)*r;}


fill(P(m(-4))--P(m(0))--P(m(4))--cycle,Lime);
fill(P(m(-4))--P(m(0))--P(m(-2))--cycle,0.25Lime+0.75white);

void tri(real a, real b,real c){draw(P(a)--P(b)--P(c)--cycle);}

tri(l,m(0),r);

draw(P(m(0))--P(m(-2))--P(m(-4))--P(m(-3))--P(m(-2))--P(m(-1))--P(m(0)) --P(m(2))--P(m(4))--P(m(3))--P(m(2))--P(m(1))--P(m(0)));


draw(graph(P,l,r),Blue+linewidth(1));

label("$A$",(0.1,1.05));
label("$A_1$",(-0.35,0.5));

xaxis("$x$",l,r,Red);
for(int i=-4; i<=4; ++i){
	xtick(m(i),Red);
}

dot("$P$",P(m(-4)),N);
dot("$Q$",P(m(0)),SE);
dot("$R$",P(m(4)),N);