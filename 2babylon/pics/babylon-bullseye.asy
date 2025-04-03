settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(120);

draw(arc((0,0),dir(150),dir(30),CCW),dashed);
draw(dir(30)--dir(150)--dir(270)--cycle,dashed);

path a=arc((0,0),dir(30),dir(150));
path b=a--rotate(180,(0,1/2))*a--cycle;
fill(b,blue+opacity(0.5));
draw(Label("$a$",Relative(0.25)),b,blue);

//dot((0,0));