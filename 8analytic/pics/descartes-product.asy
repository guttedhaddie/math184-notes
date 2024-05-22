settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(140);

real c=2;
real d=3;

pair B=(0,0);
pair A=dir(50);
pair C=c*dir(-10);
pair D=d*A;
pair EE=d*C;
draw(A--C);
draw(D--EE);

draw(1.3*EE--B--1.3*D,Arrows);


dot(Label("$A$",black),A,NW,red);
dot(Label("$B$",black),B,W,red);
dot(Label("$C$",black),C,SW,red);
dot(Label("$D$",black),D,NW,red);
dot(Label("$E$",black),EE,SW,red);