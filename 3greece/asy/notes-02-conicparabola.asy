if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-02-conicparabola";
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

real l=2;
//real d=3;
real f=l/4;
real D=-l/4;

//real x(real t){return d/2+(d/2)*cos(t);}
pair P(real t){return ((1/l)*t^2,t);}

draw(graph(P,-2,2),blue);

xaxis("$x$",0,1.1l,red);
yaxis("$y$",-2.1,2.1,red);

dot(Label("$F$",align=SE),(f,0));
draw((f,-l/2)--(f,l/2));
draw((D,-l)--(D,l),dashed);

draw((f,0)--P(1.5)--(D,P(1.5).y),dashed+heavygreen);

ytick("$l/2$",l/2);
ytick("$-l/2$",-l/2);

//xtick("$d$",d);

//label(Label("\centering $y^2=lx-\frac{lx^2}d\iff \frac{(x-\frac d2)^2}{d^2/4}+\frac{y^2}{dl/4}=1$"),(d,-l));