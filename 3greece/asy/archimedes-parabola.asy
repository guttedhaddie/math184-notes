settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(160);

pair P(real t){return (t,t^2+0.2);}

real l=-1; real r=1.3;

real m(real i){return (1/2-i/8)*l+(1/2+i/8)*r;}


fill(P(m(-4))--P(m(0))--P(m(4))--cycle,heavygreen);
fill(P(m(-4))--P(m(0))--P(m(-2))--cycle,0.5heavygreen+0.5white);

void tri(real a, real b,real c){draw(P(a)--P(b)--P(c)--cycle);}

tri(l,m(0),r);

draw(P(m(0))--P(m(-2))--P(m(-4))--P(m(-3))--P(m(-2))--P(m(-1))--P(m(0)) --P(m(2))--P(m(4))--P(m(3))--P(m(2))--P(m(1))--P(m(0)));


draw(graph(P,l,r),blue+linewidth(1));

label("$A$",(0.1,1.05));
label("$A_1$",(-0.35,0.5));

xaxis("$x$",l,r,red);
for(int i=-4; i<=4; ++i){
	xtick(m(i),red);
}

dot("$P$",P(m(-4)),N);
dot("$Q$",P(m(0)),SE);
dot("$R$",P(m(4)),N);