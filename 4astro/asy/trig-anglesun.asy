settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(160);

draw(unitcircle);

pair O=(0,0);
pair A=dir(-90+18);
pair B=dir(-90-18);
pair C=-A;

fill(A--arc(A,A+0.1unit(-A),A+0.1unit(B-A))--cycle,blue);


fill(O--arc(O,0.3B,0.3A)--cycle,heavygreen);
draw("$36^\circ$",arc(O,0.3B,0.3A),heavygreen);
fill(O--arc(O,0.1C,0.1B)--cycle,orange);

draw(O--B);
draw(A--C);
draw("$1$",C--B);
draw("$\ell$",A--B);