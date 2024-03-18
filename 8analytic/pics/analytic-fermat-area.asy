settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(190,180,IgnoreAspect);

real a=1;
real k=3;
real r=0.8;

real y(real x){return x**k;}

draw(graph(y,0,a));

xaxis("$x$",0,1.1a,red);
yaxis("$y$",0,1.15y(a),red);

void bx(int n){draw(box((a*r^(n+1),0),(a*r^n,y(a*r^n))));}

for(int N=0; N<=20; ++N){
	bx(N);
	}
	
labelx("$a$",a,red);
labelx("$ar$",a*r,red);
labelx("$ar^2$",a*r^2,red);
labelx("$ar^3$",a*r^3,red);
labelx("$\cdots$",a*r^4,red);

ytick(Label("$a^3$",align=W),a^k,W,red);
ytick(Label("$(ar)^3$",align=W),(a*r)^k,W,red);
ytick(Label("$(ar^2)^3$",align=W),(a*r^2)^k,W,red);

label("$A_0$",((a+a*r)/2,0.5y(a)));
label("$A_1$",((a*r+a*r^2)/2,0.5y(a*r)));
label("$A_2$",((a*r^2+a*r^3)/2,0.5y(a*r^2)));