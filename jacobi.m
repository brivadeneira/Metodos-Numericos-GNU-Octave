function[x, cant,lamda ] = jacobi (A, b, xo, tol, maxit)
error=inf;
cant=0;
%Calcular D (matriz que contiene la diagonal de A)
D=diag(diag(A));
%Calcular L (matríz diagonal inferior, sin la diagonal)
L=-tril(A, -1); %La opc -1 elimina la diagonal
%Calcular U (matríz diagonal superior, sin la diagonal)
U=-triu(A, 1);
C=inv(D)*(L+U);
lamda=max(abs(eig(C)));
if lamda>1
    disp('El método diverge');
    x=xo;
else
    while error>tol & cant<maxit
        if A*xo==b
           x=xo;
         return
        else
          C=inv(D)*(L+U);
          d=inv(D)*b;
          x=C*xo+d;
          error=norm(x-xo);
          xo=x;
         cant=cant+1;
        end
    end
end

        
    
    