settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(140);

draw(unitcircle);
pair A=(1,0);
pair B=(-1,0);
pair C=(0,1);
pair D=(0,-1);
draw(A--B);
draw(C--D);

pair M=(1/2,0);
pair NN=((1-sqrt(5))/2,0);
draw(NN--M--C,heavygreen+dashed);
draw(arc(M,C,NN),dashed+heavygreen);
pair R=dir(72+90);
draw(arc(C,R,NN),dashed+blue);
draw(NN--C,blue+dashed);

draw(dir(90)--dir(90+72)--dir(90+2*72)--dir(90+3*72)--dir(90+4*72)--cycle,blue);

dot("$O$",(0,0),SW);
dot("$A$",A,A);
dot("$B$",B,B);
dot("$C$",C,C);
dot("$D$",D,D);
dot("$M$",M,S);
dot("$N$",NN,S);
dot("$R$",R,R);