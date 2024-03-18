settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(0,75);

draw((-3.5,1)--(3,1));
draw((-3.5,-1)--(3,-1));
draw((-1,2)--(1,-2));

pair A=(-0.5,1);
pair B=-A;

//label("$\ell_1$",(4,1));
//label("$\ell_2$",(4,-1));

draw("$\alpha$",arc(A,0.41,180*angle(B-A)/pi,0));
//draw("$\gamma$",arc(A,0.31,180,180*angle(B-A)/pi,CCW));
draw("$\beta$",arc(B,0.41,180*angle(A-B)/pi,180));




