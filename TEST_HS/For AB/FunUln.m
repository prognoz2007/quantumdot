function rez=FunUln(l,n,x)
%  в Help_26_03_2020.lyx формула 3.12
    global El; % надо будет поставить корни дисп. ур., видимо, вместо Eln
    par=Param();
    u0qdot=par('2u0qdotDivEb');
    help=x*sqrt(El-u0qdot); 
      rez=FunNormUln(l,n)*bessels(l,help);
end