settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(140);

pair A=dir(10);
pair B=dir(50);
pair C=dir(145);
pair D=dir(190);

pair O=(0,0);

draw(unitcircle,dashed);

draw(A--B--C--D--cycle);
draw(A--O--C);
draw(B--O);

label("$A$",A,A);
label("$B$",B,B);
label("$C$",C,C);
label("$D$",D,D);
label("$O$",O,S);

draw("$\beta$",arc(O,0.24*dir(A),0.24*dir(B)),blue);
draw("$\alpha$",arc(O,0.15*dir(A),0.15*dir(C)),heavygreen);