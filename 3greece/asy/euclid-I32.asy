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

size(0,75);


real th=110;
pair P=1.1*dir(th);

draw((0.4,0)--(0,0)--P--(-1,0)--(0,0));

draw("$\beta$",arc((-1,0),0.15,0,degrees(P-(-1,0))));
draw("$\delta$",arc((0,0),0.12,0,th));
draw("$\gamma$",arc((0,0),0.20,th,180));
draw("$\alpha$",arc(P,0.15,degrees((-1,0)-P),degrees(-P)));

