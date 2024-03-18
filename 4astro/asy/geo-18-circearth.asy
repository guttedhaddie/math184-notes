settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(180);

draw(circle((0,0),1));

draw(Label("rays",align=S,Relative(0.5)),(2,0)--(1,0),Arrow(Relative(0.5)));
draw(Label("sun's",align=N,Relative(0.5)),(2,dir(7.2).y)--dir(7.2),Arrow(Relative(0.5)));
draw((1,0)--(0,0)--dir(7.2));

dot("A",dir(7.2),NW);
dot("S",dir(0),SE);

picture sun;
draw(sun,unitcircle,yellow+orange);
int n=8;
for(int i=0; i<n; ++i){
	draw(sun,1.1dir(360*i/n)--1.5dir(360*i/n),orange);
	}

add(shift((2.4,0.5dir(7.2).y))*scale(0.2)*sun);