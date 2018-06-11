% 构造sin计算器键，#1尝试
% 以三阶多项式近似sin曲线
% 输入x
% 输出sinx(x)的近似
function y=sin1(x)
% 首先计算插值多项式
% 保存系数
b=pi*(0:3)/6;yb=sin(b);
c=newtdd(b,yb,4);
% 对于每个输入的x，将x移动到基础域
% 并进行插值多项式的求值
s=1; % 纠正sin的符号
x1=mod(x,2*pi);
if x1>pi
    x1=2*pi-x1;
    s=-1;
end
if x1>pi/2
    x1=pi-x1;
end
y=s*nest(3,c,x1,b);
