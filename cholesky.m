%程序 楚列斯基分解
function xc=cholesky(A)
Rn=length(A);
R=zeros(n);
for k=1:n
    if A(k,k)<0
        return
    end
    R(k,k)=sqrt(A(k,k));
    Ut=A(k,k+1:n)./R(k,k);
    R(k,k+1:n)=Ut;
    A(k+1:n,k+1:n)=A(k+1:n,k+1:n)-Ut'*Ut;
end
xc=R;