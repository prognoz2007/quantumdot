function rez=FunSII(n1,n2,m,p1,p2)
% par(1)<==>par('dDivRb')
% par(2)<==>par('RaDivRb')
% par(3)<==>par('RQtubeDivRb')
% par(4)<==>par('Me')
% par(5)<==>par('Qe')
% par(6)<==>par('hh')
% par(7)<==>par('NN')
% par(8)<==>par('2u0qdotDivEb')
% par(9)<==>par('NZero')
% par(10)<==>par('Lmax')
par = Param();
d = par('dDivRb');
NN=par('NN');
Ra=par('RaDivRb');
x_s = linspace(0,Ra,NN);
dx = x_s(2)-x_s(1);
x_s = x_s+0.5*dx;
% x1=0;
% x2=Ra;
% dx=(x2-x1)/NN; % шаг интегрирования
% y1=0;
% y2=pi;
% dy = (y2-y1)/NN; % шаг интегрирования 2
y_s = linspace(0,pi,NN);
dy = y_s(2)-y_s(1);
y_s = y_s + 0.5*dy;


[x_s, y_s] = meshgrid(x_s,y_s);

% rez=0;
%       for i = 1:NN-1
        % интеграл по расстоянию
%               xi = x_s(i)+dx*0.5;%x1+dx*(i+0.5);
%           for k = 1:NN-1
        % интеграл по углу
%               yk=y1+dy*(k+0.5);
              bessArg = x_s.*sin(y_s);
              
              rez = besselj(m,FunKnm(n2,m)*bessArg)...
                    .*besselj(m,FunKnm(n1,m)*bessArg)...
                    .*exp(1i*x_s.*cos(y_s).*x_s.^2.*sin(y_s)*(2*pi*p1/d-2*pi*p2/d))*dy*dx;
%           end
%       end
  rez = sum(sum(rez))*2*pi*conj(FunCnm(n2))*FunCnm(n1);
 end