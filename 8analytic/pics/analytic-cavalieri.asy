settings.tex="pdflatex";

//OpenGL (default) - no opacity

//PNG - no opacity
//if(!settings.multipleView) settings.batchView=false;
//settings.render=4;settings.outformat="png";

//HTML - opacity fine
settings.outformat="html";

//PDF
//if(!settings.multipleView) settings.batchView=false;
//settings.render=4;settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");

import graph;
import three;

size(140,0);

currentprojection=orthographic(6,-4,3,up=Z);

render render=render(merge=true);
material matc=material(heavygreen+opacity(0.5),shininess=1.0);
material mats=material(lightblue+opacity(0.2),shininess=1.0);

void bx(real x){
	path3 f=x*X--x*(X+Y)--x*(X+Y+Z)--x*(X+Z)--cycle;
	draw(f);
	draw(surface(f),matc);
	dot(x*(X+Y),blue);
	dot(x*(X+Y+Z),red);
	dot(x*(X+Z),brown);
}

void bxx(real x){
	draw(x*(X+Z)--x*Z--x*(Y+Z)--x*(X+Y+Z));
	draw(x*(Y+Z)--x*Y--x*(X+Y));
}

draw(X--O--Z--X+Z--X--X+Y--X+Y+Z--X+Z);
draw(Z--Y+Z--X+Y+Z);draw(Z--Y+Z--X+Y+Z);
draw(X+Y--Y--O,dotted);
draw(Z+Y--Y,dotted);
draw(X+Y--O,blue+dashed);
draw(X+Y+Z--O,red+dashed);
draw(X+Z--O,brown+dashed);
draw(Z+Y--O,orange+dashed);
real h=0.3;
bxx(0.32);
bx(0.32);
dot(0.32*(Y+Z),orange);

dot("$x$",0.32*X,-Z-Y);
dot("$0$",O,-Z-Y);
dot("$a$",X,-Z-Y);


