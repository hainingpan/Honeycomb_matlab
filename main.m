global a d h mu hbar e c Nmax cellnumber b1 b2 areadiamond coarr tmp offdiag NN;
a=1*5.076;
d=  2.699684791*5.076;
h=4.23512e-3;
mu= 5.090841487*5.11;		

hbar=1; 
e=1;
c=1;
Nmax=10;
cellnumber=100;NN=50;
b1=2*pi/d*[1/sqrt(3) -1/3];
b2=2*pi/d*[0 2/3];
areadiamond=3*sqrt(3)/2*d^2;
% Fourier Transformation
coarr=zeros(4*Nmax+1);
for n=-2*Nmax:2*Nmax
    for m=-2*Nmax:2*Nmax
        coarr(n+2*Nmax+1,m+2*Nmax+1)=coa(n,m);
    end
end
[X,Y]=meshgrid(-Nmax:Nmax,-Nmax:Nmax);
tmp=zeros(2*Nmax+1,2*Nmax+1);
tmp(:,:,1)=X;
tmp(:,:,2)=Y;
tmp=reshape(tmp,[(2*Nmax+1)^2,2]);
tmp2=zeros((2*Nmax+1)^2,(2*Nmax+1)^2,2);
for j=1:(2*Nmax+1)^2
    tmp2(j,:,:)=tmp;
end
N=tmp2(:,:,1)-transpose(tmp2(:,:,1))+2*Nmax+1;
M=tmp2(:,:,2)-transpose(tmp2(:,:,2))+2*Nmax+1;
tmp3=(M-1)*(4*Nmax+1)+N;
offdiag=coarr(tmp3);