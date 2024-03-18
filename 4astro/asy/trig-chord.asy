settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(170);

pair O=(0,0);
pair A=(1,0);
pair B=-A;
pair C=dir(55);

draw(arc(O,A,B));


draw(O--C--B--A--C);

draw("$\alpha$",arc(O,0.1A,0.1C));

draw("$r$",C--O);

draw("crd $\alpha$",C--A);
draw(Label("crd($180^\circ-\alpha$)",Relative(0.4)),C--B,2dir(27.5+90));