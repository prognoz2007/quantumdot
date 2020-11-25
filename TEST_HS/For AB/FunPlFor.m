%% Done
function plf = FunPlFor(m,l)
    
    par = Param();
    
    NN=par('NN');

    y_s = linspace(0,pi,NN);

    y_s = y_s + 0.5*(y_s(2)-y_s(1));

    lm_ = m:l;

    % функции Лежандра через рекурсию (вроде как меньше вычислительных затрат должно быть)

    plf = zeros(length(lm_),length(y_s));
    plf(1,:)       =  FunPlAll(m,cos(y_s)); % first row lm(1) = m
    plf(2,:)       =  plf(1,:).*cos(y_s); % second row lm(2) = m+1
    
    for i=3:length(lm_)
        plf(i,:) = (cos(y_s).*(2*lm_(i-2)-1).*plf(i-1,:)+(lm_(i-2)+m-1).*plf(i-2,:))./(lm_(i-2)-abs(m)); 
        % в lm_(i) заменила на i-2, формула 1.10 в Help от 24_02_2020  
    end
    
end