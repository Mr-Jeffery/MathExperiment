f = [4,15,10,12.5];
A = [-0.03,-0.3, 0,-0.15;
    0.14, 0, 0, 0.07];
b = [-32,42];
Aeq = [0.05, 0, 0.2, 0.1];
beq = 24;
[X,cost] = linprog(f,A,b,Aeq,beq)
%% 
%X1 to X5 are the part-time workers that start working from 9am to 1pm
%X6 X7 are the number of full-time workers that rest at 11am or 12 am
f = [120,120,120,120,120,360,360];
intcon = 1:7;
A = [ 0, 0, 0, 0, 0, 1, 1;% less then 12 full time workers
      0, 0, 0, 0, 0, 1,-1;% a half of them take breaks at 11
      0, 0, 0, 0, 0,-1, 1;
      1, 1, 1, 1, 1,-1,-1;
     -1, 0, 0, 0, 0,-1,-1;%9am
     -1,-1, 0, 0, 0,-1,-1;%10am
     -1,-1,-1, 0, 0, 0,-1;%11am
     -1,-1,-1,-1, 0,-1, 0;%12am
      0,-1,-1,-1,-1,-1,-1;%1pm
      0, 0,-1,-1,-1,-1,-1;%2pm
      0, 0, 0,-1,-1,-1,-1;%3pm
      0, 0, 0, 0,-1,-1,-1;%4pm
     ];
b = [12;
     1;
     1;
     0;
     -10;%9am
     -11;%10am
     -15;%11am
     -15;%12am
     -19;%1pm
     -16;%2pm
     -14;%3pm
     -11];%4pm
lb = zeros(7,1);
[X,cost] = intlinprog(f,intcon,A,b,[],[],lb)
