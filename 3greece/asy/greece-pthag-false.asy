settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(180);

real a=3;
real b=4;
real c=5;
real d=a^2/c;
real h=(a/c)*sqrt(c^2-a^2);

pair O=(0,0);
pair A=(c-d,0);
pair B=(-d,0);
pair C=(0,h);

draw(shift((-d,-c))*scale(c)*unitsquare,dashed+blue);
draw(shift((-d,0))*scale(a)*rotate(degrees((d,h)))*unitsquare,dashed+heavygreen);
draw(shift((c-d,0))*scale(b)*rotate(degrees((d,h)))*unitsquare,dashed+red);
draw((0,h)--(0,-c));
draw("$a$",C--B,heavygreen);
draw("$b$",A--C,red);
draw("$c$",B--A,N,blue);
label("$d$",(-d/2,0),S);