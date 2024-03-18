settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(160,130,IgnoreAspect);

real a=1.5;
real b=2;
real r=2;

real y(real x){return 1/x;}

draw(graph(y,1,1.2*b*r));

path ab=(a,0)--graph(y,a,b)--(b,0)--cycle;
path rab=(a*r,0)--graph(y,a*r,b*r)--(b*r,0)--cycle;
fill(ab,lightblue);
fill(rab,lightblue);
draw(graph(y,1,1.2*b*r),blue+linewidth(1));

xaxis("$x$",0,1.2*b*r,red,RightTicks(new real[]{0,1}));
yaxis("$y$",0,1.12,red,LeftTicks(new real[]{0,1}));

draw(box((a,0),(b,y(a))));
draw((a,y(b))--(b,y(b)));
draw(box((a*r,0),(b*r,y(a*r))));
draw((a*r,y(b*r))--(b*r,y(b*r)));

	
xtick(Label("$a$",align=S),a,S,red);
xtick(Label("$b$",align=S),b,S,red);
xtick(Label("$ar$",align=S),a*r,S,red);
xtick(Label("$br$",align=S),b*r,S,red);


label("$A$",((a+b)/2,0.55*y(b)));
label("$B$",(r*(a+b)/2,0.55*y(b*r)));