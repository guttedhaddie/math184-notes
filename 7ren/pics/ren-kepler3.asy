if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(200);

picture pic;

path c=unitcircle;

draw(c,blue);

path m=scale(1.45)*c;
path mo=scale(1.6)*c;
path mi=scale(1.3)*c;

draw(m,red);
draw(mo,red+dashed);
draw(mi,red+dashed);

filldraw(scale(0.05)*c,yellow);
for(int i=0; i<8; ++i){draw(0.15*dir(360i/8)---0.1*dir(360i/8));}

pair e(real t){return dir(t);}
pair mm(real t){return 1.45*dir(t/1.88);}

void planets(real t){
	path em=e(t)--mm(t)+1(mm(t)-e(t));
	pair emi=intersectionpoint(em,mi);
	pair emo=intersectionpoint(em,mo);
	draw(e(t)--emo,gray);
	filldraw(shift(e(t))*scale(0.04)*c,heavygreen);
	filldraw(shift(mm(t))*scale(0.03)*c,red);
	filldraw(shift(emo)*scale(0.03)*c,red+opacity(0.5));
	filldraw(shift(emi)*scale(0.03)*c,red+opacity(0.5));
	}

for(int i=0; i<20; ++i){
	planets(18*i);
	}


