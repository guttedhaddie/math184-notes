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
%\input{../../preamble}
");
import graph;


size(150);

pair O=(0,0);

draw(unitcircle);

real a=2/(sqrt(3));

for(int n=0; n<6; ++n){
	draw(O--dir(60*n)--dir(60*(n+1)));
	draw(a*dir(60*n+30)--a*dir(60*(n+1)+30));
	} 

