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

size(140);

real s=35;
pair P=dir(s);

draw((1,0)--(0,0)--(0,1));
draw(arc((0,0),1,s,90));
draw("$s$",arc((0,0),1,0,s),Blue+linewidth(1));
draw("$y$",P..(P.x,0),Red+linewidth(1));
draw("1",P..(0,0),lGreen+linewidth(1));
draw("$\sqrt{1-y^2}$",(0,0)..(P.x,0),Magenta+linewidth(1));
draw("$s$",arc((0,0),0.2,0,s),Blue+linewidth(1));

real r=0.2;
transform T=shift(P)*scale(r)*rotate(90,(0,0));
draw("$\mathrm{d}x$",T*(P.x,0)..T*P,Red+linewidth(1));
draw("$\mathrm{d}s$",T*P..T*(0,0),lGreen+linewidth(1));
draw("$\mathrm{d}y$",T*(0,0)..T*(P.x,0),Magenta+linewidth(1));