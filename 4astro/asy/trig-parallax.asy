settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(450);

draw(unitcircle,dotted,ArcArrow(Relative(0.1)));
filldraw(shift((0,1))*scale(0.05)*unitcircle,blue);
filldraw(shift((0,-1))*scale(0.05)*unitcircle,blue);

filldraw(scale(0.1)*unitcircle,yellow+orange);
for(int i=0; i<=8; ++i){
	draw(0.12dir(360*i/8)--0.2dir(360*i/8),yellow+orange);
	}
	
filldraw(shift((-6,0))*scale(0.05)*unitcircle,yellow+orange);
for(int i=0; i<=8; ++i){
	draw(0.07dir(360*i/8)+(-6,0)--0.13dir(360*i/8)+(-6,0),yellow+orange);
	}

	draw((-5.8,(6-5.8)/6)--(-0.15,(6-0.15)/6),dashed);
	draw((-5.8,-(6-5.8)/6)--(-0.15,-(6-0.15)/6),dashed);
	draw((-6.2,(6-6.2)/6)--(-9,(6-9)/6),dashed);
	draw((-6.2,-(6-6.2)/6)--(-9,-(6-9)/6),dashed);
	
draw(arc((0,0),(-9,1),(-9,-1)),dotted);
label("distant stars",(-9,-1.2));
label("nearer star",(-6,-1.2));
label("Earth and Sun",(0,-1.2));

draw((-5.8,0)--(-0.2,0),dashed);
draw("$\theta$",arc((-6,0),2,0,aTan(1/6)));