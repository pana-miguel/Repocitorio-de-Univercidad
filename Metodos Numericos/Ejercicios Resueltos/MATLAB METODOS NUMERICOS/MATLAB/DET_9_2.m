clc;
A=[3 2;-1 2];
B=[(-1/2) 1;(-1/2) 1];
C=[(-1/2) 1;-1 2];
D=[(-1/2) 1;(-2.3/5) 1];
D1=det(A);D2=det(B);D3=det(C);D4=det(D);
x=D2/D1;
y=D3/D1;
z=D4/D1;
disp('Valor de x');disp(x);
disp('Valor de y');disp(y);
disp('Valor de z');disp(z);
disp('Matriz A');disp(A);
disp('Matriz B');disp(B);
disp('Matriz C');disp(C);
disp('Matriz D');disp(D);
disp('Determinantes:');disp(D1);disp(D2);disp(D3);disp(D4);