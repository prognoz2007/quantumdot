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

function E0=Energy(l)
	par = Param();
	u0qdot = par('2u0qdotDivEb');
	mu = par('Me');
	Ra = par('RaDivRb'); % наличие корней дисп. уравнения зависит от радиуса кв. точки
	% значения эффективных масс взяты из кода Юры
	meex = 0.75;
	
    mein = 1;

    meext = meex * mu; % эффективная масса электрона вне кв.т.

    meint = mein * mu; % эффективная масса электрона внутри кв.т.

    n = 0;
	
    E = linspace(1*u0qdot, 0.02*u0qdot, 20000);

	SQ = sqrt(2 * mein * (E - u0qdot));

	S = sqrt(-2 * meex * E);

	%was:
	%for e1=1:length(E)
	%SQ=sqrt(2*mein*(E(e1)-u0qdot));
	%S=sqrt(-2*meex*E(e1));
	%rez(e1)=S*bessels(l,SQ*Ra)*DbesselM3(l,S*Ra)/meext-SQ*Dbessels(l,SQ*Ra)*besselM3(l,S*Ra)/meint;
	%...
	%become
	rez = S.*bessels(l,SQ*Ra).*DbesselM3(l,S*Ra)/meext-...
		  SQ.*Dbessels(l,SQ*Ra).*besselM3(l,S*Ra)/meint;
	%% Energy searh
	%was:
	%	if (e1>1)&&(real(rez(e1))*real(rez(e1-1))<0)%&&(imag(rez(e1))*imag(rez(e1-1))<=0)%(abs(real(rez(e1)))<=1D-1000)&&(abs(imag(rez(e1)))<=1D-1000)||
	%		n = n+1;
	%		E0(n)=E(e1);
	%	end
	%end...	
	%become:
	Es_temp = real(rez(2:n)).*real(rez(1:n-1));
	E0 = Es_temp(find(Es_temp<0));
	%imag(rez) = 0 для всех заданных E<0

	f = gcf;
    hold on;
    plot(E,':r');
    plot(rez,'og');
    plot(E0,'ob');
end