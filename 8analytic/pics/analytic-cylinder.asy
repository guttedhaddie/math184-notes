settings.tex="pdflatex";

//OpenGL (default) - no opacity

//PNG - no opacity
//if(!settings.multipleView) settings.batchView=false;
//settings.render=4;settings.outformat="png";

//HTML - opacity fine
settings.outformat="html";

//PDF
if(!settings.multipleView) settings.batchView=false;
settings.render=4;settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");

import graph;
import three;
import solids;

size(160,0);

currentprojection=orthographic(0,4,-20,up=Y);

render render=render(merge=true);
material matc=material(yellow+opacity(1),shininess=1.0);
material mats=material(lightblue+opacity(0.2),shininess=1.0);

void coin(real x, real y, real r, real h)
{
  path3 C=arc((x,y,0),r,0,0,0,2pi,Y)..cycle;
  draw(surface(C,planar=true),matc,render);
  path3 CC=arc((x,y+h,0),r,0,0,0,2pi,Y)..cycle;
  draw(surface(CC,planar=true),matc,render);
  revolution cyl=cylinder((x,y,0),r,h,Y);
 	draw(surface(cyl),matc,render);
 	draw(cyl);
}

real h=0.3;

for(int i=0; i<=10; ++i){
coin(-2-i*h,i*h,1,h);
coin(2,i*h,1,h);
}

draw(-0.2Y--3.5Y,red,Arrow3);


