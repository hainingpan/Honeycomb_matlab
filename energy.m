function [eiv,vec]=energy(kx,ky)
global tmp d offdiag hbar mu Nmax;
tmp4=[kx,ky]+[2*pi/(sqrt(3)*d),4*pi/(3*d)].*tmp-[zeros(size(tmp(:,2))),tmp(:,1)].*[0,2*pi/(3*d)];
H=hbar^2/(2*mu)*eye((2*Nmax+1)^2).*(tmp4*tmp4')+offdiag;
[vec,ei]=eig(H);
% for i=1:(2*Nmax+1)^2
%     vec(:,i)=((vec(1,i)<0).*(-1)+(vec(1,i)>=0)).*vec(:,i);
% end
eiv=diag(ei);
end
