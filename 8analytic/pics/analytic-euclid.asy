settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(110);

real x=2;
real y=1;

draw(scale(x)*unitsquare);
draw(shift((x,x))*scale(y)*unitsquare);
draw((0,x)--(0,x+y)--(x,x+y));
draw((x,0)--(x+y,0)--(x+y,x));


