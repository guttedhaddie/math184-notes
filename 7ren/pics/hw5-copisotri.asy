settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(140);

draw(unitcircle,blue);

real t=20;

pair A=dir(90);
pair B=dir(180+t);
pair C=dir(-t);
pair D=(A+B)/2;
pair E=(A+C)/2;

draw(A--B--C--cycle);

label("$A$",A,N);
label("$B$",B,B);
label("$C$",C,C);

real r=arclength(A--B);
draw(shift(A)*scale(r/2)*unitcircle,red);

label("$D$",D,dir(190));
label("$E$",E,dir(350));

draw(D--E);
