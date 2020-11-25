function rez=FunDUln(l,n,x)
%  в Help_26_03_2020.lyx в 3.4 после "нужно вычислить"
global El; % надо будет поставить корни дисп. ур., видимо, вместо Eln
par=Param();
u0qdot=par('2u0qdotDivEb');
help=sqrt(El-u0qdot);
  rez=FunNormUln(l,n)*Dbessels(l,help*x)*help;
 end