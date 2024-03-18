settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(180);

real th=60;

pair O=(0,0);
pair A=(1,0);
pair B=dir(th);
pair M=(A+B)/2;
pair C=dir(th/2);
pair P=(C+A)/2;
pair Q=(C+B)/2;

void rtang(pair P, real ph, real d=0.035){
	draw(shift(P)*rotate(ph,(0,0))*box((0,0),(d,d)));
}

rtang(M,th/2+90);
rtang(P,th/4+90);

draw(arc(O,dir(350),dir(th+10)),dashed);
draw(Label("$1$",align=S),O--A,linewidth(1));
draw(Label("$1$",align=dir(th+90)),O--B,linewidth(1));
draw(Label("$d_n$",align=dir(th/2+90)),O--M,blue+linewidth(1));
draw(Label("$h_n$",align=dir(2th+90),Relative(0.3)),A--M,red+linewidth(1));
draw(Label("$h_n$",align=dir(2th+90)),B--M,linewidth(1));
draw(Label("$d_{n+1}$",align=dir(th/4+90),Relative(0.6)),O--P,heavygreen+linewidth(1));
draw(B--Q--C,linewidth(1));
draw(Label("$h_{n+1}$",align=1.5dir(th/4),Relative(0.5)),A--P,orange+linewidth(1));
draw(Label("$h_{n+1}$",align=1.5dir(th/4),Relative(0.5)),C--P,linewidth(1));
draw(C--M,brown+linewidth(1));
label("$1-d_n$",C+(0,0.2),brown);
draw(C+(-0.01,0.17)--(C+M)/2+0.01dir(th+90),brown,Arrow);
