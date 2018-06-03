% 共轭梯度法
function xc=cg(A,b,x0)
x(1)=x0;
d(1)=b-A*x;
r(1)=d(1);
for k=1:n
    if r(k)==0
        xc=x(k);
        return
    end
    a(k)=r(k).'*r(k)/(d(k).'*A*d(k));
    x(k+1)=x(k)+a(k)*d(k);
    r(k+1)=r(k)-a(k)*A*d(k);
    b(k)=r(k+1).'*r(k+1)/(r(k).'*r(k));
    d(k+1)=r(k+1)*b(k)*d(k);
end
xc=x(n);