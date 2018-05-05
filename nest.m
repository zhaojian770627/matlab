%程序0.1 嵌套乘法
%使用霍纳方法以嵌套形式计算多项式的值
%输入:
%   多项式的阶d
%   d+1个系数构成的数组c(第一个元素为常数项)
%   x坐标需要进行求值的x位置
%   如果需要的话，还有d个基点构成的数组b
function y=nest(d,c,x,b)
if nargin<4,b=zeros(d,1);end
y=c(d+1);
for i=d:-1:1
    y=y.*(x-b(i))+c(i);
end