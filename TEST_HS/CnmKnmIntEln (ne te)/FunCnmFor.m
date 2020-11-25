%% DONE
function rez=FunCnmFor(N,m)
             rez = 1:N;
             for n = 1:N
                 rez(n)=FunCnmAll(n,m);
             end
end