%основная
function dt=FunDet(N,m,P,l,wk)
par = Param();
u0qdot = par('2u0qdotDivEb');
dt = 0;
h=0.0001;
E=2/10*u0qdot:h:-2/10*u0qdot;
E0=0;
x=0;
tic;
helpSarr=FunSarr(N,m,P,l,wk);
toc;
tic;
helpHarr=FunHarr(N,m,P,l,wk);
toc;
tic;
for e1=1:length(E)
dt(e1)=det(helpHarr-E(e1)*helpSarr);
    if (abs(real(dt(e1)))<=1D-12)&&(abs(imag(dt(e1)))<=1D-12) % возможно, надо переделать, чтоб корнем считало, когда знак меняется, а не так
        x=x+1;
        E0(x)=E(e1);
    end
end
toc;
plot(E,dt)
 
end
