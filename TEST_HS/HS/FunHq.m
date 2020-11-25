function rez=FunHq(N,q1,q2,m,l,wk)
% попытка переделать из матрицы с N столбцами (или строками) в вектор. кажись
p1=fix((q1-1)/N)+1; 
n1=q1-(p1-1)*N;
% попытка переделать из матрицы в вектор №2
p2=fix((q2-1)/N)+1;
n2=q2-(p2-1)*N;
rez=FunHcell(n1,n2,m,p1,p2)-FunHII(n1,n2,m,p1,p2)+FunHI(n1,n2,m,p1,p2,l,wk);
end