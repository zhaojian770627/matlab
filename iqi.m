%程序 IQI方法解方程
%输入:函数句柄g,初始估计x0,x1,x2 最小误差 tol 最大步数 max
%输出:近似解xc
function xc=iqi(g,x1,x2,x3,tol,max)
x(1)=x1;
x(2)=x2;
x(3)=x3;
i=0;
j=3;
while i<max
    a=x(j-2);
    b=x(j-1);
    c=x(j);
    A=g(a);
    B=g(b);
    C=g(c);
    q=A/B;
    r=C/B;
    s=C/A;
    x(j+1)=x(j)-(r*(r-q)*(x(j)-x(j-1))+(1-r)*s*(x(j)-x(j-2)))/((q-1)*(r-1)*(s-1));
    j=j+1;
    if abs(x(j)-x(j-1))<=tol
        break;
    end
    i=i+1;
end
x
fprintf('Step:%d',i);
xc=x(j);