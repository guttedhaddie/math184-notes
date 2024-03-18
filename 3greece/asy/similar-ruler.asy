settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(80,0);

pair O=(0,0);
pair P=(1,0);
pair al=I*(P-O);

void tickk(pair OO, pair PP, int nn, real ll){
	pair all=I*unit(PP-OO);
	//draw(Label((string) nn,Relative(1)),OO+nn*(PP-OO)--OO+nn*(PP-OO)-ll*all);
	draw(OO+nn*(PP-OO)+ll*all--OO+nn*(PP-OO)-ll*all);
}

void axxis(pair OOO, pair PPP, int mmm, int nnn){
	draw(OOO+mmm*(PPP-OOO)--OOO+nnn*(PPP-OOO));
	for(int k=mmm; k<=nnn; ++k){
		tickk(OOO,PPP,k,0.1);	
	}
}


axxis(O,P,0,3);


draw(P--O,blue+linewidth(1.2));

pair Q=(0,-0.5);
pair R=Q+(1,0);
pair al2=I*dir(-10);

axxis(Q,R,0,2);

draw(Q--R,blue+linewidth(1.2));

