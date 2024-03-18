settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(110);

draw(reverse(unitcircle),ArcArrow(Relative(0.7)));

dot("Eccenter",(0,0),dir(200));

dot("Earth",0.2dir(-20));
dot("Planet/Sun",dir(140),dir(140+180));
