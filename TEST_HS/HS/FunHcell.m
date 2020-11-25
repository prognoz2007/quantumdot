function rez=FunHcell(n1,n2,m,p1,p2)
par=Param();
d=par('dDivRb');
% тут по идее желательно FunScell не считать 2 раза, а подставить уже посчитанное ранее, этим ещё не занималась
rez=((FunKnm(n1,m))^2+2*pi*p1/d)*FunScell(n1,n2,p1,p2);
end