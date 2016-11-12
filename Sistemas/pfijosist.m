function [y, cant, error]= pfijosist (y, xo, tol, maxit)
cant=0;
x=xo;
error=inf;
while error>tol
    g=eval(y);
    error=norm(g-x);
    if error<=tol
        return
    else
        x=g
        cant=cant+1;
    end
end
        