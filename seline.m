%程序 割线方法解方程
%输入:函数句柄g,初始估计x0,x1 最小误差 tol 最大步数 max
%输出:近似解xc
function xc=seline(g,x0,x1,tol,max)
x(1)=x0;
x(2)=x1;
x(3)=x(2) - g(x(2))*(x(2)-x(1))/(g(x(2))-g(x(1)));
i=3
while abs(x(i)-x(i-1))>tol & i<max
    x(i+1)=x(i)-g(x(i))*(x(i)-x(i-1))/(g(x(i))-g(x(i-1)));
    i=i+1
end
x
fprintf('Step:%d',i);
xc=x(i)