settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(200);

pair A=(0,0);
real be=aCos((7^2+13^2-9^2)/(2*7*13));
real al=aCos((17^2+13^2-11^2)/(2*17*13));
real ga=aCos((11^2+4^2-10^2)/(2*11*4));
real de=aCos((11^2+17^2-13^2)/(2*11*17));
pair B=7*dir(al+be);
pair C=13*dir(al);
pair EE=(17,0);
pair D=EE+4*dir(180-de-ga);

pair G=(C.x,0);
pair H=7*Cos(al)*dir(be);
pair I=EE+4*Cos(ga)*unit(C-EE);

draw("$7$",B--A);
draw("$9$",C--B);
draw("$13$",A--C,dashed);
draw("$10$",D--C);
draw("$11$",C--EE,dashed);
draw("$4$",EE--D);
draw("$17$",A--EE);
draw("$a$",B--H,dashed);
draw("$b$",C--G,dashed);
draw("$c$",D--I,dashed);

draw("$\alpha$",arc(A,unit(C-A),unit(B-A)));
draw("$\beta$",arc(A,1.3unit(EE-A),1.3unit(C-A)));
draw("$\gamma$",arc(EE,EE+0.5unit(D-EE),EE+0.5unit(C-EE)));