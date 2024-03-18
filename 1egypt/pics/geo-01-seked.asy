settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(140);

real th=30;

draw("$a$",(Cos(th),0)--(0,0));
draw("$h$",(Cos(th),Sin(th))--(0,0));
draw("$o$",(Cos(th),0)--(Cos(th),Sin(th)));

draw("$\theta$",arc((0,0),0.1,0,th));

label("seked $=\frac ao=\cot\theta$",(0.5*Cos(th),-0.1));
