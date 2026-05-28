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

include graph;

size(110,153,IgnoreAspect);

real A=0.8;
real B=1;
real a=0.1;
real b=0.15;

path aa=box((A-a/2,0),(A+a/2,B-b/2));
path bb=box((0,B-b/2),(A-a/2,B+b/2));
path cc=box((A-a/2,B-b/2),(A+a/2,B+b/2));

filldraw(cc,0.25lightblue+0.25lightgreen+0.5white,dashed);
filldraw(aa,0.5lightblue+0.5white,dashed);
filldraw(bb,0.5lightgreen+0.5white,dashed);

draw("$A$",(0,0)--(A,0),Blue+linewidth(1));
draw("$B$",(0,B)--(0,0),lGreen+linewidth(1));
draw((0,B)--(A,B),blue);
draw((A,B)--(A,0),lGreen);

label("$a$",(A,0),S,Blue);
label("$b$",(0,B),W,lGreen);