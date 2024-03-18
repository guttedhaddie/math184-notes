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

size(100,0);

currentprojection=perspective(5,1,2);

triple A=dir(90,0);
triple D=dir(90,25);
triple B=dir(90,50);
triple C=dir(30,20);
triple E=unit(3A+2C);
real mu=-dot(C,cross(E,B))/dot(D,cross(E,B));
triple F=unit(C+mu*D);
//dot(F);

draw(arc(O,A,B));
draw(arc(O,A,C));
draw(arc(O,D,C));
draw(arc(O,E,B));
//label("$O$",O,-Z);
label("$A$",A,-Z);
label("$B$",B,-Z);
label("$D$",D,-Z);
label("$E$",E,-Y);
label("$F$",F,Z+Y);
//label("$K$",K,-Z);
//label("$L$",L,-Z);
label("$C$",C,Z);
//label("$E$",E,Z);
