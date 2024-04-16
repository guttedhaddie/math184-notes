settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(140);

draw(box((-1,0),(1,1)));
draw(arc((0,0),(1,0),(-1,0)));
draw((-1,-1)--(0,0)--(1,-1)--cycle);

real y=0.6;
draw((-y,-y)--(y,-y),red+linewidth(1));
draw("$y$",(0,0)--(0,-y));
draw("$y$",(0,y)--(0,0));
draw("$1$",(0,0)--(sqrt(1-y^2),y));
draw("$x$",(sqrt(1-y^2),y)--(0,y));
draw((sqrt(1-y^2),y)--(1,y),red+linewidth(1));
draw((-sqrt(1-y^2),y)--(-1,y),red+linewidth(1));