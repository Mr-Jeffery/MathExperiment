function val = lenton(x)
a = [x(1),x(2)];
b = [x(3),x(4)];
X=[1.25 8.75 0.5 5.75 3 7.25];
Y=[1.25 0.75 4.75 5 6.5 7.25];
f=[3 5 4 7 6 11];
Ad = sqrt((X-a(1)).^2+(Y-a(2)).^2);
Bd = sqrt((X-b(1)).^2+(Y-b(2)).^2);

Aeq = [eye(6),eye(6)];
beq = f;
A = [ones(1,6),zeros(1,6);
    zeros(1,6),ones(1,6)];
b = [20;20];
lb = zeros(1,12);
[~,val] = linprog([Ad,Bd],A,b,Aeq,beq,lb);
end