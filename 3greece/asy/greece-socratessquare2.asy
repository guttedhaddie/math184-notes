settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(100);

draw(unitsquare);
draw(shift((0.5,0))*scale(sqrt(0.5))*rotate(45)*unitsquare,blue);
draw("$b$",(0,0.5)--(1,0.5),heavygreen);
label("$a$",(0.25,0.75),NW,blue);
label("$a$",(0.75,0.75),NE,blue);