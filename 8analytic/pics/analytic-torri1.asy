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


size(130);

fill((0,0)--(2,0)--(2,1)--cycle,blue+opacity(0.3));
fill((0,0)--(0,1)--(2,1)--cycle,red+opacity(0.3));
draw((0,0.4)--(0.8,0.4),red+linewidth(1));
draw((0.8,0)--(0.8,0.4),blue+linewidth(1));
draw((0,0)--(2,0)--(2,1)--(0,1)--(0,0)--(2,1),linewidth(1));




