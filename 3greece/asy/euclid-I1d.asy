settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(30);

pair A=dir(180);
pair B=-A;
pair C=(0,sqrt(3));

draw(A--B,linewidth(1.2));

draw(A--C,blue+linewidth(1.2));


dot(A,red);
dot(B,red);
dot(C,red);