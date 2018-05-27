%程序 LU分解方程组
%输入:      A 系数矩阵
%B 值矩阵
%n 行数
%输出:解向量
function xc=mylu(U,B,n)
L=zeros(n);  % L矩阵
for j=1:n-1
    if abs(U(j,j))<eps; error('zero pivot encountered'); end
    for i=j+1:n
        mult=U(i,j)/U(j,j);
        L(i,j)=mult;
        U(i,j)=0;
        for k=j+1:n
            U(i,k)=U(i,k)-mult*U(j,k);
        end
    end
end
for j=1:n
    L(j,j)=1;
end
% LUx=b
% Lc=b 解 c
c=zeros(1,3);
for i=1:n
    for j=1:i-1
        B(i)=B(i)-c(j)*L(i,j);
    end
    c(i)=B(i);
end
% Ux=c 求 x
for i=n:-1:1
    for j=i+1:n
        c(i)=c(i)-U(i,j)*x(j);
    end
    x(i)=c(i)/U(i,i);
end
xc=x;