settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(140);

real a=2;
real b=2;

pair O=(0,0);
pair Q=(0,-a/2);
pair P=(b,-a/2);
pair D=unit(P-O);
pair M=O+(a/2)*D;
pair NN=O-(a/2)*D;

draw(circle((0,0),a/2));
draw(O--Q--P--NN);

label("$M$",M,dir(25));
label("$N$",NN,NW);
label("$P$",P,S);
label("$Q$",Q,S);
label("$O$",O,NE);
label("$b$",(P+Q)/2,S);
label("$\frac a2$",(O+Q)/2,W);