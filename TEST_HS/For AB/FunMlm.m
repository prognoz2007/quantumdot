function mlm=FunMlm(m,l)
% � Help_24_02_2020.lyx ������� 1.6, ������ ������ �� ����� 
% ������� ��������� �������������� �������, �� ������ ��������� ������ ��� (�� �������) 
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