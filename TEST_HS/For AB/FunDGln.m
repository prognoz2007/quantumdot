function rez=FunDGln(l,n,x)
% ������� ����������� ������� ���� ������� ����������� (���-�� � � �������, �� ��� ���...), ��������� ������ ��� �� � Help_26_03_2020.lyx � 3.4 ���-�� ����� 3.4.1
global El; % ���� ����� ��������� ����� ����. ��., ������, ������ Eln
par=Param();
u0qdot=par('2u0qdotDivEb');
help=sqrt(El-u0qdot);
  rez=x*FunNormUln(l,n)*(-bessels(l+1,help*x)/help+x/2*bessels(l+2,help*x)+l^2*bessels(l,help*x)/(2*help^2*x));
 end