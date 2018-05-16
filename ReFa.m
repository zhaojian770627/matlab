%程序 试位方法
%计算f(x)的近似解
%输入:函数句柄f;a,b使得f(a)*f(b)<0,以及容差tol
%输出:近似解
function xc=ReFa(f,a,b,tol,max)
fa=f(a);
fb=f(b);
if(sign(fa)*sign(fb))>=0
    error('f(a)f(b)<0 not satisfied!')
end
step=0;
c=(b*f(a)-a*f(b))/(f(a)-f(b));
fc=f(c);
i=0
while i<max
    step=step+1;
    if fc==0 
        break;
    end
    c=(b*fa-a*fb)/(fa-fb);
    fc=f(c);
    if sign(fa)*sign(fc)<0 % a和c形成一个新的区间
        b=c;
        fb=f(b);
    else
        a=c;
        fa=f(a);
    end
    i=i+1;
end
fprintf('Step:%d',step)
xc=c;