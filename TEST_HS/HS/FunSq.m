
function rez=FunSq(N,q1,q2,m,l,wk)
% ������� ���������� �� ������� � N ��������� (��� ��������) � ������. ������
p1=fix((q1-1)/N)+1;
n1=q1-(p1-1)*N;
% ������� ���������� �� ������� � ������ �2
p2=fix((q2-1)/N)+1;
n2=q2-(p2-1)*N;
% FunScell - done
%FunSII - done
rez = FunScell(n1,n2,p1,p2)-FunSII(n1,n2,m,p1,p2)+FunSI(n1,m,p1,l,wk);%;
end