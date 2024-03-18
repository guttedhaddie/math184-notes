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

real mcola=90-21-25/60;
real mlong=39+49/60;
real lcola=90-51.5;
real llong=-8/60;

triple M=dir(mcola,mlong);
triple L=dir(lcola,llong);
triple P=dir(lcola,mlong);
triple Q=dir(mcola,llong);

draw("$b-c$",arc(O,M,P),heavygreen+linewidth(1));
draw("$b-c$",arc(O,L,Q),heavygreen+linewidth(1));
draw("$c$",arc(O,P,Z),blue+linewidth(1));
draw("$c$",arc(O,Z,L),blue+linewidth(1));
draw(arc(O,Q,M),linewidth(1));
draw(arc(O,L,P)--arc(O,P,Q),linewidth(1));
draw(arc(O,M,L),red+linewidth(1));
label("$N$",Z,Z);
label("$M$",M,-Z);
label("$L$",L,-Y);
label("$P$",P,P);
label("$Q$",Q,-Z);
draw("$\beta$",arc(L,dir(lcola+1,llong+3),dir(lcola-8,llong)),heavygreen);
draw("$\alpha$",arc(Z,dir(5,llong),dir(5,mlong)),red);

