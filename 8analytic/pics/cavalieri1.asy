settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(160);

pair O=(0,0);

draw(scale(2pi)*unitcircle,Arrow(Relative(0.1)));

real R=0.4*2pi;
pair A=R*dir(0);
pair B=R*dir(360*R/2pi);
pair C=2pi*dir(360*R/2pi);
label("$r$",A/2,N);

real r(real th){return th;}
draw(polargraph(r,0,2pi),red);

draw(arc(O,R,360*R/2pi,3600,CCW),blue);
draw(arc(O,R,0,360*R/2pi,CCW),blue+dotted);
draw(O--2pi*dir(0));
draw(O--2pi*dir(R*360/2pi),Arrow(Relative(0.6)));

real y(real x){return -x*(2pi-x);}
draw(Label("$y=r(r-2\pi)$",Relative(0.4)),graph(y,0,2pi),heavygreen);
pair D=(A.x,y(A.x));

draw(A--D,dashed+heavygreen);
dot("$O$",O,SW);
dot("$D$",D,dir(45));
dot("$C$",A,NE);
dot("$B$",B,2*dir(360*R/2pi-45));
dot("$A$",C,NW);