settings.tex="lualatex";
defaultpen(fontsize(12pt));

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{unicode-math}
\setmainfont{TeX Gyre Pagella}
\setmathfont{TeX Gyre Pagella Math}
\usepackage[svgnames]{xcolor}
");

import graph;

size(100);

draw(unitsquare);
draw(shift((0.5,0))*scale(sqrt(0.5))*rotate(45)*unitsquare,dashed+blue);
draw((0.5,0)--(0.5,1),dashed);
draw((0,0.5)--(1,0.5),dashed);