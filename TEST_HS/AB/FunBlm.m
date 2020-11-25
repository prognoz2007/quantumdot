%% TODO

function rez=FunBlm(n,l,m,p,wk)
% par(1)<==>par('dDivRb')
% par(2)<==>par('RaDivRb')
% par(3)<==>par('RQtubeDivRb')
% par(4)<==>par('Me')
% par(5)<==>par('Qe')
% par(6)<==>par('hh')
% par(7)<==>par('NN')
% par(8)<==>par('2u0qdotDivEb')
% par(9)<==>par('NZero')
% par(10)<==>par('Lmax')
par=Param();
RQtube=par('RQtubeDivRb');
NN=par('NN');
% интеграл от 0 до пи
y1=0;
y2=pi;
dy=(y2-y1)/NN; % шаг интегрирования
Fnmp=0;
lm=m:l;
% вычисление интегралов для Fnmp и Gnmp, в Help_For_MatLab_26_03_2020.lyx пункты 3.4.2 и 3.4.3 :uln, gln - пункты 3.4 
% FunFnmp - done
    for i =1:NN-1
      for k=1:length(lm)
      yi=y1+dy*(i+0.5);
       % FunPl(m,k,i) - функции Лежандра
      Fnmp = Fnmp+FunFnmp(n,m,p,wk,RQtube,yi)*FunPl(k,i)*sin(yi)*dy;
      end
  end
  Gnmp=0;
  clear yi;
  for i=1:NN-1
      for k=1:length(lm)
      yi=y1+dy*(i+0.5);
      Gnmp=Gnmp+FunGnm(n,m,p,wk,RQtube,yi,i)*FunPl(k,i)*sin(yi)*dy;
      end
  end
  rez=(Fnmp*(FunQlm(m,l)*FunMlm(m,l))^(-1)*FunDUln(l,n,RQtube)-Gnmp*(FunQlm(m,l)*FunMlm(m,l))^(-1)*FunUln(l,n,RQtube))/(FunDUln(l,n,RQtube)*FunGln(l,n,RQtube)-FunDGln(l,n,RQtube)*FunDGln(l,n,RQtube));
 end