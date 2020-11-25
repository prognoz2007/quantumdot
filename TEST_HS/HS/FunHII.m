function rez=FunHII(n1,n2,m,p1,p2)
par=Param();
d=par('dDivRb');
% сюда бы тоже подставить заранее посчитанные FunSII, а не считать второй раз
rez=((FunKnm(n1,m))^2+2*pi*p1/d)*FunSII(n1,n2,m,p1,p2);
end