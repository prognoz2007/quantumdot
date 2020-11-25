function mlm=FunMlm(m,l)
% в Help_24_02_2020.lyx формула 1.6, только дельта не нужна 
% попытка уменьшить вычислительные затраты, не считая факториал каждый раз (по задумке) 
for l1=m:l
    if l1==m 
    x=1;   
    fact(x)=FactorP(m,l1)/FactorM(m,l1);
    else
    x=x+1;
    fact(x)=fact(x-1)*(l+abs(m))/(l-abs(m));
    end
end
mlm=fact(x)*2/(2*l1+1);
end