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

size(120,0);

real al=25;
real h=(1-Cos(al))/(Cos(al));

draw(arc((0,0),dir(90-al-10),dir(100)));
draw("$r$",dir(90)--(0,0),dashed);
draw("$r$",(0,0)--dir(90-al),dashed);
draw((0,1+h)--dir(90-al),dashed);
draw("$h$",(0,1+h)--dir(90),3W,dashed);
filldraw(dir(93){NE}..{NE}(0,1+h){SE}..{SE}dir(86)--arc((0,0),dir(86),dir(93))--cycle,green+opacity(0.5));
draw((0,1+h)--(0.35,1+h),dashed);
draw("$\alpha$",arc((0,1+h),(0,1+h)+0.15dir(-al),(0.15,1+h),CCW));