%% Done
function rez=IntFunNorma(n,m)
    
    par=Param();

    NN=par('NN');
    
    RQtube = par('RQtubeDivRb');
    
    y_s = linspace(0,RQtube,NN);
    
    dy = y_s(2) - y_s(1);
    
    y_s =y_s+dy*0.5;
    
   if length(n)==1&&length(m)==1
     rez =sum(SubIntFunNorma(n,m,y_s))*dy;
     return;
   end
    rez =sum(SubIntFunNorma(n,m,y_s),3)*dy;
end
