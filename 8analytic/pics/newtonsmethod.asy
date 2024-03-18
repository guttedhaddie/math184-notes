settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
include graph;

size(120,120,IgnoreAspect);

real f(real t){return t^3+2t-1;}
real newt(real t){return (2t^3+1)/(3t^2+2);}

pair c=intersectionpoint(graph(f,0,1),(0,0)--(1,0));

draw(graph(f,0.3,1.2),blue);

real[] a={1};
int n=4;
for(int i=1; i<=n; ++i){
	a.push(newt(a[i-1]));
	dot((a[i-1],f(a[i-1])),orange);
	draw((a[i-1],0)--(a[i-1],f(a[i-1]))--(a[i],0),dashed+orange);
	write(string(a[i-1]));
	}
	

xaxis("$x$",0,1.2,red);
yaxis("$f(x)$",0,3.2,red);


xtick(Label("$a_0$",align=S),1,S,red);
xtick(Label("$a_1$",align=S),a[1],S,red);
xtick(Label("$a_2$",align=S),a[2],S,red);
xtick(Label("$c$",align=N),c,N,heavygreen);