if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-01-conicellipse";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
%\input{../../chap350/preamble}
");
import graph;

size(250);

real l=1;
real d=3;
real f=(d/2)*(1-sqrt(1-l/d));
real D=(d/2)*(1-1/(sqrt(1-l/d)));

real x(real t){return d/2+(d/2)*cos(t);}
real y(real t){return (sqrt(d*l)/2)*sin(t);}
pair P(real t){return(x(t),y(t));}

draw(graph(x,y,0,2pi),blue);

xaxis("$x$",0,1.2d,red);
yaxis("$y$",-1.1*sqrt(d*l)/2,1.1*sqrt(d*l)/2,red);

dot(Label("$F$",align=SE),(f,0));
draw((f,-l/2)--(f,l/2));
draw((D,-l)--(D,l),dashed);


draw((f,0)--P(1.5)--(D,P(1.5).y),dashed+heavygreen);

ytick("$l/2$",l/2);
ytick("$-l/2$",-l/2);

xtick("$d$",d);

//label(Label("\centering $y^2=lx-\frac{lx^2}d\iff \frac{(x-\frac d2)^2}{d^2/4}+\frac{y^2}{dl/4}=1$"),(d,-l));