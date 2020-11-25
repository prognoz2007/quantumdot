
%% Done
function qlm=FunQlm(m,l)
% в Help_24_02_2020.lyx формула 1.7
% ещё одна попытка уменьшить вычислительные затраты, не считая факториал каждый раз (по задумке) 
ml=m:l;

fact_1 = FactorM(m,m)/FactorP(m,m);

fact_2 = 0;

for i=2:length(ml)
    fact_2 = fact_1*(ml(i)-abs(m))/(ml(i)+abs(m));
    fact_1 = fact_2;
end
 
% for l1=m:l
%     if l1==m 
%     x=1;   
%     fact(x)=FactorM(m,l1)/FactorP(m,l1);
%     else
%     x=x+1;
%     fact(x)=fact(x-1)*(l1-abs(m))/(l1+abs(m));
%     end
% end
qlm = (-1)^((m+abs(m))/2)*1i^l*sqrt((2*l+1)/4/pi*fact_2);
end
