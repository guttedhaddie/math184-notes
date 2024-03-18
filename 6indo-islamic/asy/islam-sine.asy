settings.tex="pdflatex";

//OpenGL (default) - no opacity

//PNG - no opacity
//if(!settings.multipleView) settings.batchView=false;
//settings.render=4;settings.outformat="png";

//HTML - opacity fine
settings.outformat="html";

//PDF
if(!settings.multipleView) settings.batchView=false;
settings.render=4;settings.outformat="pdf";

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

draw(Label("$b$",align=Y+0.4Z),arc(O,C,A));
draw(arc(O,A,B));
draw(Label("$a$",align=-Y+0.4Z),arc(O,C,B));
draw(Label("$h$",align=-Y),arc(O,C,H));
label("$A$",A,-Z);
label("$B$",B,-Z);
label("$H$",H,-Z);
label("$C$",C,Z);

draw(H+0.03Z--H+0.03Z+0.03dir(90,-90)--H+0.03dir(90,-90));
