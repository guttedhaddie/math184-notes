settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(130);

fill((0,0)--(2,0)--(2,1)--cycle,blue+opacity(0.3));
fill((0,0)--(0,1)--(2,1)--cycle,red+opacity(0.3));
draw((0,0.4)--(0.8,0.4),red);
draw((0.8,0)--(0.8,0.4),blue);
draw((0,0)--(2,0)--(2,1)--(0,1)--(0,0)--(2,1));




