function pfijosistsuc (y, xo, tol, maxit)
cant=0;
x=x(1);
error=inf;
while error>tol
    for i=1:1:lenght(y)
        g(i)=eval(char(y(i)));
    end
    error=norm(g-x);
    if error<=tol
        return
    else
        x=g;
        cant=cant+1;
    end
end
        