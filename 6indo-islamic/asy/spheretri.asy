settings.tex="lualatex";
defaultpen(fontsize(12pt));

//OpenGL (default) - no opacity

//PNG - no opacity
//if(!settings.multipleView) settings.batchView=false;
//settings.render=4;settings.outformat="png";

//HTML - opacity fine
settings.outformat="html";

//PDF
if(!settings.multipleView) settings.batchView=false;
settings.render=4;settings.outformat="pdf";

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

import graph3;
import solids;

currentprojection=perspective(50,10,20);
size(120,0);

real th=65;

draw(arc(O,1,0,0,90,0));
draw(arc(O,1,90,0,90,th,Z));
draw(arc(O,1,0,th,90,th));

real h=87;
draw(arc(Cos(h)*Z,Sin(h),90,0,90,90-h));
draw(arc(Cos(h)*Z,Sin(h),90,th-(90-h),90,th));
draw(arc(O,1,h,90-h,90,90-h));
draw(arc(O,1,h,th-(90-h),90,th-(90-h)));

real t=20;
draw(arc(Cos(t)*Z,Sin(t),90,0,90,th),dashed);

label("$\theta$",Z+0.18*dir(100,th/2));

draw(unitsphere,lightgrey+opacity(0.1));
