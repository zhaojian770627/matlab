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
step=0
while(b-a)/2>tol
    step=step+1
    c=(a+b)/2;
    fc=f(c);
    if(fc==0)
        break
    end
    if sign(fc)*sign(fa)<0 % a和c形成一个新的区间
        b=c;fb=fc;
    else
        a=c;fa=fc;
    end
end
fprintf('Step:%d',step)
xc=(a+b)/2;