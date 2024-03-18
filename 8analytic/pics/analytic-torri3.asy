settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(130);

draw("$b$",(0,0)--(2,0));
draw("$a$",(0,1)--(0,0));
draw((0,0)--(2,1)--(0,1));
draw((2,0)--(2,1));
draw((0,0.4)--(0.8,0.4));
draw((0.8,0.4)--(2,0.4),dashed);
draw((1.2,0.6)--(2,0.6));
draw((0,0)--(2,0)--(2,1)--(0,1)--(0,0)--(2,1));