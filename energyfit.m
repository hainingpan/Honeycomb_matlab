

% -1578
%/(2*pi/(37.163/5.076)*2/3)
% fig2=figure;
dx=load('D:\QuS\metadata\BK40HC13\4\x.dat');
dy=load('D:\QuS\metadata\BK40HC13\4\y.dat');
dz=load('D:\QuS\metadata\BK40HC13\4\z.dat');
 fig=figure;

% surf(dx/(2*pi/(3*13.7036/(2*5.076))),1000*dy,(log(dz+50)).*(dz+50)/200,'FaceColor','interp','EdgeColor','none','FaceLighting','gouraud');
surf((dx)/(2*2*pi/(3*4)),1000*dy,log(dz+50),'FaceColor','interp','EdgeColor','none','FaceLighting','gouraud');

% surf((dx)/(2*2*pi/(3*3*sqrt(3))),1000*dy,log(dz+50),'FaceColor','interp','EdgeColor','none','FaceLighting','gouraud');
%colorbar
%  axis([min(dx),max(dx),1572,1580,0,inf])
 axis square;
 axis([-3,3,1586,1595,0,inf])
% set(gca,'xtick',[])
% 
%   axis([-2,2,1589,1595,0,inf])
% axis tight
set(gca,'fontsize',13)
% set(fig, 'Position', [0 0 520 398])
colorbar
view(2);
% 
% hold on
% eexc= 1593.5;
% m=0.0140343;
% ecav0=1600.65;
% g0=5.5;
% kpara=linspace(-1,1,100);
% eylp=1/2*(eexc+kpara.^2/(2*m)+ecav0-sqrt(4*g0^2+(eexc-(kpara.^2/(2*m)+ecav0)).^2));
% plot3(kpara*5.076,eylp,2500*ones(100,1),'black')
% X=linspace(-6,6,200);
% Y=aa*(X-bb).*(X-bb)+cc;
% hold on 
% plot3(X,Y,2500*ones(200,1),'black');
% hold on
% X2=linspace(-6,6,200);
% Y2=a2*(X2-b2).*(X2-b2)+c2;
% plot3(X2,Y2,2500*ones(200,1),'black');
% 
hold on
% x=-3:0.05:3;
% yy=load('./trans.dat');
% plot3(linspace(-3,3,401),yy(1:40,:)*1000+1576.1,2500*ones(length(x),1),'white');
% axis square;
% view(2);
