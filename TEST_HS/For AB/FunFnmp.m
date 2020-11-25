%% Done
function fnmpt = FunFnmp(n,m,p,wk,r,tet)
% par(1)<==>par('dDivRb')
% par(2)<==>par('RaDivRb')
% par(3)<==>par('RQtubeDivRb')
% par(4)<==>par('Me')
% par(5)<==>par('Qe')
% par(6)<==>par('hh')
% par(7)<==>par('NN')
% par(8)<==>par('2u0qdotDivEb')
% par(9)<==>par('NZero')
% par(10)<==>par('Lmax')
par=Param();

d=par('dDivRb');

helpKnm = FunKnm(n,m);
         
         fnmpt = FunCnm(n)*besselj(m,helpKnm*r.*sin(tet));
         
         fnmpt = fnmpt*exp(1i*(wk+2*pi/d*p).*r.*cos(tet));
end
