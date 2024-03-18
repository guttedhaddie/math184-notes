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

size(180,0);

currentprojection=orthographic(6,4,-20,up=Y);

render render=render(merge=true);
material matc=material(green+opacity(0.5),shininess=1.0);
material mats=material(lightblue+opacity(0.2),shininess=1.0);

void wash(real y, real r, real R)
{
  path3 C=arc((0,y,0),r,0,0,0,2pi,Y)..cycle;
  path3 CC=reverse(arc((0,y,0),R,0,0,0,2pi,Y)..cycle);
  path3[] CCC=C^^CC;
  draw(surface(CCC,planar=true),matc,render);
}

real m=0;
real M=1;

real f(real y){return sqrt(1-(1-y)^2);}
real g(real y){return 1;}

revolution surf=revolution(graph(new triple(real y) {
      return (f(y),y,0);},m,M,20,operator ..),axis=Y);
 draw(surface(surf),mats,render);
 revolution surfg=revolution(graph(new triple(real y) {
      return (g(y),y,0);},m,M,20,operator ..),axis=Y);
 draw(surface(surfg),mats,render);

real a=0.3;

wash(a,f(a),g(a));

//yaxis3(red);

draw("$r$",Y--(sqrt(1-(1-a)^2),a,0),red);
draw("$\sqrt{r^2-y^2}$",(sqrt(1-(1-a)^2),a,0)--(0,a,0),red);
draw("$y$",Y--(0,a,0),red);
draw((0.05,a,0)--(0.05,a+0.05,0)--(0,a+0.05,0),red);



