function rez=FunGln(l,n,x)
% � Help_26_03_2020.lyx � 3.4 ����� ��������� 3.12 � 3.13
global El; % ���� ����� ��������� ����� ����. ��., ������, ������ Eln

par=Param();

u0qdot=par('2u0qdotDivEb');

help = sqrt(El-u0qdot);

rez=x*FunNormUln(l,n)*Dbessels(l,help*x)/(2*help);
end