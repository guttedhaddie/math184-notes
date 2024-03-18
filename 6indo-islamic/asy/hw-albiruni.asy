settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(175);
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