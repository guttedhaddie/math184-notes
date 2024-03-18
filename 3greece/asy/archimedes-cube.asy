settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(120);

real f(real x){return 0.05*sin(10*x)+0.5;}

path p=graph(f,-0.2,1.2)--(1.2,-0.3)--(-0.2,-0.3)--cycle;

fill(p,blue+opacity(0.5));

draw(unitsquare);

label("20\,cm",(0.5,0),S);