function RezAll=ZeroFunBesAll
%Вычисление 20 нулей функций Бесселя порядка 0 до Lmax 
% а не до Lmax-1 ?
%RezAll = zeros(Lmax,20);
par=Param();
Lmax1=par('Lmax');
    for n=1:Lmax1
       RezAll(:,n)=ZeroFunBes(n-1);
    end
    %disp('Конец работы программы ZeroFunBesAll')
end