function y=graphy_plot(A,xy,l,p)
       %画矩阵的有向结构图。 A为邻接矩阵，xy为顶点坐标，l控制参数，l=0，画无向图；     
       %l~=0,画有向图。p为控制箭头大小的参数。
a=-max(abs(xy(:,1)))*1.1;b=max(abs(xy(:,1)))*1.1;
c=-max(abs(xy(:,2)))*1.1;d=max(abs(xy(:,2)))*1.1;
if l==0
   gplot(A,xy),axis([a b c d]),hold on,
elseif l~=0
   U=[];V=[];X=[];Y=[];
   n=length(A(:,1)) ;
   for i=1:n
      k=find(A(i,:)~=0);
      m=length(k);
      if(m~=0)
         for j=1:m
            u(1)=(xy(k(j),1)-xy(i,1)); v(1)=(xy(k(j),2)-xy(i,2));
            u(2)=eps;     v(2)=eps;     U=[u;U];V=[v;V];
            X=[[xy(i,1) xy(k(j),1)];X]; Y=[[xy(i,2) xy(k(j),2)];Y];
          end
      text(xy(i,1),xy(i,2),['\bullet\leftarrow\fontsize{16}\it{V}',...
      num2str(i)]);    hold on,
       end
          end
   gplot(A,xy),axis([a b c d]),hold on,
   h=quiver(X,Y,U,V,p);set(h,'color','red');hold on,
   plot(xy(:,1),xy(:,2),'k.','markersize',12),hold on,
end
hold off
end