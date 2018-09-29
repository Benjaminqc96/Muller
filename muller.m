clear 
close all
clc
syms x
fu=input('Ingresa una funcion: ');
solu=solve(fu,x);
fprintf('Existen %d soluciones: \n',length(solu))
for j=1:length(solu)
    fprintf('%d  %f\n' ,j,solu(j))
end
for i=1:3
    fprintf('Ingresa el punto %d: ',i)
    p(i)=input('');
    fp(i)=double(subs(fu,p(i)));
end
px=cram(p,fp,fu);