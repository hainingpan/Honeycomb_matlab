% %Energy dispersion
% % 

%% Gamma-K-M
% x=cat(2,linspace(1/(sqrt(3))*(pi/d),1/(3*sqrt(3))*(2*pi/d),100),linspace(2*pi/(3*d*sqrt(3)),0,100),linspace(0,1/(sqrt(3))*(pi/d),100));
% y=cat(2,linspace(1/(6)*(2*pi/d)-2/(3)*(2*pi/d),1/(3)*(2*pi/d)-2/(3)*(2*pi/d),100),linspace(-2*pi/(3*d),0,100),linspace(0,1/(6)*(2*pi/d),100));
% f=@(xx,yy) arrayfun(@(x,y) energy(x,y),xx,yy,'UniformOutput',false);


%% Gamma-M
% x=linspace(-12*pi/(3*d),12*pi/(3*d),401);
% f=@(xx) arrayfun(@(x) energy(0,x),xx,'UniformOutput',false);
% yy=cell2mat(f(x,y));
%% K-K
% x=linspace(-12*pi/(3*d),12*pi/(3*d),401);
% f=@(xx) arrayfun(@(x) energy(4*pi/(3*sqrt(3)*d),x),xx,'UniformOutput',false);
% yy=cell2mat(f(x));
%% Gamma-K
% x=linspace(-4*4*pi/(3*sqrt(3)*d),4*4*pi/(3*sqrt(3)*d),401);
% f=@(xx) arrayfun(@(x) energy(x,0),xx,'UniformOutput',false);
% yy=cell2mat(f(x));
%% Exp
% dx=load('D:\QuS\metadata\BK40HC13\4\x.dat');
% dy=load('D:\QuS\metadata\BK40HC13\4\y.dat');
% dz=load('D:\QuS\metadata\BK40HC13\4\z.dat');
% dx=dx/(2*pi/(3*18.7693/(2*5.076)));
%plot(dy,log(dz(:,200)+50))

% surf((dx-0.21)*d/(3.076),dy*1000,log(dz+50),'FaceColor','interp','EdgeColor','none','FaceLighting','gouraud');view(2);
% colorbar
% t=intoverk(3,sqrt(3)*d,d)
% t1=intoverk(3,sqrt(3)*d*3/2,d/2) 
%% Thy
dirname='BK40HC13\4';
filname='x(-8,8)e(1584,1595)cx';
% filname='x(-14,14)e(-4,16)3gamma';
filename=strcat('D:\QuS\metadata\',dirname,'\',filname,'.dat');
% filename='F:\QuS\metadata\0.00005,0.120112.dat';
% outputname=strcat('F:\QuS\metadata\',dirname,'\lw-K.fig');
% outputnameeps=strcat('F:\QuS\metadata\',dirname,'\lw.eps');
linewidth=load(filename);
fig=figure;
%
surf(linspace(-4,4,100),linspace(1573,1595,100),log(linewidth+50),'FaceColor','interp','EdgeColor','none','FaceLighting','gouraud');
% camlight('headlight');
colorbar;
axis square;
  axis([-3,3,1586,1595,0,inf])
set(gca,'fontsize',14)
% set(fig, 'Position', [0 0 520 398])
%    axis([-6,5.5,1576,1592,0,inf]);
 view(2);

%  
% % plot(linspace(-4,12,400),0.18*log(linewidth(:,200))+2.1)
% % title(strcat(dirname(1:8),'d',dirname(10),filname,'-\Gamma-LineWidth'));
% 
% % savefig(outputname)
% % export_fig(outputname,fig);
% % export_fig(outputnameeps,fig);
% 
% % for jj=1:12
% %     jj
% %     t(jj,1)=intoverk(jj,sqrt(3)*d,d);
% %     t(jj,2)=intoverk(jj,sqrt(3)*d*3/2,d/2);
% % end
% % xlswrite('tmp.xls',t)
