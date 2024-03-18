settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(280);

dotfactor=3;

picture pic;
draw(pic,unitcircle);
dot(pic,(0,0));
draw(pic,scale(0.8)*unitcircle,red);
draw(pic,scale(0.3)*unitcircle,blue);
draw(pic,scale(0.5)*unitcircle,heavygreen);

pair f(real x){return (2pi*(1-x),1-x);}

draw((0,0)--(2pi,0)--(2pi,1)--cycle);
draw(f(0.8)--(2pi,1-0.8),red);
draw(f(0.5)--(2pi,1-0.5),heavygreen);
draw(f(0.3)--(2pi,1-0.3),blue);

draw(shift((5,1))*unitcircle,dashed);
draw(shift((5,1))*scale(0.8)*unitcircle,red+dashed);
draw(shift((5,1))*scale(0.5)*unitcircle,heavygreen+dashed);
draw(shift((5,1))*scale(0.3)*unitcircle,blue+dashed);

dot((5,1));

label("$c$",(pi,0),S);
label("$r$",(2pi,0.5),E);

add(shift((-0.3,1))*pic);
