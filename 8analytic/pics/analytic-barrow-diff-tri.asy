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

size(140,0);

real d=1.8;
real t=(d-1)/d;

real f(real x){return x^d;}
path ff=graph(f,0,1.1,operator..);

draw(ff,blue+linewidth(1));

real x=1;
real e=0.3;

pair M=(x,f(x));
pair NN=(x-e,f(x-e));
pair R=(M.x,NN.y);
pair P=(M.x,0);
pair Q=(NN.x,0);
pair A=(0,0);
pair T=(t,0);

draw("$a$",R--M);
draw("$e$",NN--R);
draw(NN--Q);
draw(R--P);
draw(A--1.1P);
draw(T--M);

dot("$M$",M,NW);
dot("$N$",NN,NW);
dot("$P$",P,S);
dot("$Q$",Q,S);
dot("$A$",A,S);
dot("$R$",R,E);
dot("$T$",T,S);
