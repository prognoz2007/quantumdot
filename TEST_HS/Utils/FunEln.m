%% DONE
function rez=FunEln(l,n)
         
        global TableEln;
         
         [l,n] = indecesCheck(TableEln,l,n);
         
         rez=TableEln(l,n);
end