settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(170);

real al=35;

pair O=(0,0);
pair A=(1,0);
pair B=-A;
pair C=dir(al);
pair D=dir(2*al);
pair M=intersectionpoint(O--C,A--D);

draw(A--B--D--A--C--O--D--C);
draw(arc(O,A,B));

draw("$\alpha$",arc(O,0.1A,0.1C));
draw("$\alpha$",arc(O,0.1C,0.1D));

label("$A$",A,S);
label("$B$",B,S);
label("$C$",C,C);
label("$D$",D,D);
label("$O$",O,S);
label("$M$",M,2dir(-100));