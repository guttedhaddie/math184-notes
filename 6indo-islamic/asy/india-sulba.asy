settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(220);

picture pic;

pair z0=(0,0);
pair z1=(15,0);
pair z2=(12,36);
pair z3=(0,36);
pair z4=(0,1);
pair z5=(0,8);
pair z6=(0,31);

draw(pic,z1--(-z1)--(-z2.x,z2.y)--z2--cycle);
draw(pic,z0--z3,dashed);
draw(pic,(-z2.x,z2.y)--z1--z5--(-z1)--z2,dashed);
draw(pic,(-z1)--z4--z1--z6--cycle,Dotted);
draw(pic,(-z2.x,z2.y)--z4--z2--z6--cycle,dashed);
draw(pic,(-z2.x,z2.y)--z1,dashed);
draw(pic,-z1--z2,dashed);

add(rotate(-90,(0,0))*pic);

label("30 \emph{pada}",(0,0),W);
label("24 \emph{pada}",rotate(-90,(0,0))*(0,36),E);
draw("36 \emph{pada}",rotate(-90,(0,0))*(17,0)--rotate(-90,(0,0))*(17,36),Arrows);

