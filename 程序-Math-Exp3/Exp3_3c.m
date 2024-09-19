clc,clear,clf
a=-20*100;b=-a;c=a;d=b;p=0.1;  %�趨��ͼ��Χ
n=100;
A=[1/5,99/100;1,1];            %�趨����
axis([a b c d]),grid on,hold on
button=1;
while button==1
    [xi,yi,button]=ginput(1);           %�����ѡ��ʼ��
    plot(xi,yi,'o'),hold on,
    X0=[xi;yi];X=X0;
    for i=1:n
        X=[A*X,X0];                    %�����ַ�ʽ������������ͼ
        h=plot(X(1,1),X(2,1),'R.',X(1,1:2),X(2,1:2),'r:');hold on
        quiver([X(1,2),1]',[X(2,2),1]',[X(1,1)-X(1,2),0]',[X(2,1)-X(2,2),0]',p)
        set(h,'MarkerSize',6), grid,
    end
end
pause
x=linspace(a,b,30);              %���������ֵ����Ӧ������������������ֱ��[pc,lamda]=eig(A),pc=-pc;
z1=pc(2,1)/pc(1,1)*x;
z2=pc(2,2)/pc(1,2)*x;
h=plot(x,z1),set(h,'linewidth',2) ;