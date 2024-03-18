settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(160);

draw(shift((-1,-1))*scale(2)*unitsquare);

pair M=(0,0);
pair A=sqrt(2)*NW;
pair B=sqrt(2)*SW;
pair C=sqrt(2)*SE;
pair D=sqrt(2)*NE;
pair EE=(0,sqrt(2));
pair G=(0,1);
pair NN=(2/3)*G+(1/3)*EE;

draw(A--C);
draw(B--D);
draw(M--EE);
label("$A$",A,NW);
label("$B$",B,SW);
label("$C$",C,SE);
label("$D$",D,NE);
label("$M$",M,2S);
label("$E$",EE,N);
label("$G$",G,SE);
label("$N$",NN,NE);

draw(scale(sqrt(2))*unitcircle);
draw(scale(length(NN-M))*unitcircle);
