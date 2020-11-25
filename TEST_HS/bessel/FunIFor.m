function j=FunIFor(m,N)
par=Param();

RQtube=par('RQtubeDivRb');

NN=par('NN');

j=zeros(2,N,NN);

ys=linspace(0,pi,NN);

dy=ys(2)-ys(1);

ys = ys + dy*0.5;
    for n=1:N
    % для m и m-1, чтобы потом производную считать 
          j(1,n,:)=FunIAll(m-1,RQtube,ys,n);
          j(2,n,:)=FunIAll(m,RQtube,ys,n);
    end
end