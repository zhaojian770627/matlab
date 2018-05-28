%程序2.1 雅可比方法
%输入: 完全矩阵或者稀疏矩阵a, r.h.s, b
%输出: 解 x
function x=jacobj(a,b,k)
n=length(b);    % 确定n
d=diag(a);      % 提取a的对角线元素
r=a-diag(d);    % r为余项
x=zeros(n,1);   % 初始化向量x
for j=1:k
    x=(b'-r*x)./d;
end
