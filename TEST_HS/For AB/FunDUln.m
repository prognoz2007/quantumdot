function rez=FunDUln(l,n,x)
%  � Help_26_03_2020.lyx � 3.4 ����� "����� ���������"
global El; % ���� ����� ��������� ����� ����. ��., ������, ������ Eln
par=Param();
u0qdot=par('2u0qdotDivEb');
help=sqrt(El-u0qdot);
  rez=FunNormUln(l,n)*Dbessels(l,help*x)*help;
 end