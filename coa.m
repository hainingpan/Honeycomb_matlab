function re=coa(m,n)
global d a h b1 b2
re=zeros(length(m),length(n));
l1=((n==0)&(m==0));
l2=~l1;
re(l1)=-(4*a.^2*h*pi/(3*sqrt(3)*d^2));
re(l2)=-h/(3*sqrt(3)/2*d^2)*2*pi*a./sqrt(4/3*pi^2*(m(l2)/d).^2+(-2*m(l2)*pi/(3*d)+(4*n(l2)*pi)/(3*d)).^2).*besselj(1,sqrt(4/3*pi^2*(m(l2)/d).^2+(-2*m(l2)*pi/(3*d)+(4*n(l2)*pi)/(3*d)).^2)*a).*(exp(-1i*((m(l2)+n(l2)).*2*pi/3))+exp(-1i*((2*m(l2)-n(l2)).*2*pi/3)));
end