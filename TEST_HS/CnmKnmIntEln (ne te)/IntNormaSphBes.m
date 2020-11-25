%% Done
function rez=IntNormaSphBes(l,n)

par=Param();

NN=par('NN');

Ra=par('RaDivRb');

y_s = linspace(0,Ra,NN);

dy = y_s (2)-y_s (1);

y_s =y_s + dy*0.5;

    if length(l)==1&&length(n)==1
        rez = sum(SubIntNormaSphBes(l,n,y_s))*dy;
        return;
    end
    
    rez = sum(SubIntNormaSphBes(l,n,y_s),3)*dy;
    
end
