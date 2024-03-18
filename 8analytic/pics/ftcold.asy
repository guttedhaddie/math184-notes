settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
include graph;

size(135,100,IgnoreAspect);

real f(real t){return 4-(t-2)^2;}

real a=1.2;
path p=graph(f,0,a)--(a,0)--cycle;
fill(p,heavygreen+opacity(0.5));

draw(graph(f,0,1.4),blue);

real de=0.03;
filldraw(box((a-de,0),(a+de,f(a))),purple+opacity(0.3),linewidth(0.1));

label("$oy$",(a+de,0.5*f(a)),E,purple);

xaxis(0,1.4,red);
yaxis(0,3.8,red);

label("$z$",(1.2a/2,0.5*f(a/2)),darkgreen);

xtick(Label("$x$",align=S),a,S,red);
ytick(Label("$y$",align=W),f(a),W,red);
