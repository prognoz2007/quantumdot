function RezAll=ZeroSphFunBesAll()
%���������� 20 ����� ������� ������� ������� 0 �� Lmax
% � �� �� Lmax-1 ?
%RezAll = zeros(Lmax,20);
par=Param();
Lmax1=par('Lmax');
    for n=1:Lmax1
       RezAll(:,n)=ZeroSphFunBes(n-1);
    end
    %disp('����� ������ ��������� ZeroSphFunBesAll')
end