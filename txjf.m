%程序 梯形积分
%计算f的积分
%输入:f 函数
%     a 上限
%     b 下限
%     m 划分子区间数
%输出:近似解xc
function xc=txjf(f,a,b,m)
h=(b-a)/m;
t=0;
for i=1:m-1
    t=t+subs(f,(a+i*h));
end
xc=eval(h/2*(subs(f,a)+subs(f,b)+2*t));