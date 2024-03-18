if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(200);

pair A=dir(90);
pair B=rotate(72,(0,0))*A;
pair C=rotate(72,(0,0))*B;
pair D=rotate(72,(0,0))*C;
pair E=rotate(72,(0,0))*D;

draw(A--B--C--D--E--A--C--E--B--D--cycle);

pair F=intersectionpoint(A--C,B--E);
pair G=rotate(72,(0,0))*F;
pair H=rotate(72,(0,0))*G;
pair J=rotate(72,(0,0))*H;
pair K=rotate(72,(0,0))*J;

draw(F--H);

dot("$A$",A,A);
dot("$B$",B,B);
dot("$C$",C,C);
dot("$D$",D,D);
dot("$E$",E,E);
dot("$F$",F,2F);
dot("$G$",G,2G);
dot("$H$",H,3H);
dot("$J$",J,2J);
dot("$K$",K,2K);