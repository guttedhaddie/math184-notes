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

picture parab;

real y(real x){return x^(3/2);}
//real n(real x){return x*sqrt(9*x^2/4+x);}
real z(real x){return sqrt(9*x/4+1);}

real M=1.4;
real a=1;
real d=0.5;
real nu(real x){return 1.5*x^2;}

pair P=(a,y(a));

xaxis("$x$",0,max(a+nu(a),M),red);
xtick(Label("$a$",align=S),a,S,Red);
xtick(Label("$0$",align=S),0,S,Red);
ytick(Label("$0$",align=W),0,W,Red);
yaxis("$y$",0,y(M),red);

draw(graph(y,0,M,operator..),Blue);
draw(graph(y,0,a,operator..),Blue+linewidth(1));
draw("$y$",P--(a,0),dashed);
draw("$\nu$",(a,0)--(nu(a)+a,0),S,BlueViolet+dashed);
draw("$n$",P--(nu(a)+a,0),dashed+lGreen);
draw("$\mathrm{d}x$",P--P+d*(y(a),0),S,dashed);
draw("$\mathrm{d}y$",P+d*(y(a),0)--P+d*(y(a),nu(a)),E,BlueViolet+dashed);
draw("$\mathrm{d}s$",P+d*(y(a),nu(a))--P,dashed+lGreen);

path para=(-4/9,0){N}..graph(z,-0.4,M,operator..);

draw(parab,(-4/9,0){N}..graph(z,-0.4,M,operator..),Magenta+linewidth(1));
fill(parab,graph(z,0,a,operator..)--(a,0)--(0,0)--cycle,Magenta+opacity(0.3));
xaxis(parab,"$x$",-4/9,max(nu(a),M),Red);
xtick(parab,Label("$a$",align=S),a,S,Red);
xtick(parab,Label("$0$",align=S),0,S,Red);
//ytick(parab,Label("$0$",align=W),0,W,Red);
ytick(parab,Label("$1$",align=W),1,W,Red);
yaxis(parab,"$z$",0,z(M),Red);

label(parab,"\parbox{2.1cm}{\centering\textcolor{Blue}{Arc-length}\\[3pt] equals\\[3pt] \textcolor{Magenta}{Area}}",(a+0.55nu(a),1));
draw(parab,(0,0)--(0,1)--(-4/9,0),dashed+Teal);
draw(parab,(-4/9,0)--(a,z(a))--(a,0),dashed+Brown);

add(shift((0,-2.5))*parab);