% 共轭梯度法
function xc=cg2(A,b,x0)
n=length(A);
x(:,1)=x0;
r(:,1)=b-A*x(:,1);
M=diag(1./(diag(A)));
d(:,1)=M*r(:,1);
z(:,1)=d(:,1);
for k=1:n
    if r(:,k)==0
        xc=x(:,k);
        return
    end
    a(:,k)=r(:,k).'*z(:,k)/(d(:,k).'*A*d(:,k));
    x(:,k+1)=x(:,k)+a(:,k)*d(:,k);
    r(:,k+1)=r(:,k)-a(:,k)*A*d(:,k);
    z(:,k+1)=M*r(:,k+1);
    bt(k)=r(:,k+1).'*z(:,k+1)/(r(:,k).'*z(:,k));
    d(:,k+1)=z(:,k+1)+bt(k)*d(:,k);
end
xc=x(:,k+1);