function rez=FunSarr(N,m,P,l,wk)
Q=N*P;
% ��� ��� ���-�� �� ��� ����� � ���������, ��� �������� ����� for
    for q1=1:Q
        for q2=1:Q
                rez(q1,q2)=FunSq(N,q1,q2,m,l,wk);
        end
    end
end
