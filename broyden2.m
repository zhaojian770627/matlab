% 输入: 初始向量x0,最大步数k
% 输出: 解x
% 使用实例:broyden2(f,[1:1],10)
function x=broyden2(f,x0,k)
[n,m]=size(x0);
b=eye(n,n);
for i=1:k
    x=x0-b*f(x0);
    del=x-x0;
    delta=f(x)-f(x0);
    b=b+(del-b*delta)*del'*b/(del'*b*delta);
    x0=x;
end