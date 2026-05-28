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

include graph;

size(120,120,IgnoreAspect);

real f(real t){return t^3+2t-1;}
real newt(real t){return (2t^3+1)/(3t^2+2);}

pair c=intersectionpoint(graph(f,0,1),(0,0)--(1,0));

draw(graph(f,0.3,1.2),Blue);

real[] a={1};
int n=4;
for(int i=1; i<=n; ++i){
	a.push(newt(a[i-1]));
	dot((a[i-1],f(a[i-1])),lGreen);
	draw((a[i-1],0)--(a[i-1],f(a[i-1]))--(a[i],0),dashed+lGreen);
	write(string(a[i-1]));
	}
	

xaxis("$x$",0,1.2,Red);
yaxis("$f(x)$",0,3.2,Red);


xtick(Label("$a_0$",align=S),1,S,Red);
xtick(Label("$a_1$",align=S),a[1],S,Red);
xtick(Label("$a_2$",align=S),a[2],S,Red);
xtick(Label("$c$",align=N),c,N,Green);