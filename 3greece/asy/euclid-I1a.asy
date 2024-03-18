settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(40);

pair A=dir(180);
pair B=-A;
pair C=(0,sqrt(3));

dot((0,-0.1),white);
draw(A--B,linewidth(1.2));
dot(A,red);
dot(B,red);


