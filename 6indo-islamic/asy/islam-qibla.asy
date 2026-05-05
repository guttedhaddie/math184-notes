settings.tex="lualatex";
defaultpen(fontsize(12pt));

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

size(120,0);

currentprojection=perspective(5,1,3);

real mcola=90-21-25/60;
real mlong=39+49/60;
real lcola=90-51.5;
real llong=-8/60;

triple M=dir(mcola,mlong);
triple L=dir(lcola,llong);
triple P=dir(lcola,mlong);
triple Q=dir(mcola,llong);

draw(Label("$b$",align=Y+Z),arc(O,M,Z),lGreen+linewidth(1));
//draw("$b-c$",arc(O,L,Q),lGreen+linewidth(1));
//draw("$c$",arc(O,P,Z),Blue+linewidth(1));
draw(Label("$c$",align=-Y+Z),arc(O,Z,L),Blue+linewidth(1),(Z+L)/2);
//draw(arc(O,Q,M),linewidth(1));
//draw(arc(O,L,P)--arc(O,P,Q),linewidth(1));
draw(arc(O,M,L),Red+linewidth(1));
label("$N$",Z,Z);
label("$M$",M,-Z);
label("$L$",L,-Y);
//label("$P$",P,P);
//label("$Q$",Q,-Z);
draw(Label("$\beta$",align=Y),arc(L,dir(lcola+1,llong+3),dir(lcola-8,llong)),lGreen);
draw("$\alpha$",arc(Z,dir(5,llong),dir(5,mlong)),Red);

label("$O$",O,-Z);
draw(Z--O,dashdotted);
draw(L--O--M,dashdotted);