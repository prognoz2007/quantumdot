function rez=SubIntNormaSphBes(l,n,x)
par=Param();
global El
u0qdot=par('2u0qdotDivEb');
%     FunElnHelp=FunEln(l,n);
      FunElnHelp=El;
    if length(l)==1&&length(n)==1;
            rez = bessels(l,(FunElnHelp-u0qdot)^(1/2)*x); % тут не хватало U и корня
            rez = rez.*rez.*x.*x;
            return;
    end
    rez = zeros(length(l),length(n),length(x));
    
    for i=1:length(n)
        for j=1:length(l) % было length(m)
            rez(i,j,:) = bessels(j,(FunElnHelp-u0qdot)^(1/2)*x); % за правильность (отсутствия) точек не ручаюсь
            rez(i,j,:) = rez(i,j,:).*rez(i,j,:).*x.*x;   
        end
    end
end