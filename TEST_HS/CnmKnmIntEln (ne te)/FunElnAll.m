%% DONE
function rez=FunElnAll(TableSphZeroBesAll)
%Вычисление энеогии свободных квантовых точек
% через функции нули функции Бесселя, потом это надо будет заменить на корни дисперсионного уравнения
    par = Param();
    Ra = par('RaDivRb');
    U0qdot = par('2u0qdotDivEb');
    rez = U0qdot+(TableSphZeroBesAll/Ra).^2;
end