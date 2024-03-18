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

size(190,0);

currentprojection=orthographic(1,-6,0.5,up=Z);

render render=render(merge=true);
material matc=material(green+opacity(0.5),shininess=1.0);
material mats=material(lightblue+opacity(0.2),shininess=1.0);
material matb=material(orange+opacity(0.2),shininess=1.0);

void wash(real x, real y, real z, real r)
{
  path3 C=arc((x,y,z),r,0,0,0,0,X)..cycle;
  draw(surface(C,planar=true),matc,render);
}

void zcyl(real x, real y, real z, real r, real h)
{
  revolution cyl=cylinder((x,y,z),r,h,Z);
 	draw(surface(cyl),matc,render);
 	draw(cyl);
}

void coin(real x, real y, real z, real r, real h)
{
  path3 C=arc((x,y,z),r,0,0,0,0,X)..cycle;
  draw(surface(C,planar=true),matb,render);
  path3 CC=arc((x+h,y,z),r,0,0,0,0,X)..cycle;
  draw(surface(CC,planar=true),matb,render);
  revolution cyl=cylinder((x,y,z),r,h,X);
 	draw(surface(cyl),matb,render);
 	draw(cyl);
}

real m=0.25;
real M=2;

real f(real x){return 1/x;}

revolution surf=revolution(graph(new triple(real x) {
      return (x,0,f(x));},m,M,20,operator ..),axis=Z);
 draw(surface(surf),mats,render);

real a=0.5;
real b=1.2;

coin(0,0,-2,sqrt(2),M);
wash(a,0,-2,sqrt(2));
zcyl(0,0,0,a,1/a);
wash(b,0,-2,sqrt(2));
zcyl(0,0,0,b,1/b);

draw(arc((0,0,4),0.5,90,-200,90,70,Z),dashed,Arrow3);

xaxis3("$x$",-1.1M,1.2M,red,Arrow3);
yaxis3("$y$",-1.1M,1.2M,red,Arrow3);
zaxis3("$z$",-0.2,4.5,red,Arrow3);

xtick3(Label("$a$",align=-2Z),M,-Z,red);
xtick3(Label("$x$",align=-2Z),b,-Z);

