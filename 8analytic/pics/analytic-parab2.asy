settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(0,130);

draw(Label("$x,X$ axes",Relative(0.95),S),(0,0)--6*dir(0),red,Arrow);
draw(Label("$Y$ axis",Relative(0.95),W),(0,0)--5*dir(90),red,Arrow);
draw(Label("$y$ axis",Relative(0.95),W),(0,0)--5*dir(60)/(Sin(60)),red,Arrow);

dot("origin",(0,0),SW);
draw("$x$",(0,0)--(2,0));
draw("$y$",(2,0)+5*dir(60)--(2,0));
draw("$Y$",(2+5/2,0)--(2,0)+5*dir(60));
draw("$X$",(0,-0.9)--(9/2,-0.9),dashed);
draw("60\textdegree",arc((2,0),(2,0)+0.5dir(0),(2,0)+0.5dir(60)));
dot("$P$",(2,0)+5*dir(60));