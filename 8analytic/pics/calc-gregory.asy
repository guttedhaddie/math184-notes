settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(160,0);

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
xtick(Label("$a$",align=S),a,S,red);
xtick(Label("$0$",align=S),0,S,red);
ytick(Label("$0$",align=W),0,W,red);
yaxis("$y$",0,y(M),red);

draw(graph(y,0,M,operator..),blue);
draw(graph(y,0,a,operator..),blue+linewidth(1));
draw("$y$",P--(a,0),dashed);
draw("$\nu$",(a,0)--(nu(a)+a,0),S,purple+dashed);
draw("$n$",P--(nu(a)+a,0),dashed+heavygreen);
draw("$\mathrm{d}x$",P--P+d*(y(a),0),S,dashed);
draw("$\mathrm{d}y$",P+d*(y(a),0)--P+d*(y(a),nu(a)),E,purple+dashed);
draw("$\mathrm{d}s$",P+d*(y(a),nu(a))--P,dashed+heavygreen);

path para=(-4/9,0){N}..graph(z,-0.4,M,operator..);

draw(parab,(-4/9,0){N}..graph(z,-0.4,M,operator..),orange);
fill(parab,graph(z,0,a,operator..)--(a,0)--(0,0)--cycle,orange+opacity(0.5));
xaxis(parab,"$x$",0,max(nu(a),M),red);
xtick(parab,Label("$a$",align=S),a,S,red);
xtick(parab,Label("$0$",align=S),0,S,red);
ytick(parab,Label("$0$",align=W),0,W,red);
ytick(parab,Label("$1$",align=W),1,W,red);
yaxis(parab,"$z$",0,z(M),red);

label(parab,"\parbox{3cm}{\centering\textcolor{blue}{Arc-length}\\[3pt] equals\\[3pt] \textcolor{orange}{Area}}",(a+0.5nu(a),1));
draw(parab,(0,0)--(0,1)--(-4/9,0)--(a,z(a))--(a,0)--(-4/9,0),dashed);

add(shift((0,-2.5))*parab);