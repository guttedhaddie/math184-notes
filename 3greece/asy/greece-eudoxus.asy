settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(120);

draw(unitsquare);
draw(rotate(45,(0,0))*scale(1/sqrt(2))*unitsquare);
draw(dir(0)--dir(90));

label("$A$",(3*dir(90)+dir(0))/4,NE);
label("$A$",(1*dir(90)+3*dir(0))/4,NE);
label("$B$",0.5*dir(90),W);