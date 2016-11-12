function[xr,cod]=puntofijo(g,xo,tol,maxit)
%La función puntofijo calcula el valor aproximado de la raíz de una ecuación, previa reescritura de la misma como una "g(x)=x".
error=inf;
cant=0;%Almacena la cantidad de iteraciones.
cod=0;%Indica si la función encontró la raíz.
while error>tol & cant<maxit
	xr=eval(g,xo);
	xo=xr;
	error=abs(xr-xo);
end
if error<=tol
	cod=1;
end
		
