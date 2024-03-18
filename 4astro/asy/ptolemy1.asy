settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(160);

pair A=dir(10);
pair B=dir(70);
pair C=dir(135);
pair D=dir(220);

draw(unitcircle,dashed);


draw(A--B--C--D--cycle,dashed);
draw(A--C,dashed);
draw(B--D,dashed);

real ac=arclength(A--C);
real ad=arclength(A--D);
real bc=arclength(B--C);
real bd=arclength(B--D);
real ec=ad*bc/bd;

pair E=C+(ec/ac)*(A-C);

draw(E--B--A--cycle,red);
draw(C--B--D--cycle,red);

label("$A$",A,A);
label("$B$",B,B);
label("$C$",C,C);
label("$D$",D,D);

draw(arc(B,B+0.1*dir(E-B),B+0.1*dir(A-B)));
draw(arc(B,B+0.1*dir(C-B),B+0.1*dir(D-B)));
label("$E$",E,S);
dot(E);