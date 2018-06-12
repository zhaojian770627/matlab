%程序 高斯消去法解方程组
%输入:      A 系数矩阵
%B 值矩阵
%n 行数
%输出:解向量
function xc=gs(A,B,n)
for j=1:n-1
    if abs(A(j,j))<eps; error('zero pivot encountered'); end
    for i=j+1:n
        mult=A(i,j)/A(j,j);
        for k=j+1:n
            A(i,k)=A(i,k)-mult*A(j,k);
        end
        B(i)=B(i)-mult*B(j);
    end
end

for i=n:-1:1
    for j=i+1:n
        B(i)=B(i)-A(i,j)*x(j);
    end
    x(i)=B(i)/A(i,i);
end
xc=x;