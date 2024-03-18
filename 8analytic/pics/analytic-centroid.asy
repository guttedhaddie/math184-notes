settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(160);

pair O=(0,0);
pair A=(3,0);
pair B=6*dir(50);
pair OA=(O+A)/2;
pair OB=(O+B)/2;
pair AB=(B+A)/2;
pair G=2*AB/3;


draw(1.2B--O--1.3A,Arrows);

draw(O--A--B--cycle,blue);
draw(O--AB,dashed);
draw(B--OA,dashed);
draw(A--OB,dashed);

dot(Label("$(0,0)$",black),O,S,red);
dot(Label("$(a,0)$",black),A,S,red);
dot(Label("$(0,b)$",black),B,NW,red);
dot(Label("$(\frac a2,0)$",black),OA,S,red);
dot(Label("$(0,\frac b2)$",black),OB,NW,red);
dot(Label("$(\frac a2,\frac b2)$",black),AB,E,red);
dot(Label("$G$",black),G,dir(-15),red);
