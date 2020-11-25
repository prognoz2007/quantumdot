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
%волновой вектор wk принадлежит одномерной зоне Бриллюэна: -pi/c<=wk<=pi/c; с в нм, с/0.05292 в боровских радиусах
wk1=1/2; %0 <= |wk1| <= 1
c=30; %нм
wk=wk1*pi*0.05292/c;
N=3; m=3; P=2; l=6; 
TableParamAll=Param();
TableZeroSphBes=ZeroSphFunBesAll();
TableZeroBes=ZeroFunBesAll();
El=Energy(l);
% TableEln=Energy(l);
TableKnm=FunKnmAll(TableZeroBes); % считаются для порядков от 0 до Lmax-1
TableCnm=FunCnmFor(N,m); % считается только для порядка m, хотя теоретически и можно подавать ветор m
TableNormUln=FunNormUlnFor(l,N);
TablePl=FunPlFor(m,l);
TableI=FunIFor(m,N);

%время 1 на рассчёт массива S, время 2 на рассчёт массива H, время 3 на
%решение уравнения с детерминантом
FunDet(N,m,P,l,wk); 