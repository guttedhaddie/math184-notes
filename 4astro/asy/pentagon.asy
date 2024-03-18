settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(200);

pair O=(0,0);
pair A=dir(36);
pair B=(1,0);
pair C=((sqrt(5)-1)/2,0);

draw(circle((0,0),1));
draw("$1$",A--O);
draw("$36^\circ$",arc((0,0),0.2,0,36),ArcArrow);

label("$O$",O,-dir(18));
label("$A$",A,A);
label("$B$",B,B);
label("$C$",C,SW);
label("$D$",(A.x,-A.y),dir(-36));

draw(B--A,blue);
draw("$x$",A--C,blue);
draw(Label("$y$",Relative(0.6)),A--(A.x,-A.y),red);
draw(B--C,heavygreen);
draw(O--C,blue);

for(int i=1; i<=9; ++i){
	draw(dir(36*i)--dir(36*(i+1)),blue+dashed);
	}
for(int i=1; i<=4; ++i){
	draw(dir(72*i-36)--dir(72i+36),red+dashed);
	}
