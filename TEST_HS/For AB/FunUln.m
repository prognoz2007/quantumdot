function rez=FunUln(l,n,x)
%  � Help_26_03_2020.lyx ������� 3.12
    global El; % ���� ����� ��������� ����� ����. ��., ������, ������ Eln
    par=Param();
    u0qdot=par('2u0qdotDivEb');
    help=x*sqrt(El-u0qdot); 
      rez=FunNormUln(l,n)*bessels(l,help);
end