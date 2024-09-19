x0=[1 1]'; A=[1/5,99/100;1,0];  
       [P,D]=eig(A); 
       y0=inv(P)*x0;y=y0;
for i=1:50
 y=[D^i*y0,y];
end
x=P*y; 
plot(y(1,:),y(2,:),'o',x(1,:),x(2,:),'*'),legend('Y','X=PY') 