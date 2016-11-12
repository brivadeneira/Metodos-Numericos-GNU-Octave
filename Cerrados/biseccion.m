function[xm, cod]=biseccion(f,xo,xi,tol,maxit)
error=inf;
cant=0;%Almacena la cantidad de iteraciones.
f=inline(f);
cod=0;
xm=(xo+xi)/2;
while error>tol  && cant<maxit
	aux=xm;
	if f(xm) == 0 
		cod=1;
	else 
		if f(xo)*f(xm)<0 
			xi=xm;
		else
			xo=xm;
		end
	xm=(xo+xi)/2;
	cant=cant+1;
	end 
	error=abs(aux-xm);
end
if error<=tol
	cod=1;
end