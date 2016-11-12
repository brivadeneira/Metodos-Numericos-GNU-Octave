function[xr,cod]=falsapos(f,xo,xi,tol,maxit)
%La función falpos calcula el valor aproximado de la raíz de una función mediante el método de la falsa posición.
error=inf;
cant=0;%Almacena la cantidad de iteraciones.
f=inline(f);
cod=0;%Indica si la función encontró la raíz.
xr=( xi-( (f(xi)*(xo-xi))/(f(xo)-f(xi)) ) );
while error>tol  && cant<maxit
	aux=xr;
	if f(xr) == 0 
		cod=1;
	else 
		if f(xo)*f(xr)<0 %Esta condición implica que la raíz se encuentra del lado izquierdo del punto medio%
			xi=xr;
		else
			xo=xr;
		end
	xr=( xi-( (f(xi)*(xo-xi))/(f(xo)-f(xi)) ) );
	cant=cant+1;
	end 
	error=abs(aux-xr);
end
if error<=tol
	cod=1;
end