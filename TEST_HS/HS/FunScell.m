function rez = FunScell(n1,n2,p1,p2)
% ���, ����� ���-�� ����� ������� � ����� ������-���������
    rez=dirac(n2-n1).*dirac(p1-p2);
end