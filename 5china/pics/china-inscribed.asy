settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(140);

real a=8;
real b=15;
real c=sqrt(a^2+b^2);
//real c=17;
real s=(a+b+c)/2;
real ar=sqrt(s*(s-a)*(s-b)*(s-c));
real h=2*ar/c;
real r=a*b/(a+b+c);
real bas=sqrt(b^2-h^2);
real al=a-r;
real be=b-r;

pair A=(-be,0);
pair B=(al,0);
pair C=(bas-be,h);
pair O=(0,r);

draw(A--B--C--cycle,blue);

draw(shift(O)*scale(r)*unitcircle,red);

//dot("$A$",A,SW);
//dot("$B$",B,SE);
//dot("$C$",C,N);

draw((0,0)--O--O+r*unit(C-A));
draw(O--O+r*unit(C-B));
draw(A--O--B,blue);
draw(O--C,blue);