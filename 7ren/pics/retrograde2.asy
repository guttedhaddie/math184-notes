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
import animate;

size(450);

picture pic;

path c=unitcircle;
real aj=5.2;
real ej=0.048775;
real bj=aj*sqrt(1-ej^2);
real fj=sqrt(aj^2-bj^2);
real am=1.52;
real em=0.0935;
real bm=am*sqrt(1-em^2);
real fm=sqrt(am^2-bm^2);
real ae=1;
real ee=0.00167;
real be=ae*sqrt(1-ee^2);
real fe=sqrt(ae^2-be^2);

draw(pic,scale(10)*c);
draw(pic,shift((-fe,0))*yscale(be)*xscale(ae)*c,blue);
draw(pic,shift((-fm,0))*yscale(bm)*xscale(am)*c,red);
draw(pic,shift((-fj,0))*yscale(aj)*xscale(bj)*c,heavygreen);
draw(pic,scale(0.08)*c);
for(int i=0; i<8; ++i){draw(pic,0.15*dir(360i/8)---0.1*dir(360i/8));}



pair e(real t){return (ae*(1-ee^2))/(1+ee*Cos(t))*dir(t);}
pair m(real t){return (am*(1-em^2))/(1+em*Cos(t/1.88))*dir(t/1.88);}
pair j(real t){return (aj*(1-ej^2))/(1+ej*Cos(t/11.86+90))*dir(t/11.86+90);}

animation A;

int n=200;
real s=3;

for(int i=-n; i<=n; ++i){
save();
add(pic);
dot(e(s*i));
dot(m(s*i));
dot(j(s*i));
pair pm=m(s*i)+23*(m(s*i)-e(s*i));
pair qm=intersectionpoint(m(s*i)--pm,scale(10)*c);
pair pj=j(s*i)+4*(j(s*i)-e(s*i));
pair qj=intersectionpoint(j(s*i)--pj,scale(10)*c);
draw(e(s*i)--qm);
//draw(e(s*i)--m(s*i));
draw(e(s*i)--qj);
//draw(e(s*i)--j(s*i));
dot("M",qm,unit(qm),red);
dot("J",qj,unit(qj),heavygreen);
A.add();
restore();
}

label(A.pdf("controls",multipage=false),fontsize(5));
