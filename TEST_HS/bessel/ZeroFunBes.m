function Rez=ZeroFunBes(n)
%Вычисление Nroot нулей функций Бесселя порядка n
%Число точек разбиения
par=Param();
N=1000;
% Максимальное число нулей функции
NZero=par('NZero');
%Начало отрезка поиска 
start=0;
%Конец отрезка поиска
end1=100;
dx=(end1-start)/N;
x=start;
i=0;
while (x<end1)
if(i<=NZero-1)&&(besselj(n,x)*besselj(n,x+dx)<0)
i=i+1;
Rez(i)=x+dx/2;
x=x+dx;
else
x=x+dx;
end
end
%disp('Конец работы программы ZeroSphFunBes');
end