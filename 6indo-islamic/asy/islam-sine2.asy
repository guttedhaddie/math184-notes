settings.tex="lualatex";
defaultpen(fontsize(12pt));

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
\usepackage{unicode-math}
\setmainfont{TeX Gyre Pagella}
\setmathfont{TeX Gyre Pagella Math}
\usepackage[svgnames,x11names]{xcolor}
");

import x11colors;
pen lGreen=rgb("00a000");

import graph;
import graph3;
import solids;

size(150,0);

currentprojection=perspective(5,2,3);

real h=40;
real l=20;
real r=30;
triple H=dir(90,0);
triple B=dir(90,r);
triple A=dir(90,-l);
triple C=dir(90-h,0);
triple D=dir(90,90-l);
real a=aCos(Cos(h)*Cos(l));
real bb=aSin(Sin(h)/Sin(a));
triple E=dir(90-bb,90-l);

draw(Label("$a$",align=-Y-0.4Z),arc(O,C,B));
draw(arc(O,B,A));
draw(Label("$b$",align=-Y+0.4Z),arc(O,C,A));
draw(Label("$h$",align=-Y),arc(O,C,H));
label("$B$",B,-Z);
label("$A$",A,-Z);
label("$H$",H,-Z);
label("$C$",C,Z);
label("$D$",D,-Z);
label("$E$",E,Z);
draw(arc(O,C,E),dashed);
draw(arc(O,B,D),dashed);
draw("$A$",arc(O,E,D),dashed);

draw(H+0.04Z--H+0.04Z+0.04dir(90,-90)--H+0.04dir(90,-90));
draw(D+0.04Z--D+0.04Z+0.04dir(90,-l)--D+0.04dir(90,-l));
draw(E+0.04dir(180-bb,90-l)--E+0.04dir(180-bb,90-l)+0.04dir(90,-l)--E+0.04dir(90,-l));

label("$O$",O,-Z);
draw(A--O--D,dashdotted);
draw(O--E,dashdotted);
draw(arc(O,0.1*D,0.1*E));