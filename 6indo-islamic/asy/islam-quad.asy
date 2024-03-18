settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(120);

real x=2;
real y=1;
draw((x,0)--(x,x+y)--(0,x+y)--(0,0)--(x+y,0)--(x+y,x)--(0,x));
draw((x+y,x)--(x+y,x+y)--(x,x+y),dashed);

label("$x$",(x/2,0),N);
label("2",(x+y/2,0),N);
label("$x$",(0,x/2),E);
label("2",(0,x+y/2),E);