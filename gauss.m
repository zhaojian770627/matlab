%程序 高斯-赛德尔方法
%输入: 完全矩阵或者稀疏矩阵a, r.h.s, b
%输出: 解 x
function x=gauss(a,b,k)
n=length(b);   
d=diag(a);     
x=zeros(n,1);
r=a-diag(d);
for j=1:k
    for i=1:n
        x(i)=(b(i)-r(i,:)*x)/d(i);
    end
end