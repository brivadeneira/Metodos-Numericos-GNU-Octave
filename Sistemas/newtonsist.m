function newtonsist (y, xo, tol, maxit)
cant=0;
cod=0;
x=[];
error=inf;
var=symvar(y);
J=jacobian(y);
while error>tol
    Jx=subs(J, var, xo);
    Fx=subs(y, var, xo);
    dx=Jx/Fx;
    if norm(dx<tol)
        cod=1;
        x=xo+dx;
    end
       xo=xo+dx;
end
        