function j=FunIAll(m,r,tet,n)
% � Help_24_02_2020.lyx ����� ����������� 1.17 � 1.18 � ����� ����� 
j=besselj(m,FunKnm(n,m).*r.*sin(tet));
end