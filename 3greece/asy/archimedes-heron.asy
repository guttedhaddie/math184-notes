settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(120);

pair P=(0,0);
pair Q=(1,0);
pair R=(0.3,0.6);
pair H=(R.x,0);

void rtang(pair P, real ph, real d=0.035){
	draw(shift(P)*rotate(ph,(0,0))*box((0,0),(d,d)));
}

rtang(H,0);

draw("$a$",P--Q);
draw("$b$",R--P);
draw("$c$",Q--R);
draw("$h$",H--R,dashed);
draw("$x$",H--P,blue);
