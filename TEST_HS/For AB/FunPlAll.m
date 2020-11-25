%% Done
function pl=FunPlAll(m,x)
    pl = (1-x.^2).^(m/2).*factorial(2*m)./(2.^m.*factorial(m));
end