clc();
AppendAllSubdirectories();
global TableParamAll
% global TableEln
global TableKnm
global TableCnm
global TableNormUln
global TablePl
global TableI
global El
%�������� ������ wk ����������� ���������� ���� ���������: -pi/c<=wk<=pi/c; � � ��, �/0.05292 � ��������� ��������
wk1=1/2; %0 <= |wk1| <= 1
c=30; %��
wk=wk1*pi*0.05292/c;
N=3; m=3; P=2; l=6; 
TableParamAll=Param();
TableZeroSphBes=ZeroSphFunBesAll();
TableZeroBes=ZeroFunBesAll();
El=Energy(l);
% TableEln=Energy(l);
TableKnm=FunKnmAll(TableZeroBes); % ��������� ��� �������� �� 0 �� Lmax-1
TableCnm=FunCnmFor(N,m); % ��������� ������ ��� ������� m, ���� ������������ � ����� �������� ����� m
TableNormUln=FunNormUlnFor(l,N);
TablePl=FunPlFor(m,l);
TableI=FunIFor(m,N);

%����� 1 �� ������� ������� S, ����� 2 �� ������� ������� H, ����� 3 ��
%������� ��������� � �������������
FunDet(N,m,P,l,wk); 