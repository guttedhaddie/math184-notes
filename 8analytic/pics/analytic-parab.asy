settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(0,130);

xaxis(-2.5,3.7,red,RightTicks(new real[]{-3,-2,-1,0,1,2,3}));

labelx("$x$",3.5,S,red);

real f(real x){return x^2+1;}
pair P(real x){return (x,0)+f(x)*dir(60);}


for(int i=-4; i<=3; ++i){
	draw((i/2,0)--P(i/2),dashed+heavygreen);
	}

draw("$y$",(2,0)--P(2),dashed+heavygreen,Arrows);


draw(graph(P,-2.1,2.1,operator..),blue+linewidth(1));