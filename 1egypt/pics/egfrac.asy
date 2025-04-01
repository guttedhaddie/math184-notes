settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

scale(20);


draw(xscale(10)*unitcircle);
//draw(unitcircle);
//dot((11.5,1),white);