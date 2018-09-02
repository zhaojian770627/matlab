% 程序 豪斯霍尔德反射子方法求QR分解
% A 向量矩阵
function [Q,R]=hshrd(A)
[m,n]=size(A);
AT=A;
R=A;
for i=1:n
    x=AT(:,1);
    v=[normest(x) zeros(1,m-i)]'-x;
    H=eye(m-i+1)-2*v*v'/(v'*v);
    T=eye(m);
    T(i:end,i:end)=H;
    R=T*R;
    AT=R(2:end,2:end);
    if i==1
        Q=T;
    else
        Q=Q*T;
    end
end