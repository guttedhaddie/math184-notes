settings.tex="lualatex";
defaultpen(fontsize(12pt));

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{unicode-math}
\setmainfont{TeX Gyre Pagella}
\setmathfont{TeX Gyre Pagella Math}
\usepackage[svgnames,x11names]{xcolor}
");

import x11colors;
pen lGreen=rgb("00a000");

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
