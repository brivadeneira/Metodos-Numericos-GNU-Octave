function[xr]=secante(f,xo,xi,tol,maxit)
cant=0;%Almacena la cantidad de iteraciones.
f=inline(f);
x=xo;
fo=eval(f);
x=xi;
f1=eval(f);
%disp('cant	x	f	error');
%fprintf('%4.0i		%5.4e	%5.4e	%6.4e	%6.4e', cant , xo, xi , fo, f1);
while cant<maxit
	x=xo;
	fo=eval(f);
	x=xi;
	f1=eval(f);
	xr=xi-f1*(xo-xi)/(fo-f1);
	error=abs(xo-xi);
	if error<tol
		return
	else
		xo=xi;
		xi=xr;
		cant=cant+1;
		
	end
end 