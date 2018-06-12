%程序 SOR 连续松弛方法
%输入: 完全矩阵或者稀疏矩阵a, r.h.s, b
%输出: 解 x
function x=sor(a,b,w,k)
n=length(b);   
d=diag(a);     
x=zeros(n,1);
r=a-diag(d);
for j=1:k
    for i=1:n
        x(i)=(1-w)*x(i)+w*(b(i)-r(i,:)*x)/d(i);
    end
end