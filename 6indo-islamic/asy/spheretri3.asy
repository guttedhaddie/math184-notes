settings.tex="pdflatex";

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
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\def\D{\mathrm{d}}
");
include graph;

import graph3;
import solids;

currentprojection=perspective(40,15,5);
size(120);

real th=55;
real ph1=45;

draw("$b$",arc(O,1,ph1,0,90,0));
draw("$a$",arc(O,1,90,0,90,th));
draw("$c$",arc(O,1,90,th,ph1,0,CCW));

real h=87;
draw(arc(Cos(h)*Z,Sin(h),90,0,90,90-h));
draw(arc(O,1,h,90-h,90,90-h));

real l=5;

label("A",dir(ph1,-1.5l));
label("C",dir(90,-l));
label("B",dir(90,th+l));
//label("$\beta$",dir((ph1+90)/2,-1.2l));
//label("$\beta$",dir((ph1+90)/2,th+1.5l));
//label("$\alpha$",dir(ph1/2,-2l));
//label("$\alpha$",dir(ph1/2,th+3l));


draw(unitsphere,lightgrey+opacity(0.1));
