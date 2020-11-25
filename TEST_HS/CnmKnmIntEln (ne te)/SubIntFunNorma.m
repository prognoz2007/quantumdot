%% DONE
 
function rez=SubIntFunNorma(n,m,x)

FunKnmHelp = FunKnm(n,m);

if length(n)==1&& length(m)==1
    rez = besselj(m,FunKnmHelp*x);
    rez = rez.*rez.*x;   
    return;
end

rez = zeros(n,m,length(x));

for i=1:length(n)
    for j=1:length(m)
        rez(i,j,:) = besselj(j,FunKnmHelp(i,j)*x);
        rez(i,j,:) = rez(i,j,:).*rez(i,j,:).*x;   
    end
end

end