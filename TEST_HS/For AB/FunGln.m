function rez=FunGln(l,n,x)
% в Help_26_03_2020.lyx в 3.4 между формулами 3.12 и 3.13
global El; % надо будет поставить корни дисп. ур., видимо, вместо Eln

par=Param();

u0qdot=par('2u0qdotDivEb');

help = sqrt(El-u0qdot);

rez=x*FunNormUln(l,n)*Dbessels(l,help*x)/(2*help);
end