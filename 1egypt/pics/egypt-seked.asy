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

size(140);

real th=30;

draw("$a$",(Cos(th),0)--(0,0));
draw("$h$",(Cos(th),Sin(th))--(0,0));
draw("$o$",(Cos(th),0)--(Cos(th),Sin(th)));

draw("$\theta$",arc((0,0),0.1,0,th));

label("seked $=\frac ao=\cot\theta$",(0.5*Cos(th),-0.1));
