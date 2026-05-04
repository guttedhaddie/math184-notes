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

size(0,140);

real th=60;

draw(box((Cos(th)-0.07,0),(Cos(th),0.07)));

draw((0,0)--1.4dir(th),yellow+orange);
draw((-0.2,0)--(0.8,0));
draw("1",(Cos(th),0)--dir(th));
draw("$\tan\alpha=\cot\beta$",(0,0)--(Cos(th),0),Green+linewidth(1));
draw("$\sec\alpha=\csc\beta$",dir(th)--(0,0),Red+linewidth(1));
draw("$\beta$",arc((0,0),0.1dir(0),0.1dir(th)));
draw("$\alpha$",arc(dir(th),dir(th)+0.1dir(180+th),dir(th)+0.1dir(270)));

filldraw(shift(1.5dir(th))*scale(0.03)*unitcircle,yellow+orange);
for(int i=0; i<=7; ++i){
	draw(1.5dir(th)+0.04dir(360*i/8)--1.5dir(th)+0.1dir(360*i/8),yellow+orange);
	}