function [xr, cod] = newtonraph (f, xo, tol, maxit)
error=inf;
cant=0;%Almacena la cantidad de iteraciones.
%f=inline(f);
x=xo;
disp('cant	x	f	error');
fprintf('%4.0i		%5.4e	%6.4e \n', cant , xo, f);
while cant <= maxit
	x=xo;
	fe=eval(f);
	f=syms(f);
	ds=diff(f);
	dfe=eval(ds);
	xr=xo-(f/dfe);
	fe=eval(f);
	error=abs(x-xo);
	if error<=tol
		return
	else
		xo=x;
		cant=cant+1;
	end
end 
	