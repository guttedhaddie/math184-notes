settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(180);

real a=3;
real b=2.6;
real e=sqrt(1-b^2/a^2);
real c=sqrt(a^2-b^2);

real r(real t){return (a*(1-e^2))/(1-e*Cos(t-20));}
pair P(real t){return r(t)*dir(t);}
path p=graph(P,0,360,operator ..);

draw(p,Arrow(Relative(0.153)));

real n=24;
real st=58.23457;

real[] q={0};

for(int i=0; i<n; ++i){
	q[i+1]=q[i]+st*2/((r(q[i]))^2);
	write(q[i]);
	}
	
for(int i=0; i<n; ++i){
	draw((0,0)--P(q[i]),grey+linewidth(0.3));
	}


fill(scale(0.35)*unitcircle,white);

filldraw(scale(0.1)*unitcircle,yellow);
for(int i=0; i<=7; ++i){
	draw(0.15*dir(360*i/8)--0.25*dir(360*i/8));
	}

transform T=rotate(20,(0,0));

draw("$2a$",T*(-c,-1.1b)--T*(2a-c,-1.1b),dashed,Arrows);
draw(T*(-c,-0.3)--T*(-c,-1.1b),dotted);
draw(T*(2a-c,-0.3)--T*(2a-c,-1.1b),dotted);

filldraw(shift(P(25))*scale(0.1)*unitcircle,red);
