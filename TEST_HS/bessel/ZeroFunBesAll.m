function RezAll=ZeroFunBesAll
%���������� 20 ����� ������� ������� ������� 0 �� Lmax 
% � �� �� Lmax-1 ?
%RezAll = zeros(Lmax,20);
par=Param();
Lmax1=par('Lmax');
    for n=1:Lmax1
       RezAll(:,n)=ZeroFunBes(n-1);
    end
    %disp('����� ������ ��������� ZeroFunBesAll')
end