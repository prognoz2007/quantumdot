function rez=FunNormUlnFor(l,N)
         for n=1:N
             for L=1:l
                   rez(L,n)=FunNormUlnAll(L,n);
             end
         end
end