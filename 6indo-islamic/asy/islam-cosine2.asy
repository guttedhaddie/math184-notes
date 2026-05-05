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

size(110,0);

currentprojection=perspective(5,1,2);

real mcola=90-21-25/60;
real mlong=39+49/60;
real lcola=90-51.5;
real llong=-8/60;

triple M=dir(mcola,mlong);
triple L=dir(lcola,llong);
triple P=dir(lcola,mlong);
triple Q=dir(mcola,llong);

//draw("$b-c$",arc(O,M,P),heavygreen);
//draw("$b-c$",arc(O,L,Q),heavygreen);
draw("$b$",arc(O,Z,M),lGreen+linewidth(1));
//draw("$c$",arc(O,P,Z),blue);
draw(Label("$c$",align=-Y),arc(O,Z,L),Blue+linewidth(1));
//draw(arc(O,Q,M));
//draw(arc(O,L,P)--arc(O,P,Q));
draw("$a$",arc(O,M,L),Red+linewidth(1));
//label("$N$",Z,Z);
//label("$M$",M,-Z);
//label("$L$",L,-Y);
//label("$P$",P,P);
//label("$Q$",Q,-Z);
draw(Label("$\beta$",align=Y),arc(L,dir(lcola+1,llong+3),dir(lcola-8,llong)),lGreen+linewidth(1));
draw("$\alpha$",arc(Z,dir(5,llong),dir(5,mlong)),Red);

//triple A=unit(P+L);
//triple B=unit(Q+M);
//path3 split=arc(O,Z,B);
//draw(arc(O,Z,B));

//draw(A+0.03unit(P-L)--A+0.03dir(lcola-90,(llong+mlong)/2)+0.03unit(P-L)--A+0.03dir(lcola-90,(llong+mlong)/2));
//draw(B+0.03unit(M-Q)--B+0.03dir(mcola-90,(llong+mlong)/2)+0.03unit(M-Q)--B+0.03dir(mcola-90,(llong+mlong)/2));