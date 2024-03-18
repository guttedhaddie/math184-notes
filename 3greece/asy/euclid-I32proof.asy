settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(120);


real th=110;
pair P=1.1*dir(th);

draw((1+P.x,0)--(0,0)--P--(-1,0)--(0,0));

draw((0,0)--P+(1,0));

draw("$\beta$",arc((-1,0),0.15,0,degrees(P-(-1,0))));
draw("$\alpha$",arc((0,0),0.12,degrees(P-(-1,0)),th));
draw("$\gamma$",arc((0,0),0.20,th,180));
draw("$\alpha$",arc(P,0.15,degrees((-1,0)-P),degrees(-P)));

