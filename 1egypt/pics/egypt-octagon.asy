settings.tex="lualatex";
defaultpen(fontsize(12pt));

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{unicode-math}
\setmainfont[Scale=1.005]{TeX Gyre Pagella}
\setmathfont{TeX Gyre Pagella Math}[Scale=1.005]
\usepackage[svgnames]{xcolor}
");
import graph;

size(140);

real th=30;

for(int i=0; i<=3; ++i){
	draw((i,0)--(i,3));
	draw((0,i)--(3,i));
	}
draw((1,0)--(0,1));
draw((2,0)--(3,1));
draw((0,2)--(1,3));
draw((3,2)--(2,3));
	
draw(shift((1.5,1.5))*scale(1.5)*unitcircle,blue);
