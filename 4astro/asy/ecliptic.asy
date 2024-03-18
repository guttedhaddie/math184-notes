settings.tex="pdflatex";

//OpenGL (default) - no opacity

//PNG - no opacity
//if(!settings.multipleView) settings.batchView=false;
//settings.render=4;settings.outformat="png";

//HTML - opacity fine
settings.outformat="html";

//PDF
//if(!settings.multipleView) settings.batchView=false;
//settings.render=4;settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import graph3;
import solids;
import palette;

size(450,0);

currentprojection=orthographic(2,-3,1.2);

real ax=23.44;
triple pole=1.7*dir(ax,-90);
path3 axe=pole--(-pole);

surface s=unitsphere;
s.colors(palette(-s.map(zpart),Gradient(0.2lightblue+0.8white,lightblue,0.8blue+0.2black,0.2blue+0.8black)));
//draw(s,render(compression=Low,merge=true));

void earth(real th){
	draw(shift(dir(90,th))*scale3(0.1)*axe,red+linewidth(1.5));
	//draw(shift(dir(90,th))*scale3(0.1)*unitsphere,lightblue);
	//draw(shift(dir(90,th))*scale3(0.1)*rotate(th,Z)*rotate(-90,Y)*unithemisphere,lightblue+white);
	//draw(shift(dir(90,th))*scale3(0.1)*rotate(th,Z)*rotate(90,Y)*unithemisphere,lightblue);
	draw(shift(dir(90,th))*scale3(0.1)*rotate(th,Z)*rotate(-90,Y)*s,render(compression=Low,merge=true));
	draw(shift(dir(90,th))*scale3(0.1)*rotate(th,Z)*rotate(90,Y)*unitcircle3,orange+linewidth(1.5));
}

currentlight=nolight;
	
earth(0);       
earth(90);
earth(180);
earth(270);


s.colors(palette(s.map(zpart),Gradient(0.5yellow+0.5black,0.5yellow+0.5white)));

draw(scale3(0.15)*unitsphere);

draw(unitcircle3,Arrow3(Relative(0.9)));

label("Summer Solstice",dir(90,90)-0.2Z);
label("Autumnal Equinox",dir(90,180)+0.2Z);
label("Winter Solstice",dir(90,270)+0.2Z);
label("Vernal Equinox",dir(90,0)-0.2Z);