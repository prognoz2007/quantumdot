function rez=FunAlm(n,l,m,p,wk)
par=Param();
RQtube=par('RQtubeDivRb');
NN=par('NN');
%Qlm=(-1)^((m+abs(m))/2)*1i^l*((2*l+1)/4/pi*factorial(l-abs(m))/factorial(l+abs(m)))^1/2;
%Mlm=2/(2*l+1)*factorial(l+abs(m))/factorial(l-abs(m)); 
% интеграл от 0 до пи
y1=0;
y2=pi;
dy=(y2-y1)/NN; % шаг интегрирования
Fnmp=0;
lm = m:l; 
% вычисление интегралов для Fnmp и Gnmp, в Help_For_MatLab_26_03_2020.lyx в пунктах 3.4.2 и 3.4.3 можно найти их
% uln, gln и их производные там же, в 3.4 
  for i=1:NN-1
      for k = 1:length(lm)
      yi=y1+dy*(i+0.5);
% FunPl(m,k,i) - функции Лежандра///УТОЧНИТЬ!!!
      Fnmp=Fnmp+FunFnmp(n,m,p,wk,RQtube,yi)*FunPl(k,i)*sin(yi)*dy;
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
  rez=(Fnmp*(FunQlm(m,l)*FunMlm(m,l))^(-1)*FunDGln(l,n,RQtube)-Gnmp*(FunQlm(m,l)*FunMlm(m,l))^(-1)*FunGln(l,n,RQtube))/(FunUln(l,n,RQtube)*FunDGln(l,n,RQtube)-FunDUln(l,n,RQtube)*FunGln(l,n,RQtube));
 end