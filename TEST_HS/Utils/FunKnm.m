%% DONE
function rez=FunKnm(n,m)
         global TableKnm;
         [n,m] = indecesCheck(TableKnm,n+1,m);
         rez = TableKnm(n,m);
         %returns only scalar val
end