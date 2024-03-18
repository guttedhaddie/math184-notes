settings.tex="pdflatex";

//OpenGL (default) - no opacity

//PNG - no opacity
//if(!settings.multipleView) settings.batchView=false;
//settings.render=4;settings.outformat="png";

//HTML - opacity fine
settings.outformat="html";

//PDF
//if(!settings.multipleView) settings.batchView=false;
//settings.render=4;settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");

import graph;
import graph3;
import solids;

size(140,0);

currentprojection=perspective(5,1,2);

real h=40;
real l=20;
real r=30;
triple H=dir(90,0);
triple A=dir(90,r);
triple B=dir(90,-l);
triple C=dir(90-h,0);
triple D=dir(90,90-l);
real a=aCos(Cos(h)*Cos(l));
real bb=aSin(Sin(h)/Sin(a));
triple E=dir(90-bb,90-l);

draw(Label("$b$",align=Y+0.4Z),arc(O,C,A));
draw(arc(O,A,B));
draw(Label("$a$",align=-Y+0.4Z),arc(O,C,B));
draw(Label("$h$",align=-Y),arc(O,C,H));
label("$A$",A,-Z);
label("$B$",B,-Z);
label("$H$",H,-Z);
label("$C$",C,Z);
label("$D$",D,-Z);
label("$E$",E,Z);
draw(arc(O,C,E),dashed);
draw(arc(O,A,D),dashed);
draw("$\sin B$",arc(O,E,D),dashed);

draw(H+0.04Z--H+0.04Z+0.04dir(90,-90)--H+0.04dir(90,-90));
draw(D+0.04Z--D+0.04Z+0.04dir(90,-l)--D+0.04dir(90,-l));
draw(E+0.04dir(180-bb,90-l)--E+0.04dir(180-bb,90-l)+0.04dir(90,-l)--E+0.04dir(90,-l));