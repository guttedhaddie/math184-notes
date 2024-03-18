settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(150);

real x=1;
real b=0.55;
real c=x^2-b*x;

pair A=(x,x);
pair B=(0,A.y);
pair C=(A.x,0);
pair D=(0,0);
pair H=(A.x,b);
pair G=0.5(C+H);
pair L=(G.y,G.y);
pair M=(L.x,x);
pair R=(0,H.y);
pair NN=(L.x,R.y);
pair K=(H.x-G.y,H.y);
pair T=(K.x,G.y);

draw(M--L--G);
draw(A--B--D--C--cycle);
draw(R--H);
draw(K--T);


label("$A$",A,NE);
label("$B$",B,NW);
label("$C$",C,SE);
label("$D$",D,SW);
label("$G$",G,E);
label("$H$",H,E);
label("$M$",M,N);
label("$L$",L,S);
label("$R$",R,W);
label("$N$",NN,NW);
label("$K$",K,N);
label("$T$",T,S);