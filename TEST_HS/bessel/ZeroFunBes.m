function Rez=ZeroFunBes(n)
%���������� Nroot ����� ������� ������� ������� n
%����� ����� ���������
par=Param();
N=1000;
% ������������ ����� ����� �������
NZero=par('NZero');
%������ ������� ������ 
start=0;
%����� ������� ������
end1=100;
dx=(end1-start)/N;
x=start;
i=0;
while (x<end1)
if(i<=NZero-1)&&(besselj(n,x)*besselj(n,x+dx)<0)
i=i+1;
Rez(i)=x+dx/2;
x=x+dx;
else
x=x+dx;
end
end
%disp('����� ������ ��������� ZeroSphFunBes');
end