function rez=besselM3(n,x)
	rez=(-1)^(n+1)*pi/2*sqrt(pi./(2*x)).*(besseli(n+1/2,x)-besseli(-n-1/2,x));
end