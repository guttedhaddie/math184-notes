settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(120,0);

pair A=(0,0);
pair B=dir(5);
pair C=(0,1.2);
pair D=(-1,0);

draw(B--C--A);
draw(C--D);
draw(box((-0.1,0),(0,0.1)));
draw(B--A--D,StickIntervalMarker(2,2,blue));

label("$A$",A,S);
label("$B$",B,S);
label("$C$",C,N);
label("$D$",D,S);

