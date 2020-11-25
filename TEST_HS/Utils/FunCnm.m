%% Done
function rez=FunCnm(n)

         global TableCnm;

         [n] = indecesCheck(TableCnm,n);
         
         rez=TableCnm(n);
end