function rez=FunHI(n1,n2,m,p1,p2,l,wk)
global El; % снова не те энергии
rez=conj(FunAlm(n2,l,m,p2,wk))*FunAlm(n1,l,m,p1,wk)*El+conj(FunBlm(n2,l,m,p2,wk))*FunBlm(n1,l,m,p1,wk)*El*FunNormUln(l,m);
end