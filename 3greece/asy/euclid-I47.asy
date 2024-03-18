settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(180,0);

real a=1.5;
real b=2;
real c=sqrt(a^2+b^2);
real th=aTan(a/b);

pair B=(0,0);
pair A=a*dir(90-th);
pair C=(c,0);

draw(A--B--C--cycle);
label("$A$",A,2dir(135-th));
label("$B$",B,SW);
label("$C$",C,SE);

//filldraw(shift((0,-c))*scale(c)*unitsquare,red+opacity(0.5));
filldraw(rotate(90-th)*scale(a)*unitsquare,red+opacity(0.5));
filldraw(shift(A)*rotate(-th)*scale(b)*unitsquare,green+opacity(0.5));

pair O=(A.x,0);
label("$O$",O,SE);
pair L=(A.x,-c);
label("$L$",L,S);
pair D=(0,-c);
label("$D$",D,S);
pair EE=(c,-c);
label("$E$",EE,S);
draw((0,-c)--A--L);
pair F=a*dir(180-th);
label("$F$",F,W);
draw(F--C);
label("$G$",F+a*dir(90-th),NW);
label("$H$",A+b*dir(90-th),NW);
label("$K$",C+b*dir(90-th),E);

filldraw(B--O--L--D--cycle,red+opacity(0.5));
filldraw(O--C--EE--L--cycle,green+opacity(0.5));

filldraw(arc(B,0.25*unit(C-B),0.25*unit(A-B))--B--0.25*unit(C-B)--cycle,blue+opacity(0.5));


path rt=B-0.17*dir(90)--B+0.17*sqrt(2)*dir(-45)--B+0.17*dir(0);
draw(rt);
draw(rotate(180-th)*rt);
