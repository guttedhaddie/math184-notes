settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(180,160,IgnoreAspect);

xaxis("$x$",0,1,red,RightTicks(new real[]{0,1}));
yaxis("$y$",0,35,red,LeftTicks(new real[]{0,10,20,30}));


for(int i=0; i<=11; ++i){
	filldraw((1/2^i,1+3*i)--(1/2^(i+1),1+3*i)--(1/2^(i+1),0)--(1/2^i,0)--cycle,lightblue);
	}

real a=0;
for(int i=0; i<=20; ++i){
	real b=a+(1+3*i)/2^(i+1);
	a=b;
	write(a);
	}
	



