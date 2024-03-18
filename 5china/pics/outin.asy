settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(160);

real a=4;
real b=2.3;
filldraw(scale(a)*unitsquare,red+opacity(0.5));
filldraw(shift((a,0))*scale(b)*unitsquare,blue+opacity(0.5));

draw((b,-b)--(b,0));
filldraw((0,a-b)--(a,a)--(a+b,0)--(b,-b)--cycle,green+opacity(0.5));

label("$A_\text{o}$",(0,a)+(1/3)*(a,-b));
label("$A_\text{i}$",(b,0)+(1/3)*(a,-b));
label("$B_\text{o}$",(1/3)*(b-b^2/a,a-b));
label("$B_\text{i}$",(a,b)+(1/3)*(b-b^2/a,a-b));
label("$C_\text{o}$",(a+b,b)-(1/3)*(b^2/a,b));
label("$C_\text{i}$",(b,0)-(1/3)*(b^2/a,b));

