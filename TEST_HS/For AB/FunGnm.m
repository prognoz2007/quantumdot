function gnmt=FunGnm(n,m,p,wk,r,tet,s)
par=Param();
d=par('dDivRb');
% производная от функции Бесселя записана через разность
    gnmt=FunCnm(n)*exp(1i*r*cos(tet)*(wk+2*pi*p/d))...
        *((FunI(1,m,s)-m/(FunKnm(n,m)*r*sin(tet))...
        *FunI(2,m,s))+1i*cos(tet)*(wk+2*pi*p/d)*FunI(2,m,s));
end
