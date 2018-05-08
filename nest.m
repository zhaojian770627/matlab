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

%程序1.1 二分法
%计算f(x)的近似解
%输入:函数句柄f;a,b使得f(a)*f(b)<0,以及容差tol
%输出:近似解
function xc=bisect(f,a,b,tol)
fa=f(a);
fb=f(b);
if(sign(fa)*sign(fb))>=0
    error('f(a)f(b)<0 not satisfied!')
end
while(b-a)/2>tol
    c=(a+b)/2;
    fc=f(c);
    if(fc==0)
        break
    end
    if(sign(fc)*sign(fa)<0 % a和c形成一个新的区间
        b=c;fb=fc;
    else
        a=c;fa=fc;
    end
end
xc=(a+b)/2;
    