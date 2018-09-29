function px=cram(p,fp,fu)
w(1)=double(p(1));
w(2)=double(p(2));
w(3)=double(p(3));
fw(1)=double(fp(1));
fw(2)=double(fp(2));
fw(3)=double(fp(3));
for j=1:30
    h(j)=0;
    d(j)=0;
    fw(j+3)=0;
end
for i=1:30    
h(i)=w(i+1)-w(i);
h(i+1)=w(i+2)-w(i+1);
d(i)=(fw(i+1)-fw(i))/h(i);
d(i+1)=(fw(i+2)-fw(i+1))/h(i+1);
a=d(i+1)-d(i)/(h(i+1)+h(i));
b=a*h(i+1)+d(i+1);
c=subs(fu,w(i+2));
ra=sqrt(b^2-4*a*c);
if b>0
    coci=-2*c/(b+ra);
elseif b<0
     coci=-2*c/(b-ra);
end
w(i+3)=w(i+2)+coci;
end
px=w;
end