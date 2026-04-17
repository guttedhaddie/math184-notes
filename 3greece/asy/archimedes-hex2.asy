settings.tex="lualatex";
defaultpen(fontsize(12pt));

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

size(110);

draw(unitcircle,linewidth(0.1));

path H0=dir(0);
for(int i=1; i<=5; ++i){
	H0=H0--dir(60*i);
	}
H0=H0--cycle;

path H1=dir(0);
for(int i=1; i<=11; ++i){
	H1=H1--dir(30*i);
	}
H1=H1--cycle;

path H2=dir(0);
for(int i=1; i<=23; ++i){
	H2=H2--dir(15*i);
	}
H2=H2--cycle;

filldraw(H2,Yellow+White,linewidth(0.1));
filldraw(H1,Lime+White,linewidth(0.1));
filldraw(H0,SkyBlue+White,linewidth(0.1));

for(int i=0; i<=23; ++i){
	draw((0,0)--dir(15*i),linewidth(0.1));
	}

draw((0,0)--dir(60)--dir(0)--cycle,Blue);
draw(dir(0)--dir(30)--dir(60),Green);


real th=60;

pair O=(0,0);
pair A=(1,0);
pair B=dir(th);
pair M=(A+B)/2;
pair C=dir(th/2);
pair P=(C+A)/2;
pair Q=(C+B)/2;


draw(O--A);
draw(O--B);
draw(O--M,Blue);
draw(A--M,Red);
draw(B--M);
draw(O--P,lGreen);
draw(B--Q--C);
draw(A--P,Magenta);
draw(C--P);
draw(C--M,Brown);