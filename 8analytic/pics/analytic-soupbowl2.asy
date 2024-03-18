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

void wash(real y, real r)
{
  path3 C=arc((0,y,0),r,0,0,0,2pi,Y)..cycle;
  draw(surface(C,planar=true),matc,render);
}

real m=0;
real M=1;

real f(real y){return 1-y;}

revolution surf=revolution(graph(new triple(real y) {
      return (f(y),y,0);},m,M,20,operator ..),axis=Y);
 draw(surface(surf),mats,render);

real a=0.3;

wash(a,f(a));

//yaxis3(red);

draw(Y--(sqrt(1-(1-a)^2),a,0),red);
draw("$y$",(sqrt(1-(1-a)^2),a,0)--(0,a,0),red);
draw("$y$",Y--(0,a,0),red);
draw((0.05,a,0)--(0.05,a+0.05,0)--(0,a+0.05,0),red);



