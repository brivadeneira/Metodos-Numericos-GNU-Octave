function[x, cant] = sor (A, b, xo, w, tol, maxit)
error=inf;
cant=0;
%Calcular D (matriz que contiene la diagonal de A)
D=diag(diag(A));
%Calcular L (matr�z diagonal inferior, sin la diagonal)
L=-tril(A, -1); %La opc -1 elimina la diagonal
%Calcular U (matr�z diagonal superior, sin la diagonal)
U=-triu(A, 1);
while error>tol & cant<maxit
    if A*xo==b
        x=xo;
      return
    else
        C=inv(D-L)*(U);
        d=inv(D-L)*b;
        x=C*xo+d;
        x=w*x+(1-w)*xo;
        error=norm(x-xo);
        xo=x;
        cant=cant+1;
    end
end
