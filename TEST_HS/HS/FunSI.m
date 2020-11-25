function rez=FunSI(n1,m,p1,l,wk)
rez=0;
      for i=m:l %от m до L?
        % честно говоря, хз что там за комплексно-сопряжённая m. 
        % или я не так поняла, и комплексно-сопряжённые должны быть коэф.
        % A и B... формула 1.6 в Help_For_MatLab_26_03_2020.lyx
          rez=rez+(conj(FunAlm(n1,i,m,p1,wk))*FunAlm(n1,i,m,p1,wk)...
                     +conj(FunBlm(n1,i,m,p1,wk))*FunBlm(n1,i,m,p1,wk))...
                     *FunNormUln(i,m);
      end
 end