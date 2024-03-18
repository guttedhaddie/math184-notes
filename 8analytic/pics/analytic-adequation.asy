settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(160,180,IgnoreAspect);

xaxis("$x$",0,3.2,red,RightTicks(new real[]{0,-1,1,2,3}));
yaxis("$p(x)$",0,19,red,LeftTicks(new real[]{0,5,10,15}));

real p(real x){return x^3-12*x+19;}

path q=graph(p,0,3.3,operator..);

draw(q,blue);

pair[] I=intersectionpoints(q,(0,5)--(3,5));
draw((I[0].x,0)--I[0]--I[1]--(I[1].x,0),dashed);
label("$x_1$",(I[0].x,0),S);
label("$x_2$",(I[1].x,0),S);