settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(140);

pair A=dir(180);
pair B=-A;
pair C=(0,sqrt(3));

draw(A--B,linewidth(1.2));
draw(shift(A)*scale(2)*unitcircle,blue);
draw(shift(B)*scale(2)*unitcircle,heavygreen);

draw(A--C,blue+linewidth(1.2));
draw(B--C,heavygreen+linewidth(1.2));


dot(A,red);
dot(B,red);
dot(C,red);