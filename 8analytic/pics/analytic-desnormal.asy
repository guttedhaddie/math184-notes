settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(300);

real f(real x){return (10x-x^2)/4;}
path ff=graph(f,0,7,operator..);

draw(ff,blue);

pair P=(4,6);
dot("$P$",P,NW);
real nu=3;
real n=sqrt(3^2+6^2);
real r=n-0.25;
path p=arc((7,0),r,90,150);
draw(p,red);
pair[] in=intersectionpoints(p,ff);
pair Q=in[0];
dot("$Q$",Q,N);
pair R=in[1];
dot("$R$",R,dir(170));

pair tang=(-8,0);
draw("$t$",P--tang,dashed+heavygreen);

pair bas=(4+nu,0);
dot("$N$",bas,S);
draw("$n$",bas--P,dashed+heavygreen);
draw(Label("$r$",Relative(0.6)),R--bas,dashed+red);
draw(Label("$y$",Relative(0.7)),P--(P.x,0),dashed);
label("$\nu$",(4+nu/2,0),S);

xaxis(-8,8.5,RightTicks(new real[]{0,4}));
labelx("$x$",8.5,2S);
