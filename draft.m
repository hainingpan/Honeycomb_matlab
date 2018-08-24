%data=load('co.dat')
%PoFT(sqrt(3)*d/2,0);
x=linspace(-3*d,3*d,50);
y=linspace(-3*d,3*d,50);
[X,Y]=meshgrid(x,y);
%f=@(x,y) arrayfun(@PoFT,x,y);
f=@(x,y) arrayfun(@(xx,yy) um(1,0,0,xx,yy),x,y);
F=arg(f(X,Y));
% F=re(PoFT(X,Y));
figure
for i=1:50
scatter(X(:,i),Y(:,i),'filled','cdata',F(:,i))
hold on
end
colorbar