settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(320,75,IgnoreAspect);

draw(0.8dir(60+180)--0.8dir(120+180)--(0,0)--cycle);
draw((-3,0)--(4,0));
draw(box((-3,0.04),(-2.6,0.5)));
draw(box((4,0.04),(3.6,0.65)));
draw("$r_1$",(-2.8,0.25)--(0,0.25),N,dashed,Arrows);
draw("$r_2$",(3.8,0.25)--(0,0.25),N,dashed,Arrows);
label("$M_1$",(-2.8,0.7));
label("$M_2$",(3.8,0.9));