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

size(120,0);

draw((-1,0)--(1,0));

real th=130;

draw(arc((0,0),1,0,180));
draw((1,0)--dir(th)--(-1,0));

/*
draw((0,0)--dir(th));
draw(arc((1,0),0.2,90+th/2,180));
draw(arc((1,0),0.22,90+th/2,180));
draw(arc((-1,0),0.21,0,th/2));
draw(arc(dir(th),0.2,th-180,th/2-90));
draw(arc(dir(th),0.22,th-180,th/2-90));
draw(arc(dir(th),0.21,th/2-180,th-180));
draw(arc((0,0),0.21,th,180),dashed);
draw(arc((0,0),0.2,0,th),dashed);
draw(arc((0,0),0.22,0,th),dashed);
*/

void rtang(pair P, real phi, real d=0.1){
	draw(shift(P)*rotate(phi,(0,0))*box((0,0),(d,d)));
}

rtang(dir(th),degrees((1,0)-dir(th))-90);

