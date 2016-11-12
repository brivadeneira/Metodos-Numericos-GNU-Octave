function[xm, cod]=biseccion(f,xo,xi,tol,maxit)
%Esta función calcula una aproximacion de la raíz de una función por el método de la Bisección, que consiste en subdividir un intervalo dado evaluando cambios de signo de la función.
error=inf;
cant=0;%Almacena la cantidad de iteraciones.
f=inline(f);
cod=0;%Indica si la función encontró la raíz.
xm=(xo+xi)/2;
while error>tol  && cant<maxit
	aux=xm;
	if f(xm) == 0 
		cod=1;
	else 
		if f(xo)*f(xm)<0 %Esta condición implica que la raíz se encuentra del lado izquierdo del punto medio%
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