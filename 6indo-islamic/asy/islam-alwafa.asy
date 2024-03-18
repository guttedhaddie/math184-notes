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

size(180,0);

currentprojection=perspective(5,1,2.5);

real a=40;
real ac=45;
real ae=55;
real bc=aSin(Sin(a)*Sin(ac));
real ab=aCos(Cos(ac)/Cos(bc));
triple A=dir(90,0);
triple B=dir(90,ab);
triple C=dir(90-bc,ab);
real de=aSin(Sin(a)*Sin(ae));
real ad=aCos(Cos(ae)/Cos(de));
triple D=dir(90,ad);
triple E=dir(90-de,ad);
triple K=Cos(bc)*dir(90,ab);
triple L=Cos(ab)*Cos(bc)*dir(90,0);


//draw(unitsphere,green+opacity(0.5));

draw(arc(O,A,E));
draw(arc(O,A,D));
draw(arc(O,B,C));
draw(arc(O,D,E));
draw(A--O--B);
draw(B--O--C);
draw(K--L--C--cycle,red);
draw(E--O--D);
label("$O$",O,-Y);
label("$A$",A,-Z);
label("$B$",B,-Z);
label("$D$",D,-Z);
label("$K$",K,-Z);
label("$L$",L,-Y);
label("$C$",C,Z);
label("$E$",E,Z);

real an=8;
real anv=aSin(Sin(a)*Sin(an));
real anh=aCos(Cos(an)/Cos(anv));
draw(Label("$\alpha$",align=dir(60,90)),arc(A,dir(90-anv,anh),dir(90,anh)));
draw(Label("$\alpha$",align=dir(60,90)),arc(L,L+0.1*unit(K-L),L+0.1*unit(C-L),A),red);

draw(K+0.03unit(L-K)--K+0.03unit(L-K)+0.03unit(C-K)--K+0.03unit(C-K),red);
draw(L+0.03unit(O-L)--L+0.03unit(O-L)+0.03unit(K-L)--L+0.03unit(K-L));
draw(B+0.03Z--B+0.03Z+0.03dir(90,ab-90)--B+0.03dir(90,ab-90));
draw(D+0.03Z--D+0.03Z+0.03dir(90,ad-90)--D+0.03dir(90,ad-90));