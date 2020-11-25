function j=FunIAll(m,r,tet,n)
% в Help_24_02_2020.lyx между выражениями 1.17 и 1.18 в самом конце 
j=besselj(m,FunKnm(n,m).*r.*sin(tet));
end