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

size(300);

real f(real x){return (10x-x^2)/4;}
path ff=graph(f,0,7,operator..);

draw(ff,blue+linewidth(1));

pair P=(4,6);
real nu=3;
real n=sqrt(3^2+6^2);
real r=n-0.25;
path p=arc((7,0),r,90,150);
draw(p,red);
pair[] in=intersectionpoints(p,ff);
pair Q=in[0];
pair R=in[1];

pair tang=(-8,0);
draw("$t$",P--tang,dashed+lGreen);

pair bas=(4+nu,0);
draw("$n$",bas--P,dashed+lGreen);
draw(Label("$r$",Relative(0.6)),R--bas,dashed+red);
draw(Label("$y$",Relative(0.7)),P--(P.x,0),dashed);
label("$\nu$",(4+nu/2,0),S);
dot("$N$",bas,S);
dot("$P$",P,NW);
dot("$Q$",Q,N);
dot("$R$",R,dir(170));

xaxis(-8,8.5,RightTicks(new real[]{0,4}));
labelx("$x$",8.5,2S);
